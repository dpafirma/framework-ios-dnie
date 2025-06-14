//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl")
#ifdef RESTRICT_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl 1
#endif
#undef RESTRICT_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl

#if !defined (OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl_) && (INCLUDE_ALL_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl || defined(INCLUDE_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl))
#define OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl_

#define RESTRICT_OrgBouncycastleCryptoSecretWithEncapsulation 1
#define INCLUDE_OrgBouncycastleCryptoSecretWithEncapsulation 1
#include "org/bouncycastle/crypto/SecretWithEncapsulation.h"

@class IOSByteArray;

@interface OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl : NSObject < OrgBouncycastleCryptoSecretWithEncapsulation >

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)sessionKey
                    withByteArray:(IOSByteArray *)cipher_text;

- (void)destroy;

- (IOSByteArray *)getEncapsulation;

- (IOSByteArray *)getSecret;

- (jboolean)isDestroyed;

#pragma mark Package-Private

- (void)checkDestroyed;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl)

FOUNDATION_EXPORT void OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl_initWithByteArray_withByteArray_(OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl *self, IOSByteArray *sessionKey, IOSByteArray *cipher_text);

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl *new_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl_initWithByteArray_withByteArray_(IOSByteArray *sessionKey, IOSByteArray *cipher_text) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl *create_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl_initWithByteArray_withByteArray_(IOSByteArray *sessionKey, IOSByteArray *cipher_text);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoUtilSecretWithEncapsulationImpl")
