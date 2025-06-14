//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/modes/CBCModeCipher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoModesCBCModeCipher")
#ifdef RESTRICT_OrgBouncycastleCryptoModesCBCModeCipher
#define INCLUDE_ALL_OrgBouncycastleCryptoModesCBCModeCipher 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoModesCBCModeCipher 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoModesCBCModeCipher

#if !defined (OrgBouncycastleCryptoModesCBCModeCipher_) && (INCLUDE_ALL_OrgBouncycastleCryptoModesCBCModeCipher || defined(INCLUDE_OrgBouncycastleCryptoModesCBCModeCipher))
#define OrgBouncycastleCryptoModesCBCModeCipher_

#define RESTRICT_OrgBouncycastleCryptoMultiBlockCipher 1
#define INCLUDE_OrgBouncycastleCryptoMultiBlockCipher 1
#include "org/bouncycastle/crypto/MultiBlockCipher.h"

@protocol OrgBouncycastleCryptoBlockCipher;

@protocol OrgBouncycastleCryptoModesCBCModeCipher < OrgBouncycastleCryptoMultiBlockCipher, JavaObject >

/*!
 @brief return the underlying block cipher that we are wrapping.
 @return the underlying block cipher that we are wrapping.
 */
- (id<OrgBouncycastleCryptoBlockCipher>)getUnderlyingCipher;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoModesCBCModeCipher)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoModesCBCModeCipher)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoModesCBCModeCipher")
