//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/card/PasswordCallbackNotFoundException.java
//

#include "J2ObjC_source.h"
#include "es/gob/jmulticard/card/PasswordCallbackNotFoundException.h"
#include "es/gob/jmulticard/card/PinException.h"
#include "java/lang/Throwable.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/card/PasswordCallbackNotFoundException must be compiled with ARC (-fobjc-arc)"
#endif

/*!
 @brief Serial Id.
 */
inline jlong EsGobJmulticardCardPasswordCallbackNotFoundException_get_serialVersionUID(void);
#define EsGobJmulticardCardPasswordCallbackNotFoundException_serialVersionUID 3347342217520582788LL
J2OBJC_STATIC_FIELD_CONSTANT(EsGobJmulticardCardPasswordCallbackNotFoundException, serialVersionUID, jlong)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/card/PasswordCallbackNotFoundException.java"


#line 6
@implementation EsGobJmulticardCardPasswordCallbackNotFoundException


#line 13
- (instancetype)initWithNSString:(NSString *)msg {
  EsGobJmulticardCardPasswordCallbackNotFoundException_initWithNSString_(self, msg);
  return self;
}


#line 20
- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  EsGobJmulticardCardPasswordCallbackNotFoundException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = EsGobJmulticardCardPasswordCallbackNotFoundException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;LJavaLangThrowable;" };
  static const J2ObjcClassInfo _EsGobJmulticardCardPasswordCallbackNotFoundException = { "PasswordCallbackNotFoundException", "es.gob.jmulticard.card", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardCardPasswordCallbackNotFoundException;
}

@end


#line 13
void EsGobJmulticardCardPasswordCallbackNotFoundException_initWithNSString_(EsGobJmulticardCardPasswordCallbackNotFoundException *self, NSString *msg) {
  EsGobJmulticardCardPinException_initWithNSString_(self, msg);
}


#line 13
EsGobJmulticardCardPasswordCallbackNotFoundException *new_EsGobJmulticardCardPasswordCallbackNotFoundException_initWithNSString_(NSString *msg) {
  J2OBJC_NEW_IMPL(EsGobJmulticardCardPasswordCallbackNotFoundException, initWithNSString_, msg)
}


#line 13
EsGobJmulticardCardPasswordCallbackNotFoundException *create_EsGobJmulticardCardPasswordCallbackNotFoundException_initWithNSString_(NSString *msg) {
  J2OBJC_CREATE_IMPL(EsGobJmulticardCardPasswordCallbackNotFoundException, initWithNSString_, msg)
}


#line 20
void EsGobJmulticardCardPasswordCallbackNotFoundException_initWithNSString_withJavaLangThrowable_(EsGobJmulticardCardPasswordCallbackNotFoundException *self, NSString *msg, JavaLangThrowable *cause) {
  EsGobJmulticardCardPinException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
}


#line 20
EsGobJmulticardCardPasswordCallbackNotFoundException *new_EsGobJmulticardCardPasswordCallbackNotFoundException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(EsGobJmulticardCardPasswordCallbackNotFoundException, initWithNSString_withJavaLangThrowable_, msg, cause)
}


#line 20
EsGobJmulticardCardPasswordCallbackNotFoundException *create_EsGobJmulticardCardPasswordCallbackNotFoundException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(EsGobJmulticardCardPasswordCallbackNotFoundException, initWithNSString_withJavaLangThrowable_, msg, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardCardPasswordCallbackNotFoundException)
