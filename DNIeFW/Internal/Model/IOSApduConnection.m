///
//  IOSApduConnection.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

/// Native imports
#import <Foundation/Foundation.h>
#import <CoreNFC/CoreNFC.h>

/// Public imports
#import <DNIeFW/DNIeFWError.h>

/// Internal imports
#import "IOSApduConnection.h"
#import "StateAPDUCommand.h"
#import "IOSPrimitiveArray.h"
#import "ByteArrayUtils.h"
#import "LogUtils.h"
#import "IOSNFCSessionManager.h"

/// J2OBJC imports
#import "IOSArray.h"
#import "es/gob/jmulticard/apdu/ResponseApdu.h"
#import "es/gob/jmulticard/connection/ApduConnection.h"

@interface IOSApduConnection () {
	dispatch_semaphore_t _semaphore;
	BOOL _firstReset;
}

@property (nonatomic, strong) id<NFCISO7816Tag> nfcTag;
@property (nonatomic, strong) IOSNFCSessionManager *nfcSession;

@end

@implementation IOSApduConnection

#pragma mark - Init

- (instancetype)initWithTag:(id<NFCISO7816Tag>)tag
			nfcSession:(IOSNFCSessionManager *)session {
	self = [super init];
	if (self) {
		_nfcTag = tag;
		_nfcSession = session;
		_semaphore = dispatch_semaphore_create(0);
		_firstReset = YES;
	}
	return self;
}

#pragma mark - Connection Handling

/// Open connection (no-op for iOS NFC)
- (void)open {}

/// Close the NFC session
- (void)close {
	[self.nfcSession invalidateSessionManually];
}

#pragma mark - JMulticard Protocol Support (Stub Implementations)

/// Protocol setup stub
- (void)setProtocolWithEsGobJmulticardConnectionApduConnectionProtocol:(id)p {}

/// Terminal selection stub
- (void)setTerminalWithInt:(jint)t {}

/// Returns terminal description
- (NSString *)getTerminalInfoWithInt:(jint)terminal {
	return @"iOS NFC";
}

/// Returns available terminals (dummy array with one entry)
- (IOSLongArray *)getTerminalsWithBoolean:(jboolean)onlyWithCardPresent {
	IOSLongArray *longArray = [IOSLongArray arrayWithLength:1];
	[longArray replaceLongAtIndex:0 withLong:0];
	return longArray;
}

/// Always open in iOS NFC
- (jboolean)isOpen {
	return true;
}

/// Sub connection returns itself
- (id<EsGobJmulticardConnectionApduConnection>)getSub {
	return self;
}

/// Max size of APDU supported
- (jint)getMaxApduSize {
	return 0xff;
}

#pragma mark - NFC APDU Handling

/// Resets NFC connection with optional initial command
- (IOSByteArray *)reset {
	[LogUtils print:@"Sending Reset APDU"];

	if (_firstReset) {
		_firstReset = NO;
		[self getNFCTagData];
		StateAPDUCommand *state = [[StateAPDUCommand alloc] init];

		dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
			[self sendResetCardCommandWithCompletion:^(IOSByteArray *response) {
				state.returnIOSByteArray = response;
				state.isFinished = YES;
				dispatch_semaphore_signal(self->_semaphore);
			}];
		});

		dispatch_semaphore_wait(_semaphore, DISPATCH_TIME_FOREVER);
		return [IOSByteArray arrayWithLength:0];
	} else {
		return [IOSByteArray arrayWithLength:0];
	}
}

/// Reads historical or application data from the NFC tag
- (IOSByteArray *)getNFCTagData {
	IOSByteArray *byteArray = nil;
	if ([self.nfcTag historicalBytes] != nil) {
		byteArray = [IOSByteArray arrayWithNSData:[self.nfcTag historicalBytes]];
		if ([byteArray length] > 0) {
			[LogUtils print:@"Historical Bytes: %@", byteArray];
		}
	}
	if ([self.nfcTag applicationData] != nil) {
		byteArray = [IOSByteArray arrayWithNSData:[self.nfcTag applicationData]];
		if ([byteArray length] > 0) {
			[LogUtils print:@"Application Data Bytes: %@", byteArray];
		}
	}
	return byteArray;
}

/// Sends a basic APDU to select MF (00 A4 00 00)
- (void)sendResetCardCommandWithCompletion:(void (^)(IOSByteArray *response))completion {
	NSData *apduData = [NSData dataWithBytes:(uint8_t[]){0x00, 0xA4, 0x00, 0x00} length:4];
	NFCISO7816APDU *apdu = [[NFCISO7816APDU alloc] initWithData:apduData];
	if (!apdu) {
		completion(nil);
		return;
	}
	[self sendApdu:apdu completion:completion];
}

/// Core method that receives APDU, sends it to the tag, and waits for response
- (EsGobJmulticardApduResponseApdu *)internalTransmitWithByteArray:(IOSByteArray *)apdu {
	NFCISO7816APDU *apduCommand = [ByteArrayUtils getApduFromAPDUIOSByteArray:apdu];

	if (!apduCommand) {
		[LogUtils print:@"Error: APDU can't be created"];
		return nil;
	}

	StateAPDUCommand *state = [[StateAPDUCommand alloc] init];

	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
		[self sendApdu:apduCommand completion:^(IOSByteArray *response) {
			state.returnIOSByteArray = response;
			state.isFinished = YES;
			dispatch_semaphore_signal(self->_semaphore);
		}];
	});

	dispatch_semaphore_wait(_semaphore, DISPATCH_TIME_FOREVER);
	return [[EsGobJmulticardApduResponseApdu alloc] initWithByteArray:state.returnIOSByteArray];
}

/// Sends a native APDU using iOS CoreNFC, wraps response in IOSByteArray
- (void)sendApdu:(NFCISO7816APDU *)apdu completion:(void (^)(IOSByteArray *response))completion {
	[LogUtils printNativeAPDUCommand:apdu];

	[self.nfcTag sendCommandAPDU:apdu
		   completionHandler:^(NSData *responseData, uint8_t sw1, uint8_t sw2, NSError * _Nullable error) {
			if (error) {
				completion(nil);
				return;
			}

			NSMutableData *combined = [responseData mutableCopy];
			uint8_t swBytes[] = { sw1, sw2 };
			[combined appendBytes:swBytes length:2];

			IOSByteArray *byteArray = [IOSByteArray arrayWithLength:(jint)combined.length];
			const uint8_t *bytes = combined.bytes;

			for (NSUInteger i = 0; i < combined.length; i++) {
				[byteArray replaceByteAtIndex:(jint)i withByte:(jbyte)bytes[i]];
			}

			[LogUtils printIOSByteArray:byteArray];
			completion(byteArray);
	}];
}

@end
