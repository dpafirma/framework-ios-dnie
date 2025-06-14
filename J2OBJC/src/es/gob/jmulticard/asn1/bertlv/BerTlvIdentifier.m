//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/bertlv/BerTlvIdentifier.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "es/gob/jmulticard/HexUtils.h"
#include "es/gob/jmulticard/asn1/bertlv/BerTlvIdentifier.h"
#include "es/gob/jmulticard/asn1/bertlv/BitManipulationHelper.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/math/BigInteger.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/asn1/bertlv/BerTlvIdentifier must be compiled with ARC (-fobjc-arc)"
#endif

@interface EsGobJmulticardAsn1BertlvBerTlvIdentifier () {
 @public
  IOSByteArray *value_;
}

@end

J2OBJC_FIELD_SETTER(EsGobJmulticardAsn1BertlvBerTlvIdentifier, value_, IOSByteArray *)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/bertlv/BerTlvIdentifier.java"


#line 25
@implementation EsGobJmulticardAsn1BertlvBerTlvIdentifier


#line 25
- (instancetype)initPackagePrivate {
  EsGobJmulticardAsn1BertlvBerTlvIdentifier_initPackagePrivate(self);
  return self;
}


#line 31
- (jint)getTagValue {
  if (value_ == nil) {
    return 0;
  }
  if (value_->size_ == 1) {
    return IOSByteArray_Get(value_, 0);
  }
  IOSByteArray *tagBytes = [IOSByteArray newArrayWithLength:value_->size_ - 1];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(value_, 1, tagBytes, 0, value_->size_ - 1);
  for (jint i = 0; i < tagBytes->size_ - 1; i++) {
    
#line 42
    *IOSByteArray_GetRef(tagBytes, i) = (jbyte) EsGobJmulticardAsn1BertlvBitManipulationHelper_setBitValueWithInt_withInt_withBoolean_(IOSByteArray_Get(tagBytes, i), 8, false);
  }
  return [new_JavaMathBigInteger_initWithByteArray_(tagBytes) intValue];
}


#line 47
- (void)decodeWithJavaIoByteArrayInputStream:(JavaIoByteArrayInputStream *)stream {
  jint tlvIdFirstOctet = [((JavaIoByteArrayInputStream *) nil_chk(stream)) read];
  
#line 50
  value_ = [IOSByteArray newArrayWithBytes:(jbyte[]){
#line 51
    (jbyte) tlvIdFirstOctet } count:1];
    
#line 54
    jint mask = 31;
    if ((tlvIdFirstOctet & mask) == mask) {
      
#line 57
      do {
        jint tlvIdNextOctet = [stream read];
        jboolean lastOctet = false;
        if (!EsGobJmulticardAsn1BertlvBitManipulationHelper_getBitValueWithInt_withInt_(tlvIdNextOctet, 8)) {
          lastOctet = true;
        }
        
#line 64
        value_ = EsGobJmulticardAsn1BertlvBitManipulationHelper_mergeArraysWithByteArray_withByteArray_(value_, [IOSByteArray newArrayWithBytes:(jbyte[]){
#line 65
          (jbyte) tlvIdNextOctet } count:1]);
          
#line 68
          if (lastOctet) {
            break;
          }
        }
        while (
#line 71
        true);
      }
    }


#line 75
- (jboolean)isEqual:(id)obj {
  
#line 77
  if (JreObjectEqualsEquals(self, obj)) {
    return true;
  }
  if ([obj isKindOfClass:[EsGobJmulticardAsn1BertlvBerTlvIdentifier class]]) {
    return EsGobJmulticardHexUtils_arrayEqualsWithByteArray_withByteArray_(value_, ((EsGobJmulticardAsn1BertlvBerTlvIdentifier *) nil_chk(((EsGobJmulticardAsn1BertlvBerTlvIdentifier *) obj)))->value_);
  }
  return false;
}


#line 86
- (NSUInteger)hash {
  
#line 88
  return [new_JavaMathBigInteger_initWithByteArray_(value_) intValue];
}


#line 91
- (NSString *)description {
  
#line 93
  if (value_ == nil) {
    return @"NULL";
  }
  JavaLangStringBuilder *buf = new_JavaLangStringBuilder_initWithNSString_(@"[");
  {
    IOSByteArray *a__ =
#line 97
    value_;
    jbyte const *b__ = ((IOSByteArray *) nil_chk(a__))->buffer_;
    jbyte const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jbyte element = *b__++;
      
#line 98
      (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"0x"])) appendWithNSString:JavaLangInteger_toHexStringWithInt_(element)])) appendWithChar:' '];
    }
  }
  
#line 100
  (void) [buf appendWithChar:']'];
  return [buf description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(getTagValue);
  methods[2].selector = @selector(decodeWithJavaIoByteArrayInputStream:);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "decode", "LJavaIoByteArrayInputStream;", "equals", "LNSObject;", "hashCode", "toString" };
  static const J2ObjcClassInfo _EsGobJmulticardAsn1BertlvBerTlvIdentifier = { "BerTlvIdentifier", "es.gob.jmulticard.asn1.bertlv", ptrTable, methods, fields, 7, 0x10, 6, 1, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardAsn1BertlvBerTlvIdentifier;
}

@end


#line 25
void EsGobJmulticardAsn1BertlvBerTlvIdentifier_initPackagePrivate(EsGobJmulticardAsn1BertlvBerTlvIdentifier *self) {
  NSObject_init(self);
}


#line 25
EsGobJmulticardAsn1BertlvBerTlvIdentifier *new_EsGobJmulticardAsn1BertlvBerTlvIdentifier_initPackagePrivate() {
  J2OBJC_NEW_IMPL(EsGobJmulticardAsn1BertlvBerTlvIdentifier, initPackagePrivate)
}


#line 25
EsGobJmulticardAsn1BertlvBerTlvIdentifier *create_EsGobJmulticardAsn1BertlvBerTlvIdentifier_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(EsGobJmulticardAsn1BertlvBerTlvIdentifier, initPackagePrivate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardAsn1BertlvBerTlvIdentifier)
