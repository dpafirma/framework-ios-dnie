//
//  LogUtils.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

@class IOSByteArray;
@class NFCISO7816APDU;
@class EsGobJmulticardCardDnieDnie;

NS_ASSUME_NONNULL_BEGIN

@interface LogUtils : NSObject

/// Controls global logging visibility
@property (class, nonatomic, assign) BOOL loggingEnabled;

+ (void)print:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);
+ (void)printIOSByteArray:(IOSByteArray *)iosByteArray;
+ (void)printNativeAPDUCommand:(NFCISO7816APDU *)apduCommand;
+ (void)printDNIeAttributes:(EsGobJmulticardCardDnieDnie *)dnie;

@end

NS_ASSUME_NONNULL_END
