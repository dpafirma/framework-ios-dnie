//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/params/DSAParameters.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoParamsDSAParameters")
#ifdef RESTRICT_OrgBouncycastleCryptoParamsDSAParameters
#define INCLUDE_ALL_OrgBouncycastleCryptoParamsDSAParameters 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoParamsDSAParameters 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoParamsDSAParameters

#if !defined (OrgBouncycastleCryptoParamsDSAParameters_) && (INCLUDE_ALL_OrgBouncycastleCryptoParamsDSAParameters || defined(INCLUDE_OrgBouncycastleCryptoParamsDSAParameters))
#define OrgBouncycastleCryptoParamsDSAParameters_

#define RESTRICT_OrgBouncycastleCryptoCipherParameters 1
#define INCLUDE_OrgBouncycastleCryptoCipherParameters 1
#include "org/bouncycastle/crypto/CipherParameters.h"

@class JavaMathBigInteger;
@class OrgBouncycastleCryptoParamsDSAValidationParameters;

@interface OrgBouncycastleCryptoParamsDSAParameters : NSObject < OrgBouncycastleCryptoCipherParameters >

#pragma mark Public

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                    withJavaMathBigInteger:(JavaMathBigInteger *)g;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
withOrgBouncycastleCryptoParamsDSAValidationParameters:(OrgBouncycastleCryptoParamsDSAValidationParameters *)params;

- (jboolean)isEqual:(id)obj;

- (JavaMathBigInteger *)getG;

- (JavaMathBigInteger *)getP;

- (JavaMathBigInteger *)getQ;

- (OrgBouncycastleCryptoParamsDSAValidationParameters *)getValidationParameters;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsDSAParameters)

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsDSAParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(OrgBouncycastleCryptoParamsDSAParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *q, JavaMathBigInteger *g);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDSAParameters *new_OrgBouncycastleCryptoParamsDSAParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *q, JavaMathBigInteger *g) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDSAParameters *create_OrgBouncycastleCryptoParamsDSAParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *q, JavaMathBigInteger *g);

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsDSAParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDSAValidationParameters_(OrgBouncycastleCryptoParamsDSAParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *q, JavaMathBigInteger *g, OrgBouncycastleCryptoParamsDSAValidationParameters *params);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDSAParameters *new_OrgBouncycastleCryptoParamsDSAParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDSAValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *q, JavaMathBigInteger *g, OrgBouncycastleCryptoParamsDSAValidationParameters *params) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDSAParameters *create_OrgBouncycastleCryptoParamsDSAParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDSAValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *q, JavaMathBigInteger *g, OrgBouncycastleCryptoParamsDSAValidationParameters *params);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsDSAParameters)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoParamsDSAParameters")
