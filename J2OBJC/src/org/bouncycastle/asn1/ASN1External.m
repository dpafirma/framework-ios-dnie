//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/ASN1External.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1BitString.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1External.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Object.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1OutputStream.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/ASN1UniversalType.h"
#include "org/bouncycastle/asn1/ASN1Util.h"
#include "org/bouncycastle/asn1/BERTags.h"
#include "org/bouncycastle/asn1/DERExternal.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/DLExternal.h"
#include "org/bouncycastle/util/Objects.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/asn1/ASN1External must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleAsn1ASN1External ()

/*!
 @brief Checks the encoding of the content.Valid values are 
 <ul>
  <li><code>0</code> single-ASN1-type</li>
  <li><code>1</code> OCTET STRING</li>
  <li><code>2</code> BIT STRING</li>
  </ul>
 @param encoding The encoding
 */
+ (jint)checkEncodingWithInt:(jint)encoding;

+ (OrgBouncycastleAsn1ASN1Primitive *)checkExternalContentWithInt:(jint)tagNo
                             withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)externalContent;

+ (OrgBouncycastleAsn1ASN1Primitive *)getExternalContentWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)encoding;

+ (OrgBouncycastleAsn1ASN1Primitive *)getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)sequence
                                                                                    withInt:(jint)index;

@end

__attribute__((unused)) static jint OrgBouncycastleAsn1ASN1External_checkEncodingWithInt_(jint encoding);

__attribute__((unused)) static OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1ASN1External_checkExternalContentWithInt_withOrgBouncycastleAsn1ASN1Primitive_(jint tagNo, OrgBouncycastleAsn1ASN1Primitive *externalContent);

__attribute__((unused)) static OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1ASN1External_getExternalContentWithOrgBouncycastleAsn1ASN1TaggedObject_(OrgBouncycastleAsn1ASN1TaggedObject *encoding);

__attribute__((unused)) static OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1ASN1External_getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence_withInt_(OrgBouncycastleAsn1ASN1Sequence *sequence, jint index);

@interface OrgBouncycastleAsn1ASN1External_1 : OrgBouncycastleAsn1ASN1UniversalType

- (instancetype)initWithIOSClass:(IOSClass *)javaClass
                         withInt:(jint)tagNumber;

- (OrgBouncycastleAsn1ASN1Primitive *)fromImplicitConstructedWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)sequence;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1ASN1External_1)

__attribute__((unused)) static void OrgBouncycastleAsn1ASN1External_1_initWithIOSClass_withInt_(OrgBouncycastleAsn1ASN1External_1 *self, IOSClass *javaClass, jint tagNumber);

__attribute__((unused)) static OrgBouncycastleAsn1ASN1External_1 *new_OrgBouncycastleAsn1ASN1External_1_initWithIOSClass_withInt_(IOSClass *javaClass, jint tagNumber) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgBouncycastleAsn1ASN1External_1 *create_OrgBouncycastleAsn1ASN1External_1_initWithIOSClass_withInt_(IOSClass *javaClass, jint tagNumber);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/ASN1External.java"

J2OBJC_INITIALIZED_DEFN(OrgBouncycastleAsn1ASN1External)

OrgBouncycastleAsn1ASN1UniversalType *OrgBouncycastleAsn1ASN1External_TYPE;


#line 10
@implementation OrgBouncycastleAsn1ASN1External


#line 23
+ (OrgBouncycastleAsn1ASN1External *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1ASN1External_getInstanceWithId_(obj);
}


#line 52
+ (OrgBouncycastleAsn1ASN1External *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)taggedObject
                                                                            withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1ASN1External_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(taggedObject, explicit_);
}


#line 64
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)sequence {
  OrgBouncycastleAsn1ASN1External_initWithOrgBouncycastleAsn1ASN1Sequence_(self, sequence);
  return self;
}


#line 101
- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)directReference
                             withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)indirectReference
                           withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)dataValueDescriptor
                         withOrgBouncycastleAsn1DERTaggedObject:(OrgBouncycastleAsn1DERTaggedObject *)externalData {
  OrgBouncycastleAsn1ASN1External_initWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Primitive_withOrgBouncycastleAsn1DERTaggedObject_(self, directReference, indirectReference, dataValueDescriptor, externalData);
  return self;
}


