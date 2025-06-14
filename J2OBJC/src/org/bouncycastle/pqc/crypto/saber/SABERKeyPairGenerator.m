//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/security/SecureRandom.h"
#include "org/bouncycastle/crypto/AsymmetricCipherKeyPair.h"
#include "org/bouncycastle/crypto/KeyGenerationParameters.h"
#include "org/bouncycastle/pqc/crypto/saber/SABEREngine.h"
#include "org/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters.h"
#include "org/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator.h"
#include "org/bouncycastle/pqc/crypto/saber/SABERParameters.h"
#include "org/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters.h"
#include "org/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator () {
 @public
  OrgBouncycastlePqcCryptoSaberSABERKeyGenerationParameters *saberParams_;
  jint l_;
  JavaSecuritySecureRandom *random_;
}

- (void)initialize__WithOrgBouncycastleCryptoKeyGenerationParameters:(OrgBouncycastleCryptoKeyGenerationParameters *)param OBJC_METHOD_FAMILY_NONE;

- (OrgBouncycastleCryptoAsymmetricCipherKeyPair *)genKeyPair;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator, saberParams_, OrgBouncycastlePqcCryptoSaberSABERKeyGenerationParameters *)
J2OBJC_FIELD_SETTER(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator, random_, JavaSecuritySecureRandom *)

__attribute__((unused)) static void OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_initialize__WithOrgBouncycastleCryptoKeyGenerationParameters_(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator *self, OrgBouncycastleCryptoKeyGenerationParameters *param);

__attribute__((unused)) static OrgBouncycastleCryptoAsymmetricCipherKeyPair *OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_genKeyPair(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator *self);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator.java"


#line 9
@implementation OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 9
- (instancetype)init {
  OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 18
- (void)initialize__WithOrgBouncycastleCryptoKeyGenerationParameters:(OrgBouncycastleCryptoKeyGenerationParameters *)param {
  OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_initialize__WithOrgBouncycastleCryptoKeyGenerationParameters_(self, param);
}


#line 27
- (OrgBouncycastleCryptoAsymmetricCipherKeyPair *)genKeyPair {
  return OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_genKeyPair(self);
}


#line 39
- (void)init__WithOrgBouncycastleCryptoKeyGenerationParameters:(OrgBouncycastleCryptoKeyGenerationParameters *)param {
  
#line 42
  OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_initialize__WithOrgBouncycastleCryptoKeyGenerationParameters_(self, param);
}

- (OrgBouncycastleCryptoAsymmetricCipherKeyPair *)generateKeyPair {
  
#line 48
  return OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_genKeyPair(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleCryptoAsymmetricCipherKeyPair;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleCryptoAsymmetricCipherKeyPair;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initialize__WithOrgBouncycastleCryptoKeyGenerationParameters:);
  methods[2].selector = @selector(genKeyPair);
  methods[3].selector = @selector(init__WithOrgBouncycastleCryptoKeyGenerationParameters:);
  methods[4].selector = @selector(generateKeyPair);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "saberParams_", "LOrgBouncycastlePqcCryptoSaberSABERKeyGenerationParameters;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "l_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "random_", "LJavaSecuritySecureRandom;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "initialize", "LOrgBouncycastleCryptoKeyGenerationParameters;", "init" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator = { "SABERKeyPairGenerator", "org.bouncycastle.pqc.crypto.saber", ptrTable, methods, fields, 7, 0x1, 5, 3, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator;
}

@end


#line 9
void OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_init(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator *self) {
  NSObject_init(self);
}


#line 9
OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator *new_OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator, init)
}


#line 9
OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator *create_OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator, init)
}


#line 18
void OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_initialize__WithOrgBouncycastleCryptoKeyGenerationParameters_(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator *self, OrgBouncycastleCryptoKeyGenerationParameters *param) {
  
#line 21
  self->saberParams_ = (OrgBouncycastlePqcCryptoSaberSABERKeyGenerationParameters *) cast_chk(param, [OrgBouncycastlePqcCryptoSaberSABERKeyGenerationParameters class]);
  self->random_ = [((OrgBouncycastleCryptoKeyGenerationParameters *) nil_chk(param)) getRandom];
  
#line 24
  self->l_ = [((OrgBouncycastlePqcCryptoSaberSABERParameters *) nil_chk([((OrgBouncycastlePqcCryptoSaberSABERKeyGenerationParameters *) nil_chk(self->saberParams_)) getParameters])) getL];
}


#line 27
OrgBouncycastleCryptoAsymmetricCipherKeyPair *OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator_genKeyPair(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator *self) {
  
#line 29
  OrgBouncycastlePqcCryptoSaberSABEREngine *engine = [((OrgBouncycastlePqcCryptoSaberSABERParameters *) nil_chk([((OrgBouncycastlePqcCryptoSaberSABERKeyGenerationParameters *) nil_chk(self->saberParams_)) getParameters])) getEngine];
  IOSByteArray *sk = [IOSByteArray newArrayWithLength:[((OrgBouncycastlePqcCryptoSaberSABEREngine *) nil_chk(engine)) getPrivateKeySize]];
  IOSByteArray *pk = [IOSByteArray newArrayWithLength:[engine getPublicKeySize]];
  [engine crypto_kem_keypairWithByteArray:pk withByteArray:sk withJavaSecuritySecureRandom:self->random_];
  
#line 34
  OrgBouncycastlePqcCryptoSaberSABERPublicKeyParameters *pubKey = new_OrgBouncycastlePqcCryptoSaberSABERPublicKeyParameters_initWithOrgBouncycastlePqcCryptoSaberSABERParameters_withByteArray_([((OrgBouncycastlePqcCryptoSaberSABERKeyGenerationParameters *) nil_chk(self->saberParams_)) getParameters], pk);
  OrgBouncycastlePqcCryptoSaberSABERPrivateKeyParameters *privKey = new_OrgBouncycastlePqcCryptoSaberSABERPrivateKeyParameters_initWithOrgBouncycastlePqcCryptoSaberSABERParameters_withByteArray_([((OrgBouncycastlePqcCryptoSaberSABERKeyGenerationParameters *) nil_chk(self->saberParams_)) getParameters], sk);
  return new_OrgBouncycastleCryptoAsymmetricCipherKeyPair_initWithOrgBouncycastleCryptoParamsAsymmetricKeyParameter_withOrgBouncycastleCryptoParamsAsymmetricKeyParameter_(pubKey, privKey);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcCryptoSaberSABERKeyPairGenerator)
