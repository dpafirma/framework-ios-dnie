//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/util/ASN1Dump.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuffer.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/asn1/ASN1ApplicationSpecific.h"
#include "org/bouncycastle/asn1/ASN1BMPString.h"
#include "org/bouncycastle/asn1/ASN1BitString.h"
#include "org/bouncycastle/asn1/ASN1Boolean.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1Enumerated.h"
#include "org/bouncycastle/asn1/ASN1External.h"
#include "org/bouncycastle/asn1/ASN1GeneralizedTime.h"
#include "org/bouncycastle/asn1/ASN1GraphicString.h"
#include "org/bouncycastle/asn1/ASN1IA5String.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Null.h"
#include "org/bouncycastle/asn1/ASN1NumericString.h"
#include "org/bouncycastle/asn1/ASN1Object.h"
#include "org/bouncycastle/asn1/ASN1ObjectDescriptor.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1PrintableString.h"
#include "org/bouncycastle/asn1/ASN1RelativeOID.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1Set.h"
#include "org/bouncycastle/asn1/ASN1T61String.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/ASN1UTCTime.h"
#include "org/bouncycastle/asn1/ASN1UTF8String.h"
#include "org/bouncycastle/asn1/ASN1Util.h"
#include "org/bouncycastle/asn1/ASN1VideotexString.h"
#include "org/bouncycastle/asn1/ASN1VisibleString.h"
#include "org/bouncycastle/asn1/BEROctetString.h"
#include "org/bouncycastle/asn1/BERSequence.h"
#include "org/bouncycastle/asn1/BERSet.h"
#include "org/bouncycastle/asn1/BERTaggedObject.h"
#include "org/bouncycastle/asn1/DERBitString.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERSet.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/DLBitString.h"
#include "org/bouncycastle/asn1/util/ASN1Dump.h"
#include "org/bouncycastle/util/Strings.h"
#include "org/bouncycastle/util/encoders/Hex.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/asn1/util/ASN1Dump must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleAsn1UtilASN1Dump ()

+ (NSString *)dumpBinaryDataAsStringWithNSString:(NSString *)indent
                                   withByteArray:(IOSByteArray *)bytes;

+ (NSString *)calculateAscStringWithByteArray:(IOSByteArray *)bytes
                                      withInt:(jint)off
                                      withInt:(jint)len;

@end

inline NSString *OrgBouncycastleAsn1UtilASN1Dump_get_TAB(void);
static NSString *OrgBouncycastleAsn1UtilASN1Dump_TAB = @"    ";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastleAsn1UtilASN1Dump, TAB, NSString *)

inline jint OrgBouncycastleAsn1UtilASN1Dump_get_SAMPLE_SIZE(void);
#define OrgBouncycastleAsn1UtilASN1Dump_SAMPLE_SIZE 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleAsn1UtilASN1Dump, SAMPLE_SIZE, jint)

__attribute__((unused)) static NSString *OrgBouncycastleAsn1UtilASN1Dump_dumpBinaryDataAsStringWithNSString_withByteArray_(NSString *indent, IOSByteArray *bytes);

__attribute__((unused)) static NSString *OrgBouncycastleAsn1UtilASN1Dump_calculateAscStringWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint off, jint len);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/util/ASN1Dump.java"


#line 46
@implementation OrgBouncycastleAsn1UtilASN1Dump

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 46
- (instancetype)init {
  OrgBouncycastleAsn1UtilASN1Dump_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 56
+ (void)_dumpAsStringWithNSString:(NSString *)indent
                      withBoolean:(jboolean)verbose
withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)obj
         withJavaLangStringBuffer:(JavaLangStringBuffer *)buf {
  OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(indent, verbose, obj, buf);
}


#line 306
+ (NSString *)dumpAsStringWithId:(id)obj {
  return OrgBouncycastleAsn1UtilASN1Dump_dumpAsStringWithId_(obj);
}


#line 319
+ (NSString *)dumpAsStringWithId:(id)obj
                     withBoolean:(jboolean)verbose {
  return OrgBouncycastleAsn1UtilASN1Dump_dumpAsStringWithId_withBoolean_(obj, verbose);
}


