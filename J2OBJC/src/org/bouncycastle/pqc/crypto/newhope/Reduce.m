//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/newhope/Reduce.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/pqc/crypto/newhope/Params.h"
#include "org/bouncycastle/pqc/crypto/newhope/Reduce.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/crypto/newhope/Reduce must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/newhope/Reduce.java"


#line 3
@implementation OrgBouncycastlePqcCryptoNewhopeReduce


#line 3
- (instancetype)initPackagePrivate {
  OrgBouncycastlePqcCryptoNewhopeReduce_initPackagePrivate(self);
  return self;
}


#line 9
+ (jshort)montgomeryWithInt:(jint)a {
  return OrgBouncycastlePqcCryptoNewhopeReduce_montgomeryWithInt_(a);
}


#line 18
+ (jshort)barrettWithShort:(jshort)a {
  return OrgBouncycastlePqcCryptoNewhopeReduce_barrettWithShort_(a);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "S", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "S", 0x8, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(montgomeryWithInt:);
  methods[2].selector = @selector(barrettWithShort:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "QInv", "I", .constantValue.asInt = OrgBouncycastlePqcCryptoNewhopeReduce_QInv, 0x18, -1, -1, -1, -1 },
    { "RLog", "I", .constantValue.asInt = OrgBouncycastlePqcCryptoNewhopeReduce_RLog, 0x18, -1, -1, -1, -1 },
    { "RMask", "I", .constantValue.asInt = OrgBouncycastlePqcCryptoNewhopeReduce_RMask, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "montgomery", "I", "barrett", "S" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcCryptoNewhopeReduce = { "Reduce", "org.bouncycastle.pqc.crypto.newhope", ptrTable, methods, fields, 7, 0x0, 3, 3, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcCryptoNewhopeReduce;
}

@end


#line 3
void OrgBouncycastlePqcCryptoNewhopeReduce_initPackagePrivate(OrgBouncycastlePqcCryptoNewhopeReduce *self) {
  NSObject_init(self);
}


#line 3
OrgBouncycastlePqcCryptoNewhopeReduce *new_OrgBouncycastlePqcCryptoNewhopeReduce_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcCryptoNewhopeReduce, initPackagePrivate)
}


#line 3
OrgBouncycastlePqcCryptoNewhopeReduce *create_OrgBouncycastlePqcCryptoNewhopeReduce_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcCryptoNewhopeReduce, initPackagePrivate)
}


#line 9
jshort OrgBouncycastlePqcCryptoNewhopeReduce_montgomeryWithInt_(jint a) {
  OrgBouncycastlePqcCryptoNewhopeReduce_initialize();
  jint u = a * OrgBouncycastlePqcCryptoNewhopeReduce_QInv;
  u &= OrgBouncycastlePqcCryptoNewhopeReduce_RMask;
  u *= OrgBouncycastlePqcCryptoNewhopeParams_Q;
  u += a;
  return (jshort) (JreURShift32(u, OrgBouncycastlePqcCryptoNewhopeReduce_RLog));
}

jshort OrgBouncycastlePqcCryptoNewhopeReduce_barrettWithShort_(jshort a) {
  OrgBouncycastlePqcCryptoNewhopeReduce_initialize();
  jint t = a & (jint) 0xFFFF;
  jint u = JreURShift32((t * 5), 16);
  u *= OrgBouncycastlePqcCryptoNewhopeParams_Q;
  return (jshort) (t - u);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcCryptoNewhopeReduce)
