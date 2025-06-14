//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/security/Signature.h"
#include "java/security/SignatureException.h"
#include "org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleJcajceIoSignatureUpdatingOutputStream () {
 @public
  JavaSecuritySignature *sig_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleJcajceIoSignatureUpdatingOutputStream, sig_, JavaSecuritySignature *)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream.java"


#line 8
@implementation OrgBouncycastleJcajceIoSignatureUpdatingOutputStream


#line 13
- (instancetype)initPackagePrivateWithJavaSecuritySignature:(JavaSecuritySignature *)sig {
  OrgBouncycastleJcajceIoSignatureUpdatingOutputStream_initPackagePrivateWithJavaSecuritySignature_(self, sig);
  return self;
}

- (void)writeWithByteArray:(IOSByteArray *)bytes
                   withInt:(jint)off
                   withInt:(jint)len {
  
#line 22
  @try {
    
#line 24
    [((JavaSecuritySignature *) nil_chk(sig_)) updateWithByteArray:bytes withInt:off withInt:len];
  }
  @catch (JavaSecuritySignatureException *e) {
    
#line 28
    @throw new_JavaIoIOException_initWithNSString_([e getMessage]);
  }
}


#line 32
- (void)writeWithByteArray:(IOSByteArray *)bytes {
  
#line 36
  @try {
    
#line 38
    [((JavaSecuritySignature *) nil_chk(sig_)) updateWithByteArray:bytes];
  }
  @catch (JavaSecuritySignatureException *e) {
    
#line 42
    @throw new_JavaIoIOException_initWithNSString_([e getMessage]);
  }
}


#line 46
- (void)writeWithInt:(jint)b {
  
#line 50
  @try {
    
#line 52
    [((JavaSecuritySignature *) nil_chk(sig_)) updateWithByte:(jbyte) b];
  }
  @catch (JavaSecuritySignatureException *e) {
    
#line 56
    @throw new_JavaIoIOException_initWithNSString_([e getMessage]);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 5, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithJavaSecuritySignature:);
  methods[1].selector = @selector(writeWithByteArray:withInt:withInt:);
  methods[2].selector = @selector(writeWithByteArray:);
  methods[3].selector = @selector(writeWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sig_", "LJavaSecuritySignature;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaSecuritySignature;", "write", "[BII", "LJavaIoIOException;", "[B", "I" };
  static const J2ObjcClassInfo _OrgBouncycastleJcajceIoSignatureUpdatingOutputStream = { "SignatureUpdatingOutputStream", "org.bouncycastle.jcajce.io", ptrTable, methods, fields, 7, 0x0, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleJcajceIoSignatureUpdatingOutputStream;
}

@end


#line 13
void OrgBouncycastleJcajceIoSignatureUpdatingOutputStream_initPackagePrivateWithJavaSecuritySignature_(OrgBouncycastleJcajceIoSignatureUpdatingOutputStream *self, JavaSecuritySignature *sig) {
  JavaIoOutputStream_init(self);
  self->sig_ = sig;
}


#line 13
OrgBouncycastleJcajceIoSignatureUpdatingOutputStream *new_OrgBouncycastleJcajceIoSignatureUpdatingOutputStream_initPackagePrivateWithJavaSecuritySignature_(JavaSecuritySignature *sig) {
  J2OBJC_NEW_IMPL(OrgBouncycastleJcajceIoSignatureUpdatingOutputStream, initPackagePrivateWithJavaSecuritySignature_, sig)
}


#line 13
OrgBouncycastleJcajceIoSignatureUpdatingOutputStream *create_OrgBouncycastleJcajceIoSignatureUpdatingOutputStream_initPackagePrivateWithJavaSecuritySignature_(JavaSecuritySignature *sig) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleJcajceIoSignatureUpdatingOutputStream, initPackagePrivateWithJavaSecuritySignature_, sig)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleJcajceIoSignatureUpdatingOutputStream)
