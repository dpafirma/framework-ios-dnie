//
//  LogUtils.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

#import "LogUtils.h"

/// Native imports
#import <Foundation/Foundation.h>
#import <CoreNFC/CoreNFC.h>

/// J2OBJC imports
#import "IOSPrimitiveArray.h"
#import "IOSObjectArray.h"
#include "java/security/interfaces/RSAPublicKey.h"
#import "Dnie.h"

@implementation LogUtils

static BOOL _loggingEnabled = YES;

+ (BOOL)loggingEnabled {
	return _loggingEnabled;
}

+ (void)setLoggingEnabled:(BOOL)enabled {
	_loggingEnabled = enabled;
}

+ (void)print:(NSString *)format, ... {
	if (!_loggingEnabled) return;

	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
	NSString *timestamp = [formatter stringFromDate:[NSDate date]];

	NSString *caller = @"Unknown Caller";
	NSArray<NSString *> *stack = [NSThread callStackSymbols];
	if (stack.count > 2) {
		NSString *line = stack[2];
		NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"\\s+[0-9]+\\s+[^\\s]+\\s+[^\\s]+\\s+(.+?)\\s(\\+|$)"
																			   options:0
																				 error:nil];

		NSTextCheckingResult *match = [regex firstMatchInString:line options:0 range:NSMakeRange(0, line.length)];
		if (match && [match numberOfRanges] > 1) {
			NSRange methodRange = [match rangeAtIndex:1];
			if (methodRange.location != NSNotFound) {
				caller = [line substringWithRange:methodRange];
			}
		} else {
			caller = [line stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
		}
	}

	va_list args;
	va_start(args, format);
	NSString *logMessage = [[NSString alloc] initWithFormat:format arguments:args];
	va_end(args);

	NSLog(@"[%@] 📍 %@ → %@", timestamp, caller, logMessage);
}

+ (void)printIOSByteArray:(IOSByteArray *)iosByteArray {
	if (!_loggingEnabled || !iosByteArray) return;

	NSMutableArray<NSString *> *hexBytes = [NSMutableArray array];
	NSUInteger length = [iosByteArray length];

	for (NSUInteger i = 0; i < length; i++) {
		int8_t byte = [iosByteArray byteAtIndex:i];
		[hexBytes addObject:[NSString stringWithFormat:@"%02X", (uint8_t)byte]];
	}

	NSString *hexString = [hexBytes componentsJoinedByString:@""];
	[LogUtils print:@"📥 Received APDUResponse. HexString: %@", hexString];
}

+ (void)printNativeAPDUCommand:(NFCISO7816APDU *)apduCommand {
	if (!_loggingEnabled || !apduCommand) return;

	NSData *data = [apduCommand data];
	if (data) {
		const unsigned char *bytes = (const unsigned char *)[data bytes];
		NSMutableArray<NSString *> *hexBytes = [NSMutableArray arrayWithCapacity:data.length];
		for (NSUInteger i = 0; i < data.length; i++) {
			[hexBytes addObject:[NSString stringWithFormat:@"%02hhx", bytes[i]]];
		}
		
		//TODO: Select which one we want to log
		[LogUtils print:@"📤 Sending Native APDU. Bytes: %@", data];
		//[LogUtils print:@"📤 Sending Native APDU. HexString: %@", hexString];
	}
}

+ (void)printDNIeAttributes:(EsGobJmulticardCardDnieDnie *)dnie {
	if (!_loggingEnabled || !dnie) return;

	[LogUtils print:@"🔍 DNIe attributes read:"];

	NSString *idesp = [dnie getIdesp];
	[LogUtils print:@"🆔 IDESP: %@", idesp ?: @"not available"];

	IOSByteArray *serialNumber = [dnie getSerialNumber];
	[LogUtils print:@"🔢 Serial number: %@", serialNumber ?: @"not available"];

	IOSObjectArray *aliases = [dnie getAliases];
	[LogUtils print:@"🏷️ Available aliases: %@", aliases ?: @"not available"];

	[LogUtils print:@"💳 Card name: %@", [dnie getCardName]];

	BOOL isSecurityChannelOpen = [dnie isSecurityChannelOpen];
	[LogUtils print:@"🔐 Secure channel open: %@", isSecurityChannelOpen ? @"Yes" : @"No"];

	id<JavaSecurityInterfacesRSAPublicKey> rsaPublicKey = [dnie getIccCertPublicKey];
	if (rsaPublicKey) {
		[LogUtils print:@"🔑 RSA public key: %@", rsaPublicKey];
	} else {
		[LogUtils print:@"🔑 RSA public key: not available"];
	}
}

@end
