//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/jcajce/provider/sphincs/SignatureSpi.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Exception.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/security/InvalidKeyException.h"
#include "java/security/PrivateKey.h"
#include "java/security/PublicKey.h"
#include "java/security/SecureRandom.h"
#include "java/security/SignatureException.h"
#include "java/security/SignatureSpi.h"
#include "java/security/spec/AlgorithmParameterSpec.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/nist/NISTObjectIdentifiers.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/Digest.h"
#include "org/bouncycastle/crypto/digests/SHA3Digest.h"
#include "org/bouncycastle/crypto/digests/SHA512Digest.h"
#include "org/bouncycastle/crypto/digests/SHA512tDigest.h"
#include "org/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer.h"
#include "org/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey.h"
#include "org/bouncycastle/pqc/jcajce/provider/sphincs/BCSphincs256PublicKey.h"
#include "org/bouncycastle/pqc/jcajce/provider/sphincs/SignatureSpi.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/jcajce/provider/sphincs/SignatureSpi must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi () {
 @public
  OrgBouncycastleAsn1ASN1ObjectIdentifier *treeDigest_;
  id<OrgBouncycastleCryptoDigest> digest_;
  OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *signer_;
  JavaSecuritySecureRandom *random_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi, treeDigest_, OrgBouncycastleAsn1ASN1ObjectIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi, digest_, id<OrgBouncycastleCryptoDigest>)
J2OBJC_FIELD_SETTER(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi, signer_, OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *)
J2OBJC_FIELD_SETTER(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi, random_, JavaSecuritySecureRandom *)

__attribute__((unused)) static IOSObjectArray *OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi__Annotations$1(void);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/jcajce/provider/sphincs/SignatureSpi.java"


#line 19
@implementation OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi


#line 27
- (instancetype)initWithOrgBouncycastleCryptoDigest:(id<OrgBouncycastleCryptoDigest>)digest
        withOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)treeDigest
withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer:(OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *)signer {
  OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_(self, digest, treeDigest, signer);
  return self;
}

