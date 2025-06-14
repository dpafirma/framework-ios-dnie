//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/cms/IssuerAndSerialNumber.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Object.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/cms/IssuerAndSerialNumber.h"
#include "org/bouncycastle/asn1/x500/X500Name.h"
#include "org/bouncycastle/asn1/x509/Certificate.h"
#include "org/bouncycastle/asn1/x509/X509CertificateStructure.h"
#include "org/bouncycastle/asn1/x509/X509Name.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/asn1/cms/IssuerAndSerialNumber must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleAsn1CmsIssuerAndSerialNumber () {
 @public
  OrgBouncycastleAsn1X500X500Name *name_;
  OrgBouncycastleAsn1ASN1Integer *serialNumber_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, name_, OrgBouncycastleAsn1X500X500Name *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, serialNumber_, OrgBouncycastleAsn1ASN1Integer *)

__attribute__((unused)) static IOSObjectArray *OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$3(void);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/cms/IssuerAndSerialNumber.java"


#line 28
@implementation OrgBouncycastleAsn1CmsIssuerAndSerialNumber


#line 47
+ (OrgBouncycastleAsn1CmsIssuerAndSerialNumber *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1CmsIssuerAndSerialNumber_getInstanceWithId_(obj);
}


#line 65
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1ASN1Sequence_(self, seq);
  return self;
}


#line 73
- (instancetype)initWithOrgBouncycastleAsn1X509Certificate:(OrgBouncycastleAsn1X509Certificate *)certificate {
  OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509Certificate_(self, certificate);
  return self;
}


#line 83
- (instancetype)initWithOrgBouncycastleAsn1X509X509CertificateStructure:(OrgBouncycastleAsn1X509X509CertificateStructure *)certificate {
  OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509CertificateStructure_(self, certificate);
  return self;
}


#line 91
- (instancetype)initWithOrgBouncycastleAsn1X500X500Name:(OrgBouncycastleAsn1X500X500Name *)name
                                 withJavaMathBigInteger:(JavaMathBigInteger *)serialNumber {
  OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X500X500Name_withJavaMathBigInteger_(self, name, serialNumber);
  return self;
}


#line 102
- (instancetype)initWithOrgBouncycastleAsn1X509X509Name:(OrgBouncycastleAsn1X509X509Name *)name
                                 withJavaMathBigInteger:(JavaMathBigInteger *)serialNumber {
  OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509Name_withJavaMathBigInteger_(self, name, serialNumber);
  return self;
}


#line 114
- (instancetype)initWithOrgBouncycastleAsn1X509X509Name:(OrgBouncycastleAsn1X509X509Name *)name
                     withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)serialNumber {
  OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509Name_withOrgBouncycastleAsn1ASN1Integer_(self, name, serialNumber);
  return self;
}


#line 123
- (OrgBouncycastleAsn1X500X500Name *)getName {
  
#line 125
  return name_;
}


#line 128
- (OrgBouncycastleAsn1ASN1Integer *)getSerialNumber {
  
#line 130
  return serialNumber_;
}


#line 133
- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  
#line 136
  OrgBouncycastleAsn1ASN1EncodableVector *v = new_OrgBouncycastleAsn1ASN1EncodableVector_initWithInt_(2);
  
#line 138
  [v addWithOrgBouncycastleAsn1ASN1Encodable:name_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:serialNumber_];
  
