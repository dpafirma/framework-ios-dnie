//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/saber/SABERKEMExtractor.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/pqc/crypto/saber/SABEREngine.h"
#include "org/bouncycastle/pqc/crypto/saber/SABERKEMExtractor.h"
#include "org/bouncycastle/pqc/crypto/saber/SABERKeyParameters.h"
#include "org/bouncycastle/pqc/crypto/saber/SABERParameters.h"
#include "org/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/crypto/saber/SABERKEMExtractor must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastlePqcCryptoSaberSABERKEMExtractor () {
 @public
  OrgBouncycastlePqcCryptoSaberSABEREngine *engine_;
  OrgBouncycastlePqcCryptoSaberSABERKeyParameters *key_;
}

- (void)initCipherWithOrgBouncycastlePqcCryptoSaberSABERParameters:(OrgBouncycastlePqcCryptoSaberSABERParameters *)param OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastlePqcCryptoSaberSABERKEMExtractor, engine_, OrgBouncycastlePqcCryptoSaberSABEREngine *)
J2OBJC_FIELD_SETTER(OrgBouncycastlePqcCryptoSaberSABERKEMExtractor, key_, OrgBouncycastlePqcCryptoSaberSABERKeyParameters *)

__attribute__((unused)) static void OrgBouncycastlePqcCryptoSaberSABERKEMExtractor_initCipherWithOrgBouncycastlePqcCryptoSaberSABERParameters_(OrgBouncycastlePqcCryptoSaberSABERKEMExtractor *self, OrgBouncycastlePqcCryptoSaberSABERParameters *param);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/saber/SABERKEMExtractor.java"


#line 5
@implementation OrgBouncycastlePqcCryptoSaberSABERKEMExtractor


#line 12
- (instancetype)initWithOrgBouncycastlePqcCryptoSaberSABERKeyParameters:(OrgBouncycastlePqcCryptoSaberSABERKeyParameters *)privParams {
  OrgBouncycastlePqcCryptoSaberSABERKEMExtractor_initWithOrgBouncycastlePqcCryptoSaberSABERKeyParameters_(self, privParams);
  return self;
}

- (void)initCipherWithOrgBouncycastlePqcCryptoSaberSABERParameters:(OrgBouncycastlePqcCryptoSaberSABERParameters *)param {
  OrgBouncycastlePqcCryptoSaberSABERKEMExtractor_initCipherWithOrgBouncycastlePqcCryptoSaberSABERParameters_(self, param);
}


#line 22
- (IOSByteArray *)extractSecretWithByteArray:(IOSByteArray *)encapsulation {
  
#line 25
  IOSByteArray *session_key = [IOSByteArray newArrayWithLength:[((OrgBouncycastlePqcCryptoSaberSABEREngine *) nil_chk(engine_)) getSessionKeySize]];
  [((OrgBouncycastlePqcCryptoSaberSABEREngine *) nil_chk(engine_)) crypto_kem_decWithByteArray:session_key withByteArray:encapsulation withByteArray:[((OrgBouncycastlePqcCryptoSaberSABERPrivateKeyParameters *) nil_chk(((OrgBouncycastlePqcCryptoSaberSABERPrivateKeyParameters *) cast_chk(key_, [OrgBouncycastlePqcCryptoSaberSABERPrivateKeyParameters class])))) getPrivateKey]];
  return session_key;
}


#line 29
- (jint)getInputSize {
  
#line 31
  return [((OrgBouncycastlePqcCryptoSaberSABEREngine *) nil_chk(engine_)) getCipherTextSize];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 1, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgBouncycastlePqcCryptoSaberSABERKeyParameters:);
  methods[1].selector = @selector(initCipherWithOrgBouncycastlePqcCryptoSaberSABERParameters:);
  methods[2].selector = @selector(extractSecretWithByteArray:);
  methods[3].selector = @selector(getInputSize);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "engine_", "LOrgBouncycastlePqcCryptoSaberSABEREngine;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "key_", "LOrgBouncycastlePqcCryptoSaberSABERKeyParameters;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgBouncycastlePqcCryptoSaberSABERKeyParameters;", "initCipher", "LOrgBouncycastlePqcCryptoSaberSABERParameters;", "extractSecret", "[B" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcCryptoSaberSABERKEMExtractor = { "SABERKEMExtractor", "org.bouncycastle.pqc.crypto.saber", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcCryptoSaberSABERKEMExtractor;
}

@end


#line 12
void OrgBouncycastlePqcCryptoSaberSABERKEMExtractor_initWithOrgBouncycastlePqcCryptoSaberSABERKeyParameters_(OrgBouncycastlePqcCryptoSaberSABERKEMExtractor *self, OrgBouncycastlePqcCryptoSaberSABERKeyParameters *privParams) {
  NSObject_init(self);
  self->key_ = privParams;
  OrgBouncycastlePqcCryptoSaberSABERKEMExtractor_initCipherWithOrgBouncycastlePqcCryptoSaberSABERParameters_(self, [((OrgBouncycastlePqcCryptoSaberSABERKeyParameters *) nil_chk(self->key_)) getParameters]);
}


#line 12
OrgBouncycastlePqcCryptoSaberSABERKEMExtractor *new_OrgBouncycastlePqcCryptoSaberSABERKEMExtractor_initWithOrgBouncycastlePqcCryptoSaberSABERKeyParameters_(OrgBouncycastlePqcCryptoSaberSABERKeyParameters *privParams) {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcCryptoSaberSABERKEMExtractor, initWithOrgBouncycastlePqcCryptoSaberSABERKeyParameters_, privParams)
}


#line 12
OrgBouncycastlePqcCryptoSaberSABERKEMExtractor *create_OrgBouncycastlePqcCryptoSaberSABERKEMExtractor_initWithOrgBouncycastlePqcCryptoSaberSABERKeyParameters_(OrgBouncycastlePqcCryptoSaberSABERKeyParameters *privParams) {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcCryptoSaberSABERKEMExtractor, initWithOrgBouncycastlePqcCryptoSaberSABERKeyParameters_, privParams)
}


#line 17
void OrgBouncycastlePqcCryptoSaberSABERKEMExtractor_initCipherWithOrgBouncycastlePqcCryptoSaberSABERParameters_(OrgBouncycastlePqcCryptoSaberSABERKEMExtractor *self, OrgBouncycastlePqcCryptoSaberSABERParameters *param) {
  
#line 19
  self->engine_ = [((OrgBouncycastlePqcCryptoSaberSABERParameters *) nil_chk(param)) getEngine];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcCryptoSaberSABERKEMExtractor)
