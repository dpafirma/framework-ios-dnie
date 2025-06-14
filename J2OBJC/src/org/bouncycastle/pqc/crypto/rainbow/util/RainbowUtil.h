//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil")
#ifdef RESTRICT_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil 1
#endif
#undef RESTRICT_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil

#if !defined (OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_) && (INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil || defined(INCLUDE_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil))
#define OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_

@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class IOSShortArray;

/*!
 @brief This class is needed for the conversions while encoding and decoding, as well as for
  comparison between arrays of some dimensions
 */
@interface OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief This function converts an one-dimensional array of bytes into a
  one-dimensional array of type short
 @param inArg the array to be converted
 @return out
          one-dimensional short-array that corresponds the input
 */
+ (IOSShortArray *)convertArrayWithByteArray:(IOSByteArray *)inArg;

/*!
 @brief This function converts a matrix of bytes into a matrix of type short
 @param inArg the matrix to be converted
 @return out
          short-matrix that corresponds the input
 */
+ (IOSObjectArray *)convertArrayWithByteArray2:(IOSObjectArray *)inArg;

/*!
 @brief This function converts a 3-dimensional array of bytes into a 3-dimensional array of type short
 @param inArg the array to be converted
 @return out
          short-array that corresponds the input
 */
+ (IOSObjectArray *)convertArrayWithByteArray3:(IOSObjectArray *)inArg;

/*!
 @brief This function converts an array of type short into an array of type byte
 @param inArg the array to be converted
 @return out
          the byte-array that corresponds the input
 */
+ (IOSByteArray *)convertArrayWithShortArray:(IOSShortArray *)inArg;

/*!
 @brief This function converts a matrix of type short into a matrix of type byte
 @param inArg the matrix to be converted
 @return out
          the byte-matrix that corresponds the input
 */
+ (IOSObjectArray *)convertArrayWithShortArray2:(IOSObjectArray *)inArg;

/*!
 @brief This function converts a 3-dimensional array of type short into a 3-dimensional array of type byte
 @param inArg the array to be converted
 @return out
          the byte-array that corresponds the input
 */
+ (IOSObjectArray *)convertArrayWithShortArray3:(IOSObjectArray *)inArg;

/*!
 @brief This function converts an one-dimensional array of bytes into a
  one-dimensional array of int
 @param inArg the array to be converted
 @return out
          the one-dimensional int-array that corresponds the input
 */
+ (IOSIntArray *)convertArraytoIntWithByteArray:(IOSByteArray *)inArg;

/*!
 @brief This function converts an array of type int into an array of type byte
 @param inArg the array to be converted
 @return out
          the byte-array that corresponds the input
 */
+ (IOSByteArray *)convertIntArrayWithIntArray:(IOSIntArray *)inArg;

/*!
 @brief Compare two short arrays.No null checks are performed.
 @param left the first short array
 @param right the second short array
 @return the result of the comparison
 */
+ (jboolean)equalsWithShortArray:(IOSShortArray *)left
                  withShortArray:(IOSShortArray *)right;

/*!
 @brief Compare two two-dimensional short arrays.No null checks are performed.
 @param left the first short array
 @param right the second short array
 @return the result of the comparison
 */
+ (jboolean)equalsWithShortArray2:(IOSObjectArray *)left
                  withShortArray2:(IOSObjectArray *)right;

/*!
 @brief Compare two three-dimensional short arrays.No null checks are performed.
 @param left the first short array
 @param right the second short array
 @return the result of the comparison
 */
+ (jboolean)equalsWithShortArray3:(IOSObjectArray *)left
                  withShortArray3:(IOSObjectArray *)right;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil)

FOUNDATION_EXPORT void OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_init(OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil *self);

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil *new_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil *create_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_init(void);

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_convertArraytoIntWithByteArray_(IOSByteArray *inArg);

FOUNDATION_EXPORT IOSShortArray *OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_convertArrayWithByteArray_(IOSByteArray *inArg);

FOUNDATION_EXPORT IOSObjectArray *OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_convertArrayWithByteArray2_(IOSObjectArray *inArg);

FOUNDATION_EXPORT IOSObjectArray *OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_convertArrayWithByteArray3_(IOSObjectArray *inArg);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_convertIntArrayWithIntArray_(IOSIntArray *inArg);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_convertArrayWithShortArray_(IOSShortArray *inArg);

FOUNDATION_EXPORT IOSObjectArray *OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_convertArrayWithShortArray2_(IOSObjectArray *inArg);

FOUNDATION_EXPORT IOSObjectArray *OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_convertArrayWithShortArray3_(IOSObjectArray *inArg);

FOUNDATION_EXPORT jboolean OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_equalsWithShortArray_withShortArray_(IOSShortArray *left, IOSShortArray *right);

FOUNDATION_EXPORT jboolean OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_equalsWithShortArray2_withShortArray2_(IOSObjectArray *left, IOSObjectArray *right);

FOUNDATION_EXPORT jboolean OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil_equalsWithShortArray3_withShortArray3_(IOSObjectArray *left, IOSObjectArray *right);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoRainbowUtilRainbowUtil")
