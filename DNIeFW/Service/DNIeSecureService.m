//
//  CustomDNIeInfoExtendedWrapper.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/5/25.
//

///Public imports
#import <DNIeFW/DNIeSecureService.h>
#import <DNIeFW/DNIeSignatureAlgorithm.h>

///Internal imports
#import "DNIeSecureSession+Internal.h"

@interface DNIeSecureService ()

@property (nonatomic, strong) DNIeSecureSession *dnieSecureSession;
@property (nonatomic, copy) void (^completionHandler)(DNIeSecureSession * _Nullable, DNIeFWError * _Nullable);

@end

@implementation DNIeSecureService

- (instancetype)init {
    self = [super init];
    if (self) {

    }
    return self;
}

- (void)startSecureSessionWithCan:(NSString *) can
                              pin:(NSString *) pin
                       completion:(void (^)(id<DNIeSecureSessionProtocol> _Nullable dnieSecureSession,
											DNIeFWError * _Nullable error)
								   )completion {
	
    self.dnieSecureSession = [[DNIeSecureSession alloc] initWithCan:can pin:pin];

    [self.dnieSecureSession startNFCConnectionWithCompletion:^(DNIeFWError * _Nullable error) {
        
        if (error != nil) {
            completion(nil, error);
        } else {
            completion(self.dnieSecureSession, nil);
        }
        
    }];
}

- (void)signDataWithData:(NSData *)dataToSign
               algorithm:(DNIeSignatureAlgorithm)algorithm
                    can:(NSString *)can
                    pin:(NSString *)pin
              completion:(void (^)(NSData * _Nullable dataSigned,
								   DNIeFWSigningError * _Nullable error)
						  )completion {
    
    self.dnieSecureSession = [[DNIeSecureSession alloc] initWithCan:can pin:pin];
    
    [self.dnieSecureSession startNFCConnectionWithCompletion:^(DNIeFWError * _Nullable error) {
        
        if (error != nil) {
            DNIeFWSigningError *signError = [DNIeFWSigningError initWithDNIeFWError:error];
            completion(nil, signError);
        } else {
            DNIeFWSigningError *signError = nil;
			NSData *dataSigned = [self.dnieSecureSession signData:dataToSign algorithm:algorithm error: &signError];
            
			if (signError == nil) {
				[self.dnieSecureSession finish];
			}
            completion(dataSigned, signError);
        }
        
    }];
    
}


 
@end
