//
//  ByteArrayUtils.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>
#import <CoreNFC/CoreNFC.h>

///J2OBJC imports
#import "java/io/Serializable.h"
#import "IOSPrimitiveArray.h"

NS_ASSUME_NONNULL_BEGIN

@interface ByteArrayUtils : NSObject

+ (nullable NSArray<NSNumber *> *)hexStringToByteArray:(NSString *)hexString;
+ (nullable NFCISO7816APDU *)getApduFromAPDUIOSByteArray:(IOSByteArray *)apdu;

@end

NS_ASSUME_NONNULL_END
