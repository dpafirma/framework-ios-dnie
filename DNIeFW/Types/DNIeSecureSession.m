//
//  DNIeSecureSession.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/5/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Public imports
#import <CoreNFC/CoreNFC.h>
#import <DNIeFW/DNIeSecureSession.h>
#import <DNIeFW/DNIeSignatureAlgorithm.h>

///Internal imports
#import "DNIeSecureSession+Internal.h"
#import "IOSApduConnection.h"
#import "IOSCallbackHandler.h"
#import "LocalizationUtils.h"
#import "LogUtils.h"
#import "PrivateConstants.h"
#import "HandleNFCError.h"
#import "HandleThirdPartyError.h"
#import "IOSNFCSessionManager.h"

///J2OBJC  imports
#import "es/gob/jmulticard/connection/ApduConnection.h"
#import "es/gob/jmulticard/ios/DnieFactoryWrapper.h"
#import "es/gob/jmulticard/ios/DnieWrapper.h"
#import "java/security/cert/X509Certificate.h"

@interface DNIeSecureSession() <IOSNFCSessionDelegate>

@property (nonatomic, strong) IOSNFCSessionManager * _Nonnull nfcSessionManager;
@property (nonatomic, strong) id<EsGobJmulticardConnectionApduConnection> connection;
@property (nonatomic, strong) IOSCallbackHandler *callbackHandler;

@property (nonatomic, strong) EsGobJmulticardIosDnieWrapper *wrapper;
@property (nonatomic, strong) DNIeFWError *fwError;

@property (nonatomic, copy) void (^completionHandler)(DNIeFWError * _Nullable);

@end

@implementation DNIeSecureSession

- (instancetype)initWithCan:(NSString *)can pin:(NSString *)pin {
    self = [super init];
    if (self) {
        self.callbackHandler = [[IOSCallbackHandler alloc] initWithCan:can pin:pin];
        self.nfcSessionManager = [[IOSNFCSessionManager alloc] init];
        self.nfcSessionManager.delegate = self;
        
        [LogUtils print:@"Initialized with action: %@", @"Sign"];
    }
    
    return self;
}

- (void) startNFCConnectionWithCompletion:(nonnull void (^)(DNIeFWError * _Nullable))completion {
    [LogUtils print:@"Starting NFC session..."];
    self.completionHandler = completion;
    [self.nfcSessionManager beginSession];
}

- (nullable NSData *)getSigningCertificateWithError:(DNIeFWError * _Nullable * _Nullable)error {
    IOSObjectArray *aliasArray = [self.wrapper getAliases];
    
    NSMutableArray<NSString *> *aliases = [NSMutableArray array];
    NSInteger length = (NSInteger)[aliasArray performSelector:@selector(length)];
    
    for (NSInteger i = 0; i < length; i++) {
        id obj = [aliasArray objectAtIndex:i];
        if ([obj isKindOfClass:[NSString class]]) {
            [aliases addObject:(NSString *)obj];
        }
    }
    
    if (aliases.count > 0) {
        JavaSecurityCertX509Certificate *cert = [self.wrapper getCertificateWithNSString:PrivateConstants.certFromDNIe];
        
        if (cert != nil) {
            NSData *certData = [[cert getEncoded] toNSData];
            return certData;
        }
    }
	
    return nil;
}

- (NSData *)signData:(NSData *)dataToSign
                        algorithm:(DNIeSignatureAlgorithm) algorithm
                        error:(DNIeFWSigningError * _Nullable * _Nullable)error {
    
        id<EsGobJmulticardCardPrivateKeyReference> keyRef =
        [self.wrapper getPrivateKeyWithNSString:PrivateConstants.certFromDNIe];
        
        if (keyRef) {
            IOSByteArray *signature = [self.wrapper signWithByteArray:[IOSByteArray arrayWithNSData:dataToSign]
                                                         withNSString:NSStringFromDNIeSignatureAlgorithm(algorithm)
                           withEsGobJmulticardCardPrivateKeyReference:keyRef];
            
            
			if (signature.length > 0) {
				NSData *pkcs1 = [signature toNSData];
				return pkcs1;
			} else {
                DNIeFWError *fwError = [HandleThirdPartyError getDNIEErrorWithCode: [self.wrapper getErrorCode]];
				
                if (fwError.code == [DNIeFWError badPin].code) {
					int retriesLeft = [self.wrapper getPinRetriesLeft];
                    *error = [DNIeFWSigningError initWithDNIeFWError:fwError pinRetriesLeft:retriesLeft];
                } else {
                    *error = [DNIeFWSigningError initWithDNIeFWError:fwError];
                }
				
				[self handleDNIeFWSigningError:*error];
				return nil;
			}
        } else {
			DNIeFWError *fwError = [HandleThirdPartyError getDNIEErrorWithCode: [self.wrapper getErrorCode]];
            *error = [DNIeFWSigningError initWithDNIeFWError:fwError];
			
			[self handleDNIeFWSigningError:*error];
			return nil;
        }
}

- (void)finish{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSString *msg = [LocalizationUtils localizedStringForKey:@"nfc_connection_success"];
        [self.nfcSessionManager invalidateSessionManuallyWithAlertMessage:msg];
    });
}


#pragma mark - IOSNFCSessionDelegate

- (void)didInvalidateNFCSessionWithError:(NSError *)error {
    [LogUtils print:@"NFC session invalidated"];
    [LogUtils print:@"%@", error.localizedDescription];
    
    if ([error.domain isEqualToString:NFCErrorDomain]) {
        DNIeFWError *fwError = [HandleNFCError getNFCErrorWithNSError:error];
        
        if (self.completionHandler != nil) {
            self.completionHandler(fwError);
        } else {
            self.fwError = fwError;
        }
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
        
        [LogUtils print:@"🔐 Using Sign Wrapper"];
        self.wrapper =
            [EsGobJmulticardIosDnieFactoryWrapper getDnieWithEsGobJmulticardConnectionApduConnection:self.connection
                               withJavaxSecurityAuthCallbackCallbackHandler:self.callbackHandler];

        if (self.wrapper && [self.wrapper getDnie]) {
            [LogUtils print:@"📄 DNIe object retrieved"];
             
            if (self.completionHandler != nil) {
                self.completionHandler(nil);
                self.completionHandler = nil;
            }
            
        } else {
            [self handleWrapperError:self.wrapper fallbackMessageKey:@"nfc_connection_error"];
        }
    });
}

- (void)handleWrapperError:(nullable EsGobJmulticardIosDnieWrapper *)wrapper fallbackMessageKey:(NSString *)key {
    
    NSDictionary *errorInfo = [self getWrapperError:wrapper];
    NSInteger code = [errorInfo[@"code"] integerValue];
    
    DNIeFWError *fwError = [HandleThirdPartyError getDNIEErrorWithCode:code];
    NSString *localized = NSLocalizedStringFromTable(fwError.localizationKey, @"LocalizableError", nil);
    [self.nfcSessionManager invalidateSessionManuallyWithErrorMessage:localized];
    
    if (self.completionHandler != nil) {
        self.completionHandler(fwError);
    } else {
        self.fwError = fwError;
    }
}

- (void)handleDNIeFWSigningError:(DNIeFWSigningError *)error {
	NSString *localized = NSLocalizedStringFromTable(error.localizationKey, @"LocalizableError", nil);
	[self.nfcSessionManager invalidateSessionManuallyWithErrorMessage:localized];
}

- (NSDictionary<NSString *, id> *)getWrapperError:(EsGobJmulticardIosDnieWrapper *)wrapper {
    int errorCode = (int)[wrapper getErrorCode];
    NSString *errorMessage = [wrapper getErrorMessage] ?: @"";
    
    return @{
        @"code": @(errorCode),
        @"message": errorMessage
    };
}

@end

