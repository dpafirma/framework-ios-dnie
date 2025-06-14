//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/util/DigestFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoUtilDigestFactory")
#ifdef RESTRICT_OrgBouncycastleCryptoUtilDigestFactory
#define INCLUDE_ALL_OrgBouncycastleCryptoUtilDigestFactory 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoUtilDigestFactory 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoUtilDigestFactory

#if !defined (OrgBouncycastleCryptoUtilDigestFactory_) && (INCLUDE_ALL_OrgBouncycastleCryptoUtilDigestFactory || defined(INCLUDE_OrgBouncycastleCryptoUtilDigestFactory))
#define OrgBouncycastleCryptoUtilDigestFactory_

@protocol OrgBouncycastleCryptoDigest;

/*!
 @brief Basic factory class for message digests.
 */
@interface OrgBouncycastleCryptoUtilDigestFactory : NSObject

#pragma mark Public

- (instancetype)init;

+ (id<OrgBouncycastleCryptoDigest>)cloneDigestWithOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)hashAlg;

+ (id<OrgBouncycastleCryptoDigest>)createMD5;

+ (id<OrgBouncycastleCryptoDigest>)createSHA1;

+ (id<OrgBouncycastleCryptoDigest>)createSHA224;

+ (id<OrgBouncycastleCryptoDigest>)createSHA256;

+ (id<OrgBouncycastleCryptoDigest>)createSHA384;

+ (id<OrgBouncycastleCryptoDigest>)createSHA3_224;

+ (id<OrgBouncycastleCryptoDigest>)createSHA3_256;

+ (id<OrgBouncycastleCryptoDigest>)createSHA3_384;

+ (id<OrgBouncycastleCryptoDigest>)createSHA3_512;

+ (id<OrgBouncycastleCryptoDigest>)createSHA512;

+ (id<OrgBouncycastleCryptoDigest>)createSHA512_224;

+ (id<OrgBouncycastleCryptoDigest>)createSHA512_256;

+ (id<OrgBouncycastleCryptoDigest>)createSHAKE128;

+ (id<OrgBouncycastleCryptoDigest>)createSHAKE256;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleCryptoUtilDigestFactory)

FOUNDATION_EXPORT void OrgBouncycastleCryptoUtilDigestFactory_init(OrgBouncycastleCryptoUtilDigestFactory *self);

FOUNDATION_EXPORT OrgBouncycastleCryptoUtilDigestFactory *new_OrgBouncycastleCryptoUtilDigestFactory_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoUtilDigestFactory *create_OrgBouncycastleCryptoUtilDigestFactory_init(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createMD5(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA1(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA224(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA256(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA384(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA512(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA512_224(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA512_256(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA3_224(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA3_256(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA3_384(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHA3_512(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHAKE128(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_createSHAKE256(void);

FOUNDATION_EXPORT id<OrgBouncycastleCryptoDigest> OrgBouncycastleCryptoUtilDigestFactory_cloneDigestWithOrgBouncycastleCryptoDigest_(id<OrgBouncycastleCryptoDigest> hashAlg);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoUtilDigestFactory)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoUtilDigestFactory")
