//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/rainbow/util/ComputeInField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilComputeInField")
#ifdef RESTRICT_OrgBouncycastlePqcCryptoRainbowUtilComputeInField
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilComputeInField 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilComputeInField 1
#endif
#undef RESTRICT_OrgBouncycastlePqcCryptoRainbowUtilComputeInField

#if !defined (OrgBouncycastlePqcCryptoRainbowUtilComputeInField_) && (INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilComputeInField || defined(INCLUDE_OrgBouncycastlePqcCryptoRainbowUtilComputeInField))
#define OrgBouncycastlePqcCryptoRainbowUtilComputeInField_

@class IOSObjectArray;
@class IOSShortArray;

/*!
 @brief This class offers different operations on matrices in field GF2^8.
 <p>
  Implemented are functions:
  - finding inverse of a matrix
  - solving linear equation systems using the Gauss-Elimination method
  - basic operations like matrix multiplication, addition and so on.
 */
@interface OrgBouncycastlePqcCryptoRainbowUtilComputeInField : NSObject {
 @public
  IOSShortArray *x_;
}

#pragma mark Public

/*!
 @brief Constructor with no parameters
 */
- (instancetype)init;

/*!
 @brief Adds the n x n matrices matrix1 and matrix2
 @param matrix1 first summand
 @param matrix2 second summand
 @return addition of matrix1 and matrix2; both having the dimensions n x n
 @throw RuntimeExceptionin case the addition is not possible because of
  different dimensions of the matrices
 */
- (IOSObjectArray *)addSquareMatrixWithShortArray2:(IOSObjectArray *)matrix1
                                   withShortArray2:(IOSObjectArray *)matrix2;

/*!
 @brief Addition of two vectors
 @param vector1 first summand, always of dim n
 @param vector2 second summand, always of dim n
 @return addition of vector1 and vector2
 @throw RuntimeExceptionin case the addition is impossible
  due to inconsistency in the dimensions
 */
- (IOSShortArray *)addVectWithShortArray:(IOSShortArray *)vector1
                          withShortArray:(IOSShortArray *)vector2;

/*!
 @brief This function computes the inverse of a given matrix using the Gauss-
  Elimination method.
 <p>
  An exception is thrown if the matrix has no inverse
 @param coef the matrix which inverse matrix is needed
 @return inverse matrix of the input matrix.
  If the matrix is singular, null is returned.
 @throw RuntimeExceptionif the given matrix is not invertible
 */
- (IOSObjectArray *)inverseWithShortArray2:(IOSObjectArray *)coef;

/*!
 @brief This function multiplies a given matrix with a one-dimensional array.
 <p>
  An exception is thrown, if the number of columns in the matrix and
  the number of rows in the one-dim. array differ.
 @param M1 the matrix to be multiplied
 @param m the one-dimensional array to be multiplied
 @return M1*m
 @throw RuntimeExceptionin case of dimension inconsistency
 */
- (IOSShortArray *)multiplyMatrixWithShortArray2:(IOSObjectArray *)M1
                                  withShortArray:(IOSShortArray *)m;

/*!
 @brief This function multiplies two given matrices.
 If the given matrices cannot be multiplied due
  to different sizes, an exception is thrown.
 @param M1 -the 1st matrix
 @param M2 -the 2nd matrix
 @return A = M1*M2
 @throw RuntimeExceptionin case the given matrices cannot be multiplied
  due to different dimensions.
 */
- (IOSObjectArray *)multiplyMatrixWithShortArray2:(IOSObjectArray *)M1
                                  withShortArray2:(IOSObjectArray *)M2;

/*!
 @brief Multiplies matrix with scalar
 @param scalar galois element to multiply matrix with
 @param matrix 2-dim n x n matrix to be multiplied
 @return matrix multiplied with scalar
 */
- (IOSObjectArray *)multMatrixWithShort:(jshort)scalar
                        withShortArray2:(IOSObjectArray *)matrix;

/*!
 @brief Multiplies vector with scalar
 @param scalar galois element to multiply vector with
 @param vector vector to be multiplied
 @return vector multiplied with scalar
 */
- (IOSShortArray *)multVectWithShort:(jshort)scalar
                      withShortArray:(IOSShortArray *)vector;

/*!
 @brief Multiplication of column vector with row vector
 @param vector1 column vector, always n x 1
 @param vector2 row vector, always 1 x n
 @return resulting n x n matrix of multiplication
 @throw RuntimeExceptionin case the multiplication is impossible due to
  inconsistency in the dimensions
 */
- (IOSObjectArray *)multVectsWithShortArray:(IOSShortArray *)vector1
                             withShortArray:(IOSShortArray *)vector2;

/*!
 @brief This function finds a solution of the equation Bx = b.
 Exception is thrown if the linear equation system has no solution
 @param B this matrix is the left part of the           equation (B in the equation above)
 @param b the right part of the equation           (b in the equation above)
 @return x  the solution of the equation if it is solvable
  null otherwise
 @throw RuntimeExceptionif LES is not solvable
 */
- (IOSShortArray *)solveEquationWithShortArray2:(IOSObjectArray *)B
                                 withShortArray:(IOSShortArray *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcCryptoRainbowUtilComputeInField)

J2OBJC_FIELD_SETTER(OrgBouncycastlePqcCryptoRainbowUtilComputeInField, x_, IOSShortArray *)

FOUNDATION_EXPORT void OrgBouncycastlePqcCryptoRainbowUtilComputeInField_init(OrgBouncycastlePqcCryptoRainbowUtilComputeInField *self);

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoRainbowUtilComputeInField *new_OrgBouncycastlePqcCryptoRainbowUtilComputeInField_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoRainbowUtilComputeInField *create_OrgBouncycastlePqcCryptoRainbowUtilComputeInField_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcCryptoRainbowUtilComputeInField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilComputeInField")
