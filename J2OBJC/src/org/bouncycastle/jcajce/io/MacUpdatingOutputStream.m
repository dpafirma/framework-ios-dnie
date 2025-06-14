//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/io/MacUpdatingOutputStream.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/OutputStream.h"
#include "javax/crypto/Mac.h"
#include "org/bouncycastle/jcajce/io/MacUpdatingOutputStream.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/jcajce/io/MacUpdatingOutputStream must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleJcajceIoMacUpdatingOutputStream () {
 @public
  JavaxCryptoMac *mac_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleJcajceIoMacUpdatingOutputStream, mac_, JavaxCryptoMac *)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/io/MacUpdatingOutputStream.java"


#line 8
@implementation OrgBouncycastleJcajceIoMacUpdatingOutputStream


#line 13
- (instancetype)initPackagePrivateWithJavaxCryptoMac:(JavaxCryptoMac *)mac {
  OrgBouncycastleJcajceIoMacUpdatingOutputStream_initPackagePrivateWithJavaxCryptoMac_(self, mac);
  return self;
}

- (void)writeWithByteArray:(IOSByteArray *)bytes
                   withInt:(jint)off
                   withInt:(jint)len {
  
#line 22
  [((JavaxCryptoMac *) nil_chk(mac_)) updateWithByteArray:bytes withInt:off withInt:len];
}


#line 25
- (void)writeWithByteArray:(IOSByteArray *)bytes {
  
#line 29
  [((JavaxCryptoMac *) nil_chk(mac_)) updateWithByteArray:bytes];
}


#line 32
- (void)writeWithInt:(jint)b {
  
#line 36
  [((JavaxCryptoMac *) nil_chk(mac_)) updateWithByte:(jbyte) b];
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
  methods[0].selector = @selector(initPackagePrivateWithJavaxCryptoMac:);
  methods[1].selector = @selector(writeWithByteArray:withInt:withInt:);
  methods[2].selector = @selector(writeWithByteArray:);
  methods[3].selector = @selector(writeWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mac_", "LJavaxCryptoMac;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaxCryptoMac;", "write", "[BII", "LJavaIoIOException;", "[B", "I" };
  static const J2ObjcClassInfo _OrgBouncycastleJcajceIoMacUpdatingOutputStream = { "MacUpdatingOutputStream", "org.bouncycastle.jcajce.io", ptrTable, methods, fields, 7, 0x0, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleJcajceIoMacUpdatingOutputStream;
}

@end


#line 13
void OrgBouncycastleJcajceIoMacUpdatingOutputStream_initPackagePrivateWithJavaxCryptoMac_(OrgBouncycastleJcajceIoMacUpdatingOutputStream *self, JavaxCryptoMac *mac) {
  JavaIoOutputStream_init(self);
  self->mac_ = mac;
}


#line 13
OrgBouncycastleJcajceIoMacUpdatingOutputStream *new_OrgBouncycastleJcajceIoMacUpdatingOutputStream_initPackagePrivateWithJavaxCryptoMac_(JavaxCryptoMac *mac) {
  J2OBJC_NEW_IMPL(OrgBouncycastleJcajceIoMacUpdatingOutputStream, initPackagePrivateWithJavaxCryptoMac_, mac)
}


#line 13
OrgBouncycastleJcajceIoMacUpdatingOutputStream *create_OrgBouncycastleJcajceIoMacUpdatingOutputStream_initPackagePrivateWithJavaxCryptoMac_(JavaxCryptoMac *mac) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleJcajceIoMacUpdatingOutputStream, initPackagePrivateWithJavaxCryptoMac_, mac)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleJcajceIoMacUpdatingOutputStream)
