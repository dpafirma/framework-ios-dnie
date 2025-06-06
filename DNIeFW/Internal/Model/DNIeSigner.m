//
//  DNIeSigner.m
//  Autofirma
//
//  Created by Desarrollo Abamobile on 8/10/24.
//  Copyright © 2024 Solid GEAR. All rights reserved.
//

// DnieSigner.m

///Native imports
#import <Foundation/Foundation.h>

///Public imports
#import <DNIeFW/DNIeSignatureAlgorithm.h>

///Internal imports
#import "DNIeSigner.h"
#import "IOSObjectArray.h"

///J2OBJC  imports
#import "es/gob/jmulticard/card/dnie/DnieNfc.h"
#import "es/gob/jmulticard/card/PrivateKeyReference.h"

@interface DNIeSigner()

@property (nonatomic, strong) EsGobJmulticardCardDnieDnieNfc *dniFactory;

@end

@implementation DNIeSigner

+ (IOSByteArray *)signData:(IOSByteArray *)data
		  usingFactory:(EsGobJmulticardCardDnieDnieNfc *)factory
		  withPrivateKey:(id<EsGobJmulticardCardPrivateKeyReference>)privateKey
		  algorithm:(DNIeSignatureAlgorithm *)algorithm {
    if (factory && privateKey) {
	   IOSByteArray *signedData = [factory signWithByteArray:data
									   withNSString:NSStringFromDNIeSignatureAlgorithm(*algorithm)
				withEsGobJmulticardCardPrivateKeyReference:privateKey];
	   return signedData;
    }
    
    return nil;
}

@end
