//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/MultiBlockCipher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCryptoMultiBlockCipher")
#ifdef RESTRICT_OrgBouncycastleCryptoMultiBlockCipher
#define INCLUDE_ALL_OrgBouncycastleCryptoMultiBlockCipher 0
#else
#define INCLUDE_ALL_OrgBouncycastleCryptoMultiBlockCipher 1
#endif
#undef RESTRICT_OrgBouncycastleCryptoMultiBlockCipher

#if !defined (OrgBouncycastleCryptoMultiBlockCipher_) && (INCLUDE_ALL_OrgBouncycastleCryptoMultiBlockCipher || defined(INCLUDE_OrgBouncycastleCryptoMultiBlockCipher))
#define OrgBouncycastleCryptoMultiBlockCipher_

#define RESTRICT_OrgBouncycastleCryptoBlockCipher 1
#define INCLUDE_OrgBouncycastleCryptoBlockCipher 1
#include "org/bouncycastle/crypto/BlockCipher.h"

@class IOSByteArray;

/*!
 @brief Base interface for a cipher engine capable of processing multiple blocks at a time.
 */
@protocol OrgBouncycastleCryptoMultiBlockCipher < OrgBouncycastleCryptoBlockCipher, JavaObject >

/*!
 @brief Return the multi-block size for this cipher (in bytes).
 @return the multi-block size for this cipher in bytes.
 */
- (jint)getMultiBlockSize;

/*!
 @brief Process blockCount blocks from input in offset inOff and place the output in
  out from offset outOff.
 @param inArg input data array.
 @param inOff start of input data in in.
 @param blockCount number of blocks to be processed.
 @param outArg output data array.
 @param outOff start position for output data.
 @return number of bytes written to out.
 @throw DataLengthException
 @throw IllegalStateException
 */
- (jint)processBlocksWithByteArray:(IOSByteArray *)inArg
                           withInt:(jint)inOff
                           withInt:(jint)blockCount
                     withByteArray:(IOSByteArray *)outArg
                           withInt:(jint)outOff;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoMultiBlockCipher)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoMultiBlockCipher)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCryptoMultiBlockCipher")
