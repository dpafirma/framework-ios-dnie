//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/util/encoders/UTF8.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleUtilEncodersUTF8")
#ifdef RESTRICT_OrgBouncycastleUtilEncodersUTF8
#define INCLUDE_ALL_OrgBouncycastleUtilEncodersUTF8 0
#else
#define INCLUDE_ALL_OrgBouncycastleUtilEncodersUTF8 1
#endif
#undef RESTRICT_OrgBouncycastleUtilEncodersUTF8

#if !defined (OrgBouncycastleUtilEncodersUTF8_) && (INCLUDE_ALL_OrgBouncycastleUtilEncodersUTF8 || defined(INCLUDE_OrgBouncycastleUtilEncodersUTF8))
#define OrgBouncycastleUtilEncodersUTF8_

@class IOSByteArray;
@class IOSCharArray;

/*!
 @brief Utilities for working with UTF-8 encodings.
 <p>
  Decoding of UTF-8 is based on a presentation by Bob Steagall at CppCon2018 (see
  https://github.com/BobSteagall/CppCon2018). It uses a Deterministic Finite Automaton (DFA) to
  recognize and decode multi-byte code points.
 */
@interface OrgBouncycastleUtilEncodersUTF8 : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Transcode a UTF-8 encoding into a UTF-16 representation.In the general case the output 
 <code>utf16</code> array should be at least as long as the input <code>utf8</code> one to handle
  arbitrary inputs.
 The number of output UTF-16 code units is returned, or -1 if any errors are
  encountered (in which case an arbitrary amount of data may have been written into the output
  array). Errors that will be detected are malformed UTF-8, including incomplete, truncated or
  "overlong" encodings, and unmappable code points. In particular, no unmatched surrogates will
  be produced. An error will also result if <code>utf16</code> is found to be too small to store the
  complete output.
 @param utf8 A non-null array containing a well-formed UTF-8 encoding.
 @param utf16 A non-null array, at least as long as the <code>utf8</code>  array in order to ensure               the output will fit.
 @return The number of UTF-16 code units written to <code>utf16</code> (beginning from index 0), or
  else -1 if the input was either malformed or encoded any unmappable characters, or if the 
 <code>utf16</code> is too small.
 */
+ (jint)transcodeToUTF16WithByteArray:(IOSByteArray *)utf8
                        withCharArray:(IOSCharArray *)utf16;

/*!
 @brief Transcode a UTF-8 encoding into a UTF-16 representation.In the general case the output 
 <code>utf16</code> array should be at least as long as the input length from <code>utf8</code> to handle
  arbitrary inputs.
 The number of output UTF-16 code units is returned, or -1 if any errors are
  encountered (in which case an arbitrary amount of data may have been written into the output
  array). Errors that will be detected are malformed UTF-8, including incomplete, truncated or
  "overlong" encodings, and unmappable code points. In particular, no unmatched surrogates will
  be produced. An error will also result if <code>utf16</code> is found to be too small to store the
  complete output.
 @param utf8 A non-null array containing a well-formed UTF-8 encoding.
 @param utf8Off start position in the array for the well-formed encoding.
 @param utf8Length length in bytes of the well-formed encoding.
 @param utf16 A non-null array, at least as long as the <code>utf8</code>  array in order to ensure               the output will fit.
 @return The number of UTF-16 code units written to <code>utf16</code> (beginning from index 0), or
  else -1 if the input was either malformed or encoded any unmappable characters, or if the 
 <code>utf16</code> is too small.
 */
+ (jint)transcodeToUTF16WithByteArray:(IOSByteArray *)utf8
                              withInt:(jint)utf8Off
                              withInt:(jint)utf8Length
                        withCharArray:(IOSCharArray *)utf16;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleUtilEncodersUTF8)

FOUNDATION_EXPORT void OrgBouncycastleUtilEncodersUTF8_init(OrgBouncycastleUtilEncodersUTF8 *self);

FOUNDATION_EXPORT OrgBouncycastleUtilEncodersUTF8 *new_OrgBouncycastleUtilEncodersUTF8_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleUtilEncodersUTF8 *create_OrgBouncycastleUtilEncodersUTF8_init(void);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersUTF8_transcodeToUTF16WithByteArray_withCharArray_(IOSByteArray *utf8, IOSCharArray *utf16);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersUTF8_transcodeToUTF16WithByteArray_withInt_withInt_withCharArray_(IOSByteArray *utf8, jint utf8Off, jint utf8Length, IOSCharArray *utf16);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilEncodersUTF8)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleUtilEncodersUTF8")