#line 111
- (instancetype)initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)directReference
                             withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)indirectReference
                           withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)dataValueDescriptor
                                                        withInt:(jint)encoding
                           withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)externalData {
  OrgBouncycastleAsn1ASN1External_initWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Primitive_withInt_withOrgBouncycastleAsn1ASN1Primitive_(self, directReference, indirectReference, dataValueDescriptor, encoding, externalData);
  return self;
}


#line 121
- (OrgBouncycastleAsn1ASN1Sequence *)buildSequence {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 123
- (jint)encodedLengthWithBoolean:(jboolean)withTag {
  
#line 126
  return [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk([self buildSequence])) encodedLengthWithBoolean:withTag];
}

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg
                                          withBoolean:(jboolean)withTag {
  
#line 132
  [((OrgBouncycastleAsn1ASN1OutputStream *) nil_chk(outArg)) writeIdentifierWithBoolean:withTag withInt:OrgBouncycastleAsn1BERTags_CONSTRUCTED | OrgBouncycastleAsn1BERTags_EXTERNAL];
  [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk([self buildSequence])) encodeWithOrgBouncycastleAsn1ASN1OutputStream:outArg withBoolean:false];
}


#line 136
- (OrgBouncycastleAsn1ASN1Primitive *)toDERObject {
  
#line 139
  return new_OrgBouncycastleAsn1DERExternal_initWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Primitive_withInt_withOrgBouncycastleAsn1ASN1Primitive_(directReference_, indirectReference_, dataValueDescriptor_, encoding_, externalContent_);
}

- (OrgBouncycastleAsn1ASN1Primitive *)toDLObject {
  
#line 145
  return new_OrgBouncycastleAsn1DLExternal_initWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Primitive_withInt_withOrgBouncycastleAsn1ASN1Primitive_(directReference_, indirectReference_, dataValueDescriptor_, encoding_, externalContent_);
}

- (NSUInteger)hash {
  
#line 151
  return OrgBouncycastleUtilObjects_hashCodeWithId_(directReference_) ^ OrgBouncycastleUtilObjects_hashCodeWithId_(
#line 152
  indirectReference_) ^ OrgBouncycastleUtilObjects_hashCodeWithId_(
#line 153
  dataValueDescriptor_) ^
#line 154
  encoding_ ^ ((jint)
#line 155
  [((OrgBouncycastleAsn1ASN1Primitive *) nil_chk(externalContent_)) hash]);
}


#line 158
- (jboolean)encodeConstructed {
  
#line 161
  return true;
}

- (jboolean)asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)primitive {
  
#line 167
  if (JreObjectEqualsEquals(self, primitive)) {
    
#line 169
    return true;
  }
  if (!([primitive isKindOfClass:[OrgBouncycastleAsn1ASN1External class]])) {
    
#line 173
    return false;
  }
  
#line 176
  OrgBouncycastleAsn1ASN1External *that = (OrgBouncycastleAsn1ASN1External *) cast_chk(primitive, [OrgBouncycastleAsn1ASN1External class]);
  
#line 178
  return OrgBouncycastleUtilObjects_areEqualWithId_withId_(directReference_, ((OrgBouncycastleAsn1ASN1External *) nil_chk(that))->directReference_) && OrgBouncycastleUtilObjects_areEqualWithId_withId_(
#line 179
  indirectReference_, that->indirectReference_) && OrgBouncycastleUtilObjects_areEqualWithId_withId_(
#line 180
  dataValueDescriptor_, that->dataValueDescriptor_) &&
#line 181
  encoding_ == that->encoding_ &&
#line 182
  [((OrgBouncycastleAsn1ASN1Primitive *) nil_chk(externalContent_)) equalsWithOrgBouncycastleAsn1ASN1Primitive:that->externalContent_];
}


#line 189
- (OrgBouncycastleAsn1ASN1Primitive *)getDataValueDescriptor {
  
#line 191
  return dataValueDescriptor_;
}


#line 198
- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getDirectReference {
  
#line 200
  return directReference_;
}


#line 212
- (jint)getEncoding {
  
#line 214
  return encoding_;
}


#line 221
- (OrgBouncycastleAsn1ASN1Primitive *)getExternalContent {
  
#line 223
  return externalContent_;
}


#line 230
- (OrgBouncycastleAsn1ASN1Integer *)getIndirectReference {
  
#line 232
  return indirectReference_;
}


