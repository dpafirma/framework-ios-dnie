//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/custom/fnmt/ceres/CeresX509CertificateAttributesContextSpecific.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "es/gob/jmulticard/HexUtils.h"
#include "es/gob/jmulticard/asn1/Asn1Exception.h"
#include "es/gob/jmulticard/asn1/DecoderObject.h"
#include "es/gob/jmulticard/asn1/custom/fnmt/ceres/CeresX509CertificateAttributesContextSpecific.h"
#include "es/gob/jmulticard/asn1/der/ContextSpecific.h"
#include "es/gob/jmulticard/asn1/der/pkcs15/Path.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/asn1/custom/fnmt/ceres/CeresX509CertificateAttributesContextSpecific must be compiled with ARC (-fobjc-arc)"
#endif

inline jbyte EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific_get_TAG(void);
#define EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific_TAG -95
J2OBJC_STATIC_FIELD_CONSTANT(EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific, TAG, jbyte)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/custom/fnmt/ceres/CeresX509CertificateAttributesContextSpecific.java"


#line 49
@implementation EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 54
- (instancetype)init {
  EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 58
- (void)checkTagWithByte:(jbyte)tag {
  
#line 60
  if (EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific_TAG != tag) {
    @throw new_EsGobJmulticardAsn1Asn1Exception_initWithNSString_(JreStrcat("$$$$", @"CeresX509CertificateAttributesContextSpecific esperaba una etiqueta especifica de contexto ", EsGobJmulticardHexUtils_hexifyWithByteArray_withBoolean_([IOSByteArray newArrayWithBytes:(jbyte[]){
#line 62
      EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific_TAG } count:1], false), @" pero ha encontrado ", EsGobJmulticardHexUtils_hexifyWithByteArray_withBoolean_([IOSByteArray newArrayWithBytes:(jbyte[]){
#line 63
        tag } count:1], false)));
      }
    }


#line 68
- (NSString *)description {
  
#line 70
  return [((EsGobJmulticardAsn1DecoderObject *) nil_chk([self getObject])) description];
}


#line 75
- (NSString *)getPath {
  return [NSString java_stringWithBytes:[((EsGobJmulticardAsn1DerPkcs15Path *) nil_chk(((EsGobJmulticardAsn1DerPkcs15Path *) cast_chk([self getObject], [EsGobJmulticardAsn1DerPkcs15Path class])))) getPathBytes]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(checkTagWithByte:);
  methods[2].selector = @selector(description);
  methods[3].selector = @selector(getPath);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "B", .constantValue.asChar = EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific_TAG, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "checkTag", "B", "LEsGobJmulticardAsn1Asn1Exception;", "toString" };
  static const J2ObjcClassInfo _EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific = { "CeresX509CertificateAttributesContextSpecific", "es.gob.jmulticard.asn1.custom.fnmt.ceres", ptrTable, methods, fields, 7, 0x11, 4, 1, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific;
}

@end


#line 54
void EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific_init(EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific *self) {
  EsGobJmulticardAsn1DerContextSpecific_initWithIOSClass_(self, EsGobJmulticardAsn1DerPkcs15Path_class_());
}


#line 54
EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific *new_EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific_init() {
  J2OBJC_NEW_IMPL(EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific, init)
}


#line 54
EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific *create_EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific_init() {
  J2OBJC_CREATE_IMPL(EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardAsn1CustomFnmtCeresCeresX509CertificateAttributesContextSpecific)
