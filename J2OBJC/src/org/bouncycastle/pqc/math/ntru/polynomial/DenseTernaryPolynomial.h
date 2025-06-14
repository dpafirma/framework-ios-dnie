//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial")
#ifdef RESTRICT_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial
#define INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial 1
#endif
#undef RESTRICT_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial

#if !defined (OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_) && (INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial || defined(INCLUDE_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial))
#define OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_

#define RESTRICT_OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial 1
#define INCLUDE_OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial 1
#include "org/bouncycastle/pqc/math/ntru/polynomial/IntegerPolynomial.h"

#define RESTRICT_OrgBouncycastlePqcMathNtruPolynomialTernaryPolynomial 1
#define INCLUDE_OrgBouncycastlePqcMathNtruPolynomialTernaryPolynomial 1
#include "org/bouncycastle/pqc/math/ntru/polynomial/TernaryPolynomial.h"

@class IOSIntArray;
@class JavaSecuritySecureRandom;
@class OrgBouncycastlePqcMathNtruPolynomialBigIntPolynomial;

/*!
 @brief A <code>TernaryPolynomial</code> with a "high" number of nonzero coefficients.
 */
@interface OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial : OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial < OrgBouncycastlePqcMathNtruPolynomialTernaryPolynomial >

#pragma mark Public

/*!
 @brief Constructs a new <code>DenseTernaryPolynomial</code> with a given set of coefficients.
 @param coeffs the coefficients
 */
- (instancetype)initWithIntArray:(IOSIntArray *)coeffs;

/*!
 @brief Constructs a <code>DenseTernaryPolynomial</code> from a <code>IntegerPolynomial</code>.The two polynomials are
  independent of each other.
 @param intPoly the original polynomial
 */
- (instancetype)initWithOrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial:(OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *)intPoly;

/*!
 @brief Generates a random polynomial with <code>numOnes</code> coefficients equal to 1, 
 <code>numNegOnes</code> coefficients equal to -1, and the rest equal to 0.
 @param N number of coefficients
 @param numOnes number of 1's
 @param numNegOnes number of -1's
 */
+ (OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *)generateRandomWithInt:(jint)N
                                                                              withInt:(jint)numOnes
                                                                              withInt:(jint)numNegOnes
                                                         withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random;

/*!
 @brief Generates a polynomial with coefficients randomly selected from <code>{-1, 0, 1}</code>.
 @param N number of coefficients
 */
+ (OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *)generateRandomWithInt:(jint)N
                                                         withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random;

- (IOSIntArray *)getNegOnes;

- (IOSIntArray *)getOnes;

- (OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *)multWithOrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial:(OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *)poly2
                                                                                                                 withInt:(jint)modulus;

- (jint)size;

#pragma mark Package-Private

/*!
 @brief Constructs a new <code>DenseTernaryPolynomial</code> with <code>N</code> coefficients.
 @param N the number of coefficients
 */
- (instancetype)initWithInt:(jint)N;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgBouncycastlePqcMathNtruPolynomialBigIntPolynomial:(OrgBouncycastlePqcMathNtruPolynomialBigIntPolynomial *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial)

FOUNDATION_EXPORT void OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_initWithInt_(OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *self, jint N);

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *new_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_initWithInt_(jint N) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *create_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_initWithInt_(jint N);

FOUNDATION_EXPORT void OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_initWithOrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial_(OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *self, OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *intPoly);

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *new_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_initWithOrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial_(OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *intPoly) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *create_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_initWithOrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial_(OrgBouncycastlePqcMathNtruPolynomialIntegerPolynomial *intPoly);

FOUNDATION_EXPORT void OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_initWithIntArray_(OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *self, IOSIntArray *coeffs);

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *new_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_initWithIntArray_(IOSIntArray *coeffs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *create_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_initWithIntArray_(IOSIntArray *coeffs);

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_generateRandomWithInt_withInt_withInt_withJavaSecuritySecureRandom_(jint N, jint numOnes, jint numNegOnes, JavaSecuritySecureRandom *random);

FOUNDATION_EXPORT OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial *OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial_generateRandomWithInt_withJavaSecuritySecureRandom_(jint N, JavaSecuritySecureRandom *random);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcMathNtruPolynomialDenseTernaryPolynomial")
