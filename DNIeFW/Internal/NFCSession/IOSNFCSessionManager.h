//
//  IOSNFCSessionManager.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

/// Native imports
#import <Foundation/Foundation.h>
#import <CoreNFC/CoreNFC.h>

/// Internal imports
#import "IOSNFCSessionDelegate.h"

NS_ASSUME_NONNULL_BEGIN

/**
 * Manager for handling native iOS NFC sessions with Spanish DNIe.
 */
@interface IOSNFCSessionManager : NSObject <NFCTagReaderSessionDelegate>

/// Delegate to notify about NFC session events
@property (nonatomic, weak, nullable) id<IOSNFCSessionDelegate> delegate;

/// Active NFC session instance
@property (nonatomic, strong) NFCTagReaderSession *nfcSession;

/// Detected ISO7816-compatible tag
@property (nonatomic, strong) id<NFCISO7816Tag> nfcTag;

/// Indicates if session was closed manually
@property (nonatomic, assign) BOOL wasManuallyInvalidated;

/// Indicates if a tag has been detected
@property (nonatomic, assign) BOOL tagDetected;

/// Begins a new NFC session
- (void)beginSession;

/// Resets the current NFC session and creates a new one
- (void)resetSession;

/// Closes the current NFC session
- (void)closeSession;

/// Invalidates the session manually without showing an alert
- (void)invalidateSessionManually;

/// Invalidates the session manually and shows a custom alert message
- (void)invalidateSessionManuallyWithAlertMessage:(NSString *)message;

/// Invalidates the session manually and shows an error alert
- (void)invalidateSessionManuallyWithErrorMessage:(NSString *)message;

/// Returns YES if the session is currently open
- (BOOL)isOpen;

/// Returns the detected NFC tag object
- (NSObject *)getDetectedTag;

@end

NS_ASSUME_NONNULL_END
