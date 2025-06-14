//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/digests/SHA224Digest.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoDigestsSHA224Digest")
#ifdef RESTRICT_OrgBouncycastleCryptoDigestsSHA224Digest
#define INCLUDE_ALL_OrgBouncycastleCryptoDigestsSHA224Digest 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoDigestsSHA224Digest 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoDigestsSHA224Digest

#if !defined (OrgBouncycastleCryptoDigestsSHA224Digest_) && (INCLUDE_ALL_OrgBouncycastleCryptoDigestsSHA224Digest || defined(INCLUDE_OrgBouncycastleCryptoDigestsSHA224Digest))
#define OrgBouncycastleCryptoDigestsSHA224Digest_

#define RESTRICT_OrgBouncycastleCryptoDigestsGeneralDigest 1
#define INCLUDE_OrgBouncycastleCryptoDigestsGeneralDigest 1
#include "org/bouncycastle/crypto/digests/GeneralDigest.h"

#define RESTRICT_OrgBouncycastleCryptoDigestsEncodableDigest 1
#define INCLUDE_OrgBouncycastleCryptoDigestsEncodableDigest 1
#include "org/bouncycastle/crypto/digests/EncodableDigest.h"

@class IOSByteArray;
@class IOSIntArray;
@protocol OrgBouncycastleUtilMemoable;

/*!
 @brief SHA-224 as described in RFC 3874
 @code

          block  word  digest
  SHA-1   512    32    160
  SHA-224 512    32    224
  SHA-256 512    32    256
  SHA-384 1024   64    384
  SHA-512 1024   64    512 
  
@endcode
 */
@interface OrgBouncycastleCryptoDigestsSHA224Digest : OrgBouncycastleCryptoDigestsGeneralDigest < OrgBouncycastleCryptoDigestsEncodableDigest >

#pragma mark Public

/*!
 @brief Standard constructor
 */
- (instancetype)init;

/*!
 @brief State constructor - create a digest initialised with the state of a previous one.
 @param encodedState the encoded state from the originating digest.
 */
- (instancetype)initWithByteArray:(IOSByteArray *)encodedState;

/*!
 @brief Copy constructor.This will copy the state of the provided
  message digest.
 */
- (instancetype)initWithOrgBouncycastleCryptoDigestsSHA224Digest:(OrgBouncycastleCryptoDigestsSHA224Digest *)t;

- (id<OrgBouncycastleUtilMemoable>)copy__ OBJC_METHOD_FAMILY_NONE;

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff;

- (NSString *)getAlgorithmName;

- (jint)getDigestSize;

- (IOSByteArray *)getEncodedState;

/*!
 @brief reset the chaining variables
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

J2OBJC_STATIC_INIT(OrgBouncycastleCryptoDigestsSHA224Digest)

inline IOSIntArray *OrgBouncycastleCryptoDigestsSHA224Digest_get_K(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleCryptoDigestsSHA224Digest_K;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastleCryptoDigestsSHA224Digest, K, IOSIntArray *)

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsSHA224Digest_init(OrgBouncycastleCryptoDigestsSHA224Digest *self);

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsSHA224Digest *new_OrgBouncycastleCryptoDigestsSHA224Digest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsSHA224Digest *create_OrgBouncycastleCryptoDigestsSHA224Digest_init(void);

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsSHA224Digest_initWithOrgBouncycastleCryptoDigestsSHA224Digest_(OrgBouncycastleCryptoDigestsSHA224Digest *self, OrgBouncycastleCryptoDigestsSHA224Digest *t);

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsSHA224Digest *new_OrgBouncycastleCryptoDigestsSHA224Digest_initWithOrgBouncycastleCryptoDigestsSHA224Digest_(OrgBouncycastleCryptoDigestsSHA224Digest *t) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsSHA224Digest *create_OrgBouncycastleCryptoDigestsSHA224Digest_initWithOrgBouncycastleCryptoDigestsSHA224Digest_(OrgBouncycastleCryptoDigestsSHA224Digest *t);

FOUNDATION_EXPORT void OrgBouncycastleCryptoDigestsSHA224Digest_initWithByteArray_(OrgBouncycastleCryptoDigestsSHA224Digest *self, IOSByteArray *encodedState);

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsSHA224Digest *new_OrgBouncycastleCryptoDigestsSHA224Digest_initWithByteArray_(IOSByteArray *encodedState) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoDigestsSHA224Digest *create_OrgBouncycastleCryptoDigestsSHA224Digest_initWithByteArray_(IOSByteArray *encodedState);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoDigestsSHA224Digest)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoDigestsSHA224Digest")
