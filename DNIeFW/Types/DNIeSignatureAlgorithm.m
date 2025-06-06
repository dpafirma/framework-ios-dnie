//
//  DNIeSignatureAlgorithm.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 28/5/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Public imports
#import <DNIeFW/DNIeSignatureAlgorithm.h>

NSString *NSStringFromDNIeSignatureAlgorithm(DNIeSignatureAlgorithm algorithm) {
	switch (algorithm) {
		case DNIeSignatureAlgorithmSHA1: return @"SHA1withRSA";
		case DNIeSignatureAlgorithmSHA256: return @"SHA256withRSA";
		case DNIeSignatureAlgorithmSHA384: return @"SHA384withRSA";
		case DNIeSignatureAlgorithmSHA512: return @"SHA512withRSA";
	}
}
