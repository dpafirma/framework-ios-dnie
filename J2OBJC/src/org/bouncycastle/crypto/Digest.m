//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/Digest.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/crypto/Digest.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/crypto/Digest must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleCryptoDigest : NSObject

@end

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/Digest.java"


#line 6
@implementation OrgBouncycastleCryptoDigest

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getAlgorithmName);
  methods[1].selector = @selector(getDigestSize);
  methods[2].selector = @selector(updateWithByte:);
  methods[3].selector = @selector(updateWithByteArray:withInt:withInt:);
  methods[4].selector = @selector(doFinalWithByteArray:withInt:);
  methods[5].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "update", "B", "[BII", "doFinal", "[BI" };
  static const J2ObjcClassInfo _OrgBouncycastleCryptoDigest = { "Digest", "org.bouncycastle.crypto", ptrTable, methods, NULL, 7, 0x609, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleCryptoDigest;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDigest)
