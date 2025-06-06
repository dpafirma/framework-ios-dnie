//
//  Base64Utils.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

@interface Base64Utils: NSObject

+ (NSData *)   decode:           (NSString *) str urlSafe:(Boolean) urlSafe;
+ (NSData *)   decode:           (NSString *)str;
+ (NSString *) encode:           (NSData *) source;
+ (NSString *) encode:           (NSData *) source urlSafe:(Boolean) urlSafe;
+ (NSString *) urlSafeEncode:    (NSString *) string;

@end
