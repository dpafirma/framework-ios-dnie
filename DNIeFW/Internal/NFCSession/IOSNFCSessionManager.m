//
//  IOSNFCSessionManager.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

/// Native imports
#import <Foundation/Foundation.h>
#import <CoreNFC/CoreNFC.h>

/// Internal imports
#import "IOSNFCSessionManager.h"
#import "LocalizationUtils.h"
#import "HandleThirdPartyError.h"
#import "LogUtils.h"

/// Public imports
#import <DNIeFW/DNIeFWError.h>

@implementation IOSNFCSessionManager

- (instancetype)init {
	self = [super init];
	if (self) {
		_tagDetected = NO;
		[LogUtils print:@"Init completed"];
	}
	return self;
}

- (void)beginSession {
	[LogUtils print:@"Attempting to begin NFC session"];

	if (![NFCTagReaderSession readingAvailable]) {
		[LogUtils print:@"❌ NFC not supported on this device"];
		return;
	}

	self.nfcSession = [[NFCTagReaderSession alloc] initWithPollingOption:NFCPollingISO14443
								 delegate:(NSObject<NFCTagReaderSessionDelegate> *)self
									queue:nil];

	NSString *alertMessage = [LocalizationUtils localizedStringForKey:@"nfc_dni_warning"];
	[LogUtils print:@"%@", [NSString stringWithFormat:@"Alert message set: %@", alertMessage]];
	[self setAlertMessageSafe:self.nfcSession message:alertMessage];

	[self.nfcSession beginSession];
	[LogUtils print:@"✅ NFC session started"];
}

- (void)resetSession {
	[LogUtils print:@"Restarting NFC polling"];
	[self.nfcSession restartPolling];
}

- (void)closeSession {
	[LogUtils print:@"Closing session"];
	[self invalidateSessionManually];
}

- (void)invalidateSessionManually {
	[LogUtils print:@"Manually invalidating session"];
	self.wasManuallyInvalidated = YES;
	[self.nfcSession invalidateSession];
}

- (void)invalidateSessionManuallyWithAlertMessage:(NSString *)message {
	[LogUtils print:@"%@", [NSString stringWithFormat:@"Invalidating session with alert: %@", message]];
	[self setAlertMessageSafe:self.nfcSession message:message];
	[self invalidateSessionManually];
}

- (void)invalidateSessionManuallyWithErrorMessage:(NSString *)message {
	[LogUtils print:@"%@", [NSString stringWithFormat:@"Invalidating session with error: %@", message]];
	self.wasManuallyInvalidated = YES;
	if (!message || [message isEqualToString:@""]) {
		message = @"[iOS] NFC Error desconocido.";
	}
	[self.nfcSession invalidateSessionWithErrorMessage:message];
}

- (BOOL)isOpen {
	BOOL open = self.nfcSession.isReady;
	[LogUtils print:@"%@", [NSString stringWithFormat:@"Session is %@", open ? @"OPEN" : @"CLOSED"]];
	return open;
}

- (NSObject *)getDetectedTag {
	[LogUtils print:@"%@", [NSString stringWithFormat:@"Returning detected tag: %@", self.nfcTag]];
	return self.nfcTag;
}

#pragma mark - NFCTagReaderSessionDelegate

- (void)tagReaderSessionDidBecomeActive:(NFCTagReaderSession *)session {
	[LogUtils print:@"NFC session did become active"];
	if ([self.delegate respondsToSelector:@selector(didBecomeActive)]) {
		[self.delegate didBecomeActive];
	}
}

- (void)tagReaderSession:(NFCTagReaderSession *)session didDetectTags:(NSArray<id<NFCTag>> *)tags {
	[LogUtils print:@"%@", [NSString stringWithFormat:@"⚠️ Tag(s) detected: %lu", (unsigned long)tags.count]];

	if (tags.count > 1) {
		NSString *msg = [LocalizationUtils localizedStringForKey:@"nfc_multiple_tags_error"];
		[LogUtils print:@"❌ Multiple tags detected. Invalidating session."];
		[self invalidateSessionManuallyWithErrorMessage:msg];
		return;
	}

	id<NFCTag> tag = tags.firstObject;
	if (!tag) {
		NSString *msg = [LocalizationUtils localizedStringForKey:@"nfc_no_tag_error"];
		[LogUtils print:@"❌ No valid tag detected. Invalidating session."];
		[self invalidateSessionManuallyWithErrorMessage:msg];
		return;
	}

	[LogUtils print:@"%@", [NSString stringWithFormat:@"Connecting to tag: %@", tag]];

	[session connectToTag:(id<NFCTag>)tag completionHandler:^(NSError * _Nullable error) {
		if (error) {
			DNIeFWError *fwError = [HandleThirdPartyError getDNIEErrorWithCode:error.code];
			[LogUtils print:@"DNIeFWError: %@", fwError];
			[self invalidateSessionManuallyWithErrorMessage:fwError.errorDescription];
			return;
		}

		if (@available(iOS 13.0, *)) {
			NSString *tagClass = NSStringFromClass([tag class]);
			[LogUtils print:@"%@", [NSString stringWithFormat:@"Tag class: %@", tagClass]];

			if ([tagClass containsString:@"ISO7816"]) {
				self.nfcTag = (id<NFCISO7816Tag>)tag;
				self.tagDetected = YES;
				[LogUtils print:@"✅ ISO7816 tag accepted"];

				if ([self.delegate respondsToSelector:@selector(didDetectNFCTag:)]) {
					[self.delegate didDetectNFCTag:(id<NFCISO7816Tag>)tag];
				}

				NSString *alert = [LocalizationUtils localizedStringForKey:@"nfc_dni_active_conexion_warning"];
				[self setAlertMessageSafe:self.nfcSession message:alert];
			} else if ([tagClass containsString:@"FeliCa"] ||
					   [tagClass containsString:@"MiFare"] ||
					   [tagClass containsString:@"ISO15693"]) {
				NSString *msg = [LocalizationUtils localizedStringForKey:@"nfc_unsupported_tag_error"];
				[LogUtils print:@"%@", [NSString stringWithFormat:@"❌ Unsupported tag type: %@", tagClass]];
				[self invalidateSessionManuallyWithErrorMessage:msg];
			} else {
				NSString *msg = [LocalizationUtils localizedStringForKey:@"nfc_no_tag_error"];
				[LogUtils print:@"%@", [NSString stringWithFormat:@"❌ Unknown tag type: %@", tagClass]];
				[self invalidateSessionManuallyWithErrorMessage:msg];
			}
		}
	}];
}

- (void)tagReaderSession:(NFCTagReaderSession *)session didInvalidateWithError:(NSError *)error {
	[LogUtils print:@"%@", [NSString stringWithFormat:@"Session invalidated with error: %@", error]];

	if (self.wasManuallyInvalidated) {
		[LogUtils print:@"Session was manually invalidated."];
		self.wasManuallyInvalidated = NO;
		return;
	}

	if ([self.delegate respondsToSelector:@selector(didInvalidateNFCSessionWithError:)]) {
		[self.delegate didInvalidateNFCSessionWithError:error];
	}
}

#pragma mark - Alert Message Safety

- (void)setAlertMessageSafe:(NFCTagReaderSession *)session message:(NSString *)message {
	if (message && ![message isEqualToString:@""]) {
		session.alertMessage = message;
	} else {
		session.alertMessage = @"[iOS] NFC Unknown ERROR.";
		[LogUtils print:@"⚠️ Warning: tried to set nil or empty alertMessage. Default message applied."];
	}
}

@end
