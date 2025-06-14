//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/lms/LMOtsPublicKey.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey")
#ifdef RESTRICT_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey 1
#endif
#undef RESTRICT_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey

#if !defined (OrgBouncycastlePqcCryptoLmsLMOtsPublicKey_) && (INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey || defined(INCLUDE_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey))
#define OrgBouncycastlePqcCryptoLmsLMOtsPublicKey_

#define RESTRICT_OrgBouncycastleUtilEncodable 1
#define INCLUDE_OrgBouncycastleUtilEncodable 1
#include "org/bouncycastle/util/Encodable.h"

@class IOSByteArray;
@class OrgBouncycastlePqcCryptoLmsLMOtsParameters;
@class OrgBouncycastlePqcCryptoLmsLMOtsSignature;
@class OrgBouncycastlePqcCryptoLmsLMSContext;
@class OrgBouncycastlePqcCryptoLmsLMSSignature;

@interface OrgBouncycastlePqcCryptoLmsLMOtsPublicKey : NSObject < OrgBouncycastleUtilEncodable >

#pragma mark Public

- (instancetype)initPackagePrivateWithOrgBouncycastlePqcCryptoLmsLMOtsParameters:(OrgBouncycastlePqcCryptoLmsLMOtsParameters *)parameter
                                                                   withByteArray:(IOSByteArray *)i
                                                                         withInt:(jint)q
                                                                   withByteArray:(IOSByteArray *)k;

- (jboolean)isEqual:(id)o;

- (IOSByteArray *)getEncoded;

- (IOSByteArray *)getI;

+ (OrgBouncycastlePqcCryptoLmsLMOtsPublicKey *)getInstanceWithId:(id)src;

- (IOSByteArray *)getK;

- (OrgBouncycastlePqcCryptoLmsLMOtsParameters *)getParameter;

- (jint)getQ;

- (NSUInteger)hash;

#pragma mark Package-Private

- (OrgBouncycastlePqcCryptoLmsLMSContext *)createOtsContextWithOrgBouncycastlePqcCryptoLmsLMOtsSignature:(OrgBouncycastlePqcCryptoLmsLMOtsSignature *)signature;

- (OrgBouncycastlePqcCryptoLmsLMSContext *)createOtsContextWithOrgBouncycastlePqcCryptoLmsLMSSignature:(OrgBouncycastlePqcCryptoLmsLMSSignature *)signature;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcCryptoLmsLMOtsPublicKey)

FOUNDATION_EXPORT void OrgBouncycastlePqcCryptoLmsLMOtsPublicKey_initPackagePrivateWithOrgBouncycastlePqcCryptoLmsLMOtsParameters_withByteArray_withInt_withByteArray_(OrgBouncycastlePqcCryptoLmsLMOtsPublicKey *self, OrgBouncycastlePqcCryptoLmsLMOtsParameters *parameter, IOSByteArray *i, jint q, IOSByteArray *k);

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoLmsLMOtsPublicKey *new_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey_initPackagePrivateWithOrgBouncycastlePqcCryptoLmsLMOtsParameters_withByteArray_withInt_withByteArray_(OrgBouncycastlePqcCryptoLmsLMOtsParameters *parameter, IOSByteArray *i, jint q, IOSByteArray *k) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoLmsLMOtsPublicKey *create_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey_initPackagePrivateWithOrgBouncycastlePqcCryptoLmsLMOtsParameters_withByteArray_withInt_withByteArray_(OrgBouncycastlePqcCryptoLmsLMOtsParameters *parameter, IOSByteArray *i, jint q, IOSByteArray *k);

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoLmsLMOtsPublicKey *OrgBouncycastlePqcCryptoLmsLMOtsPublicKey_getInstanceWithId_(id src);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcCryptoLmsLMOtsPublicKey)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMOtsPublicKey")
