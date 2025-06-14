//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/params/DHParameters.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoParamsDHParameters")
#ifdef RESTRICT_OrgBouncycastleCryptoParamsDHParameters
#define INCLUDE_ALL_OrgBouncycastleCryptoParamsDHParameters 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoParamsDHParameters 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoParamsDHParameters

#if !defined (OrgBouncycastleCryptoParamsDHParameters_) && (INCLUDE_ALL_OrgBouncycastleCryptoParamsDHParameters || defined(INCLUDE_OrgBouncycastleCryptoParamsDHParameters))
#define OrgBouncycastleCryptoParamsDHParameters_

#define RESTRICT_OrgBouncycastleCryptoCipherParameters 1
#define INCLUDE_OrgBouncycastleCryptoCipherParameters 1
#include "org/bouncycastle/crypto/CipherParameters.h"

@class JavaMathBigInteger;
@class OrgBouncycastleCryptoParamsDHValidationParameters;

@interface OrgBouncycastleCryptoParamsDHParameters : NSObject < OrgBouncycastleCryptoCipherParameters >

#pragma mark Public

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                    withJavaMathBigInteger:(JavaMathBigInteger *)j
withOrgBouncycastleCryptoParamsDHValidationParameters:(OrgBouncycastleCryptoParamsDHValidationParameters *)validation;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                                   withInt:(jint)l;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                                   withInt:(jint)m
                                   withInt:(jint)l;

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                                   withInt:(jint)m
                                   withInt:(jint)l
                    withJavaMathBigInteger:(JavaMathBigInteger *)j
withOrgBouncycastleCryptoParamsDHValidationParameters:(OrgBouncycastleCryptoParamsDHValidationParameters *)validation;

- (jboolean)isEqual:(id)obj;

- (JavaMathBigInteger *)getG;

/*!
 @brief Return the subgroup factor J.
 @return subgroup factor
 */
- (JavaMathBigInteger *)getJ;

/*!
 @brief Return the private value length in bits - if set, zero otherwise
 @return the private value length in bits, zero otherwise.
 */
- (jint)getL;

/*!
 @brief Return the minimum length of the private value.
 @return the minimum length of the private value in bits.
 */
- (jint)getM;

- (JavaMathBigInteger *)getP;

- (JavaMathBigInteger *)getQ;

- (OrgBouncycastleCryptoParamsDHValidationParameters *)getValidationParameters;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsDHParameters)

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *g) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *g);

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q);

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint l);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint l) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint l);

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l);

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation);

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsDHParameters)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoParamsDHParameters")