#line 141
  return new_OrgBouncycastleAsn1DERSequence_initWithOrgBouncycastleAsn1ASN1EncodableVector_(v);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgBouncycastleAsn1CmsIssuerAndSerialNumber;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, 3, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, 6, -1 },
    { NULL, NULL, 0x1, -1, 7, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 8, -1, -1, 9, -1 },
    { NULL, NULL, 0x1, -1, 10, -1, -1, 11, -1 },
    { NULL, "LOrgBouncycastleAsn1X500X500Name;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Integer;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getInstanceWithId:);
  methods[1].selector = @selector(initWithOrgBouncycastleAsn1ASN1Sequence:);
  methods[2].selector = @selector(initWithOrgBouncycastleAsn1X509Certificate:);
  methods[3].selector = @selector(initWithOrgBouncycastleAsn1X509X509CertificateStructure:);
  methods[4].selector = @selector(initWithOrgBouncycastleAsn1X500X500Name:withJavaMathBigInteger:);
  methods[5].selector = @selector(initWithOrgBouncycastleAsn1X509X509Name:withJavaMathBigInteger:);
  methods[6].selector = @selector(initWithOrgBouncycastleAsn1X509X509Name:withOrgBouncycastleAsn1ASN1Integer:);
  methods[7].selector = @selector(getName);
  methods[8].selector = @selector(getSerialNumber);
  methods[9].selector = @selector(toASN1Primitive);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LOrgBouncycastleAsn1X500X500Name;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "serialNumber_", "LOrgBouncycastleAsn1ASN1Integer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getInstance", "LNSObject;", "LOrgBouncycastleAsn1ASN1Sequence;", (void *)&OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$0, "LOrgBouncycastleAsn1X509Certificate;", "LOrgBouncycastleAsn1X509X509CertificateStructure;", (void *)&OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$1, "LOrgBouncycastleAsn1X500X500Name;LJavaMathBigInteger;", "LOrgBouncycastleAsn1X509X509Name;LJavaMathBigInteger;", (void *)&OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$2, "LOrgBouncycastleAsn1X509X509Name;LOrgBouncycastleAsn1ASN1Integer;", (void *)&OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$3 };
  static const J2ObjcClassInfo _OrgBouncycastleAsn1CmsIssuerAndSerialNumber = { "IssuerAndSerialNumber", "org.bouncycastle.asn1.cms", ptrTable, methods, fields, 7, 0x1, 10, 2, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleAsn1CmsIssuerAndSerialNumber;
}

@end


#line 47
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *OrgBouncycastleAsn1CmsIssuerAndSerialNumber_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initialize();
  
#line 50
  if ([obj isKindOfClass:[OrgBouncycastleAsn1CmsIssuerAndSerialNumber class]]) {
    
#line 52
    return (OrgBouncycastleAsn1CmsIssuerAndSerialNumber *) obj;
  }
  else if (obj != nil) {
    
#line 56
    return new_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj));
  }
  
#line 59
  return nil;
}


#line 65
void OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1CmsIssuerAndSerialNumber *self, OrgBouncycastleAsn1ASN1Sequence *seq) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  
#line 69
  self->name_ = OrgBouncycastleAsn1X500X500Name_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]);
  self->serialNumber_ = (OrgBouncycastleAsn1ASN1Integer *) cast_chk([seq getObjectAtWithInt:1], [OrgBouncycastleAsn1ASN1Integer class]);
}


#line 65
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *new_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1ASN1Sequence *seq) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1ASN1Sequence_, seq)
}


#line 65
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *create_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1ASN1Sequence *seq) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1ASN1Sequence_, seq)
}


#line 73
void OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509Certificate_(OrgBouncycastleAsn1CmsIssuerAndSerialNumber *self, OrgBouncycastleAsn1X509Certificate *certificate) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  
#line 76
  self->name_ = [((OrgBouncycastleAsn1X509Certificate *) nil_chk(certificate)) getIssuer];
  self->serialNumber_ = [certificate getSerialNumber];
}


#line 73
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *new_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509Certificate_(OrgBouncycastleAsn1X509Certificate *certificate) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X509Certificate_, certificate)
}


#line 73
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *create_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509Certificate_(OrgBouncycastleAsn1X509Certificate *certificate) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X509Certificate_, certificate)
}


#line 83
void OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509CertificateStructure_(OrgBouncycastleAsn1CmsIssuerAndSerialNumber *self, OrgBouncycastleAsn1X509X509CertificateStructure *certificate) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  
#line 87
  self->name_ = [((OrgBouncycastleAsn1X509X509CertificateStructure *) nil_chk(certificate)) getIssuer];
  self->serialNumber_ = [certificate getSerialNumber];
}


