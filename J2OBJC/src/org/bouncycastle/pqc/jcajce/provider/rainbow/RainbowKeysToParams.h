//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeysToParams.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams")
#ifdef RESTRICT_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams
#define INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams 1
#endif
#undef RESTRICT_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams

#if !defined (OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams_) && (INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams || defined(INCLUDE_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams))
#define OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams_

@class OrgBouncycastleCryptoParamsAsymmetricKeyParameter;
@protocol JavaSecurityPrivateKey;
@protocol JavaSecurityPublicKey;

/*!
 @brief utility class for converting jce/jca Rainbow objects
  objects into their org.bouncycastle.crypto counterparts.
 */
@interface OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams : NSObject

#pragma mark Public

- (instancetype)init;

+ (OrgBouncycastleCryptoParamsAsymmetricKeyParameter *)generatePrivateKeyParameterWithJavaSecurityPrivateKey:(id<JavaSecurityPrivateKey>)key;

+ (OrgBouncycastleCryptoParamsAsymmetricKeyParameter *)generatePublicKeyParameterWithJavaSecurityPublicKey:(id<JavaSecurityPublicKey>)key;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams)

FOUNDATION_EXPORT void OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams_init(OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams *self);

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams *new_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams *create_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams_init(void);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsAsymmetricKeyParameter *OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams_generatePublicKeyParameterWithJavaSecurityPublicKey_(id<JavaSecurityPublicKey> key);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsAsymmetricKeyParameter *OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams_generatePrivateKeyParameterWithJavaSecurityPrivateKey_(id<JavaSecurityPrivateKey> key);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderRainbowRainbowKeysToParams")
