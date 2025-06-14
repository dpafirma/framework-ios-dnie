//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/card/PinException.java
//

#include "J2ObjC_source.h"
#include "es/gob/jmulticard/card/CardException.h"
#include "es/gob/jmulticard/card/PinException.h"
#include "java/lang/Throwable.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/card/PinException must be compiled with ARC (-fobjc-arc)"
#endif

/*!
 @brief Identificador de versi&oacute;n para la serializaci&oacute;n.
 */
inline jlong EsGobJmulticardCardPinException_get_serialVersionUID(void);
#define EsGobJmulticardCardPinException_serialVersionUID 9827614003517666LL
J2OBJC_STATIC_FIELD_CONSTANT(EsGobJmulticardCardPinException, serialVersionUID, jlong)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/card/PinException.java"


#line 5
@implementation EsGobJmulticardCardPinException


#line 12
- (instancetype)initWithNSString:(NSString *)msg {
  EsGobJmulticardCardPinException_initWithNSString_(self, msg);
  return self;
}


#line 19
- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  EsGobJmulticardCardPinException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 24
- (instancetype)init {
  EsGobJmulticardCardPinException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withJavaLangThrowable:);
  methods[2].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = EsGobJmulticardCardPinException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;LJavaLangThrowable;" };
  static const J2ObjcClassInfo _EsGobJmulticardCardPinException = { "PinException", "es.gob.jmulticard.card", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardCardPinException;
}

@end


#line 12
void EsGobJmulticardCardPinException_initWithNSString_(EsGobJmulticardCardPinException *self, NSString *msg) {
  EsGobJmulticardCardCardException_initWithNSString_(self, msg);
}


#line 12
EsGobJmulticardCardPinException *new_EsGobJmulticardCardPinException_initWithNSString_(NSString *msg) {
  J2OBJC_NEW_IMPL(EsGobJmulticardCardPinException, initWithNSString_, msg)
}


#line 12
EsGobJmulticardCardPinException *create_EsGobJmulticardCardPinException_initWithNSString_(NSString *msg) {
  J2OBJC_CREATE_IMPL(EsGobJmulticardCardPinException, initWithNSString_, msg)
}


#line 19
void EsGobJmulticardCardPinException_initWithNSString_withJavaLangThrowable_(EsGobJmulticardCardPinException *self, NSString *msg, JavaLangThrowable *cause) {
  EsGobJmulticardCardCardException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
}


#line 19
EsGobJmulticardCardPinException *new_EsGobJmulticardCardPinException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(EsGobJmulticardCardPinException, initWithNSString_withJavaLangThrowable_, msg, cause)
}


#line 19
EsGobJmulticardCardPinException *create_EsGobJmulticardCardPinException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(EsGobJmulticardCardPinException, initWithNSString_withJavaLangThrowable_, msg, cause)
}


#line 24
void EsGobJmulticardCardPinException_init(EsGobJmulticardCardPinException *self) {
  EsGobJmulticardCardCardException_init(self);
}


#line 24
EsGobJmulticardCardPinException *new_EsGobJmulticardCardPinException_init() {
  J2OBJC_NEW_IMPL(EsGobJmulticardCardPinException, init)
}


#line 24
EsGobJmulticardCardPinException *create_EsGobJmulticardCardPinException_init() {
  J2OBJC_CREATE_IMPL(EsGobJmulticardCardPinException, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardCardPinException)
