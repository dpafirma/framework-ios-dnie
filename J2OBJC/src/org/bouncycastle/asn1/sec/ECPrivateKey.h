//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/sec/ECPrivateKey.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleAsn1SecECPrivateKey")
#ifdef RESTRICT_OrgBouncycastleAsn1SecECPrivateKey
#define INCLUDE_ALL_OrgBouncycastleAsn1SecECPrivateKey 0
#else
#define INCLUDE_ALL_OrgBouncycastleAsn1SecECPrivateKey 1
#endif
#undef RESTRICT_OrgBouncycastleAsn1SecECPrivateKey

#if !defined (OrgBouncycastleAsn1SecECPrivateKey_) && (INCLUDE_ALL_OrgBouncycastleAsn1SecECPrivateKey || defined(INCLUDE_OrgBouncycastleAsn1SecECPrivateKey))
#define OrgBouncycastleAsn1SecECPrivateKey_

#define RESTRICT_OrgBouncycastleAsn1ASN1Object 1
#define INCLUDE_OrgBouncycastleAsn1ASN1Object 1
#include "org/bouncycastle/asn1/ASN1Object.h"

@class JavaMathBigInteger;
@class OrgBouncycastleAsn1ASN1BitString;
@class OrgBouncycastleAsn1ASN1Primitive;
@protocol OrgBouncycastleAsn1ASN1Encodable;

/*!
 @brief the elliptic curve private key object from SEC 1
 */
@interface OrgBouncycastleAsn1SecECPrivateKey : OrgBouncycastleAsn1ASN1Object

#pragma mark Public

/*!
 */
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)key;

/*!
 */
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)key
      withOrgBouncycastleAsn1ASN1BitString:(OrgBouncycastleAsn1ASN1BitString *)publicKey
      withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)parameters;

/*!
 */
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)key
      withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)parameters;

/*!
 @brief Base constructor.
 @param orderBitLength the bitLength of the order of the curve.
 @param key the private key value.
 */
- (instancetype)initWithInt:(jint)orderBitLength
     withJavaMathBigInteger:(JavaMathBigInteger *)key;

- (instancetype)initWithInt:(jint)orderBitLength
     withJavaMathBigInteger:(JavaMathBigInteger *)key
withOrgBouncycastleAsn1ASN1BitString:(OrgBouncycastleAsn1ASN1BitString *)publicKey
withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)parameters;

- (instancetype)initWithInt:(jint)orderBitLength
     withJavaMathBigInteger:(JavaMathBigInteger *)key
withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)parameters;

+ (OrgBouncycastleAsn1SecECPrivateKey *)getInstanceWithId:(id)obj;

- (JavaMathBigInteger *)getKey;

/*!
 */
- (OrgBouncycastleAsn1ASN1Primitive *)getParameters;

- (OrgBouncycastleAsn1ASN1Object *)getParametersObject;

- (OrgBouncycastleAsn1ASN1BitString *)getPublicKey;

/*!
 @brief ECPrivateKey ::= SEQUENCE {
      version INTEGER { ecPrivkeyVer1(1) } (ecPrivkeyVer1),
      privateKey OCTET STRING,
      parameters [0] Parameters OPTIONAL,
      publicKey [1] BIT STRING OPTIONAL }
 */
- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1SecECPrivateKey)

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *OrgBouncycastleAsn1SecECPrivateKey_getInstanceWithId_(id obj);

FOUNDATION_EXPORT void OrgBouncycastleAsn1SecECPrivateKey_initWithJavaMathBigInteger_(OrgBouncycastleAsn1SecECPrivateKey *self, JavaMathBigInteger *key);

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *new_OrgBouncycastleAsn1SecECPrivateKey_initWithJavaMathBigInteger_(JavaMathBigInteger *key) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *create_OrgBouncycastleAsn1SecECPrivateKey_initWithJavaMathBigInteger_(JavaMathBigInteger *key);

FOUNDATION_EXPORT void OrgBouncycastleAsn1SecECPrivateKey_initWithInt_withJavaMathBigInteger_(OrgBouncycastleAsn1SecECPrivateKey *self, jint orderBitLength, JavaMathBigInteger *key);

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *new_OrgBouncycastleAsn1SecECPrivateKey_initWithInt_withJavaMathBigInteger_(jint orderBitLength, JavaMathBigInteger *key) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *create_OrgBouncycastleAsn1SecECPrivateKey_initWithInt_withJavaMathBigInteger_(jint orderBitLength, JavaMathBigInteger *key);

FOUNDATION_EXPORT void OrgBouncycastleAsn1SecECPrivateKey_initWithJavaMathBigInteger_withOrgBouncycastleAsn1ASN1Encodable_(OrgBouncycastleAsn1SecECPrivateKey *self, JavaMathBigInteger *key, id<OrgBouncycastleAsn1ASN1Encodable> parameters);

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *new_OrgBouncycastleAsn1SecECPrivateKey_initWithJavaMathBigInteger_withOrgBouncycastleAsn1ASN1Encodable_(JavaMathBigInteger *key, id<OrgBouncycastleAsn1ASN1Encodable> parameters) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *create_OrgBouncycastleAsn1SecECPrivateKey_initWithJavaMathBigInteger_withOrgBouncycastleAsn1ASN1Encodable_(JavaMathBigInteger *key, id<OrgBouncycastleAsn1ASN1Encodable> parameters);

FOUNDATION_EXPORT void OrgBouncycastleAsn1SecECPrivateKey_initWithJavaMathBigInteger_withOrgBouncycastleAsn1ASN1BitString_withOrgBouncycastleAsn1ASN1Encodable_(OrgBouncycastleAsn1SecECPrivateKey *self, JavaMathBigInteger *key, OrgBouncycastleAsn1ASN1BitString *publicKey, id<OrgBouncycastleAsn1ASN1Encodable> parameters);

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *new_OrgBouncycastleAsn1SecECPrivateKey_initWithJavaMathBigInteger_withOrgBouncycastleAsn1ASN1BitString_withOrgBouncycastleAsn1ASN1Encodable_(JavaMathBigInteger *key, OrgBouncycastleAsn1ASN1BitString *publicKey, id<OrgBouncycastleAsn1ASN1Encodable> parameters) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *create_OrgBouncycastleAsn1SecECPrivateKey_initWithJavaMathBigInteger_withOrgBouncycastleAsn1ASN1BitString_withOrgBouncycastleAsn1ASN1Encodable_(JavaMathBigInteger *key, OrgBouncycastleAsn1ASN1BitString *publicKey, id<OrgBouncycastleAsn1ASN1Encodable> parameters);

FOUNDATION_EXPORT void OrgBouncycastleAsn1SecECPrivateKey_initWithInt_withJavaMathBigInteger_withOrgBouncycastleAsn1ASN1Encodable_(OrgBouncycastleAsn1SecECPrivateKey *self, jint orderBitLength, JavaMathBigInteger *key, id<OrgBouncycastleAsn1ASN1Encodable> parameters);

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *new_OrgBouncycastleAsn1SecECPrivateKey_initWithInt_withJavaMathBigInteger_withOrgBouncycastleAsn1ASN1Encodable_(jint orderBitLength, JavaMathBigInteger *key, id<OrgBouncycastleAsn1ASN1Encodable> parameters) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *create_OrgBouncycastleAsn1SecECPrivateKey_initWithInt_withJavaMathBigInteger_withOrgBouncycastleAsn1ASN1Encodable_(jint orderBitLength, JavaMathBigInteger *key, id<OrgBouncycastleAsn1ASN1Encodable> parameters);

FOUNDATION_EXPORT void OrgBouncycastleAsn1SecECPrivateKey_initWithInt_withJavaMathBigInteger_withOrgBouncycastleAsn1ASN1BitString_withOrgBouncycastleAsn1ASN1Encodable_(OrgBouncycastleAsn1SecECPrivateKey *self, jint orderBitLength, JavaMathBigInteger *key, OrgBouncycastleAsn1ASN1BitString *publicKey, id<OrgBouncycastleAsn1ASN1Encodable> parameters);

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *new_OrgBouncycastleAsn1SecECPrivateKey_initWithInt_withJavaMathBigInteger_withOrgBouncycastleAsn1ASN1BitString_withOrgBouncycastleAsn1ASN1Encodable_(jint orderBitLength, JavaMathBigInteger *key, OrgBouncycastleAsn1ASN1BitString *publicKey, id<OrgBouncycastleAsn1ASN1Encodable> parameters) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1SecECPrivateKey *create_OrgBouncycastleAsn1SecECPrivateKey_initWithInt_withJavaMathBigInteger_withOrgBouncycastleAsn1ASN1BitString_withOrgBouncycastleAsn1ASN1Encodable_(jint orderBitLength, JavaMathBigInteger *key, OrgBouncycastleAsn1ASN1BitString *publicKey, id<OrgBouncycastleAsn1ASN1Encodable> parameters);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1SecECPrivateKey)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleAsn1SecECPrivateKey")
