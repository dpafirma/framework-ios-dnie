//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/OidDictionary.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "es/gob/jmulticard/HexUtils.h"
#include "es/gob/jmulticard/asn1/OidDictionary.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Properties.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/asn1/OidDictionary must be compiled with ARC (-fobjc-arc)"
#endif

@interface EsGobJmulticardAsn1OidDictionary ()

- (instancetype)init;

@end

inline JavaUtilProperties *EsGobJmulticardAsn1OidDictionary_get_dic(void);
inline JavaUtilProperties *EsGobJmulticardAsn1OidDictionary_set_dic(JavaUtilProperties *value);
static JavaUtilProperties *EsGobJmulticardAsn1OidDictionary_dic;
J2OBJC_STATIC_FIELD_OBJ(EsGobJmulticardAsn1OidDictionary, dic, JavaUtilProperties *)

__attribute__((unused)) static void EsGobJmulticardAsn1OidDictionary_init(EsGobJmulticardAsn1OidDictionary *self);

__attribute__((unused)) static EsGobJmulticardAsn1OidDictionary *new_EsGobJmulticardAsn1OidDictionary_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static EsGobJmulticardAsn1OidDictionary *create_EsGobJmulticardAsn1OidDictionary_init(void);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/OidDictionary.java"

J2OBJC_INITIALIZED_DEFN(EsGobJmulticardAsn1OidDictionary)


#line 48
@implementation EsGobJmulticardAsn1OidDictionary

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 50
- (instancetype)init {
  EsGobJmulticardAsn1OidDictionary_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 70
+ (NSString *)getOidDescriptionWithByteArray:(IOSByteArray *)rawOid {
  return EsGobJmulticardAsn1OidDictionary_getOidDescriptionWithByteArray_(rawOid);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getOidDescriptionWithByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "dic", "LJavaUtilProperties;", .constantValue.asLong = 0, 0xa, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "getOidDescription", "[B", &EsGobJmulticardAsn1OidDictionary_dic };
  static const J2ObjcClassInfo _EsGobJmulticardAsn1OidDictionary = { "OidDictionary", "es.gob.jmulticard.asn1", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardAsn1OidDictionary;
}

+ (void)initialize {
  if (self == [EsGobJmulticardAsn1OidDictionary class]) {
    EsGobJmulticardAsn1OidDictionary_dic = new_JavaUtilProperties_init();
    {
      
#line 57
      (void) [EsGobJmulticardAsn1OidDictionary_dic putWithId:@"55-04-06" withId:@"C"];
      (void) [((JavaUtilProperties *) nil_chk(EsGobJmulticardAsn1OidDictionary_dic)) putWithId:@"55-04-05" withId:@"SERIALNUMBER"];
      (void) [((JavaUtilProperties *) nil_chk(EsGobJmulticardAsn1OidDictionary_dic)) putWithId:@"55-04-04" withId:@"SURNAME"];
      (void) [((JavaUtilProperties *) nil_chk(EsGobJmulticardAsn1OidDictionary_dic)) putWithId:@"55-04-2A" withId:@"GIVENNAME"];
      (void) [((JavaUtilProperties *) nil_chk(EsGobJmulticardAsn1OidDictionary_dic)) putWithId:@"55-04-03" withId:@"CN"];
      (void) [((JavaUtilProperties *) nil_chk(EsGobJmulticardAsn1OidDictionary_dic)) putWithId:@"55-04-0A" withId:@"O"];
      (void) [((JavaUtilProperties *) nil_chk(EsGobJmulticardAsn1OidDictionary_dic)) putWithId:@"55-04-0B" withId:@"OU"];
      (void) [((JavaUtilProperties *) nil_chk(EsGobJmulticardAsn1OidDictionary_dic)) putWithId:@"2B-0E-03-02-1A" withId:@"SHA-1"];
    }
    J2OBJC_SET_INITIALIZED(EsGobJmulticardAsn1OidDictionary)
  }
}

@end


#line 50
void EsGobJmulticardAsn1OidDictionary_init(EsGobJmulticardAsn1OidDictionary *self) {
  NSObject_init(self);
}


#line 50
EsGobJmulticardAsn1OidDictionary *new_EsGobJmulticardAsn1OidDictionary_init() {
  J2OBJC_NEW_IMPL(EsGobJmulticardAsn1OidDictionary, init)
}


#line 50
EsGobJmulticardAsn1OidDictionary *create_EsGobJmulticardAsn1OidDictionary_init() {
  J2OBJC_CREATE_IMPL(EsGobJmulticardAsn1OidDictionary, init)
}


#line 70
NSString *EsGobJmulticardAsn1OidDictionary_getOidDescriptionWithByteArray_(IOSByteArray *rawOid) {
  EsGobJmulticardAsn1OidDictionary_initialize();
  
#line 71
  if (rawOid == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"No hay descripcion para un OID nulo");
  }
  NSString *key = EsGobJmulticardHexUtils_hexifyWithByteArray_withBoolean_(rawOid, true);
  return [((JavaUtilProperties *) nil_chk(EsGobJmulticardAsn1OidDictionary_dic)) getPropertyWithNSString:key] != nil ? [((JavaUtilProperties *) nil_chk(EsGobJmulticardAsn1OidDictionary_dic)) getPropertyWithNSString:key] : key;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardAsn1OidDictionary)
