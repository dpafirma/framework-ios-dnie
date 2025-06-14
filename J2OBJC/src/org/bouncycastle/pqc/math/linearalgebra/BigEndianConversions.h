//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/math/linearalgebra/BigEndianConversions.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcMathLinearalgebraBigEndianConversions")
#ifdef RESTRICT_OrgBouncycastlePqcMathLinearalgebraBigEndianConversions
#define INCLUDE_ALL_OrgBouncycastlePqcMathLinearalgebraBigEndianConversions 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcMathLinearalgebraBigEndianConversions 1
#endif
#undef RESTRICT_OrgBouncycastlePqcMathLinearalgebraBigEndianConversions

#if !defined (OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_) && (INCLUDE_ALL_OrgBouncycastlePqcMathLinearalgebraBigEndianConversions || defined(INCLUDE_OrgBouncycastlePqcMathLinearalgebraBigEndianConversions))
#define OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_

@class IOSByteArray;
@class IOSIntArray;

/*!
 @brief This is a utility class containing data type conversions using big-endian
  byte order.
 - seealso: LittleEndianConversions
 */
@interface OrgBouncycastlePqcMathLinearalgebraBigEndianConversions : NSObject

#pragma mark Public

/*!
 @brief Convert an integer to an octet string of length 4 according to IEEE 1363,
  Section 5.5.3.
 @param x the integer to convert
 @return the converted integer
 */
+ (IOSByteArray *)I2OSPWithInt:(jint)x;

/*!
 @brief Convert an integer to an octet string of length 4 according to IEEE 1363,
  Section 5.5.3.
 @param input the integer to convert
 @param output byte array holding the output
 @param outOff offset in output array where the result is stored
 */
+ (void)I2OSPWithInt:(jint)input
       withByteArray:(IOSByteArray *)output
             withInt:(jint)outOff;

/*!
 @brief Convert an integer to an octet string of the specified length according
  to IEEE 1363, Section 5.5.3.No length checking is performed (i.e., if
  the integer cannot be encoded into <tt>length</tt> octets, it is
  truncated).
 @param input the integer to convert
 @param output byte array holding the output
 @param outOff offset in output array where the result is stored
 @param length the length of the encoding
 */
+ (void)I2OSPWithInt:(jint)input
       withByteArray:(IOSByteArray *)output
             withInt:(jint)outOff
             withInt:(jint)length;

/*!
 @brief Convert an integer to an octet string according to IEEE 1363, Section
  5.5.3.Length checking is performed.
 @param x the integer to convert
 @param oLen the desired length of the octet string
 @return an octet string of length <tt>oLen</tt> representing the
          integer <tt>x</tt>, or <tt>null</tt> if the integer is
          negative
 @throw ArithmeticExceptionif <tt>x</tt> can't be encoded into <tt>oLen</tt>
  octets.
 */
+ (IOSByteArray *)I2OSPWithInt:(jint)x
                       withInt:(jint)oLen;

/*!
 @brief Convert an integer to an octet string of length 8 according to IEEE 1363,
  Section 5.5.3.
 @param input the integer to convert
 @return the converted integer
 */
+ (IOSByteArray *)I2OSPWithLong:(jlong)input;

/*!
 @brief Convert an integer to an octet string of length 8 according to IEEE 1363,
  Section 5.5.3.
 @param input the integer to convert
 @param output byte array holding the output
 @param outOff offset in output array where the result is stored
 */
+ (void)I2OSPWithLong:(jlong)input
        withByteArray:(IOSByteArray *)output
              withInt:(jint)outOff;

/*!
 @brief Convert an octet string to an integer according to IEEE 1363, Section
  5.5.3.
 @param input the byte array holding the octet string
 @return an integer representing the octet string <tt>input</tt>, or
          <tt>0</tt> if the represented integer is negative or too large
          or the byte array is empty
 @throw ArithmeticExceptionif the length of the given octet string is larger than 4.
 */
+ (jint)OS2IPWithByteArray:(IOSByteArray *)input;

/*!
 @brief Convert a byte array of length 4 beginning at <tt>offset</tt> into an
  integer.
 @param input the byte array
 @param inOff the offset into the byte array
 @return the resulting integer
 */
+ (jint)OS2IPWithByteArray:(IOSByteArray *)input
                   withInt:(jint)inOff;

/*!
 @brief Convert an octet string to an integer according to IEEE 1363, Section
  5.5.3.
 @param input the byte array holding the octet string
 @param inOff the offset in the input byte array where the octet string               starts
 @param inLen the length of the encoded integer
 @return an integer representing the octet string <tt>bytes</tt>, or
          <tt>0</tt> if the represented integer is negative or too large
          or the byte array is empty
 */
+ (jint)OS2IPWithByteArray:(IOSByteArray *)input
                   withInt:(jint)inOff
                   withInt:(jint)inLen;

/*!
 @brief Convert a byte array of length 8 beginning at <tt>inOff</tt> into a
  long integer.
 @param input the byte array
 @param inOff the offset into the byte array
 @return the resulting long integer
 */
+ (jlong)OS2LIPWithByteArray:(IOSByteArray *)input
                     withInt:(jint)inOff;

/*!
 @brief Convert an int array into a byte array.
 @param input the int array
 @return the converted array
 */
+ (IOSByteArray *)toByteArrayWithIntArray:(IOSIntArray *)input;

/*!
 @brief Convert an int array into a byte array of the specified length.No length
  checking is performed (i.e., if the last integer cannot be encoded into 
 <tt>length % 4</tt> octets, it is truncated).
 @param input the int array
 @param length the length of the converted array
 @return the converted array
 */
+ (IOSByteArray *)toByteArrayWithIntArray:(IOSIntArray *)input
                                  withInt:(jint)length;

/*!
 @brief Convert a byte array into an int array.
 @param input the byte array
 @return the converted array
 */
+ (IOSIntArray *)toIntArrayWithByteArray:(IOSByteArray *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcMathLinearalgebraBigEndianConversions)

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_I2OSPWithInt_(jint x);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_I2OSPWithInt_withInt_(jint x, jint oLen);

FOUNDATION_EXPORT void OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_I2OSPWithInt_withByteArray_withInt_(jint input, IOSByteArray *output, jint outOff);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_I2OSPWithLong_(jlong input);

FOUNDATION_EXPORT void OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_I2OSPWithLong_withByteArray_withInt_(jlong input, IOSByteArray *output, jint outOff);

FOUNDATION_EXPORT void OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_I2OSPWithInt_withByteArray_withInt_withInt_(jint input, IOSByteArray *output, jint outOff, jint length);

FOUNDATION_EXPORT jint OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_OS2IPWithByteArray_(IOSByteArray *input);

FOUNDATION_EXPORT jint OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_OS2IPWithByteArray_withInt_(IOSByteArray *input, jint inOff);

FOUNDATION_EXPORT jint OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_OS2IPWithByteArray_withInt_withInt_(IOSByteArray *input, jint inOff, jint inLen);

FOUNDATION_EXPORT jlong OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_OS2LIPWithByteArray_withInt_(IOSByteArray *input, jint inOff);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_toByteArrayWithIntArray_(IOSIntArray *input);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_toByteArrayWithIntArray_withInt_(IOSIntArray *input, jint length);

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastlePqcMathLinearalgebraBigEndianConversions_toIntArrayWithByteArray_(IOSByteArray *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcMathLinearalgebraBigEndianConversions)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcMathLinearalgebraBigEndianConversions")
