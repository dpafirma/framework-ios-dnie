//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/lms/LMSKeyParameters.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMSKeyParameters")
#ifdef RESTRICT_OrgBouncycastlePqcCryptoLmsLMSKeyParameters
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMSKeyParameters 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMSKeyParameters 1
#endif
#undef RESTRICT_OrgBouncycastlePqcCryptoLmsLMSKeyParameters

#if !defined (OrgBouncycastlePqcCryptoLmsLMSKeyParameters_) && (INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMSKeyParameters || defined(INCLUDE_OrgBouncycastlePqcCryptoLmsLMSKeyParameters))
#define OrgBouncycastlePqcCryptoLmsLMSKeyParameters_

#define RESTRICT_OrgBouncycastleCryptoParamsAsymmetricKeyParameter 1
#define INCLUDE_OrgBouncycastleCryptoParamsAsymmetricKeyParameter 1
#include "org/bouncycastle/crypto/params/AsymmetricKeyParameter.h"

#define RESTRICT_OrgBouncycastleUtilEncodable 1
#define INCLUDE_OrgBouncycastleUtilEncodable 1
#include "org/bouncycastle/util/Encodable.h"

@class IOSByteArray;

@interface OrgBouncycastlePqcCryptoLmsLMSKeyParameters : OrgBouncycastleCryptoParamsAsymmetricKeyParameter < OrgBouncycastleUtilEncodable >

#pragma mark Public

- (IOSByteArray *)getEncoded;

#pragma mark Protected

- (instancetype)initWithBoolean:(jboolean)isPrivateKey;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcCryptoLmsLMSKeyParameters)

FOUNDATION_EXPORT void OrgBouncycastlePqcCryptoLmsLMSKeyParameters_initWithBoolean_(OrgBouncycastlePqcCryptoLmsLMSKeyParameters *self, jboolean isPrivateKey);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcCryptoLmsLMSKeyParameters)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoLmsLMSKeyParameters")
