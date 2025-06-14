//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/params/DHValidationParameters.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoParamsDHValidationParameters")
#ifdef RESTRICT_OrgBouncycastleCryptoParamsDHValidationParameters
#define INCLUDE_ALL_OrgBouncycastleCryptoParamsDHValidationParameters 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoParamsDHValidationParameters 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoParamsDHValidationParameters

#if !defined (OrgBouncycastleCryptoParamsDHValidationParameters_) && (INCLUDE_ALL_OrgBouncycastleCryptoParamsDHValidationParameters || defined(INCLUDE_OrgBouncycastleCryptoParamsDHValidationParameters))
#define OrgBouncycastleCryptoParamsDHValidationParameters_

@class IOSByteArray;

@interface OrgBouncycastleCryptoParamsDHValidationParameters : NSObject

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)seed
                          withInt:(jint)counter;

- (jboolean)isEqual:(id)o;

- (jint)getCounter;

- (IOSByteArray *)getSeed;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsDHValidationParameters)

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsDHValidationParameters_initWithByteArray_withInt_(OrgBouncycastleCryptoParamsDHValidationParameters *self, IOSByteArray *seed, jint counter);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHValidationParameters *new_OrgBouncycastleCryptoParamsDHValidationParameters_initWithByteArray_withInt_(IOSByteArray *seed, jint counter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsDHValidationParameters *create_OrgBouncycastleCryptoParamsDHValidationParameters_initWithByteArray_withInt_(IOSByteArray *seed, jint counter);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsDHValidationParameters)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoParamsDHValidationParameters")