#line 342
+ (NSString *)dumpBinaryDataAsStringWithNSString:(NSString *)indent
                                   withByteArray:(IOSByteArray *)bytes {
  return OrgBouncycastleAsn1UtilASN1Dump_dumpBinaryDataAsStringWithNSString_withByteArray_(indent, bytes);
}


#line 377
+ (NSString *)calculateAscStringWithByteArray:(IOSByteArray *)bytes
                                      withInt:(jint)off
                                      withInt:(jint)len {
  return OrgBouncycastleAsn1UtilASN1Dump_calculateAscStringWithByteArray_withInt_withInt_(bytes, off, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(_dumpAsStringWithNSString:withBoolean:withOrgBouncycastleAsn1ASN1Primitive:withJavaLangStringBuffer:);
  methods[2].selector = @selector(dumpAsStringWithId:);
  methods[3].selector = @selector(dumpAsStringWithId:withBoolean:);
  methods[4].selector = @selector(dumpBinaryDataAsStringWithNSString:withByteArray:);
  methods[5].selector = @selector(calculateAscStringWithByteArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAB", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "SAMPLE_SIZE", "I", .constantValue.asInt = OrgBouncycastleAsn1UtilASN1Dump_SAMPLE_SIZE, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "_dumpAsString", "LNSString;ZLOrgBouncycastleAsn1ASN1Primitive;LJavaLangStringBuffer;", "dumpAsString", "LNSObject;", "LNSObject;Z", "dumpBinaryDataAsString", "LNSString;[B", "calculateAscString", "[BII", &OrgBouncycastleAsn1UtilASN1Dump_TAB };
  static const J2ObjcClassInfo _OrgBouncycastleAsn1UtilASN1Dump = { "ASN1Dump", "org.bouncycastle.asn1.util", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleAsn1UtilASN1Dump;
}

@end


#line 46
void OrgBouncycastleAsn1UtilASN1Dump_init(OrgBouncycastleAsn1UtilASN1Dump *self) {
  NSObject_init(self);
}


#line 46
OrgBouncycastleAsn1UtilASN1Dump *new_OrgBouncycastleAsn1UtilASN1Dump_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1UtilASN1Dump, init)
}


#line 46
OrgBouncycastleAsn1UtilASN1Dump *create_OrgBouncycastleAsn1UtilASN1Dump_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1UtilASN1Dump, init)
}


#line 56
void OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(NSString *indent, jboolean verbose, OrgBouncycastleAsn1ASN1Primitive *obj, JavaLangStringBuffer *buf) {
  OrgBouncycastleAsn1UtilASN1Dump_initialize();
  
#line 62
  NSString *nl = OrgBouncycastleUtilStrings_lineSeparator();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Null class]]) {
    
#line 65
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:indent];
    (void) [buf appendWithNSString:@"NULL"];
    (void) [buf appendWithNSString:nl];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Sequence class]]) {
    
#line 71
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:indent];
    if ([obj isKindOfClass:[OrgBouncycastleAsn1BERSequence class]]) {
      
#line 74
      (void) [buf appendWithNSString:@"BER Sequence"];
    }
    else if ([obj isKindOfClass:[OrgBouncycastleAsn1DERSequence class]]) {
      
#line 78
      (void) [buf appendWithNSString:@"DER Sequence"];
    }
    else {
      
#line 82
      (void) [buf appendWithNSString:@"Sequence"];
    }
    (void) [buf appendWithNSString:nl];
    
#line 86
    OrgBouncycastleAsn1ASN1Sequence *sequence = (OrgBouncycastleAsn1ASN1Sequence *) cast_chk(obj, [OrgBouncycastleAsn1ASN1Sequence class]);
    NSString *elementsIndent = JreStrcat("$$", indent, OrgBouncycastleAsn1UtilASN1Dump_TAB);
    
