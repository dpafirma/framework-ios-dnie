//
//  PublicDNIeDTO.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 15/4/25.
//
///Public  imports
#import <DNIeFW/DNIeSecureSession.h>

NS_ASSUME_NONNULL_BEGIN

@interface DNIeSecureSession (Internal)

- (instancetype)initWithCan:(NSString *)can
                        pin:(NSString *)pin;

- (void) startNFCConnectionWithCompletion:(nonnull void (^)(DNIeFWError * _Nullable))completion;

@end

NS_ASSUME_NONNULL_END
