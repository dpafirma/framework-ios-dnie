//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/AsymmetricBlockCipher.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/crypto/AsymmetricBlockCipher.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/crypto/AsymmetricBlockCipher must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleCryptoAsymmetricBlockCipher : NSObject

@end

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/AsymmetricBlockCipher.java"


#line 8
@implementation OrgBouncycastleCryptoAsymmetricBlockCipher

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x401, 2, 3, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init__WithBoolean:withOrgBouncycastleCryptoCipherParameters:);
  methods[1].selector = @selector(getInputBlockSize);
  methods[2].selector = @selector(getOutputBlockSize);
  methods[3].selector = @selector(processBlockWithByteArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "init", "ZLOrgBouncycastleCryptoCipherParameters;", "processBlock", "[BII", "LOrgBouncycastleCryptoInvalidCipherTextException;" };
  static const J2ObjcClassInfo _OrgBouncycastleCryptoAsymmetricBlockCipher = { "AsymmetricBlockCipher", "org.bouncycastle.crypto", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleCryptoAsymmetricBlockCipher;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoAsymmetricBlockCipher)
