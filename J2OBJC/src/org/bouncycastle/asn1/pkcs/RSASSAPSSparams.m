//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/pkcs/RSASSAPSSparams.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Object.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERNull.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/oiw/OIWObjectIdentifiers.h"
#include "org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers.h"
#include "org/bouncycastle/asn1/pkcs/RSASSAPSSparams.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/asn1/pkcs/RSASSAPSSparams must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleAsn1PkcsRSASSAPSSparams () {
 @public
  OrgBouncycastleAsn1X509AlgorithmIdentifier *hashAlgorithm_;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *maskGenAlgorithm_;
  OrgBouncycastleAsn1ASN1Integer *saltLength_;
  OrgBouncycastleAsn1ASN1Integer *trailerField_;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSASSAPSSparams, hashAlgorithm_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSASSAPSSparams, maskGenAlgorithm_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSASSAPSSparams, saltLength_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1PkcsRSASSAPSSparams, trailerField_, OrgBouncycastleAsn1ASN1Integer *)

__attribute__((unused)) static void OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1PkcsRSASSAPSSparams *self, OrgBouncycastleAsn1ASN1Sequence *seq);

__attribute__((unused)) static OrgBouncycastleAsn1PkcsRSASSAPSSparams *new_OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1ASN1Sequence *seq) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgBouncycastleAsn1PkcsRSASSAPSSparams *create_OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1ASN1Sequence *seq);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/pkcs/RSASSAPSSparams.java"

J2OBJC_INITIALIZED_DEFN(OrgBouncycastleAsn1PkcsRSASSAPSSparams)

OrgBouncycastleAsn1X509AlgorithmIdentifier *OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_HASH_ALGORITHM;
OrgBouncycastleAsn1X509AlgorithmIdentifier *OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_MASK_GEN_FUNCTION;
OrgBouncycastleAsn1ASN1Integer *OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_SALT_LENGTH;
OrgBouncycastleAsn1ASN1Integer *OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_TRAILER_FIELD;


#line 17
@implementation OrgBouncycastleAsn1PkcsRSASSAPSSparams


#line 30
+ (OrgBouncycastleAsn1PkcsRSASSAPSSparams *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1PkcsRSASSAPSSparams_getInstanceWithId_(obj);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 48
- (instancetype)init {
  OrgBouncycastleAsn1PkcsRSASSAPSSparams_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 56
- (instancetype)initWithOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)hashAlgorithm
                    withOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)maskGenAlgorithm
                                withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)saltLength
                                withOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)trailerField {
  OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Integer_(self, hashAlgorithm, maskGenAlgorithm, saltLength, trailerField);
  return self;
}


#line 68
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1ASN1Sequence_(self, seq);
  return self;
}


#line 100
- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getHashAlgorithm {
  
#line 102
  return hashAlgorithm_;
}


#line 105
- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getMaskGenAlgorithm {
  
#line 107
  return maskGenAlgorithm_;
}


#line 110
- (JavaMathBigInteger *)getSaltLength {
  
#line 112
  return [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(saltLength_)) getValue];
}


#line 115
- (JavaMathBigInteger *)getTrailerField {
  
#line 117
  return [((OrgBouncycastleAsn1ASN1Integer *) nil_chk(trailerField_)) getValue];
}


#line 146
- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  
#line 149
  OrgBouncycastleAsn1ASN1EncodableVector *v = new_OrgBouncycastleAsn1ASN1EncodableVector_initWithInt_(4);
  
#line 151
  if (![((OrgBouncycastleAsn1X509AlgorithmIdentifier *) nil_chk(hashAlgorithm_)) isEqual:OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_HASH_ALGORITHM]) {
    
#line 153
    [v addWithOrgBouncycastleAsn1ASN1Encodable:new_OrgBouncycastleAsn1DERTaggedObject_initWithBoolean_withInt_withOrgBouncycastleAsn1ASN1Encodable_(true, 0, hashAlgorithm_)];
  }
  
#line 156
  if (![((OrgBouncycastleAsn1X509AlgorithmIdentifier *) nil_chk(maskGenAlgorithm_)) isEqual:OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_MASK_GEN_FUNCTION]) {
    
#line 158
    [v addWithOrgBouncycastleAsn1ASN1Encodable:new_OrgBouncycastleAsn1DERTaggedObject_initWithBoolean_withInt_withOrgBouncycastleAsn1ASN1Encodable_(true, 1, maskGenAlgorithm_)];
  }
  
#line 161
  if (![((OrgBouncycastleAsn1ASN1Integer *) nil_chk(saltLength_)) equalsWithOrgBouncycastleAsn1ASN1Primitive:OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_SALT_LENGTH]) {
    
#line 163
    [v addWithOrgBouncycastleAsn1ASN1Encodable:new_OrgBouncycastleAsn1DERTaggedObject_initWithBoolean_withInt_withOrgBouncycastleAsn1ASN1Encodable_(true, 2, saltLength_)];
  }
  
#line 166
  if (![((OrgBouncycastleAsn1ASN1Integer *) nil_chk(trailerField_)) equalsWithOrgBouncycastleAsn1ASN1Primitive:OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_TRAILER_FIELD]) {
    
#line 168
    [v addWithOrgBouncycastleAsn1ASN1Encodable:new_OrgBouncycastleAsn1DERTaggedObject_initWithBoolean_withInt_withOrgBouncycastleAsn1ASN1Encodable_(true, 3, trailerField_)];
  }
  
#line 171
  return new_OrgBouncycastleAsn1DERSequence_initWithOrgBouncycastleAsn1ASN1EncodableVector_(v);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgBouncycastleAsn1PkcsRSASSAPSSparams;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 3, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1X509AlgorithmIdentifier;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1X509AlgorithmIdentifier;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Primitive;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getInstanceWithId:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithOrgBouncycastleAsn1X509AlgorithmIdentifier:withOrgBouncycastleAsn1X509AlgorithmIdentifier:withOrgBouncycastleAsn1ASN1Integer:withOrgBouncycastleAsn1ASN1Integer:);
  methods[3].selector = @selector(initWithOrgBouncycastleAsn1ASN1Sequence:);
  methods[4].selector = @selector(getHashAlgorithm);
  methods[5].selector = @selector(getMaskGenAlgorithm);
  methods[6].selector = @selector(getSaltLength);
  methods[7].selector = @selector(getTrailerField);
  methods[8].selector = @selector(toASN1Primitive);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "hashAlgorithm_", "LOrgBouncycastleAsn1X509AlgorithmIdentifier;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "maskGenAlgorithm_", "LOrgBouncycastleAsn1X509AlgorithmIdentifier;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "saltLength_", "LOrgBouncycastleAsn1ASN1Integer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "trailerField_", "LOrgBouncycastleAsn1ASN1Integer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "DEFAULT_HASH_ALGORITHM", "LOrgBouncycastleAsn1X509AlgorithmIdentifier;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "DEFAULT_MASK_GEN_FUNCTION", "LOrgBouncycastleAsn1X509AlgorithmIdentifier;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "DEFAULT_SALT_LENGTH", "LOrgBouncycastleAsn1ASN1Integer;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
    { "DEFAULT_TRAILER_FIELD", "LOrgBouncycastleAsn1ASN1Integer;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { "getInstance", "LNSObject;", "LOrgBouncycastleAsn1X509AlgorithmIdentifier;LOrgBouncycastleAsn1X509AlgorithmIdentifier;LOrgBouncycastleAsn1ASN1Integer;LOrgBouncycastleAsn1ASN1Integer;", "LOrgBouncycastleAsn1ASN1Sequence;", &OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_HASH_ALGORITHM, &OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_MASK_GEN_FUNCTION, &OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_SALT_LENGTH, &OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_TRAILER_FIELD };
  static const J2ObjcClassInfo _OrgBouncycastleAsn1PkcsRSASSAPSSparams = { "RSASSAPSSparams", "org.bouncycastle.asn1.pkcs", ptrTable, methods, fields, 7, 0x1, 9, 8, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleAsn1PkcsRSASSAPSSparams;
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1PkcsRSASSAPSSparams class]) {
    OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_HASH_ALGORITHM = new_OrgBouncycastleAsn1X509AlgorithmIdentifier_initWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastleAsn1ASN1Encodable_(JreLoadStatic(OrgBouncycastleAsn1OiwOIWObjectIdentifiers, idSHA1), JreLoadStatic(OrgBouncycastleAsn1DERNull, INSTANCE));
    OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_MASK_GEN_FUNCTION = new_OrgBouncycastleAsn1X509AlgorithmIdentifier_initWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastleAsn1ASN1Encodable_(JreLoadStatic(OrgBouncycastleAsn1PkcsPKCSObjectIdentifiers, id_mgf1),
#line 26
    OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_HASH_ALGORITHM);
    OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_SALT_LENGTH = new_OrgBouncycastleAsn1ASN1Integer_initWithLong_(
#line 27
    20);
    OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_TRAILER_FIELD = new_OrgBouncycastleAsn1ASN1Integer_initWithLong_(
#line 28
    1);
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1PkcsRSASSAPSSparams)
  }
}

@end


#line 30
OrgBouncycastleAsn1PkcsRSASSAPSSparams *OrgBouncycastleAsn1PkcsRSASSAPSSparams_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1PkcsRSASSAPSSparams_initialize();
  
#line 33
  if ([obj isKindOfClass:[OrgBouncycastleAsn1PkcsRSASSAPSSparams class]]) {
    
#line 35
    return (OrgBouncycastleAsn1PkcsRSASSAPSSparams *) obj;
  }
  else if (obj != nil) {
    
#line 39
    return new_OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj));
  }
  