#line 89
    for (jint i = 0, count = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(sequence)) size]; i < count; ++i) {
      
#line 91
      OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(elementsIndent, verbose, [((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk([sequence getObjectAtWithInt:i])) toASN1Primitive], buf);
    }
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Set class]]) {
    
#line 96
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:indent];
    if ([obj isKindOfClass:[OrgBouncycastleAsn1BERSet class]]) {
      
#line 99
      (void) [buf appendWithNSString:@"BER Set"];
    }
    else if ([obj isKindOfClass:[OrgBouncycastleAsn1DERSet class]]) {
      
#line 103
      (void) [buf appendWithNSString:@"DER Set"];
    }
    else {
      
#line 107
      (void) [buf appendWithNSString:@"Set"];
    }
    (void) [buf appendWithNSString:nl];
    
#line 111
    OrgBouncycastleAsn1ASN1Set *set = (OrgBouncycastleAsn1ASN1Set *) cast_chk(obj, [OrgBouncycastleAsn1ASN1Set class]);
    NSString *elementsIndent = JreStrcat("$$", indent, OrgBouncycastleAsn1UtilASN1Dump_TAB);
    
#line 114
    for (jint i = 0, count = [((OrgBouncycastleAsn1ASN1Set *) nil_chk(set)) size]; i < count; ++i) {
      
#line 116
      OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(elementsIndent, verbose, [((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk([set getObjectAtWithInt:i])) toASN1Primitive], buf);
    }
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1ApplicationSpecific class]]) {
    
#line 121
    OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(indent, verbose, [((OrgBouncycastleAsn1ASN1ApplicationSpecific *) nil_chk(((OrgBouncycastleAsn1ASN1ApplicationSpecific *) obj))) getTaggedObject], buf);
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1TaggedObject class]]) {
    
#line 125
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:indent];
    if ([obj isKindOfClass:[OrgBouncycastleAsn1BERTaggedObject class]]) {
      
#line 128
      (void) [buf appendWithNSString:@"BER Tagged "];
    }
    else if ([obj isKindOfClass:[OrgBouncycastleAsn1DERTaggedObject class]]) {
      
#line 132
      (void) [buf appendWithNSString:@"DER Tagged "];
    }
    else {
      
#line 136
      (void) [buf appendWithNSString:@"Tagged "];
    }
    
#line 139
    OrgBouncycastleAsn1ASN1TaggedObject *o = (OrgBouncycastleAsn1ASN1TaggedObject *) cast_chk(obj, [OrgBouncycastleAsn1ASN1TaggedObject class]);
    
#line 141
    (void) [buf appendWithNSString:OrgBouncycastleAsn1ASN1Util_getTagTextWithOrgBouncycastleAsn1ASN1TaggedObject_(o)];
    
