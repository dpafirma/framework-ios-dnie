//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/math/ntru/polynomial/LongPolynomial5.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5")
#ifdef RESTRICT_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5
#define INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5 1
#endif
#undef RESTRICT_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5

#if !defined (OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5_) && (INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5 || defined(INCLUDE_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5))
#define OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5_

@class OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial;
@protocol OrgBouncycastlePqcMathNtruPolynomialTernaryPolynomial;

/*!
 @brief A polynomial class that combines five coefficients into one <code>long</code> value for
  faster multiplication by a ternary polynomial.
 <br>
  Coefficients can be between 0 and 2047 and are stored in bits 0..11, 12..23, ..., 48..59 of a <code>long</code> number.
 */
@interface OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5 : NSObject

#pragma mark Public

/*!
 @brief Constructs a <code>LongPolynomial5</code> from a <code>IntegerPolynomial</code>.The two polynomials are independent of each other.
 @param p the original polynomial. Coefficients must be between 0 and 2047.
 */
- (instancetype)initWithOrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial:(OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *)p;

/*!
 @brief Multiplies the polynomial with a <code>TernaryPolynomial</code>, taking the indices mod N and the values mod 2048.
 */
- (OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5 *)multWithOrgBouncycastlePqcMathNtruPolynomialTernaryPolynomial:(id<OrgBouncycastlePqcMathNtruPolynomialTernaryPolynomial>)poly2;

- (OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *)toIntegerPolynomial;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5)

FOUNDATION_EXPORT void OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5_initWithOrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial_(OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5 *self, OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *p);

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5 *new_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5_initWithOrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial_(OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *p) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5 *create_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5_initWithOrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial_(OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *p);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialLongPolynomial5")
