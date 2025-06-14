//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/ocsp/OCSPResponseStatus.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/asn1/ASN1Enumerated.h"
#include "org/bouncycastle/asn1/ASN1Object.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ocsp/OCSPResponseStatus.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/asn1/ocsp/OCSPResponseStatus must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleAsn1OcspOCSPResponseStatus () {
 @public
  OrgBouncycastleAsn1ASN1Enumerated *value_;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Enumerated:(OrgBouncycastleAsn1ASN1Enumerated *)value;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1OcspOCSPResponseStatus, value_, OrgBouncycastleAsn1ASN1Enumerated *)

__attribute__((unused)) static void OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithOrgBouncycastleAsn1ASN1Enumerated_(OrgBouncycastleAsn1OcspOCSPResponseStatus *self, OrgBouncycastleAsn1ASN1Enumerated *value);

__attribute__((unused)) static OrgBouncycastleAsn1OcspOCSPResponseStatus *new_OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithOrgBouncycastleAsn1ASN1Enumerated_(OrgBouncycastleAsn1ASN1Enumerated *value) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgBouncycastleAsn1OcspOCSPResponseStatus *create_OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithOrgBouncycastleAsn1ASN1Enumerated_(OrgBouncycastleAsn1ASN1Enumerated *value);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/ocsp/OCSPResponseStatus.java"


#line 26
@implementation OrgBouncycastleAsn1OcspOCSPResponseStatus


#line 54
- (instancetype)initWithInt:(jint)value {
  OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithInt_(self, value);
  return self;
}


#line 60
- (instancetype)initWithOrgBouncycastleAsn1ASN1Enumerated:(OrgBouncycastleAsn1ASN1Enumerated *)value {
  OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithOrgBouncycastleAsn1ASN1Enumerated_(self, value);
  return self;
}


#line 66
+ (OrgBouncycastleAsn1OcspOCSPResponseStatus *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1OcspOCSPResponseStatus_getInstanceWithId_(obj);
}


#line 81
- (jint)getIntValue {
  
#line 83
  return [((OrgBouncycastleAsn1ASN1Enumerated *) nil_chk(value_)) intValueExact];
}


#line 86
- (JavaMathBigInteger *)getValue {
  
#line 88
  return [((OrgBouncycastleAsn1ASN1Enumerated *) nil_chk(value_)) getValue];
}


#line 91
- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  
#line 94
  return value_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1OcspOCSPResponseStatus;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(initWithOrgBouncycastleAsn1ASN1Enumerated:);
  methods[2].selector = @selector(getInstanceWithId:);
  methods[3].selector = @selector(getIntValue);
  methods[4].selector = @selector(getValue);
  methods[5].selector = @selector(toASN1Primitive);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SUCCESSFUL", "I", .constantValue.asInt = OrgBouncycastleAsn1OcspOCSPResponseStatus_SUCCESSFUL, 0x19, -1, -1, -1, -1 },
    { "MALFORMED_REQUEST", "I", .constantValue.asInt = OrgBouncycastleAsn1OcspOCSPResponseStatus_MALFORMED_REQUEST, 0x19, -1, -1, -1, -1 },
    { "INTERNAL_ERROR", "I", .constantValue.asInt = OrgBouncycastleAsn1OcspOCSPResponseStatus_INTERNAL_ERROR, 0x19, -1, -1, -1, -1 },
    { "TRY_LATER", "I", .constantValue.asInt = OrgBouncycastleAsn1OcspOCSPResponseStatus_TRY_LATER, 0x19, -1, -1, -1, -1 },
    { "SIG_REQUIRED", "I", .constantValue.asInt = OrgBouncycastleAsn1OcspOCSPResponseStatus_SIG_REQUIRED, 0x19, -1, -1, -1, -1 },
    { "UNAUTHORIZED", "I", .constantValue.asInt = OrgBouncycastleAsn1OcspOCSPResponseStatus_UNAUTHORIZED, 0x19, -1, -1, -1, -1 },
    { "value_", "LOrgBouncycastleAsn1ASN1Enumerated;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "LOrgBouncycastleAsn1ASN1Enumerated;", "getInstance", "LNSObject;" };
  static const J2ObjcClassInfo _OrgBouncycastleAsn1OcspOCSPResponseStatus = { "OCSPResponseStatus", "org.bouncycastle.asn1.ocsp", ptrTable, methods, fields, 7, 0x1, 6, 7, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleAsn1OcspOCSPResponseStatus;
}

@end


#line 54
void OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithInt_(OrgBouncycastleAsn1OcspOCSPResponseStatus *self, jint value) {
  OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithOrgBouncycastleAsn1ASN1Enumerated_(self, new_OrgBouncycastleAsn1ASN1Enumerated_initWithInt_(
#line 57
  value));
}


#line 54
OrgBouncycastleAsn1OcspOCSPResponseStatus *new_OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithInt_(jint value) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1OcspOCSPResponseStatus, initWithInt_, value)
}


#line 54
OrgBouncycastleAsn1OcspOCSPResponseStatus *create_OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithInt_(jint value) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1OcspOCSPResponseStatus, initWithInt_, value)
}


#line 60
void OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithOrgBouncycastleAsn1ASN1Enumerated_(OrgBouncycastleAsn1OcspOCSPResponseStatus *self, OrgBouncycastleAsn1ASN1Enumerated *value) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  
#line 63
  self->value_ = value;
}


#line 60
OrgBouncycastleAsn1OcspOCSPResponseStatus *new_OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithOrgBouncycastleAsn1ASN1Enumerated_(OrgBouncycastleAsn1ASN1Enumerated *value) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1OcspOCSPResponseStatus, initWithOrgBouncycastleAsn1ASN1Enumerated_, value)
}


#line 60
OrgBouncycastleAsn1OcspOCSPResponseStatus *create_OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithOrgBouncycastleAsn1ASN1Enumerated_(OrgBouncycastleAsn1ASN1Enumerated *value) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1OcspOCSPResponseStatus, initWithOrgBouncycastleAsn1ASN1Enumerated_, value)
}


#line 66
OrgBouncycastleAsn1OcspOCSPResponseStatus *OrgBouncycastleAsn1OcspOCSPResponseStatus_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1OcspOCSPResponseStatus_initialize();
  
#line 69
  if ([obj isKindOfClass:[OrgBouncycastleAsn1OcspOCSPResponseStatus class]]) {
    
#line 71
    return (OrgBouncycastleAsn1OcspOCSPResponseStatus *) obj;
  }
  else if (obj != nil) {
    
#line 75
    return new_OrgBouncycastleAsn1OcspOCSPResponseStatus_initWithOrgBouncycastleAsn1ASN1Enumerated_(OrgBouncycastleAsn1ASN1Enumerated_getInstanceWithId_(obj));
  }
  
#line 78
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1OcspOCSPResponseStatus)