- (void)engineInitVerifyWithJavaSecurityPublicKey:(id<JavaSecurityPublicKey>)publicKey {
  
#line 38
  if ([publicKey isKindOfClass:[OrgBouncycastlePqcJcajceProviderSphincsBCSphincs256PublicKey class]]) {
    
#line 40
    OrgBouncycastlePqcJcajceProviderSphincsBCSphincs256PublicKey *key = (OrgBouncycastlePqcJcajceProviderSphincsBCSphincs256PublicKey *) publicKey;
    if (![((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(treeDigest_)) equalsWithOrgBouncycastleAsn1ASN1Primitive:[((OrgBouncycastlePqcJcajceProviderSphincsBCSphincs256PublicKey *) nil_chk(key)) getTreeDigest]]) {
      
#line 43
      @throw new_JavaSecurityInvalidKeyException_initWithNSString_(JreStrcat("$@", @"SPHINCS-256 signature for tree digest: ", [key getTreeDigest]));
    }
    id<OrgBouncycastleCryptoCipherParameters> param = [key getKeyParams];
    
#line 47
    [((id<OrgBouncycastleCryptoDigest>) nil_chk(digest_)) reset];
    [((OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *) nil_chk(signer_)) init__WithBoolean:false withOrgBouncycastleCryptoCipherParameters:param];
  }
  else {
    
#line 52
    @throw new_JavaSecurityInvalidKeyException_initWithNSString_(@"unknown public key passed to SPHINCS-256");
  }
}


#line 56
- (void)engineInitSignWithJavaSecurityPrivateKey:(id<JavaSecurityPrivateKey>)privateKey
                    withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random {
  
#line 60
  self->random_ = random;
  [self engineInitSignWithJavaSecurityPrivateKey:privateKey];
}

- (void)engineInitSignWithJavaSecurityPrivateKey:(id<JavaSecurityPrivateKey>)privateKey {
  
#line 68
  if ([privateKey isKindOfClass:[OrgBouncycastlePqcJcajceProviderSphincsBCSphincs256PrivateKey class]]) {
    
#line 70
    OrgBouncycastlePqcJcajceProviderSphincsBCSphincs256PrivateKey *key = (OrgBouncycastlePqcJcajceProviderSphincsBCSphincs256PrivateKey *) privateKey;
    if (![((OrgBouncycastleAsn1ASN1ObjectIdentifier *) nil_chk(treeDigest_)) equalsWithOrgBouncycastleAsn1ASN1Primitive:[((OrgBouncycastlePqcJcajceProviderSphincsBCSphincs256PrivateKey *) nil_chk(key)) getTreeDigest]]) {
      
#line 73
      @throw new_JavaSecurityInvalidKeyException_initWithNSString_(JreStrcat("$@", @"SPHINCS-256 signature for tree digest: ", [key getTreeDigest]));
    }
    
#line 76
    id<OrgBouncycastleCryptoCipherParameters> param = [key getKeyParams];
    
#line 84
    [((id<OrgBouncycastleCryptoDigest>) nil_chk(digest_)) reset];
    [((OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *) nil_chk(signer_)) init__WithBoolean:true withOrgBouncycastleCryptoCipherParameters:param];
  }
  else {
    
#line 89
    @throw new_JavaSecurityInvalidKeyException_initWithNSString_(@"unknown private key passed to SPHINCS-256");
  }
}


#line 93
- (void)engineUpdateWithByte:(jbyte)b {
  
#line 97
  [((id<OrgBouncycastleCryptoDigest>) nil_chk(digest_)) updateWithByte:b];
}


#line 100
- (void)engineUpdateWithByteArray:(IOSByteArray *)b
                          withInt:(jint)off
                          withInt:(jint)len {
  
#line 104
  [((id<OrgBouncycastleCryptoDigest>) nil_chk(digest_)) updateWithByteArray:b withInt:off withInt:len];
}


#line 107
- (IOSByteArray *)engineSign {
  
#line 111
  IOSByteArray *hash_ = [IOSByteArray newArrayWithLength:[((id<OrgBouncycastleCryptoDigest>) nil_chk(digest_)) getDigestSize]];
  [((id<OrgBouncycastleCryptoDigest>) nil_chk(digest_)) doFinalWithByteArray:hash_ withInt:0];
  @try {
    
#line 115
    IOSByteArray *sig = [((OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *) nil_chk(signer_)) generateSignatureWithByteArray:hash_];
    
#line 117
    return sig;
  }
  @catch (JavaLangException *e) {
    
#line 121
    @throw new_JavaSecuritySignatureException_initWithNSString_([e description]);
  }
}


#line 125
- (jboolean)engineVerifyWithByteArray:(IOSByteArray *)sigBytes {
  
#line 129
  IOSByteArray *hash_ = [IOSByteArray newArrayWithLength:[((id<OrgBouncycastleCryptoDigest>) nil_chk(digest_)) getDigestSize]];
  [((id<OrgBouncycastleCryptoDigest>) nil_chk(digest_)) doFinalWithByteArray:hash_ withInt:0];
  
#line 132
  return [((OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *) nil_chk(signer_)) verifySignatureWithByteArray:hash_ withByteArray:sigBytes];
}

- (void)engineSetParameterWithJavaSecuritySpecAlgorithmParameterSpec:(id<JavaSecuritySpecAlgorithmParameterSpec>)params {
  
#line 139
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_(@"engineSetParameter unsupported");
}


#line 145
- (void)engineSetParameterWithNSString:(NSString *)param
                                withId:(id)value {
  
#line 149
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_(@"engineSetParameter unsupported");
}


#line 155
- (id)engineGetParameterWithNSString:(NSString *)param {
  
#line 159
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_(@"engineSetParameter unsupported");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 6, 3, -1, -1, -1 },
    { NULL, "V", 0x4, 7, 8, 9, -1, -1, -1 },
    { NULL, "V", 0x4, 7, 10, 9, -1, -1, -1 },
    { NULL, "[B", 0x4, -1, -1, 9, -1, -1, -1 },
    { NULL, "Z", 0x4, 11, 12, 9, -1, -1, -1 },
    { NULL, "V", 0x4, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 13, 15, -1, -1, 16, -1 },
    { NULL, "LNSObject;", 0x4, 17, 18, -1, -1, 19, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgBouncycastleCryptoDigest:withOrgBouncycastleAsn1ASN1ObjectIdentifier:withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer:);
  methods[1].selector = @selector(engineInitVerifyWithJavaSecurityPublicKey:);
  methods[2].selector = @selector(engineInitSignWithJavaSecurityPrivateKey:withJavaSecuritySecureRandom:);
  methods[3].selector = @selector(engineInitSignWithJavaSecurityPrivateKey:);
  methods[4].selector = @selector(engineUpdateWithByte:);
  methods[5].selector = @selector(engineUpdateWithByteArray:withInt:withInt:);
  methods[6].selector = @selector(engineSign);
  methods[7].selector = @selector(engineVerifyWithByteArray:);
  methods[8].selector = @selector(engineSetParameterWithJavaSecuritySpecAlgorithmParameterSpec:);
  methods[9].selector = @selector(engineSetParameterWithNSString:withId:);
  methods[10].selector = @selector(engineGetParameterWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "treeDigest_", "LOrgBouncycastleAsn1ASN1ObjectIdentifier;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "digest_", "LOrgBouncycastleCryptoDigest;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "signer_", "LOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "random_", "LJavaSecuritySecureRandom;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgBouncycastleCryptoDigest;LOrgBouncycastleAsn1ASN1ObjectIdentifier;LOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer;", "engineInitVerify", "LJavaSecurityPublicKey;", "LJavaSecurityInvalidKeyException;", "engineInitSign", "LJavaSecurityPrivateKey;LJavaSecuritySecureRandom;", "LJavaSecurityPrivateKey;", "engineUpdate", "B", "LJavaSecuritySignatureException;", "[BII", "engineVerify", "[B", "engineSetParameter", "LJavaSecuritySpecAlgorithmParameterSpec;", "LNSString;LNSObject;", (void *)&OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi__Annotations$0, "engineGetParameter", "LNSString;", (void *)&OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi__Annotations$1, "LOrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512;LOrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512;" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi = { "SignatureSpi", "org.bouncycastle.pqc.jcajce.provider.sphincs", ptrTable, methods, fields, 7, 0x1, 11, 4, -1, 20, -1, -1, -1 };
  return &_OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi;
}

@end


#line 27
void OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi *self, id<OrgBouncycastleCryptoDigest> digest, OrgBouncycastleAsn1ASN1ObjectIdentifier *treeDigest, OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *signer) {
  JavaSecuritySignatureSpi_init(self);
  self->digest_ = digest;
  self->treeDigest_ = treeDigest;
  self->signer_ = signer;
}


#line 27
OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi *new_OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_(id<OrgBouncycastleCryptoDigest> digest, OrgBouncycastleAsn1ASN1ObjectIdentifier *treeDigest, OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *signer) {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi, initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_, digest, treeDigest, signer)
}


#line 27
OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi *create_OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_(id<OrgBouncycastleCryptoDigest> digest, OrgBouncycastleAsn1ASN1ObjectIdentifier *treeDigest, OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer *signer) {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi, initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_, digest, treeDigest, signer)
}