#line 244
+ (jint)checkEncodingWithInt:(jint)encoding {
  return OrgBouncycastleAsn1ASN1External_checkEncodingWithInt_(encoding);
}


#line 254
+ (OrgBouncycastleAsn1ASN1Primitive *)checkExternalContentWithInt:(jint)tagNo
                             withOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)externalContent {
  return OrgBouncycastleAsn1ASN1External_checkExternalContentWithInt_withOrgBouncycastleAsn1ASN1Primitive_(tagNo, externalContent);
}


#line 267
+ (OrgBouncycastleAsn1ASN1Primitive *)getExternalContentWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)encoding {
  return OrgBouncycastleAsn1ASN1External_getExternalContentWithOrgBouncycastleAsn1ASN1TaggedObject_(encoding);
}


#line 288
+ (OrgBouncycastleAsn1ASN1Primitive *)getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)sequence
                                                                                    withInt:(jint)index {
  return OrgBouncycastleAsn1ASN1External_getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence_withInt_(sequence, index);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgBouncycastleAsn1ASN1External;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1External;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 5, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Sequence;", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 6, 7, 8, -1, -1, -1 },
    { NULL, "V", 0x0, 9, 10, 8, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 12, 13, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1ObjectIdentifier;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Integer;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 14, 15, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0xa, 16, 17, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0xa, 18, 19, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0xa, 20, 21, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getInstanceWithId:);
  methods[1].selector = @selector(getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:withBoolean:);
  methods[2].selector = @selector(initWithOrgBouncycastleAsn1ASN1Sequence:);
  methods[3].selector = @selector(initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:withOrgBouncycastleAsn1ASN1Integer:withOrgBouncycastleAsn1ASN1Primitive:withOrgBouncycastleAsn1DERTaggedObject:);
  methods[4].selector = @selector(initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:withOrgBouncycastleAsn1ASN1Integer:withOrgBouncycastleAsn1ASN1Primitive:withInt:withOrgBouncycastleAsn1ASN1Primitive:);
  methods[5].selector = @selector(buildSequence);
  methods[6].selector = @selector(encodedLengthWithBoolean:);
  methods[7].selector = @selector(encodeWithOrgBouncycastleAsn1ASN1OutputStream:withBoolean:);
  methods[8].selector = @selector(toDERObject);
  methods[9].selector = @selector(toDLObject);
  methods[10].selector = @selector(hash);
  methods[11].selector = @selector(encodeConstructed);
  methods[12].selector = @selector(asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:);
  methods[13].selector = @selector(getDataValueDescriptor);
  methods[14].selector = @selector(getDirectReference);
  methods[15].selector = @selector(getEncoding);
  methods[16].selector = @selector(getExternalContent);
  methods[17].selector = @selector(getIndirectReference);
  methods[18].selector = @selector(checkEncodingWithInt:);
  methods[19].selector = @selector(checkExternalContentWithInt:withOrgBouncycastleAsn1ASN1Primitive:);
  methods[20].selector = @selector(getExternalContentWithOrgBouncycastleAsn1ASN1TaggedObject:);
  methods[21].selector = @selector(getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE", "LOrgBouncycastleAsn1ASN1UniversalType;", .constantValue.asLong = 0, 0x18, -1, 22, -1, -1 },
    { "directReference_", "LOrgBouncycastleAsn1ASN1ObjectIdentifier;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "indirectReference_", "LOrgBouncycastleAsn1ASN1Integer;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "dataValueDescriptor_", "LOrgBouncycastleAsn1ASN1Primitive;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "encoding_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "externalContent_", "LOrgBouncycastleAsn1ASN1Primitive;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getInstance", "LNSObject;", "LOrgBouncycastleAsn1ASN1TaggedObject;Z", "LOrgBouncycastleAsn1ASN1Sequence;", "LOrgBouncycastleAsn1ASN1ObjectIdentifier;LOrgBouncycastleAsn1ASN1Integer;LOrgBouncycastleAsn1ASN1Primitive;LOrgBouncycastleAsn1DERTaggedObject;", "LOrgBouncycastleAsn1ASN1ObjectIdentifier;LOrgBouncycastleAsn1ASN1Integer;LOrgBouncycastleAsn1ASN1Primitive;ILOrgBouncycastleAsn1ASN1Primitive;", "encodedLength", "Z", "LJavaIoIOException;", "encode", "LOrgBouncycastleAsn1ASN1OutputStream;Z", "hashCode", "asn1Equals", "LOrgBouncycastleAsn1ASN1Primitive;", "checkEncoding", "I", "checkExternalContent", "ILOrgBouncycastleAsn1ASN1Primitive;", "getExternalContent", "LOrgBouncycastleAsn1ASN1TaggedObject;", "getObjFromSequence", "LOrgBouncycastleAsn1ASN1Sequence;I", &OrgBouncycastleAsn1ASN1External_TYPE };
  static const J2ObjcClassInfo _OrgBouncycastleAsn1ASN1External = { "ASN1External", "org.bouncycastle.asn1", ptrTable, methods, fields, 7, 0x401, 22, 6, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleAsn1ASN1External;
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1ASN1External class]) {
    OrgBouncycastleAsn1ASN1External_TYPE = new_OrgBouncycastleAsn1ASN1External_1_initWithIOSClass_withInt_(
#line 13
    OrgBouncycastleAsn1ASN1External_class_(), OrgBouncycastleAsn1BERTags_EXTERNAL);
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1ASN1External)
  }
}

@end


#line 23
OrgBouncycastleAsn1ASN1External *OrgBouncycastleAsn1ASN1External_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1ASN1External_initialize();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1ASN1External class]]) {
    
#line 27
    return (OrgBouncycastleAsn1ASN1External *) cast_chk(obj, [OrgBouncycastleAsn1ASN1External class]);
  }
  else if ([OrgBouncycastleAsn1ASN1Encodable_class_() isInstance:obj]) {
    
#line 31
    OrgBouncycastleAsn1ASN1Primitive *primitive = [((id<OrgBouncycastleAsn1ASN1Encodable>) cast_check(obj, OrgBouncycastleAsn1ASN1Encodable_class_())) toASN1Primitive];
    if ([primitive isKindOfClass:[OrgBouncycastleAsn1ASN1External class]]) {
      
#line 34
      return (OrgBouncycastleAsn1ASN1External *) primitive;
    }
  }
  else if ([obj isKindOfClass:[IOSByteArray class]]) {
    
#line 39
    @try {
      
#line 41
      return (OrgBouncycastleAsn1ASN1External *) cast_chk([((OrgBouncycastleAsn1ASN1UniversalType *) nil_chk(OrgBouncycastleAsn1ASN1External_TYPE)) fromByteArrayWithByteArray:(IOSByteArray *) cast_chk(obj, [IOSByteArray class])], [OrgBouncycastleAsn1ASN1External class]);
    }
    @catch (JavaIoIOException *e) {
      
#line 45
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"failed to construct external from byte[]: ", [e getMessage]));
    }
  }
  
#line 49
  @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"illegal object in getInstance: ", [[obj java_getClass] getName]));
}


#line 52
OrgBouncycastleAsn1ASN1External *OrgBouncycastleAsn1ASN1External_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *taggedObject, jboolean explicit_) {
  OrgBouncycastleAsn1ASN1External_initialize();
  return (OrgBouncycastleAsn1ASN1External *) cast_chk([((OrgBouncycastleAsn1ASN1UniversalType *) nil_chk(OrgBouncycastleAsn1ASN1External_TYPE)) getContextInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:taggedObject withBoolean:explicit_], [OrgBouncycastleAsn1ASN1External class]);
}


#line 64
void OrgBouncycastleAsn1ASN1External_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1ASN1External *self, OrgBouncycastleAsn1ASN1Sequence *sequence) {
  OrgBouncycastleAsn1ASN1Primitive_init(self);
  jint offset = 0;
  
#line 68
  OrgBouncycastleAsn1ASN1Primitive *asn1 = OrgBouncycastleAsn1ASN1External_getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence_withInt_(sequence, offset);
  if ([asn1 isKindOfClass:[OrgBouncycastleAsn1ASN1ObjectIdentifier class]]) {
    
#line 71
    self->directReference_ = (OrgBouncycastleAsn1ASN1ObjectIdentifier *) asn1;
    asn1 = OrgBouncycastleAsn1ASN1External_getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence_withInt_(sequence, ++offset);
  }
  if ([asn1 isKindOfClass:[OrgBouncycastleAsn1ASN1Integer class]]) {
    
#line 76
    self->indirectReference_ = (OrgBouncycastleAsn1ASN1Integer *) asn1;
    asn1 = OrgBouncycastleAsn1ASN1External_getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence_withInt_(sequence, ++offset);
  }
  if (!([asn1 isKindOfClass:[OrgBouncycastleAsn1ASN1TaggedObject class]])) {
    
#line 81
    self->dataValueDescriptor_ = asn1;
    asn1 = OrgBouncycastleAsn1ASN1External_getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence_withInt_(sequence, ++offset);
  }
  
#line 85
  if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(sequence)) size] != offset + 1) {
    
#line 87
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"input sequence too large");
  }
  
