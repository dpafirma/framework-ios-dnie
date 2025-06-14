//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/der/pkcs15/PublicKeysContextSpecific.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "es/gob/jmulticard/HexUtils.h"
#include "es/gob/jmulticard/asn1/Asn1Exception.h"
#include "es/gob/jmulticard/asn1/DecoderObject.h"
#include "es/gob/jmulticard/asn1/der/ContextSpecific.h"
#include "es/gob/jmulticard/asn1/der/pkcs15/Path.h"
#include "es/gob/jmulticard/asn1/der/pkcs15/PublicKeysContextSpecific.h"
#include "java/lang/IllegalStateException.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/asn1/der/pkcs15/PublicKeysContextSpecific must be compiled with ARC (-fobjc-arc)"
#endif

inline jbyte EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific_get_TAG(void);
#define EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific_TAG -95
J2OBJC_STATIC_FIELD_CONSTANT(EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific, TAG, jbyte)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/der/pkcs15/PublicKeysContextSpecific.java"


#line 14
@implementation EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 20
- (instancetype)init {
  EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 24
- (void)checkTagWithByte:(jbyte)tag {
  
#line 26
  if (EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific_TAG != tag) {
    @throw new_EsGobJmulticardAsn1Asn1Exception_initWithNSString_(JreStrcat("$$$$", @"PublicKeysContextSpecific esperaba una etiqueta especifica de contexto ", EsGobJmulticardHexUtils_hexifyWithByteArray_withBoolean_([IOSByteArray newArrayWithBytes:(jbyte[]){
#line 28
      EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific_TAG } count:1], false), @" pero ha encontrado ", EsGobJmulticardHexUtils_hexifyWithByteArray_withBoolean_([IOSByteArray newArrayWithBytes:(jbyte[]){
#line 29
        tag } count:1], false)));
      }
    }

- (EsGobJmulticardAsn1DerPkcs15Path *)getPublicKeysPath {
  if ([[self getObject] isKindOfClass:[EsGobJmulticardAsn1DerPkcs15Path class]]) {
    return (EsGobJmulticardAsn1DerPkcs15Path *) cast_chk([self getObject], [EsGobJmulticardAsn1DerPkcs15Path class]);
  }
  @throw new_JavaLangIllegalStateException_initWithNSString_(
#line 41
  @"El objeto interno no es de tipo Path PKCS#15");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LEsGobJmulticardAsn1DerPkcs15Path;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(checkTagWithByte:);
  methods[2].selector = @selector(getPublicKeysPath);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "B", .constantValue.asChar = EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific_TAG, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "checkTag", "B", "LEsGobJmulticardAsn1Asn1Exception;" };
  static const J2ObjcClassInfo _EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific = { "PublicKeysContextSpecific", "es.gob.jmulticard.asn1.der.pkcs15", ptrTable, methods, fields, 7, 0x11, 3, 1, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific;
}

@end


#line 20
void EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific_init(EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific *self) {
  EsGobJmulticardAsn1DerContextSpecific_initWithIOSClass_(self, EsGobJmulticardAsn1DerPkcs15Path_class_());
}


#line 20
EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific *new_EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific_init() {
  J2OBJC_NEW_IMPL(EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific, init)
}


#line 20
EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific *create_EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific_init() {
  J2OBJC_CREATE_IMPL(EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardAsn1DerPkcs15PublicKeysContextSpecific)
