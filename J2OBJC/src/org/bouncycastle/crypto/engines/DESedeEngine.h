//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/engines/DESedeEngine.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoEnginesDESedeEngine")
#ifdef RESTRICT_OrgBouncycastleCryptoEnginesDESedeEngine
#define INCLUDE_ALL_OrgBouncycastleCryptoEnginesDESedeEngine 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoEnginesDESedeEngine 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoEnginesDESedeEngine

#if !defined (OrgBouncycastleCryptoEnginesDESedeEngine_) && (INCLUDE_ALL_OrgBouncycastleCryptoEnginesDESedeEngine || defined(INCLUDE_OrgBouncycastleCryptoEnginesDESedeEngine))
#define OrgBouncycastleCryptoEnginesDESedeEngine_

#define RESTRICT_OrgBouncycastleCryptoEnginesDESEngine 1
#define INCLUDE_OrgBouncycastleCryptoEnginesDESEngine 1
#include "org/bouncycastle/crypto/engines/DESEngine.h"

@class IOSByteArray;
@protocol OrgBouncycastleCryptoCipherParameters;

/*!
 @brief a class that provides a basic DESede (or Triple DES) engine.
 */
@interface OrgBouncycastleCryptoEnginesDESedeEngine : OrgBouncycastleCryptoEnginesDESEngine

#pragma mark Public

/*!
 @brief standard constructor.
 */
- (instancetype)init;

- (NSString *)getAlgorithmName;

- (jint)getBlockSize;

/*!
 @brief initialise a DESede cipher.
 @param encrypting whether or not we are for encryption.
 @param params the parameters required to set up the cipher.
 @throw IllegalArgumentExceptionif the params argument is
  inappropriate.
 */
- (void)init__WithBoolean:(jboolean)encrypting
withOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)params OBJC_METHOD_FAMILY_NONE;

- (jint)processBlockWithByteArray:(IOSByteArray *)inArg
                          withInt:(jint)inOff
                    withByteArray:(IOSByteArray *)outArg
                          withInt:(jint)outOff;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoEnginesDESedeEngine)

inline jint OrgBouncycastleCryptoEnginesDESedeEngine_get_BLOCK_SIZE(void);
#define OrgBouncycastleCryptoEnginesDESedeEngine_BLOCK_SIZE 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoEnginesDESedeEngine, BLOCK_SIZE, jint)

FOUNDATION_EXPORT void OrgBouncycastleCryptoEnginesDESedeEngine_init(OrgBouncycastleCryptoEnginesDESedeEngine *self);

FOUNDATION_EXPORT OrgBouncycastleCryptoEnginesDESedeEngine *new_OrgBouncycastleCryptoEnginesDESedeEngine_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCryptoEnginesDESedeEngine *create_OrgBouncycastleCryptoEnginesDESedeEngine_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoEnginesDESedeEngine)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoEnginesDESedeEngine")