#line 143
    if (![((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(o)) isExplicit]) {
      
#line 145
      (void) [buf appendWithNSString:@" IMPLICIT "];
    }
    
#line 148
    (void) [buf appendWithNSString:nl];
    
#line 150
    NSString *baseIndent = JreStrcat("$$", indent, OrgBouncycastleAsn1UtilASN1Dump_TAB);
    
#line 152
    OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(baseIndent, verbose, [((OrgBouncycastleAsn1ASN1Object *) nil_chk([o getBaseObject])) toASN1Primitive], buf);
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1OctetString class]]) {
    
#line 156
    OrgBouncycastleAsn1ASN1OctetString *oct = (OrgBouncycastleAsn1ASN1OctetString *) obj;
    
#line 158
    if ([obj isKindOfClass:[OrgBouncycastleAsn1BEROctetString class]]) {
      
#line 160
      (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$I$", indent, @"BER Constructed Octet String[", ((IOSByteArray *) nil_chk([((OrgBouncycastleAsn1ASN1OctetString *) nil_chk(oct)) getOctets]))->size_, @"] ")];
    }
    else {
      
#line 164
      (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$I$", indent, @"DER Octet String[", ((IOSByteArray *) nil_chk([((OrgBouncycastleAsn1ASN1OctetString *) nil_chk(oct)) getOctets]))->size_, @"] ")];
    }
    if (verbose) {
      
#line 168
      (void) [buf appendWithNSString:OrgBouncycastleAsn1UtilASN1Dump_dumpBinaryDataAsStringWithNSString_withByteArray_(indent, [oct getOctets])];
    }
    else {
      
#line 172
      (void) [buf appendWithNSString:nl];
    }
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1ObjectIdentifier class]]) {
    
#line 177
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$C$", indent, @"ObjectIdentifier(", [((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(((OrgBouncycastleAsn1ASN1ObjectIdentifier *) obj))) getId], ')', nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1RelativeOID class]]) {
    
#line 181
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$C$", indent, @"RelativeOID(", [((OrgBouncycastleAsn1ASN1RelativeOID *) nil_chk(((OrgBouncycastleAsn1ASN1RelativeOID *) obj))) getId], ')', nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Boolean class]]) {
    
#line 185
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$ZC$", indent, @"Boolean(", [((OrgBouncycastleAsn1ASN1Boolean *) nil_chk(((OrgBouncycastleAsn1ASN1Boolean *) obj))) isTrue], ')', nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Integer class]]) {
    
#line 189
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$@C$", indent, @"Integer(", [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(((OrgBouncycastleAsn1ASN1Integer *) obj))) getValue], ')', nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1BitString class]]) {
    
#line 193
    OrgBouncycastleAsn1ASN1BitString *bitString = (OrgBouncycastleAsn1ASN1BitString *) obj;
    
#line 195
    IOSByteArray *bytes = [((OrgBouncycastleAsn1ASN1BitString *) nil_chk(bitString)) getBytes];
    jint padBits = [bitString getPadBits];
    
#line 198
    if ([bitString isKindOfClass:[OrgBouncycastleAsn1DERBitString class]]) {
      
#line 200
      (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$I$I$", indent, @"DER Bit String[", ((IOSByteArray *) nil_chk(bytes))->size_, @", ", padBits, @"] ")];
    }
    else if ([bitString isKindOfClass:[OrgBouncycastleAsn1DLBitString class]]) {
      
#line 204
      (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$I$I$", indent, @"DL Bit String[", ((IOSByteArray *) nil_chk(bytes))->size_, @", ", padBits, @"] ")];
    }
    else {
      
#line 208
      (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$I$I$", indent, @"BER Bit String[", ((IOSByteArray *) nil_chk(bytes))->size_, @", ", padBits, @"] ")];
    }
    
#line 211
    if (verbose) {
      
#line 213
      (void) [buf appendWithNSString:OrgBouncycastleAsn1UtilASN1Dump_dumpBinaryDataAsStringWithNSString_withByteArray_(indent, bytes)];
    }
    else {
      
#line 217
      (void) [buf appendWithNSString:nl];
    }
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1IA5String class]]) {
    
#line 222
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"IA5String(", [((OrgBouncycastleAsn1ASN1IA5String *) nil_chk(((OrgBouncycastleAsn1ASN1IA5String *) obj))) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1UTF8String class]]) {
    
#line 226
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"UTF8String(", [((OrgBouncycastleAsn1ASN1UTF8String *) nil_chk(((OrgBouncycastleAsn1ASN1UTF8String *) obj))) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1NumericString class]]) {
    
#line 230
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"NumericString(", [((OrgBouncycastleAsn1ASN1NumericString *) nil_chk(((OrgBouncycastleAsn1ASN1NumericString *) obj))) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1PrintableString class]]) {
    
#line 234
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"PrintableString(", [((OrgBouncycastleAsn1ASN1PrintableString *) nil_chk(((OrgBouncycastleAsn1ASN1PrintableString *) obj))) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1VisibleString class]]) {
    
#line 238
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"VisibleString(", [((OrgBouncycastleAsn1ASN1VisibleString *) nil_chk(((OrgBouncycastleAsn1ASN1VisibleString *) obj))) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1BMPString class]]) {
    
#line 242
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"BMPString(", [((OrgBouncycastleAsn1ASN1BMPString *) nil_chk(((OrgBouncycastleAsn1ASN1BMPString *) obj))) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1T61String class]]) {
    
#line 246
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"T61String(", [((OrgBouncycastleAsn1ASN1T61String *) nil_chk(((OrgBouncycastleAsn1ASN1T61String *) obj))) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1GraphicString class]]) {
    
#line 250
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"GraphicString(", [((OrgBouncycastleAsn1ASN1GraphicString *) nil_chk(((OrgBouncycastleAsn1ASN1GraphicString *) obj))) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1VideotexString class]]) {
    
#line 254
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"VideotexString(", [((OrgBouncycastleAsn1ASN1VideotexString *) nil_chk(((OrgBouncycastleAsn1ASN1VideotexString *) obj))) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1UTCTime class]]) {
    
#line 258
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"UTCTime(", [((OrgBouncycastleAsn1ASN1UTCTime *) nil_chk(((OrgBouncycastleAsn1ASN1UTCTime *) obj))) getTime], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1GeneralizedTime class]]) {
    
#line 262
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"GeneralizedTime(", [((OrgBouncycastleAsn1ASN1GeneralizedTime *) nil_chk(((OrgBouncycastleAsn1ASN1GeneralizedTime *) obj))) getTime], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Enumerated class]]) {
    
#line 266
    OrgBouncycastleAsn1ASN1Enumerated *en = (OrgBouncycastleAsn1ASN1Enumerated *) obj;
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$@C$", indent, @"DER Enumerated(", [((OrgBouncycastleAsn1ASN1Enumerated *) nil_chk(en)) getValue], ')', nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1ObjectDescriptor class]]) {
    
#line 271
    OrgBouncycastleAsn1ASN1ObjectDescriptor *od = (OrgBouncycastleAsn1ASN1ObjectDescriptor *) obj;
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$$$", indent, @"ObjectDescriptor(", [((OrgBouncycastleAsn1ASN1GraphicString *) nil_chk([((OrgBouncycastleAsn1ASN1ObjectDescriptor *) nil_chk(od)) getBaseGraphicString])) getString], @") ", nl)];
  }
  else if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1External class]]) {
    
#line 276
    OrgBouncycastleAsn1ASN1External *ext = (OrgBouncycastleAsn1ASN1External *) obj;
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$", indent, @"External ", nl)];
    NSString *tab = JreStrcat("$$", indent, OrgBouncycastleAsn1UtilASN1Dump_TAB);
    if ([((OrgBouncycastleAsn1ASN1External *) nil_chk(ext)) getDirectReference] != nil) {
      
#line 281
      (void) [buf appendWithNSString:JreStrcat("$$$$", tab, @"Direct Reference: ", [((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk([ext getDirectReference])) getId], nl)];
    }
    if ([ext getIndirectReference] != nil) {
      
#line 285
      (void) [buf appendWithNSString:JreStrcat("$$$$", tab, @"Indirect Reference: ", [((OrgBouncycastleAsn1ASN1Integer *) nil_chk([ext getIndirectReference])) description], nl)];
    }
    if ([ext getDataValueDescriptor] != nil) {
      
#line 289
      OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(tab, verbose, [ext getDataValueDescriptor], buf);
    }
    (void) [buf appendWithNSString:JreStrcat("$$I$", tab, @"Encoding: ", [ext getEncoding], nl)];
    OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(tab, verbose, [ext getExternalContent], buf);
  }
  else {
    
#line 296
    (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:JreStrcat("$$$", indent, [((OrgBouncycastleAsn1ASN1Primitive *) nil_chk(obj)) description], nl)];
  }
}


