//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/params/ParametersWithRandom.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoParamsParametersWithRandom")
#ifdef RESTRICT_OrgBouncycastleCryptoParamsParametersWithRandom
#define INCLUDE_ALL_OrgBouncycastleCryptoParamsParametersWithRandom 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoParamsParametersWithRandom 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoParamsParametersWithRandom

#if !defined (OrgBouncycastleCryptoParamsParametersWithRandom_) && (INCLUDE_ALL_OrgBouncycastleCryptoParamsParametersWithRandom || defined(INCLUDE_OrgBouncycastleCryptoParamsParametersWithRandom))
#define OrgBouncycastleCryptoParamsParametersWithRandom_

#define RESTRICT_OrgBouncycastleCryptoCipherParameters 1
#define INCLUDE_OrgBouncycastleCryptoCipherParameters 1
#include "org/bouncycastle/crypto/CipherParameters.h"

@class JavaSecuritySecureRandom;

@interface OrgBouncycastleCryptoParamsParametersWithRandom : NSObject < OrgBouncycastleCryptoCipherParameters >

#pragma mark Public

- (instancetype)initWithOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)parameters;

- (instancetype)initWithOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)parameters
                                 withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random;

- (id<OrgBouncycastleCryptoCipherParameters>)getParameters;

- (JavaSecuritySecureRandom *)getRandom;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsParametersWithRandom)

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_withJavaSecuritySecureRandom_(OrgBouncycastleCryptoParamsParametersWithRandom *self, id<OrgBouncycastleCryptoCipherParameters> parameters, JavaSecuritySecureRandom *random);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsParametersWithRandom *new_OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_withJavaSecuritySecureRandom_(id<OrgBouncycastleCryptoCipherParameters> parameters, JavaSecuritySecureRandom *random) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsParametersWithRandom *create_OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_withJavaSecuritySecureRandom_(id<OrgBouncycastleCryptoCipherParameters> parameters, JavaSecuritySecureRandom *random);

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_(OrgBouncycastleCryptoParamsParametersWithRandom *self, id<OrgBouncycastleCryptoCipherParameters> parameters);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsParametersWithRandom *new_OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_(id<OrgBouncycastleCryptoCipherParameters> parameters) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsParametersWithRandom *create_OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_(id<OrgBouncycastleCryptoCipherParameters> parameters);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsParametersWithRandom)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoParamsParametersWithRandom")
