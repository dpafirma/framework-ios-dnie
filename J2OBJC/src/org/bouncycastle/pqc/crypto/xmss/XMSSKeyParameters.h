//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters")
#ifdef RESTRICT_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters 1
#endif
#undef RESTRICT_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters

#if !defined (OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_) && (INCLUDE_ALL_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters || defined(INCLUDE_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters))
#define OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_

#define RESTRICT_OrgBouncycastleCryptoParamsAsymmetricKeyParameter 1
#define INCLUDE_OrgBouncycastleCryptoParamsAsymmetricKeyParameter 1
#include "org/bouncycastle/crypto/params/AsymmetricKeyParameter.h"

@interface OrgBouncycastlePqcCryptoXmssXMSSKeyParameters : OrgBouncycastleCryptoParamsAsymmetricKeyParameter

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)isPrivateKey
                   withNSString:(NSString *)treeDigest;

- (NSString *)getTreeDigest;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithBoolean:(jboolean)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcCryptoXmssXMSSKeyParameters)

inline NSString *OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_get_SHA_256(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_SHA_256;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastlePqcCryptoXmssXMSSKeyParameters, SHA_256, NSString *)

inline NSString *OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_get_SHA_512(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_SHA_512;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastlePqcCryptoXmssXMSSKeyParameters, SHA_512, NSString *)

inline NSString *OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_get_SHAKE128(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_SHAKE128;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastlePqcCryptoXmssXMSSKeyParameters, SHAKE128, NSString *)

inline NSString *OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_get_SHAKE256(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_SHAKE256;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastlePqcCryptoXmssXMSSKeyParameters, SHAKE256, NSString *)

FOUNDATION_EXPORT void OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_initWithBoolean_withNSString_(OrgBouncycastlePqcCryptoXmssXMSSKeyParameters *self, jboolean isPrivateKey, NSString *treeDigest);

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoXmssXMSSKeyParameters *new_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_initWithBoolean_withNSString_(jboolean isPrivateKey, NSString *treeDigest) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoXmssXMSSKeyParameters *create_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters_initWithBoolean_withNSString_(jboolean isPrivateKey, NSString *treeDigest);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcCryptoXmssXMSSKeyParameters)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoXmssXMSSKeyParameters")
