//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/mceliece/Utils.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/crypto/Digest.h"
#include "org/bouncycastle/crypto/digests/SHA1Digest.h"
#include "org/bouncycastle/crypto/digests/SHA224Digest.h"
#include "org/bouncycastle/crypto/digests/SHA256Digest.h"
#include "org/bouncycastle/crypto/digests/SHA384Digest.h"
#include "org/bouncycastle/crypto/digests/SHA512Digest.h"
#include "org/bouncycastle/pqc/crypto/mceliece/Utils.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/crypto/mceliece/Utils must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/mceliece/Utils.java"


#line 10
@implementation OrgBouncycastlePqcCryptoMcelieceUtils


#line 10
- (instancetype)initPackagePrivate {
  OrgBouncycastlePqcCryptoMcelieceUtils_initPackagePrivate(self);
  return self;
}


#line 12
+ (id<OrgBouncycastleCryptoDigest>)getDigestWithNSString:(NSString *)digestName {
  return OrgBouncycastlePqcCryptoMcelieceUtils_getDigestWithNSString_(digestName);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleCryptoDigest;", 0x8, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(getDigestWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getDigest", "LNSString;" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcCryptoMcelieceUtils = { "Utils", "org.bouncycastle.pqc.crypto.mceliece", ptrTable, methods, NULL, 7, 0x0, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcCryptoMcelieceUtils;
}

@end


#line 10
void OrgBouncycastlePqcCryptoMcelieceUtils_initPackagePrivate(OrgBouncycastlePqcCryptoMcelieceUtils *self) {
  NSObject_init(self);
}


#line 10
OrgBouncycastlePqcCryptoMcelieceUtils *new_OrgBouncycastlePqcCryptoMcelieceUtils_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcCryptoMcelieceUtils, initPackagePrivate)
}


#line 10
OrgBouncycastlePqcCryptoMcelieceUtils *create_OrgBouncycastlePqcCryptoMcelieceUtils_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcCryptoMcelieceUtils, initPackagePrivate)
}


#line 12
id<OrgBouncycastleCryptoDigest> OrgBouncycastlePqcCryptoMcelieceUtils_getDigestWithNSString_(NSString *digestName) {
  OrgBouncycastlePqcCryptoMcelieceUtils_initialize();
  if ([((NSString *) nil_chk(digestName)) isEqual:@"SHA-1"]) {
    
#line 16
    return new_OrgBouncycastleCryptoDigestsSHA1Digest_init();
  }
  if ([digestName isEqual:@"SHA-224"]) {
    
#line 20
    return new_OrgBouncycastleCryptoDigestsSHA224Digest_init();
  }
  if ([digestName isEqual:@"SHA-256"]) {
    
#line 24
    return new_OrgBouncycastleCryptoDigestsSHA256Digest_init();
  }
  if ([digestName isEqual:@"SHA-384"]) {
    
#line 28
    return new_OrgBouncycastleCryptoDigestsSHA384Digest_init();
  }
  if ([digestName isEqual:@"SHA-512"]) {
    
#line 32
    return new_OrgBouncycastleCryptoDigestsSHA512Digest_init();
  }
  
#line 35
  @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"unrecognised digest algorithm: ", digestName));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcCryptoMcelieceUtils)
