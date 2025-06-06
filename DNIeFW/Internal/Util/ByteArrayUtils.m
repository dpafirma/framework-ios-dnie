//
//  ByteArrayUtils.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Internal imports
#import "ByteArrayUtils.h"
#import "LogUtils.h"

@implementation ByteArrayUtils

+ (NSArray<NSNumber *> *)hexStringToByteArray:(NSString *)hexString {
	NSMutableArray<NSNumber *> *byteArray = [NSMutableArray array];
	NSUInteger length = [hexString length];

	for (NSUInteger i = 0; i < length; i += 2) {
		if (i + 2 > length) {
			return nil;
		}

		NSString *byteString = [hexString substringWithRange:NSMakeRange(i, 2)];
		unsigned int byteValue;
		if ([[NSScanner scannerWithString:byteString] scanHexInt:&byteValue]) {
			[byteArray addObject:@(byteValue)];
		} else {
			return nil;
		}
	}

	return byteArray;
}

+ (NFCISO7816APDU *)getApduFromAPDUIOSByteArray:(IOSByteArray *)apdu {
	NSMutableData *data = [NSMutableData data];
	NSMutableArray<NSNumber *> *byteArray = [NSMutableArray array];

	NSUInteger length = [apdu length];

	for (NSUInteger i = 0; i < length; i++) {
		jbyte value = [apdu byteAtIndex:i];
		[data appendBytes:&value length:1];
		[byteArray addObject:@((uint8_t)value)];
	}

	NSMutableString *hexString = [NSMutableString string];
	for (NSNumber *byte in byteArray) {
		[hexString appendFormat:@"%02X", [byte unsignedCharValue]];
	}

	[LogUtils print:@"Received internalTransmit APDU HexString: %@", hexString];

	NSArray<NSNumber *> *formattedArray = [self hexStringToByteArray:hexString];
	NSMutableArray<NSString *> *formattedHex = [NSMutableArray array];
	for (NSNumber *b in formattedArray) {
		[formattedHex addObject:[NSString stringWithFormat:@"0x%02X", b.unsignedCharValue]];
	}
	
	[LogUtils print:@"Creating APDU to send with bytes: %@", [formattedHex componentsJoinedByString:@", "]];

	return [[NFCISO7816APDU alloc] initWithData:data];
}

@end
