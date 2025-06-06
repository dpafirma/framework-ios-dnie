//
//  CustomDNIeInfoExtendedWrapper.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/5/25.
//

///Native imports
#import <CoreNFC/CoreNFC.h>

///Public imports
#import <DNIeFW/DNIeBasicService.h>
#import "DNIeInfo+Internal.h"

///Internal imports
#import "IOSCallbackHandler.h"
#import "IOSApduConnection.h"
#import "LocalizationUtils.h"
#import "PrivateConstants.h"
#import "LogUtils.h"
#import "HandleNFCError.h"
#import "HandleThirdPartyError.h"
#import "IOSNFCSessionManager.h"

///J2OBJC  imports
#import "IOSObjectArray.h"
#import "IOSArray.h"
#import "es/gob/jmulticard/connection/ApduConnection.h"
#import "es/gob/jmulticard/ios/DnieFactoryWrapper.h"
#import "java/security/cert/X509Certificate.h"
#import "javax/security/auth/x500/X500Principal.h"
#import "java/math/BigInteger.h"
#import "es/gob/jmulticard/ios/DnieInfoWrapper.h"
#import "es/gob/jmulticard/ios/DnieInfo.h"

@interface DNIeBasicService () <IOSNFCSessionDelegate>
@property (nonatomic, strong) id<EsGobJmulticardConnectionApduConnection> connection;
@property (nonatomic, strong) IOSCallbackHandler *callbackHandler;
@property (nonatomic, strong) IOSNFCSessionManager * _Nonnull nfcSessionManager;

@property (nonatomic, copy) void (^completionHandler)(DNIeInfo * _Nullable, DNIeFWError * _Nullable);

@end

@implementation DNIeBasicService

- (instancetype)init {
    self = [super init];
    if (self) {
        self.nfcSessionManager = [[IOSNFCSessionManager alloc] init];
        self.nfcSessionManager.delegate = self;
    }
    return self;
}

- (void)readBasicInfoWithCAN:(nonnull NSString *)can completion:(nonnull void (^)(DNIeInfo * _Nullable, DNIeFWError * _Nullable))completion {
    
    self.completionHandler = completion;
    
    [self initCallbackHandler:can andPin:nil];
    [LogUtils print:@"Starting NFC session..."];
    [self.nfcSessionManager beginSession];
}

- (void)initCallbackHandler:(NSString *)can andPin:(nullable NSString *)pin{
	self.callbackHandler = [[IOSCallbackHandler alloc] initWithCan:can pin:pin];
}
#pragma mark - IOSNFCSessionDelegate

- (void)didInvalidateNFCSessionWithError:(NSError *)error {
	[LogUtils print:@"NFC session invalidated"];
	[LogUtils print:@"%@", error.localizedDescription];
	
	if ([error.domain isEqualToString:NFCErrorDomain]) {
		DNIeFWError *fwError = [HandleNFCError getNFCErrorWithNSError:error];
        self.completionHandler(nil, fwError);
	}
}

- (void)didBecomeActive {
	[LogUtils print:@"NFC session is active."];
}

- (void)didDetectNFCTag:(id<NFCISO7816Tag>)tag {
	[LogUtils print:@"🔍 Tag detected: %@", tag];
	
	self.connection = (id<EsGobJmulticardConnectionApduConnection>)
		[[IOSApduConnection alloc] initWithTag:tag nfcSession:self.nfcSessionManager];

	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
		
		[LogUtils print:@"ℹ️ Using InfoWrapper (CAN only)"];
		EsGobJmulticardIosDnieInfoWrapper *infoWrapper =
			[EsGobJmulticardIosDnieFactoryWrapper getDnieInfoWithEsGobJmulticardConnectionApduConnection:self.connection
										   withJavaxSecurityAuthCallbackCallbackHandler:self.callbackHandler];

		if (infoWrapper && [infoWrapper getDnieInfo]) {
            DNIeInfo *dnieInfo = [self createDNIeInfoFromWrapper:infoWrapper];
            
			dispatch_async(dispatch_get_main_queue(), ^{
                
                self.completionHandler(dnieInfo, nil);
                [self invalidateWithLocalizedSuccess];
			});
		} else {
			[self handleInfoWrapperError:infoWrapper fallbackMessageKey:@"nfc_connection_error"];
		}
		return;
	});
}

#pragma mark - Private

- (void)invalidateWithLocalizedSuccess {
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
		NSString *msg = [LocalizationUtils localizedStringForKey:@"nfc_connection_success"];
		[self.nfcSessionManager invalidateSessionManuallyWithAlertMessage:msg];
	});
}

- (void)handleInfoWrapperError:(nullable EsGobJmulticardIosDnieInfoWrapper *)wrapper fallbackMessageKey:(NSString *)key {
	NSDictionary *errorInfo = [self getInfoWrapperError:wrapper];
	NSInteger code = [errorInfo[@"code"] integerValue];
	
	DNIeFWError *fwError = [HandleThirdPartyError getDNIEErrorWithCode:code];
    self.completionHandler(nil, fwError);
    
	NSString *localized = NSLocalizedStringFromTable(fwError.localizationKey, @"LocalizableError", nil);
	[self.nfcSessionManager invalidateSessionManuallyWithErrorMessage:localized];
}

- (NSDictionary<NSString *, id> *)getInfoWrapperError:(EsGobJmulticardIosDnieInfoWrapper *)wrapper {
	int errorCode = (int)[wrapper getErrorCode];
	NSString *errorMessage = [wrapper getErrorMessage] ?: @"";
	
	return @{
		@"code": @(errorCode),
		@"message": errorMessage
	};
}

- (DNIeInfo *)createDNIeInfoFromWrapper:(EsGobJmulticardIosDnieInfoWrapper *)infoWrapper {
    EsGobJmulticardIosDnieInfo *info = [infoWrapper getDnieInfo];
	
	IOSByteArray *facePhotoArray = [info getFacePhoto];
	IOSByteArray *signaturePhotoArray = [info getSignaturePhoto];
	NSString *facePhotoBase64 = facePhotoArray ? [[facePhotoArray toNSData] base64EncodedStringWithOptions:0] : nil;
	NSString *signaturePhotoBase64 = signaturePhotoArray ? [[signaturePhotoArray toNSData] base64EncodedStringWithOptions:0] : nil;

    
    DNIeInfo * dnieInfo = [[DNIeInfo alloc] initWithDniNumber:[info getDniNumber]
                                                    docNumber:[info getDocNumber]
                                                         name:[info getName]
                                                      surname:[info getSurname]
                                                       gender:[info getGender]
                                                  nationality:[info getNationality]
                                                  dateOfBirth:[info getDateOfBirth]
                                                 dateOfExpiry:[info getDateOfExpiry]
                                                    birthCity:[info getBirthCity]
                                                birthProvince:[info getBirthProvince]
                                                 birthCountry:[info getBirthCountry]
                                             residenceAddress:[info getResidenceAddress]
                                                residenceCity:[info getResidenceCity]
                                            residenceProvince:[info getResidenceProvince]
                                              facePhotoBase64:facePhotoBase64
                                         signaturePhotoBase64:signaturePhotoBase64];
	[dnieInfo logProperties];
    
	return dnieInfo;
}



 
@end
