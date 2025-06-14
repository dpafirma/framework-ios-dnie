//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/apdu/iso7816four/MseSetAuthenticationKeyApduCommand.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "es/gob/jmulticard/apdu/iso7816four/MseSetApduCommand.h"
#include "es/gob/jmulticard/apdu/iso7816four/MseSetAuthenticationKeyApduCommand.h"
#include "es/gob/jmulticard/apdu/iso7816four/MseSetAuthenticationTemplateApduCommand.h"
#include "java/lang/System.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/apdu/iso7816four/MseSetAuthenticationKeyApduCommand must be compiled with ARC (-fobjc-arc)"
#endif

@interface EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand ()

+ (IOSByteArray *)buidDataWithByteArray:(IOSByteArray *)publicKeyFileId
                          withByteArray:(IOSByteArray *)privateKeyRef;

@end

__attribute__((unused)) static IOSByteArray *EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand_buidDataWithByteArray_withByteArray_(IOSByteArray *publicKeyFileId, IOSByteArray *privateKeyRef);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/apdu/iso7816four/MseSetAuthenticationKeyApduCommand.java"


#line 46
@implementation EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand


#line 54
- (instancetype)initWithByte:(jbyte)cla
               withByteArray:(IOSByteArray *)publicKeyFileId
               withByteArray:(IOSByteArray *)privateKeyRef {
  EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand_initWithByte_withByteArray_withByteArray_(self, cla, publicKeyFileId, privateKeyRef);
  return self;
}


#line 63
+ (IOSByteArray *)buidDataWithByteArray:(IOSByteArray *)publicKeyFileId
                          withByteArray:(IOSByteArray *)privateKeyRef {
  return EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand_buidDataWithByteArray_withByteArray_(publicKeyFileId, privateKeyRef);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0xa, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithByte:withByteArray:withByteArray:);
  methods[1].selector = @selector(buidDataWithByteArray:withByteArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "B[B[B", "buidData", "[B[B" };
  static const J2ObjcClassInfo _EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand = { "MseSetAuthenticationKeyApduCommand", "es.gob.jmulticard.apdu.iso7816four", ptrTable, methods, NULL, 7, 0x11, 2, 0, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand;
}

@end


#line 54
void EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand_initWithByte_withByteArray_withByteArray_(EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand *self, jbyte cla, IOSByteArray *publicKeyFileId, IOSByteArray *privateKeyRef) {
  EsGobJmulticardApduIso7816fourMseSetAuthenticationTemplateApduCommand_initWithByte_withByteArray_(self,
#line 58
  cla, EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand_buidDataWithByteArray_withByteArray_(
#line 59
  publicKeyFileId, privateKeyRef));
}


#line 54
EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand *new_EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand_initWithByte_withByteArray_withByteArray_(jbyte cla, IOSByteArray *publicKeyFileId, IOSByteArray *privateKeyRef) {
  J2OBJC_NEW_IMPL(EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand, initWithByte_withByteArray_withByteArray_, cla, publicKeyFileId, privateKeyRef)
}


#line 54
EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand *create_EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand_initWithByte_withByteArray_withByteArray_(jbyte cla, IOSByteArray *publicKeyFileId, IOSByteArray *privateKeyRef) {
  J2OBJC_CREATE_IMPL(EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand, initWithByte_withByteArray_withByteArray_, cla, publicKeyFileId, privateKeyRef)
}


#line 63
IOSByteArray *EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand_buidDataWithByteArray_withByteArray_(IOSByteArray *publicKeyFileId, IOSByteArray *privateKeyRef) {
  EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand_initialize();
  IOSByteArray *publicKeyFileIdCompleted = [IOSByteArray newArrayWithLength:12];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(publicKeyFileId,
#line 67
  0,
#line 68
  publicKeyFileIdCompleted,
#line 69
  publicKeyFileIdCompleted->size_ - ((IOSByteArray *) nil_chk(publicKeyFileId))->size_,
#line 70
  publicKeyFileId->size_);
  
#line 72
  for (jint i = 0; i < publicKeyFileIdCompleted->size_ - publicKeyFileId->size_; i++) {
    *IOSByteArray_GetRef(publicKeyFileIdCompleted, i) = (jbyte) (jint) 0x00;
  }
  
#line 76
  IOSByteArray *ret = [IOSByteArray newArrayWithLength:publicKeyFileIdCompleted->size_ + ((IOSByteArray *) nil_chk(privateKeyRef))->size_ + 4];
  *IOSByteArray_GetRef(ret, 0) = EsGobJmulticardApduIso7816fourMseSetApduCommand_PUBLIC_KEY_REFERENCE;
  *IOSByteArray_GetRef(ret, 1) = (jbyte) publicKeyFileIdCompleted->size_;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(publicKeyFileIdCompleted, 0, ret, 2, publicKeyFileIdCompleted->size_);
  
#line 81
  jint idx = 1 + publicKeyFileIdCompleted->size_;
  *IOSByteArray_GetRef(ret, ++idx) = EsGobJmulticardApduIso7816fourMseSetApduCommand_PRIVATE_KEY_REFERENCE;
  *IOSByteArray_GetRef(ret, ++idx) = (jbyte) privateKeyRef->size_;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(privateKeyRef, 0, ret, ++idx, privateKeyRef->size_);
  
#line 86
  return ret;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardApduIso7816fourMseSetAuthenticationKeyApduCommand)
