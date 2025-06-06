//
//  IOSApduConnection.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>
#import <CoreNFC/CoreNFC.h>

///J2OBJC  imports
#import "es/gob/jmulticard/connection/AbstractApduConnectionIso7816.h"

@class IOSNFCSessionManager;
@class IOSByteArray;

@interface IOSApduConnection : EsGobJmulticardConnectionAbstractApduConnectionIso7816

- (instancetype)initWithTag:(id<NFCISO7816Tag>)tag
				nfcSession:(IOSNFCSessionManager *)session;
- (EsGobJmulticardApduResponseApdu *)internalTransmitWithByteArray:(IOSByteArray *)apdu;
@end