#line 90
  if (!([asn1 isKindOfClass:[OrgBouncycastleAsn1ASN1TaggedObject class]])) {
    
#line 92
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(
#line 93
    @"No tagged object found in sequence. Structure doesn't seem to be of type External");
  }
  
#line 96
  OrgBouncycastleAsn1ASN1TaggedObject *obj = (OrgBouncycastleAsn1ASN1TaggedObject *) cast_chk(asn1, [OrgBouncycastleAsn1ASN1TaggedObject class]);
  self->encoding_ = OrgBouncycastleAsn1ASN1External_checkEncodingWithInt_([((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(obj)) getTagNo]);
  self->externalContent_ = OrgBouncycastleAsn1ASN1External_getExternalContentWithOrgBouncycastleAsn1ASN1TaggedObject_(obj);
}


#line 101
void OrgBouncycastleAsn1ASN1External_initWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Primitive_withOrgBouncycastleAsn1DERTaggedObject_(OrgBouncycastleAsn1ASN1External *self, OrgBouncycastleAsn1ASN1ObjectIdentifier *directReference, OrgBouncycastleAsn1ASN1Integer *indirectReference, OrgBouncycastleAsn1ASN1Primitive *dataValueDescriptor, OrgBouncycastleAsn1DERTaggedObject *externalData) {
  OrgBouncycastleAsn1ASN1Primitive_init(self);
  
#line 104
  self->directReference_ = directReference;
  self->indirectReference_ = indirectReference;
  self->dataValueDescriptor_ = dataValueDescriptor;
  self->encoding_ = OrgBouncycastleAsn1ASN1External_checkEncodingWithInt_([((OrgBouncycastleAsn1DERTaggedObject *) nil_chk(externalData)) getTagNo]);
  self->externalContent_ = OrgBouncycastleAsn1ASN1External_getExternalContentWithOrgBouncycastleAsn1ASN1TaggedObject_(externalData);
}


#line 111
void OrgBouncycastleAsn1ASN1External_initWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Primitive_withInt_withOrgBouncycastleAsn1ASN1Primitive_(OrgBouncycastleAsn1ASN1External *self, OrgBouncycastleAsn1ASN1ObjectIdentifier *directReference, OrgBouncycastleAsn1ASN1Integer *indirectReference, OrgBouncycastleAsn1ASN1Primitive *dataValueDescriptor, jint encoding, OrgBouncycastleAsn1ASN1Primitive *externalData) {
  OrgBouncycastleAsn1ASN1Primitive_init(self);
  
#line 114
  self->directReference_ = directReference;
  self->indirectReference_ = indirectReference;
  self->dataValueDescriptor_ = dataValueDescriptor;
  self->encoding_ = OrgBouncycastleAsn1ASN1External_checkEncodingWithInt_(encoding);
  self->externalContent_ = OrgBouncycastleAsn1ASN1External_checkExternalContentWithInt_withOrgBouncycastleAsn1ASN1Primitive_(encoding, externalData);
}


#line 244
jint OrgBouncycastleAsn1ASN1External_checkEncodingWithInt_(jint encoding) {
  OrgBouncycastleAsn1ASN1External_initialize();
  if (encoding < 0 || encoding > 2) {
    
#line 248
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"invalid encoding value: ", encoding));
  }
  
#line 251
  return encoding;
}


#line 254
OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1ASN1External_checkExternalContentWithInt_withOrgBouncycastleAsn1ASN1Primitive_(jint tagNo, OrgBouncycastleAsn1ASN1Primitive *externalContent) {
  OrgBouncycastleAsn1ASN1External_initialize();
  switch (tagNo) {
    
#line 258
    case 1:
    return [((OrgBouncycastleAsn1ASN1UniversalType *) nil_chk(JreLoadStatic(OrgBouncycastleAsn1ASN1OctetString, TYPE))) checkedCastWithOrgBouncycastleAsn1ASN1Primitive:externalContent];
    case 2:
    return [((OrgBouncycastleAsn1ASN1UniversalType *) nil_chk(JreLoadStatic(OrgBouncycastleAsn1ASN1BitString, TYPE))) checkedCastWithOrgBouncycastleAsn1ASN1Primitive:externalContent];
    default:
    return externalContent;
  }
}