IOSObjectArray *OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/jcajce/provider/sphincs/SignatureSpi.java"


#line 162
@implementation OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgBouncycastlePqcJcajceProviderSphincsSignatureSpi;" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512 = { "withSha512", "org.bouncycastle.pqc.jcajce.provider.sphincs", ptrTable, methods, NULL, 7, 0x9, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512;
}

@end


#line 165
void OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512_init(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512 *self) {
  OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_(self, new_OrgBouncycastleCryptoDigestsSHA512Digest_init(), JreLoadStatic(OrgBouncycastleAsn1NistNISTObjectIdentifiers, id_sha512_256), new_OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleCryptoDigest_(new_OrgBouncycastleCryptoDigestsSHA512tDigest_initWithInt_(
#line 167
  256), new_OrgBouncycastleCryptoDigestsSHA512Digest_init()));
}


#line 165
OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512 *new_OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512, init)
}


#line 165
OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512 *create_OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha512)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/jcajce/provider/sphincs/SignatureSpi.java"


#line 171
@implementation OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgBouncycastlePqcJcajceProviderSphincsSignatureSpi;" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512 = { "withSha3_512", "org.bouncycastle.pqc.jcajce.provider.sphincs", ptrTable, methods, NULL, 7, 0x9, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512;
}

@end


#line 174
void OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512_init(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512 *self) {
  OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleAsn1ASN1ObjectIdentifier_withOrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_(self, new_OrgBouncycastleCryptoDigestsSHA3Digest_initWithInt_(
#line 176
  512), JreLoadStatic(OrgBouncycastleAsn1NistNISTObjectIdentifiers, id_sha3_256), new_OrgBouncycastlePqcCryptoSphincsSPHINCS256Signer_initWithOrgBouncycastleCryptoDigest_withOrgBouncycastleCryptoDigest_(new_OrgBouncycastleCryptoDigestsSHA3Digest_initWithInt_(256), new_OrgBouncycastleCryptoDigestsSHA3Digest_initWithInt_(512)));
}


#line 174
OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512 *new_OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512, init)
}


#line 174
OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512 *create_OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcJcajceProviderSphincsSignatureSpi_withSha3_512)