#line 306
NSString *OrgBouncycastleAsn1UtilASN1Dump_dumpAsStringWithId_(id obj) {
  OrgBouncycastleAsn1UtilASN1Dump_initialize();
  
#line 309
  return OrgBouncycastleAsn1UtilASN1Dump_dumpAsStringWithId_withBoolean_(obj, false);
}


#line 319
NSString *OrgBouncycastleAsn1UtilASN1Dump_dumpAsStringWithId_withBoolean_(id obj, jboolean verbose) {
  OrgBouncycastleAsn1UtilASN1Dump_initialize();
  
#line 323
  OrgBouncycastleAsn1ASN1Primitive *primitive;
  if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Primitive class]]) {
    
#line 326
    primitive = (OrgBouncycastleAsn1ASN1Primitive *) obj;
  }
  else if ([OrgBouncycastleAsn1ASN1Encodable_class_() isInstance:obj]) {
    
#line 330
    primitive = [((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(((id<OrgBouncycastleAsn1ASN1Encodable>) cast_check(obj, OrgBouncycastleAsn1ASN1Encodable_class_())))) toASN1Primitive];
  }
  else {
    
#line 334
    return JreStrcat("$$", @"unknown object type ", [nil_chk(obj) description]);
  }
  
#line 337
  JavaLangStringBuffer *buf = new_JavaLangStringBuffer_init();
  OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(@"", verbose, primitive, buf);
  return [buf description];
}


