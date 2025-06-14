//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/icao/SubjectFacePhoto.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "es/gob/jmulticard/asn1/DecoderObject.h"
#include "es/gob/jmulticard/asn1/icao/IcaoUtils.h"
#include "es/gob/jmulticard/asn1/icao/SubjectFacePhoto.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/asn1/icao/SubjectFacePhoto must be compiled with ARC (-fobjc-arc)"
#endif

inline jbyte EsGobJmulticardAsn1IcaoSubjectFacePhoto_get_TAG(void);
#define EsGobJmulticardAsn1IcaoSubjectFacePhoto_TAG 117
J2OBJC_STATIC_FIELD_CONSTANT(EsGobJmulticardAsn1IcaoSubjectFacePhoto, TAG, jbyte)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/icao/SubjectFacePhoto.java"


#line 12
@implementation EsGobJmulticardAsn1IcaoSubjectFacePhoto

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 12
- (instancetype)init {
  EsGobJmulticardAsn1IcaoSubjectFacePhoto_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 16
- (void)decodeValue {
  
#line 18
  [self checkTagWithByte:IOSByteArray_Get(nil_chk([self getBytes]), 0)];
}

- (jbyte)getDefaultTag {
  
#line 24
  return EsGobJmulticardAsn1IcaoSubjectFacePhoto_TAG;
}


#line 30
- (IOSByteArray *)getSubjectPhotoAsJpeg2k {
  return EsGobJmulticardAsn1IcaoIcaoUtils_extractJpeg2kImageWithByteArray_([self getBytes]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 0, -1, -1, -1 },
    { NULL, "B", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(decodeValue);
  methods[2].selector = @selector(getDefaultTag);
  methods[3].selector = @selector(getSubjectPhotoAsJpeg2k);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "B", .constantValue.asChar = EsGobJmulticardAsn1IcaoSubjectFacePhoto_TAG, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LEsGobJmulticardAsn1Asn1Exception;LEsGobJmulticardAsn1TlvException;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _EsGobJmulticardAsn1IcaoSubjectFacePhoto = { "SubjectFacePhoto", "es.gob.jmulticard.asn1.icao", ptrTable, methods, fields, 7, 0x11, 4, 1, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardAsn1IcaoSubjectFacePhoto;
}

@end


#line 12
void EsGobJmulticardAsn1IcaoSubjectFacePhoto_init(EsGobJmulticardAsn1IcaoSubjectFacePhoto *self) {
  EsGobJmulticardAsn1DecoderObject_init(self);
}


#line 12
EsGobJmulticardAsn1IcaoSubjectFacePhoto *new_EsGobJmulticardAsn1IcaoSubjectFacePhoto_init() {
  J2OBJC_NEW_IMPL(EsGobJmulticardAsn1IcaoSubjectFacePhoto, init)
}


#line 12
EsGobJmulticardAsn1IcaoSubjectFacePhoto *create_EsGobJmulticardAsn1IcaoSubjectFacePhoto_init() {
  J2OBJC_CREATE_IMPL(EsGobJmulticardAsn1IcaoSubjectFacePhoto, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardAsn1IcaoSubjectFacePhoto)
