//
//  DNIeSigner.h
//  Firma_iOS
//
//  Created by Desarrollo Abamobile on 8/10/24.
//  Copyright © 2024 Solid GEAR. All rights reserved.
//

///Native imports
#import <Foundation/Foundation.h>

///Public imports
#import <DNIeFW/DNIeSignatureAlgorithm.h>

///J2OBJC  imports
#import "IOSObjectArray.h"
#import "es/gob/jmulticard/card/dnie/DnieNfc.h"
#import "es/gob/jmulticard/card/PrivateKeyReference.h"

@interface DNIeSigner : NSObject

+ (IOSByteArray *)signData:(IOSByteArray *)data
		  usingFactory:(EsGobJmulticardCardDnieDnieNfc *)factory
		  withPrivateKey:(id<EsGobJmulticardCardPrivateKeyReference>)privateKey
		  algorithm:(DNIeSignatureAlgorithm *)algorithm;

@end