#line 42
  return nil;
}


#line 48
void OrgBouncycastleAsn1PkcsRSASSAPSSparams_init(OrgBouncycastleAsn1PkcsRSASSAPSSparams *self) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  self->hashAlgorithm_ = OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_HASH_ALGORITHM;
  self->maskGenAlgorithm_ = OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_MASK_GEN_FUNCTION;
  self->saltLength_ = OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_SALT_LENGTH;
  self->trailerField_ = OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_TRAILER_FIELD;
}


#line 48
OrgBouncycastleAsn1PkcsRSASSAPSSparams *new_OrgBouncycastleAsn1PkcsRSASSAPSSparams_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1PkcsRSASSAPSSparams, init)
}


#line 48
OrgBouncycastleAsn1PkcsRSASSAPSSparams *create_OrgBouncycastleAsn1PkcsRSASSAPSSparams_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1PkcsRSASSAPSSparams, init)
}


#line 56
void OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Integer_(OrgBouncycastleAsn1PkcsRSASSAPSSparams *self, OrgBouncycastleAsn1X509AlgorithmIdentifier *hashAlgorithm, OrgBouncycastleAsn1X509AlgorithmIdentifier *maskGenAlgorithm, OrgBouncycastleAsn1ASN1Integer *saltLength, OrgBouncycastleAsn1ASN1Integer *trailerField) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  
#line 62
  self->hashAlgorithm_ = hashAlgorithm;
  self->maskGenAlgorithm_ = maskGenAlgorithm;
  self->saltLength_ = saltLength;
  self->trailerField_ = trailerField;
}


#line 56
OrgBouncycastleAsn1PkcsRSASSAPSSparams *new_OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Integer_(OrgBouncycastleAsn1X509AlgorithmIdentifier *hashAlgorithm, OrgBouncycastleAsn1X509AlgorithmIdentifier *maskGenAlgorithm, OrgBouncycastleAsn1ASN1Integer *saltLength, OrgBouncycastleAsn1ASN1Integer *trailerField) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1PkcsRSASSAPSSparams, initWithOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Integer_, hashAlgorithm, maskGenAlgorithm, saltLength, trailerField)
}


#line 56
OrgBouncycastleAsn1PkcsRSASSAPSSparams *create_OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Integer_(OrgBouncycastleAsn1X509AlgorithmIdentifier *hashAlgorithm, OrgBouncycastleAsn1X509AlgorithmIdentifier *maskGenAlgorithm, OrgBouncycastleAsn1ASN1Integer *saltLength, OrgBouncycastleAsn1ASN1Integer *trailerField) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1PkcsRSASSAPSSparams, initWithOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1X509AlgorithmIdentifier_withOrgBouncycastleAsn1ASN1Integer_withOrgBouncycastleAsn1ASN1Integer_, hashAlgorithm, maskGenAlgorithm, saltLength, trailerField)
}


#line 68
void OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1PkcsRSASSAPSSparams *self, OrgBouncycastleAsn1ASN1Sequence *seq) {
  OrgBouncycastleAsn1ASN1Object_init(self);
  
#line 71
  self->hashAlgorithm_ = OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_HASH_ALGORITHM;
  self->maskGenAlgorithm_ = OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_MASK_GEN_FUNCTION;
  self->saltLength_ = OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_SALT_LENGTH;
  self->trailerField_ = OrgBouncycastleAsn1PkcsRSASSAPSSparams_DEFAULT_TRAILER_FIELD;
  
#line 76
  for (jint i = 0; i != [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size]; i++) {
    
#line 78
    OrgBouncycastleAsn1ASN1TaggedObject *o = (OrgBouncycastleAsn1ASN1TaggedObject *) cast_chk([seq getObjectAtWithInt:i], [OrgBouncycastleAsn1ASN1TaggedObject class]);
    
#line 80
    switch ([((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(o)) getTagNo]) {
      
#line 82
      case 0:
      self->hashAlgorithm_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, true);
      break;
      case 1:
      self->maskGenAlgorithm_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, true);
      break;
      case 2:
      self->saltLength_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, true);
      break;
      case 3:
      self->trailerField_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(o, true);
      break;
      default:
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"unknown tag");
    }
  }
}


#line 68
OrgBouncycastleAsn1PkcsRSASSAPSSparams *new_OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1ASN1Sequence *seq) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1PkcsRSASSAPSSparams, initWithOrgBouncycastleAsn1ASN1Sequence_, seq)
}


#line 68
OrgBouncycastleAsn1PkcsRSASSAPSSparams *create_OrgBouncycastleAsn1PkcsRSASSAPSSparams_initWithOrgBouncycastleAsn1ASN1Sequence_(OrgBouncycastleAsn1ASN1Sequence *seq) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1PkcsRSASSAPSSparams, initWithOrgBouncycastleAsn1ASN1Sequence_, seq)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1PkcsRSASSAPSSparams)
