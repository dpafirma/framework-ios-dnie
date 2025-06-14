//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/util/encoders/Base64.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleUtilEncodersBase64")
#ifdef RESTRICT_OrgBouncycastleUtilEncodersBase64
#define INCLUDE_ALL_OrgBouncycastleUtilEncodersBase64 0
#else
#define INCLUDE_ALL_OrgBouncycastleUtilEncodersBase64 1
#endif
#undef RESTRICT_OrgBouncycastleUtilEncodersBase64

#if !defined (OrgBouncycastleUtilEncodersBase64_) && (INCLUDE_ALL_OrgBouncycastleUtilEncodersBase64 || defined(INCLUDE_OrgBouncycastleUtilEncodersBase64))
#define OrgBouncycastleUtilEncodersBase64_

@class IOSByteArray;
@class JavaIoOutputStream;

/*!
 @brief Utility class for converting Base64 data to bytes and back again.
 */
@interface OrgBouncycastleUtilEncodersBase64 : NSObject

#pragma mark Public

- (instancetype)init;

/*!
 @brief Decode the base 64 encoded input data.It is assumed the input data is valid.
 @return a byte array representing the decoded data.
 */
+ (IOSByteArray *)decodeWithByteArray:(IOSByteArray *)data;

/*!
 @brief Decode to an output stream;
 @param base64Data The source data.
 @param start Start position.
 @param length the length.
 @param outArg The output stream to write to.
 */
+ (jint)decodeWithByteArray:(IOSByteArray *)base64Data
                    withInt:(jint)start
                    withInt:(jint)length
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

/*!
 @brief Decode the base 64 encoded String data - whitespace will be ignored.
 @return a byte array representing the decoded data.
 */
+ (IOSByteArray *)decodeWithNSString:(NSString *)data;

/*!
 @brief Decode the base 64 encoded String data writing it to the given output stream,
  whitespace characters will be ignored.
 @return the number of bytes produced.
 */
+ (jint)decodeWithNSString:(NSString *)data
    withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

/*!
 @brief Encode the input data producing a base 64 encoded byte array.
 @return a byte array containing the base 64 encoded data.
 */
+ (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)data;

/*!
 @brief Encode the input data producing a base 64 encoded byte array.
 @return a byte array containing the base 64 encoded data.
 */
+ (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)data
                              withInt:(jint)off
                              withInt:(jint)length;

/*!
 @brief Encode the byte data to base 64 writing it to the given output stream.
 @return the number of bytes produced.
 */
+ (jint)encodeWithByteArray:(IOSByteArray *)data
                    withInt:(jint)off
                    withInt:(jint)length
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

/*!
 @brief Encode the byte data to base 64 writing it to the given output stream.
 @return the number of bytes produced.
 */
+ (jint)encodeWithByteArray:(IOSByteArray *)data
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

+ (NSString *)toBase64StringWithByteArray:(IOSByteArray *)data;

+ (NSString *)toBase64StringWithByteArray:(IOSByteArray *)data
                                  withInt:(jint)off
                                  withInt:(jint)length;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleUtilEncodersBase64)

FOUNDATION_EXPORT void OrgBouncycastleUtilEncodersBase64_init(OrgBouncycastleUtilEncodersBase64 *self);

FOUNDATION_EXPORT OrgBouncycastleUtilEncodersBase64 *new_OrgBouncycastleUtilEncodersBase64_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleUtilEncodersBase64 *create_OrgBouncycastleUtilEncodersBase64_init(void);

FOUNDATION_EXPORT NSString *OrgBouncycastleUtilEncodersBase64_toBase64StringWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT NSString *OrgBouncycastleUtilEncodersBase64_toBase64StringWithByteArray_withInt_withInt_(IOSByteArray *data, jint off, jint length);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withInt_withInt_(IOSByteArray *data, jint off, jint length);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withJavaIoOutputStream_(IOSByteArray *data, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersBase64_encodeWithByteArray_withInt_withInt_withJavaIoOutputStream_(IOSByteArray *data, jint off, jint length, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersBase64_decodeWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersBase64_decodeWithNSString_(NSString *data);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersBase64_decodeWithNSString_withJavaIoOutputStream_(NSString *data, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersBase64_decodeWithByteArray_withInt_withInt_withJavaIoOutputStream_(IOSByteArray *base64Data, jint start, jint length, JavaIoOutputStream *outArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilEncodersBase64)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleUtilEncodersBase64")
