//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey")
#ifdef RESTRICT_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey
#define INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey 1
#endif
#undef RESTRICT_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey

#if !defined (OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey_) && (INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey || defined(INCLUDE_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey))
#define OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey_

#define RESTRICT_OrgBouncycastleCryptoCipherParameters 1
#define INCLUDE_OrgBouncycastleCryptoCipherParameters 1
#include "org/bouncycastle/crypto/CipherParameters.h"

#define RESTRICT_JavaSecurityPublicKey 1
#define INCLUDE_JavaSecurityPublicKey 1
#include "java/security/PublicKey.h"

@class IOSByteArray;
@class OrgBouncycastleCryptoParamsAsymmetricKeyParameter;
@class OrgBouncycastlePqcCryptoMcelieceMcElieceCCA2PublicKeyParameters;
@class OrgBouncycastlePqcMathLinearalgebraGF2Matrix;

/*!
 @brief This class implements a McEliece CCA2 public key and is usually instantiated
  by the <code>McElieceCCA2KeyPairGenerator</code> or <code>McElieceCCA2KeyFactorySpi</code>.
 */
@interface OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey : NSObject < OrgBouncycastleCryptoCipherParameters, JavaSecurityPublicKey >

#pragma mark Public

- (instancetype)initWithOrgBouncycastlePqcCryptoMcelieceMcElieceCCA2PublicKeyParameters:(OrgBouncycastlePqcCryptoMcelieceMcElieceCCA2PublicKeyParameters *)params;

/*!
 @brief Compare this key with another object.
 @param other the other object
 @return the result of the comparison
 */
- (jboolean)isEqual:(id)other;

/*!
 @brief Return the name of the algorithm.
 @return "McEliece"
 */
- (NSString *)getAlgorithm;

/*!
 @brief Return the keyData to encode in the SubjectPublicKeyInfo structure.
 <p>
  The ASN.1 definition of the key structure is 
 @code

        McEliecePublicKey ::= SEQUENCE {
          n           Integer      -- length of the code
          t           Integer      -- error correcting capability
          matrixG     OctetString  -- generator matrix as octet string
        } 
  
@endcode
 @return the keyData to encode in the SubjectPublicKeyInfo structure
 */
- (IOSByteArray *)getEncoded;

- (NSString *)getFormat;

/*!
 @return the generator matrix
 */
- (OrgBouncycastlePqcMathLinearalgebraGF2Matrix *)getG;

/*!
 @return the dimension of the code
 */
- (jint)getK;

/*!
 @return the length of the code
 */
- (jint)getN;

/*!
 @return the error correction capability of the code
 */
- (jint)getT;

/*!
 @return the hash code of this key
 */
- (NSUInteger)hash;

/*!
 @return a human readable form of the key
 */
- (NSString *)description;

#pragma mark Package-Private

- (OrgBouncycastleCryptoParamsAsymmetricKeyParameter *)getKeyParams;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey)

FOUNDATION_EXPORT void OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey_initWithOrgBouncycastlePqcCryptoMcelieceMcElieceCCA2PublicKeyParameters_(OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey *self, OrgBouncycastlePqcCryptoMcelieceMcElieceCCA2PublicKeyParameters *params);

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey *new_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey_initWithOrgBouncycastlePqcCryptoMcelieceMcElieceCCA2PublicKeyParameters_(OrgBouncycastlePqcCryptoMcelieceMcElieceCCA2PublicKeyParameters *params) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey *create_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey_initWithOrgBouncycastlePqcCryptoMcelieceMcElieceCCA2PublicKeyParameters_(OrgBouncycastlePqcCryptoMcelieceMcElieceCCA2PublicKeyParameters *params);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderMcelieceBCMcElieceCCA2PublicKey")
