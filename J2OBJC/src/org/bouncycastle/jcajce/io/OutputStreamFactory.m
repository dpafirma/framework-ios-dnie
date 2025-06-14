//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/io/OutputStreamFactory.java
//

#include "J2ObjC_source.h"
#include "java/io/OutputStream.h"
#include "java/security/MessageDigest.h"
#include "java/security/Signature.h"
#include "javax/crypto/Mac.h"
#include "org/bouncycastle/jcajce/io/DigestUpdatingOutputStream.h"
#include "org/bouncycastle/jcajce/io/MacUpdatingOutputStream.h"
#include "org/bouncycastle/jcajce/io/OutputStreamFactory.h"
#include "org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/jcajce/io/OutputStreamFactory must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/io/OutputStreamFactory.java"


#line 12
@implementation OrgBouncycastleJcajceIoOutputStreamFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 12
- (instancetype)init {
  OrgBouncycastleJcajceIoOutputStreamFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 20
+ (JavaIoOutputStream *)createStreamWithJavaSecuritySignature:(JavaSecuritySignature *)signature {
  return OrgBouncycastleJcajceIoOutputStreamFactory_createStreamWithJavaSecuritySignature_(signature);
}


#line 31
+ (JavaIoOutputStream *)createStreamWithJavaSecurityMessageDigest:(JavaSecurityMessageDigest *)digest {
  return OrgBouncycastleJcajceIoOutputStreamFactory_createStreamWithJavaSecurityMessageDigest_(digest);
}


#line 42
+ (JavaIoOutputStream *)createStreamWithJavaxCryptoMac:(JavaxCryptoMac *)mac {
  return OrgBouncycastleJcajceIoOutputStreamFactory_createStreamWithJavaxCryptoMac_(mac);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaIoOutputStream;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaIoOutputStream;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "LJavaIoOutputStream;", 0x9, 0, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createStreamWithJavaSecuritySignature:);
  methods[2].selector = @selector(createStreamWithJavaSecurityMessageDigest:);
  methods[3].selector = @selector(createStreamWithJavaxCryptoMac:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "createStream", "LJavaSecuritySignature;", "LJavaSecurityMessageDigest;", "LJavaxCryptoMac;" };
  static const J2ObjcClassInfo _OrgBouncycastleJcajceIoOutputStreamFactory = { "OutputStreamFactory", "org.bouncycastle.jcajce.io", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleJcajceIoOutputStreamFactory;
}

@end


#line 12
void OrgBouncycastleJcajceIoOutputStreamFactory_init(OrgBouncycastleJcajceIoOutputStreamFactory *self) {
  NSObject_init(self);
}


#line 12
OrgBouncycastleJcajceIoOutputStreamFactory *new_OrgBouncycastleJcajceIoOutputStreamFactory_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastleJcajceIoOutputStreamFactory, init)
}


#line 12
OrgBouncycastleJcajceIoOutputStreamFactory *create_OrgBouncycastleJcajceIoOutputStreamFactory_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastleJcajceIoOutputStreamFactory, init)
}


#line 20
JavaIoOutputStream *OrgBouncycastleJcajceIoOutputStreamFactory_createStreamWithJavaSecuritySignature_(JavaSecuritySignature *signature) {
  OrgBouncycastleJcajceIoOutputStreamFactory_initialize();
  return new_OrgBouncycastleJcajceIoSignatureUpdatingOutputStream_initPackagePrivateWithJavaSecuritySignature_(signature);
}


#line 31
JavaIoOutputStream *OrgBouncycastleJcajceIoOutputStreamFactory_createStreamWithJavaSecurityMessageDigest_(JavaSecurityMessageDigest *digest) {
  OrgBouncycastleJcajceIoOutputStreamFactory_initialize();
  return new_OrgBouncycastleJcajceIoDigestUpdatingOutputStream_initPackagePrivateWithJavaSecurityMessageDigest_(digest);
}


#line 42
JavaIoOutputStream *OrgBouncycastleJcajceIoOutputStreamFactory_createStreamWithJavaxCryptoMac_(JavaxCryptoMac *mac) {
  OrgBouncycastleJcajceIoOutputStreamFactory_initialize();
  return new_OrgBouncycastleJcajceIoMacUpdatingOutputStream_initPackagePrivateWithJavaxCryptoMac_(mac);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleJcajceIoOutputStreamFactory)
