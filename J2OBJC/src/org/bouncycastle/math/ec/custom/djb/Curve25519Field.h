//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/ec/custom/djb/Curve25519Field.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleMathEcCustomDjbCurve25519Field")
#ifdef RESTRICT_OrgBouncycastleMathEcCustomDjbCurve25519Field
#define INCLUDE_ALL_OrgBouncycastleMathEcCustomDjbCurve25519Field 0
#else
#define INCLUDE_ALL_OrgBouncycastleMathEcCustomDjbCurve25519Field 1
#endif
#undef RESTRICT_OrgBouncycastleMathEcCustomDjbCurve25519Field

#if !defined (OrgBouncycastleMathEcCustomDjbCurve25519Field_) && (INCLUDE_ALL_OrgBouncycastleMathEcCustomDjbCurve25519Field || defined(INCLUDE_OrgBouncycastleMathEcCustomDjbCurve25519Field))
#define OrgBouncycastleMathEcCustomDjbCurve25519Field_

@class IOSIntArray;
@class JavaMathBigInteger;
@class JavaSecuritySecureRandom;

@interface OrgBouncycastleMathEcCustomDjbCurve25519Field : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)addWithIntArray:(IOSIntArray *)x
           withIntArray:(IOSIntArray *)y
           withIntArray:(IOSIntArray *)z;

+ (void)addExtWithIntArray:(IOSIntArray *)xx
              withIntArray:(IOSIntArray *)yy
              withIntArray:(IOSIntArray *)zz;

+ (void)addOneWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z;

+ (IOSIntArray *)fromBigIntegerWithJavaMathBigInteger:(JavaMathBigInteger *)x;

+ (void)halfWithIntArray:(IOSIntArray *)x
            withIntArray:(IOSIntArray *)z;

+ (void)invWithIntArray:(IOSIntArray *)x
           withIntArray:(IOSIntArray *)z;

+ (jint)isZeroWithIntArray:(IOSIntArray *)x;

+ (void)multiplyWithIntArray:(IOSIntArray *)x
                withIntArray:(IOSIntArray *)y
                withIntArray:(IOSIntArray *)z;

+ (void)multiplyAddToExtWithIntArray:(IOSIntArray *)x
                        withIntArray:(IOSIntArray *)y
                        withIntArray:(IOSIntArray *)zz;

+ (void)negateWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z;

+ (void)randomWithJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)r
                              withIntArray:(IOSIntArray *)z;

+ (void)randomMultWithJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)r
                                  withIntArray:(IOSIntArray *)z;

+ (void)reduceWithIntArray:(IOSIntArray *)xx
              withIntArray:(IOSIntArray *)z;

+ (void)reduce27WithInt:(jint)x
           withIntArray:(IOSIntArray *)z;

+ (void)squareWithIntArray:(IOSIntArray *)x
              withIntArray:(IOSIntArray *)z;

+ (void)squareNWithIntArray:(IOSIntArray *)x
                    withInt:(jint)n
               withIntArray:(IOSIntArray *)z;

+ (void)subtractWithIntArray:(IOSIntArray *)x
                withIntArray:(IOSIntArray *)y
                withIntArray:(IOSIntArray *)z;

+ (void)subtractExtWithIntArray:(IOSIntArray *)xx
                   withIntArray:(IOSIntArray *)yy
                   withIntArray:(IOSIntArray *)zz;

+ (void)twiceWithIntArray:(IOSIntArray *)x
             withIntArray:(IOSIntArray *)z;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleMathEcCustomDjbCurve25519Field)

inline IOSIntArray *OrgBouncycastleMathEcCustomDjbCurve25519Field_get_P(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleMathEcCustomDjbCurve25519Field_P;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastleMathEcCustomDjbCurve25519Field, P, IOSIntArray *)

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_init(OrgBouncycastleMathEcCustomDjbCurve25519Field *self);

FOUNDATION_EXPORT OrgBouncycastleMathEcCustomDjbCurve25519Field *new_OrgBouncycastleMathEcCustomDjbCurve25519Field_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleMathEcCustomDjbCurve25519Field *create_OrgBouncycastleMathEcCustomDjbCurve25519Field_init(void);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_addWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_addExtWithIntArray_withIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *yy, IOSIntArray *zz);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_addOneWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleMathEcCustomDjbCurve25519Field_fromBigIntegerWithJavaMathBigInteger_(JavaMathBigInteger *x);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_halfWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_invWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT jint OrgBouncycastleMathEcCustomDjbCurve25519Field_isZeroWithIntArray_(IOSIntArray *x);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyAddToExtWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *zz);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_negateWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_randomWithJavaSecuritySecureRandom_withIntArray_(JavaSecuritySecureRandom *r, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_randomMultWithJavaSecuritySecureRandom_withIntArray_(JavaSecuritySecureRandom *r, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_reduceWithIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_reduce27WithInt_withIntArray_(jint x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_squareNWithIntArray_withInt_withIntArray_(IOSIntArray *x, jint n, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *y, IOSIntArray *z);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractExtWithIntArray_withIntArray_withIntArray_(IOSIntArray *xx, IOSIntArray *yy, IOSIntArray *zz);

FOUNDATION_EXPORT void OrgBouncycastleMathEcCustomDjbCurve25519Field_twiceWithIntArray_withIntArray_(IOSIntArray *x, IOSIntArray *z);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcCustomDjbCurve25519Field)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleMathEcCustomDjbCurve25519Field")
