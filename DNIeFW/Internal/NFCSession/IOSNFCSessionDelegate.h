//
//  IOSNFCSessionDelegate.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 15/4/25.
//

/// Native imports
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 * Protocol defining callbacks for native iOS NFC session events.
 */
@protocol IOSNFCSessionDelegate <NSObject>

/// Called when a valid NFC tag has been detected.
/// @param tag The detected NFC tag object (ISO7816-compatible).
- (void)didDetectNFCTag:(NSObject *)tag;

/// Called when the NFC session is invalidated due to an error.
/// @param error The error that caused the session to end.
- (void)didInvalidateNFCSessionWithError:(NSError *)error;

/// Called when the NFC session becomes active and ready to read.
- (void)didBecomeActive;

@end

NS_ASSUME_NONNULL_END
