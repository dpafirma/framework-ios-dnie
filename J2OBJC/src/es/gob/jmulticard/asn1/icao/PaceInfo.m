//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/icao/PaceInfo.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "es/gob/jmulticard/asn1/DecoderObject.h"
#include "es/gob/jmulticard/asn1/OptionalDecoderObjectElement.h"
#include "es/gob/jmulticard/asn1/der/DerInteger.h"
#include "es/gob/jmulticard/asn1/der/ObjectIdentifier.h"
#include "es/gob/jmulticard/asn1/der/Sequence.h"
#include "es/gob/jmulticard/asn1/icao/PaceInfo.h"
#include "java/lang/StringBuilder.h"
#include "java/math/BigInteger.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/asn1/icao/PaceInfo must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/icao/PaceInfo.java"


#line 36
@implementation EsGobJmulticardAsn1IcaoPaceInfo

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EsGobJmulticardAsn1IcaoPaceInfo_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 56
- (NSString *)description {
  
#line 58
  JavaLangStringBuilder *ret = new_JavaLangStringBuilder_initWithNSString_(@"PACEInfo V");
  (void) [ret appendWithId:[self getElementAtWithInt:1]];
  (void) [ret appendWithNSString:@" para el protocolo "];
  (void) [ret appendWithId:[self getElementAtWithInt:0]];
  
#line 63
  if ([self getElementCount] > 2) {
    (void) [ret appendWithNSString:@" y con identificador de parametro "];
    (void) [ret appendWithId:[self getElementAtWithInt:2]];
  }
  return [ret description];
}

- (NSString *)getProtocol {
  return [((EsGobJmulticardAsn1DecoderObject *) nil_chk([self getElementAtWithInt:0])) description];
}


#line 78
- (jint)getVersion {
  return [((JavaMathBigInteger *) nil_chk([((EsGobJmulticardAsn1DerDerInteger *) nil_chk(((EsGobJmulticardAsn1DerDerInteger *) cast_chk([self getElementAtWithInt:1], [EsGobJmulticardAsn1DerDerInteger class])))) getIntegerValue])) intValue];
}


#line 84
- (jint)getparameterId {
  if ([self getElementCount] > 2) {
    return [((JavaMathBigInteger *) nil_chk([((EsGobJmulticardAsn1DerDerInteger *) nil_chk(((EsGobJmulticardAsn1DerDerInteger *) cast_chk([self getElementAtWithInt:2], [EsGobJmulticardAsn1DerDerInteger class])))) getIntegerValue])) intValue];
  }
  return -1;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(getProtocol);
  methods[3].selector = @selector(getVersion);
  methods[4].selector = @selector(getparameterId);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "toString" };
  static const J2ObjcClassInfo _EsGobJmulticardAsn1IcaoPaceInfo = { "PaceInfo", "es.gob.jmulticard.asn1.icao", ptrTable, methods, NULL, 7, 0x11, 5, 0, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardAsn1IcaoPaceInfo;
}

@end


#line 39
void EsGobJmulticardAsn1IcaoPaceInfo_init(EsGobJmulticardAsn1IcaoPaceInfo *self) {
  EsGobJmulticardAsn1DerSequence_initWithEsGobJmulticardAsn1OptionalDecoderObjectElementArray_(self, [IOSObjectArray newArrayWithObjects:(id[]){ create_EsGobJmulticardAsn1OptionalDecoderObjectElement_initWithIOSClass_withBoolean_(
#line 42
  EsGobJmulticardAsn1DerObjectIdentifier_class_(),
#line 43
  false), create_EsGobJmulticardAsn1OptionalDecoderObjectElement_initWithIOSClass_withBoolean_(
#line 46
  EsGobJmulticardAsn1DerDerInteger_class_(),
#line 47
  false), create_EsGobJmulticardAsn1OptionalDecoderObjectElement_initWithIOSClass_withBoolean_(
#line 50
  EsGobJmulticardAsn1DerDerInteger_class_(),
#line 51
  true) } count:3 type:EsGobJmulticardAsn1OptionalDecoderObjectElement_class_()]);
}


#line 39
EsGobJmulticardAsn1IcaoPaceInfo *new_EsGobJmulticardAsn1IcaoPaceInfo_init() {
  J2OBJC_NEW_IMPL(EsGobJmulticardAsn1IcaoPaceInfo, init)
}


#line 39
EsGobJmulticardAsn1IcaoPaceInfo *create_EsGobJmulticardAsn1IcaoPaceInfo_init() {
  J2OBJC_CREATE_IMPL(EsGobJmulticardAsn1IcaoPaceInfo, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardAsn1IcaoPaceInfo)