#line 83
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *new_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509CertificateStructure_(OrgBouncycastleAsn1X509X509CertificateStructure *certificate) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X509X509CertificateStructure_, certificate)
}


#line 83
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *create_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509CertificateStructure_(OrgBouncycastleAsn1X509X509CertificateStructure *certificate) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X509X509CertificateStructure_, certificate)
}


#line 91
void OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X500X500Name_withJavaMathBigInteger_(OrgBouncycastleAsn1CmsIssuerAndSerialNumber *self, OrgBouncycastleAsn1X500X500Name *name, JavaMathBigInteger *serialNumber) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  
#line 95
  self->name_ = name;
  self->serialNumber_ = new_OrgBouncycastleAsn1ASN1Integer_initWithJavaMathBigInteger_(serialNumber);
}


#line 91
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *new_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X500X500Name_withJavaMathBigInteger_(OrgBouncycastleAsn1X500X500Name *name, JavaMathBigInteger *serialNumber) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X500X500Name_withJavaMathBigInteger_, name, serialNumber)
}


#line 91
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *create_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X500X500Name_withJavaMathBigInteger_(OrgBouncycastleAsn1X500X500Name *name, JavaMathBigInteger *serialNumber) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X500X500Name_withJavaMathBigInteger_, name, serialNumber)
}


#line 102
void OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509Name_withJavaMathBigInteger_(OrgBouncycastleAsn1CmsIssuerAndSerialNumber *self, OrgBouncycastleAsn1X509X509Name *name, JavaMathBigInteger *serialNumber) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  
#line 107
  self->name_ = OrgBouncycastleAsn1X500X500Name_getInstanceWithId_(name);
  self->serialNumber_ = new_OrgBouncycastleAsn1ASN1Integer_initWithJavaMathBigInteger_(serialNumber);
}


#line 102
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *new_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509Name_withJavaMathBigInteger_(OrgBouncycastleAsn1X509X509Name *name, JavaMathBigInteger *serialNumber) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X509X509Name_withJavaMathBigInteger_, name, serialNumber)
}


#line 102
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *create_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509Name_withJavaMathBigInteger_(OrgBouncycastleAsn1X509X509Name *name, JavaMathBigInteger *serialNumber) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X509X509Name_withJavaMathBigInteger_, name, serialNumber)
}


#line 114
void OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509Name_withOrgBouncycastleAsn1ASN1Integer_(OrgBouncycastleAsn1CmsIssuerAndSerialNumber *self, OrgBouncycastleAsn1X509X509Name *name, OrgBouncycastleAsn1ASN1Integer *serialNumber) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  
#line 119
  self->name_ = OrgBouncycastleAsn1X500X500Name_getInstanceWithId_(name);
  self->serialNumber_ = serialNumber;
}


#line 114
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *new_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509Name_withOrgBouncycastleAsn1ASN1Integer_(OrgBouncycastleAsn1X509X509Name *name, OrgBouncycastleAsn1ASN1Integer *serialNumber) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X509X509Name_withOrgBouncycastleAsn1ASN1Integer_, name, serialNumber)
}


#line 114
OrgBouncycastleAsn1CmsIssuerAndSerialNumber *create_OrgBouncycastleAsn1CmsIssuerAndSerialNumber_initWithOrgBouncycastleAsn1X509X509Name_withOrgBouncycastleAsn1ASN1Integer_(OrgBouncycastleAsn1X509X509Name *name, OrgBouncycastleAsn1ASN1Integer *serialNumber) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1CmsIssuerAndSerialNumber, initWithOrgBouncycastleAsn1X509X509Name_withOrgBouncycastleAsn1ASN1Integer_, name, serialNumber)
}

IOSObjectArray *OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgBouncycastleAsn1CmsIssuerAndSerialNumber__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmsIssuerAndSerialNumber)
