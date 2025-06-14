//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/DataLengthException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoDataLengthException")
#ifdef RESTRICT_OrgBouncycastleCryptoDataLengthException
#define INCLUDE_ALL_OrgBouncycastleCryptoDataLengthException 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoDataLengthException 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoDataLengthException

#if !defined (OrgBouncycastleCryptoDataLengthException_) && (INCLUDE_ALL_OrgBouncycastleCryptoDataLengthException || defined(INCLUDE_OrgBouncycastleCryptoDataLengthException))
#define OrgBouncycastleCryptoDataLengthException_

#define RESTRICT_OrgBouncycastleCryptoRuntimeCryptoException 1
#define INCLUDE_OrgBouncycastleCryptoRuntimeCryptoException 1
#include "org/bouncycastle/crypto/RuntimeCryptoException.h"

/*!
 @brief this exception is thrown if a buffer that is meant to have output
  copied into it turns out to be too short, or if we've been given 
  insufficient input.In general this exception will get thrown rather
  than an ArrayOutOfBounds exception.
 */
@interface OrgBouncycastleCryptoDataLengthException : OrgBouncycastleCryptoRuntimeCryptoException

#pragma mark Public

/*!
 @brief base constructor.
 */
- (instancetype)init;

/*!
 @brief create a DataLengthException with the given message.
 @param message the message to be carried with the exception.
 */
- (instancetype)initWithNSString:(NSString *)message;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoDataLengthException)

FOUNDATION_EXPORT void OrgBouncycastleCryptoDataLengthException_init(OrgBouncycastleCryptoDataLengthException *self);

FOUNDATION_EXPORT OrgBouncycastleCryptoDataLengthException *new_OrgBouncycastleCryptoDataLengthException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoDataLengthException *create_OrgBouncycastleCryptoDataLengthException_init(void);

FOUNDATION_EXPORT void OrgBouncycastleCryptoDataLengthException_initWithNSString_(OrgBouncycastleCryptoDataLengthException *self, NSString *message);

FOUNDATION_EXPORT OrgBouncycastleCryptoDataLengthException *new_OrgBouncycastleCryptoDataLengthException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoDataLengthException *create_OrgBouncycastleCryptoDataLengthException_initWithNSString_(NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoDataLengthException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoDataLengthException")