#line 267
OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1ASN1External_getExternalContentWithOrgBouncycastleAsn1ASN1TaggedObject_(OrgBouncycastleAsn1ASN1TaggedObject *encoding) {
  OrgBouncycastleAsn1ASN1External_initialize();
  jint tagClass = [((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(encoding)) getTagClass];
  
#line 269
  jint tagNo = [encoding getTagNo];
  if (OrgBouncycastleAsn1BERTags_CONTEXT_SPECIFIC != tagClass) {
    
#line 272
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"invalid tag: ", OrgBouncycastleAsn1ASN1Util_getTagTextWithInt_withInt_(tagClass, tagNo)));
  }
  
#line 275
  switch (tagNo) {
    
#line 277
    case 0:
    return [((OrgBouncycastleAsn1ASN1Object *) nil_chk([encoding getExplicitBaseObject])) toASN1Primitive];
    case 1:
    return OrgBouncycastleAsn1ASN1OctetString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(encoding, false);
    case 2:
    return OrgBouncycastleAsn1ASN1BitString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(encoding, false);
    default:
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"invalid tag: ", OrgBouncycastleAsn1ASN1Util_getTagTextWithInt_withInt_(tagClass, tagNo)));
  }
}


#line 288
OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1ASN1External_getObjFromSequenceWithOrgBouncycastleAsn1ASN1Sequence_withInt_(OrgBouncycastleAsn1ASN1Sequence *sequence, jint index) {
  OrgBouncycastleAsn1ASN1External_initialize();
  if ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(sequence)) size] <= index) {
    
#line 292
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"too few objects in input sequence");
  }
  
#line 295
  return [((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk([sequence getObjectAtWithInt:index])) toASN1Primitive];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1ASN1External)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/ASN1External.java"


#line 14
@implementation OrgBouncycastleAsn1ASN1External_1


#line 14
- (instancetype)initWithIOSClass:(IOSClass *)javaClass
                         withInt:(jint)tagNumber {
  OrgBouncycastleAsn1ASN1External_1_initWithIOSClass_withInt_(self, javaClass, tagNumber);
  return self;
}


#line 15
- (OrgBouncycastleAsn1ASN1Primitive *)fromImplicitConstructedWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)sequence {
  
#line 19
  return JreRetainedLocalValue([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(sequence)) toASN1External]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0x0, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithIOSClass:withInt:);
  methods[1].selector = @selector(fromImplicitConstructedWithOrgBouncycastleAsn1ASN1Sequence:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LIOSClass;I", "fromImplicitConstructed", "LOrgBouncycastleAsn1ASN1Sequence;", "LOrgBouncycastleAsn1ASN1External;" };
  static const J2ObjcClassInfo _OrgBouncycastleAsn1ASN1External_1 = { "", "org.bouncycastle.asn1", ptrTable, methods, NULL, 7, 0x8000, 2, 0, 3, -1, -1, -1, -1 };
  return &_OrgBouncycastleAsn1ASN1External_1;
}

@end


#line 14
void OrgBouncycastleAsn1ASN1External_1_initWithIOSClass_withInt_(OrgBouncycastleAsn1ASN1External_1 *self, IOSClass *javaClass, jint tagNumber) {
  OrgBouncycastleAsn1ASN1UniversalType_initPackagePrivateWithIOSClass_withInt_(self,
#line 14
  javaClass, tagNumber);
}


#line 14
OrgBouncycastleAsn1ASN1External_1 *new_OrgBouncycastleAsn1ASN1External_1_initWithIOSClass_withInt_(IOSClass *javaClass, jint tagNumber) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1ASN1External_1, initWithIOSClass_withInt_, javaClass, tagNumber)
}


#line 14
OrgBouncycastleAsn1ASN1External_1 *create_OrgBouncycastleAsn1ASN1External_1_initWithIOSClass_withInt_(IOSClass *javaClass, jint tagNumber) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1ASN1External_1, initWithIOSClass_withInt_, javaClass, tagNumber)
}