#line 342
NSString *OrgBouncycastleAsn1UtilASN1Dump_dumpBinaryDataAsStringWithNSString_withByteArray_(NSString *indent, IOSByteArray *bytes) {
  OrgBouncycastleAsn1UtilASN1Dump_initialize();
  NSString *nl = OrgBouncycastleUtilStrings_lineSeparator();
  JavaLangStringBuffer *buf = new_JavaLangStringBuffer_init();
  
#line 347
  (void) JreStrAppendStrong(&indent, "$", OrgBouncycastleAsn1UtilASN1Dump_TAB);
  
#line 349
  (void) [buf appendWithNSString:nl];
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(bytes))->size_; i += OrgBouncycastleAsn1UtilASN1Dump_SAMPLE_SIZE) {
    
#line 352
    if (bytes->size_ - i > OrgBouncycastleAsn1UtilASN1Dump_SAMPLE_SIZE) {
      
#line 354
      (void) [buf appendWithNSString:indent];
      (void) [buf appendWithNSString:OrgBouncycastleUtilStrings_fromByteArrayWithByteArray_(OrgBouncycastleUtilEncodersHex_encodeWithByteArray_withInt_withInt_(bytes, i, OrgBouncycastleAsn1UtilASN1Dump_SAMPLE_SIZE))];
      (void) [buf appendWithNSString:OrgBouncycastleAsn1UtilASN1Dump_TAB];
      (void) [buf appendWithNSString:OrgBouncycastleAsn1UtilASN1Dump_calculateAscStringWithByteArray_withInt_withInt_(bytes, i, OrgBouncycastleAsn1UtilASN1Dump_SAMPLE_SIZE)];
      (void) [buf appendWithNSString:nl];
    }
    else {
      
#line 362
      (void) [buf appendWithNSString:indent];
      (void) [buf appendWithNSString:OrgBouncycastleUtilStrings_fromByteArrayWithByteArray_(OrgBouncycastleUtilEncodersHex_encodeWithByteArray_withInt_withInt_(bytes, i, bytes->size_ - i))];
      for (jint j = bytes->size_ - i; j != OrgBouncycastleAsn1UtilASN1Dump_SAMPLE_SIZE; j++) {
        
#line 366
        (void) [buf appendWithNSString:@"  "];
      }
      (void) [buf appendWithNSString:OrgBouncycastleAsn1UtilASN1Dump_TAB];
      (void) [buf appendWithNSString:OrgBouncycastleAsn1UtilASN1Dump_calculateAscStringWithByteArray_withInt_withInt_(bytes, i, bytes->size_ - i)];
      (void) [buf appendWithNSString:nl];
    }
  }
  
#line 374
  return [buf description];
}


#line 377
NSString *OrgBouncycastleAsn1UtilASN1Dump_calculateAscStringWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint off, jint len) {
  OrgBouncycastleAsn1UtilASN1Dump_initialize();
  JavaLangStringBuffer *buf = new_JavaLangStringBuffer_init();
  
#line 381
  for (jint i = off; i != off + len; i++) {
    
#line 383
    if (IOSByteArray_Get(nil_chk(bytes), i) >= ' ' && IOSByteArray_Get(bytes, i) <= '~') {
      
#line 385
      (void) [buf appendWithChar:(jchar) IOSByteArray_Get(bytes, i)];
    }
  }
  
#line 389
  return [buf description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1UtilASN1Dump)
