//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/digests/MD5Digest.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoDigestsMD5Digest")
#ifdef RESTRICT_OrgBouncycastleCryptoDigestsMD5Digest
#define INCLUDE_ALL_OrgBouncycastleCryptoDigestsMD5Digest 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoDigestsMD5Digest 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoDigestsMD5Digest

#if !defined (OrgBouncycastleCryptoDigestsMD5Digest_) && (INCLUDE_ALL_OrgBouncycastleCryptoDigestsMD5Digest || defined(INCLUDE_OrgBouncycastleCryptoDigestsMD5Digest))
#define OrgBouncycastleCryptoDigestsMD5Digest_

#define RESTRICT_OrgBouncycastleCryptoDigestsGeneralDigest 1
#define INCLUDE_OrgBouncycastleCryptoDigestsGeneralDigest 1
#include "org/bouncycastle/crypto/digests/GeneralDigest.h"

#define RESTRICT_OrgBouncycastleCryptoDigestsEncodableDigest 1
#define INCLUDE_OrgBouncycastleCryptoDigestsEncodableDigest 1
#include "org/bouncycastle/crypto/digests/EncodableDigest.h"

@class IOSByteArray;
@protocol OrgBouncycastleUtilMemoable;

/*!
 @brief implementation of MD5 as outlined in "Handbook of Applied Cryptography", pages 346 - 347.
 */
@interface OrgBouncycastleCryptoDigestsMD5Digest : OrgBouncycastleCryptoDigestsGeneralDigest < OrgBouncycastleCryptoDigestsEncodableDigest >

#pragma mark Public

/*!
 @brief Standard constructor
 */
- (instancetype)init;

- (instancetype)initWithByteArray:(IOSByteArray *)encodedState;

/*!
 @brief Copy constructor.This will copy the state of the provided
  message digest.
 */
- (instancetype)initWithOrgBouncycastleCryptoDigestsMD5Digest:(OrgBouncycastleCryptoDigestsMD5Digest *)t;

- (id<OrgBouncycastleUtilMemoable>)copy__ OBJC_METHOD_FAMILY_NONE;

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff;

- (NSString *)getAlgorithmName;

- (jint)getDigestSize;

- (IOSByteArray *)getEncodedState;

/*!
 @brief reset the chaining variables to the IV values.
 */
- (void)reset;

- (void)resetWithOrgBouncycastleUtilMemoable:(id<OrgBouncycastleUtilMemoable>)other;

#pragma mark Protected

- (void)processBlock;

- (void)processLengthWithLong:(jlong)bitLength;

- (void)processWordWithByteArray:(IOSByteArray *)inArg
                         withInt:(jint)inOff;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgBouncycastleCryptoDigestsGeneralDigest:(OrgBouncycastleCryptoDigestsGeneralDigest *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleCryptoDigestsMD5Digest)

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsMD5Digest_init(OrgBouncycastleCryptoDigestsMD5Digest *self);

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsMD5Digest *new_OrgBouncycastleCryptoDigestsMD5Digest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsMD5Digest *create_OrgBouncycastleCryptoDigestsMD5Digest_init(void);

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsMD5Digest_initWithByteArray_(OrgBouncycastleCryptoDigestsMD5Digest *self, IOSByteArray *encodedState);

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsMD5Digest *new_OrgBouncycastleCryptoDigestsMD5Digest_initWithByteArray_(IOSByteArray *encodedState) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsMD5Digest *create_OrgBouncycastleCryptoDigestsMD5Digest_initWithByteArray_(IOSByteArray *encodedState);

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsMD5Digest_initWithOrgBouncycastleCryptoDigestsMD5Digest_(OrgBouncycastleCryptoDigestsMD5Digest *self, OrgBouncycastleCryptoDigestsMD5Digest *t);

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsMD5Digest *new_OrgBouncycastleCryptoDigestsMD5Digest_initWithOrgBouncycastleCryptoDigestsMD5Digest_(OrgBouncycastleCryptoDigestsMD5Digest *t) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsMD5Digest *create_OrgBouncycastleCryptoDigestsMD5Digest_initWithOrgBouncycastleCryptoDigestsMD5Digest_(OrgBouncycastleCryptoDigestsMD5Digest *t);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoDigestsMD5Digest)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoDigestsMD5Digest")
