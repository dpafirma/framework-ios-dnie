//
//  DNIeSignatureAlgorithm.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 29/5/25.
//

///Native imports
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// Enumeración que representa los algoritmos de firma admitidos.
typedef NS_ENUM(NSUInteger, DNIeSignatureAlgorithm) {
	/// SHA-1 with RSA
	DNIeSignatureAlgorithmSHA1,
	
	/// SHA-256 with RSA
	DNIeSignatureAlgorithmSHA256,
	
	/// SHA-384 with RSA.
	DNIeSignatureAlgorithmSHA384,
	
	/// SHA-512 with RSA.
	DNIeSignatureAlgorithmSHA512
};

/// Método de utilidad para convertir una enumeración en su representación de cadena (por ejemplo, `SHA256withRSA`).
FOUNDATION_EXPORT NSString * _Nonnull NSStringFromDNIeSignatureAlgorithm(DNIeSignatureAlgorithm algorithm);

NS_ASSUME_NONNULL_END
