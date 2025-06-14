//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/lms/LMS.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/crypto/Digest.h"
#include "org/bouncycastle/pqc/crypto/lms/DigestUtil.h"
#include "org/bouncycastle/pqc/crypto/lms/LMOtsParameters.h"
#include "org/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey.h"
#include "org/bouncycastle/pqc/crypto/lms/LMOtsSignature.h"
#include "org/bouncycastle/pqc/crypto/lms/LMS.h"
#include "org/bouncycastle/pqc/crypto/lms/LMSContext.h"
#include "org/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters.h"
#include "org/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters.h"
#include "org/bouncycastle/pqc/crypto/lms/LMSSignature.h"
#include "org/bouncycastle/pqc/crypto/lms/LMSigParameters.h"
#include "org/bouncycastle/pqc/crypto/lms/LM_OTS.h"
#include "org/bouncycastle/pqc/crypto/lms/LmsUtils.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/crypto/lms/LMS must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/lms/LMS.java"


#line 5
@implementation OrgBouncycastlePqcCryptoLmsLMS


#line 5
- (instancetype)initPackagePrivate {
  OrgBouncycastlePqcCryptoLmsLMS_initPackagePrivate(self);
  return self;
}

+ (OrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters *)generateKeysWithOrgBouncycastlePqcCryptoLmsLMSigParameters:(OrgBouncycastlePqcCryptoLmsLMSigParameters *)parameterSet
                                                                    withOrgBouncycastlePqcCryptoLmsLMOtsParameters:(OrgBouncycastlePqcCryptoLmsLMOtsParameters *)lmOtsParameters
                                                                                                           withInt:(jint)q
                                                                                                     withByteArray:(IOSByteArray *)I
                                                                                                     withByteArray:(IOSByteArray *)rootSeed {
  return OrgBouncycastlePqcCryptoLmsLMS_generateKeysWithOrgBouncycastlePqcCryptoLmsLMSigParameters_withOrgBouncycastlePqcCryptoLmsLMOtsParameters_withInt_withByteArray_withByteArray_(parameterSet, lmOtsParameters, q, I, rootSeed);
}


#line 36
+ (OrgBouncycastlePqcCryptoLmsLMSSignature *)generateSignWithOrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters:(OrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters *)privateKey
                                                                                                  withByteArray:(IOSByteArray *)message {
  return OrgBouncycastlePqcCryptoLmsLMS_generateSignWithOrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters_withByteArray_(privateKey, message);
}


#line 52
+ (OrgBouncycastlePqcCryptoLmsLMSSignature *)generateSignWithOrgBouncycastlePqcCryptoLmsLMSContext:(OrgBouncycastlePqcCryptoLmsLMSContext *)context {
  return OrgBouncycastlePqcCryptoLmsLMS_generateSignWithOrgBouncycastlePqcCryptoLmsLMSContext_(context);
}


#line 73
+ (jboolean)verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters:(OrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters *)publicKey
                                     withOrgBouncycastlePqcCryptoLmsLMSSignature:(OrgBouncycastlePqcCryptoLmsLMSSignature *)S
                                                                   withByteArray:(IOSByteArray *)message {
  return OrgBouncycastlePqcCryptoLmsLMS_verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters_withOrgBouncycastlePqcCryptoLmsLMSSignature_withByteArray_(publicKey, S, message);
}


#line 82
+ (jboolean)verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters:(OrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters *)publicKey
                                                                   withByteArray:(IOSByteArray *)S
                                                                   withByteArray:(IOSByteArray *)message {
  return OrgBouncycastlePqcCryptoLmsLMS_verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters_withByteArray_withByteArray_(publicKey, S, message);
}


#line 91
+ (jboolean)verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters:(OrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters *)publicKey
                                       withOrgBouncycastlePqcCryptoLmsLMSContext:(OrgBouncycastlePqcCryptoLmsLMSContext *)context {
  return OrgBouncycastlePqcCryptoLmsLMS_verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters_withOrgBouncycastlePqcCryptoLmsLMSContext_(publicKey, context);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsLMSSignature;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsLMSSignature;", 0x9, 3, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 6, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 6, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(generateKeysWithOrgBouncycastlePqcCryptoLmsLMSigParameters:withOrgBouncycastlePqcCryptoLmsLMOtsParameters:withInt:withByteArray:withByteArray:);
  methods[2].selector = @selector(generateSignWithOrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters:withByteArray:);
  methods[3].selector = @selector(generateSignWithOrgBouncycastlePqcCryptoLmsLMSContext:);
  methods[4].selector = @selector(verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters:withOrgBouncycastlePqcCryptoLmsLMSSignature:withByteArray:);
  methods[5].selector = @selector(verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters:withByteArray:withByteArray:);
  methods[6].selector = @selector(verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters:withOrgBouncycastlePqcCryptoLmsLMSContext:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "D_LEAF", "S", .constantValue.asShort = OrgBouncycastlePqcCryptoLmsLMS_D_LEAF, 0x18, -1, -1, -1, -1 },
    { "D_INTR", "S", .constantValue.asShort = OrgBouncycastlePqcCryptoLmsLMS_D_INTR, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "generateKeys", "LOrgBouncycastlePqcCryptoLmsLMSigParameters;LOrgBouncycastlePqcCryptoLmsLMOtsParameters;I[B[B", "LJavaLangIllegalArgumentException;", "generateSign", "LOrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters;[B", "LOrgBouncycastlePqcCryptoLmsLMSContext;", "verifySignature", "LOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters;LOrgBouncycastlePqcCryptoLmsLMSSignature;[B", "LOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters;[B[B", "LOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters;LOrgBouncycastlePqcCryptoLmsLMSContext;" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcCryptoLmsLMS = { "LMS", "org.bouncycastle.pqc.crypto.lms", ptrTable, methods, fields, 7, 0x0, 7, 2, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcCryptoLmsLMS;
}

@end


#line 5
void OrgBouncycastlePqcCryptoLmsLMS_initPackagePrivate(OrgBouncycastlePqcCryptoLmsLMS *self) {
  NSObject_init(self);
}


#line 5
OrgBouncycastlePqcCryptoLmsLMS *new_OrgBouncycastlePqcCryptoLmsLMS_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcCryptoLmsLMS, initPackagePrivate)
}


#line 5
OrgBouncycastlePqcCryptoLmsLMS *create_OrgBouncycastlePqcCryptoLmsLMS_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcCryptoLmsLMS, initPackagePrivate)
}


#line 10
OrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters *OrgBouncycastlePqcCryptoLmsLMS_generateKeysWithOrgBouncycastlePqcCryptoLmsLMSigParameters_withOrgBouncycastlePqcCryptoLmsLMOtsParameters_withInt_withByteArray_withByteArray_(OrgBouncycastlePqcCryptoLmsLMSigParameters *parameterSet, OrgBouncycastlePqcCryptoLmsLMOtsParameters *lmOtsParameters, jint q, IOSByteArray *I, IOSByteArray *rootSeed) {
  OrgBouncycastlePqcCryptoLmsLMS_initialize();
  
#line 26
  if (rootSeed == nil || rootSeed->size_ < [((OrgBouncycastlePqcCryptoLmsLMSigParameters *) nil_chk(parameterSet)) getM]) {
    
#line 28
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"root seed is less than ", [((OrgBouncycastlePqcCryptoLmsLMSigParameters *) nil_chk(parameterSet)) getM]));
  }
  
#line 31
  jint twoToH = JreLShift32(1, [((OrgBouncycastlePqcCryptoLmsLMSigParameters *) nil_chk(parameterSet)) getH]);
  
#line 33
  return new_OrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters_initWithOrgBouncycastlePqcCryptoLmsLMSigParameters_withOrgBouncycastlePqcCryptoLmsLMOtsParameters_withInt_withByteArray_withInt_withByteArray_(parameterSet, lmOtsParameters, q, I, twoToH, rootSeed);
}


#line 36
OrgBouncycastlePqcCryptoLmsLMSSignature *OrgBouncycastlePqcCryptoLmsLMS_generateSignWithOrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters_withByteArray_(OrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters *privateKey, IOSByteArray *message) {
  OrgBouncycastlePqcCryptoLmsLMS_initialize();
  
#line 45
  OrgBouncycastlePqcCryptoLmsLMSContext *context = [((OrgBouncycastlePqcCryptoLmsLMSPrivateKeyParameters *) nil_chk(privateKey)) generateLMSContext];
  
#line 47
  [((OrgBouncycastlePqcCryptoLmsLMSContext *) nil_chk(context)) updateWithByteArray:message withInt:0 withInt:((IOSByteArray *) nil_chk(message))->size_];
  
#line 49
  return OrgBouncycastlePqcCryptoLmsLMS_generateSignWithOrgBouncycastlePqcCryptoLmsLMSContext_(context);
}


#line 52
OrgBouncycastlePqcCryptoLmsLMSSignature *OrgBouncycastlePqcCryptoLmsLMS_generateSignWithOrgBouncycastlePqcCryptoLmsLMSContext_(OrgBouncycastlePqcCryptoLmsLMSContext *context) {
  OrgBouncycastlePqcCryptoLmsLMS_initialize();
  
#line 61
  OrgBouncycastlePqcCryptoLmsLMOtsSignature *ots_signature = OrgBouncycastlePqcCryptoLmsLM_OTS_lm_ots_generate_signatureWithOrgBouncycastlePqcCryptoLmsLMOtsPrivateKey_withByteArray_withByteArray_([((OrgBouncycastlePqcCryptoLmsLMSContext *) nil_chk(context)) getPrivateKey], [context getQ], [context getC]);
  
#line 63
  return new_OrgBouncycastlePqcCryptoLmsLMSSignature_initPackagePrivateWithInt_withOrgBouncycastlePqcCryptoLmsLMOtsSignature_withOrgBouncycastlePqcCryptoLmsLMSigParameters_withByteArray2_([((OrgBouncycastlePqcCryptoLmsLMOtsPrivateKey *) nil_chk([context getPrivateKey])) getQ], ots_signature, [context getSigParams], [context getPath]);
}


#line 73
jboolean OrgBouncycastlePqcCryptoLmsLMS_verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters_withOrgBouncycastlePqcCryptoLmsLMSSignature_withByteArray_(OrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters *publicKey, OrgBouncycastlePqcCryptoLmsLMSSignature *S, IOSByteArray *message) {
  OrgBouncycastlePqcCryptoLmsLMS_initialize();
  OrgBouncycastlePqcCryptoLmsLMSContext *context = [((OrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters *) nil_chk(publicKey)) generateOtsContextWithOrgBouncycastlePqcCryptoLmsLMSSignature:S];
  
#line 77
  OrgBouncycastlePqcCryptoLmsLmsUtils_byteArrayWithByteArray_withOrgBouncycastleCryptoDigest_(message, context);
  
#line 79
  return OrgBouncycastlePqcCryptoLmsLMS_verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters_withOrgBouncycastlePqcCryptoLmsLMSContext_(publicKey, context);
}


#line 82
jboolean OrgBouncycastlePqcCryptoLmsLMS_verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters_withByteArray_withByteArray_(OrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters *publicKey, IOSByteArray *S, IOSByteArray *message) {
  OrgBouncycastlePqcCryptoLmsLMS_initialize();
  OrgBouncycastlePqcCryptoLmsLMSContext *context = [((OrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters *) nil_chk(publicKey)) generateLMSContextWithByteArray:S];
  
#line 86
  OrgBouncycastlePqcCryptoLmsLmsUtils_byteArrayWithByteArray_withOrgBouncycastleCryptoDigest_(message, context);
  
#line 88
  return OrgBouncycastlePqcCryptoLmsLMS_verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters_withOrgBouncycastlePqcCryptoLmsLMSContext_(publicKey, context);
}


#line 91
jboolean OrgBouncycastlePqcCryptoLmsLMS_verifySignatureWithOrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters_withOrgBouncycastlePqcCryptoLmsLMSContext_(OrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters *publicKey, OrgBouncycastlePqcCryptoLmsLMSContext *context) {
  OrgBouncycastlePqcCryptoLmsLMS_initialize();
  OrgBouncycastlePqcCryptoLmsLMSSignature *S = (OrgBouncycastlePqcCryptoLmsLMSSignature *) cast_chk([((OrgBouncycastlePqcCryptoLmsLMSContext *) nil_chk(context)) getSignature], [OrgBouncycastlePqcCryptoLmsLMSSignature class]);
  OrgBouncycastlePqcCryptoLmsLMSigParameters *lmsParameter = [((OrgBouncycastlePqcCryptoLmsLMSSignature *) nil_chk(S)) getParameter];
  jint h = [((OrgBouncycastlePqcCryptoLmsLMSigParameters *) nil_chk(lmsParameter)) getH];
  IOSObjectArray *path = [S getY];
  IOSByteArray *Kc = OrgBouncycastlePqcCryptoLmsLM_OTS_lm_ots_validate_signature_calculateWithOrgBouncycastlePqcCryptoLmsLMSContext_(context);
  
#line 100
  jint node_num = (JreLShift32(1, h)) + [S getQ];
  
#line 103
  IOSByteArray *I = [((OrgBouncycastlePqcCryptoLmsLMSPublicKeyParameters *) nil_chk(publicKey)) getI];
  id<OrgBouncycastleCryptoDigest> H = OrgBouncycastlePqcCryptoLmsDigestUtil_getDigestWithOrgBouncycastleAsn1ASN1ObjectIdentifier_([lmsParameter getDigestOID]);
  IOSByteArray *tmp = [IOSByteArray newArrayWithLength:[((id<OrgBouncycastleCryptoDigest>) nil_chk(H)) getDigestSize]];
  
#line 107
  [H updateWithByteArray:I withInt:0 withInt:((IOSByteArray *) nil_chk(I))->size_];
  OrgBouncycastlePqcCryptoLmsLmsUtils_u32strWithInt_withOrgBouncycastleCryptoDigest_(node_num, H);
  OrgBouncycastlePqcCryptoLmsLmsUtils_u16strWithShort_withOrgBouncycastleCryptoDigest_(OrgBouncycastlePqcCryptoLmsLMS_D_LEAF, H);
  [H updateWithByteArray:Kc withInt:0 withInt:((IOSByteArray *) nil_chk(Kc))->size_];
  [H doFinalWithByteArray:tmp withInt:0];
  
#line 113
  jint i = 0;
  
#line 115
  while (node_num > 1) {
    
#line 117
    if ((node_num & 1) == 1) {
      
#line 120
      [H updateWithByteArray:I withInt:0 withInt:I->size_];
      OrgBouncycastlePqcCryptoLmsLmsUtils_u32strWithInt_withOrgBouncycastleCryptoDigest_(JreIntDiv(node_num, 2), H);
      OrgBouncycastlePqcCryptoLmsLmsUtils_u16strWithShort_withOrgBouncycastleCryptoDigest_(OrgBouncycastlePqcCryptoLmsLMS_D_INTR, H);
      [H updateWithByteArray:IOSObjectArray_Get(nil_chk(path), i) withInt:0 withInt:((IOSByteArray *) nil_chk(IOSObjectArray_Get(path, i)))->size_];
      [H updateWithByteArray:tmp withInt:0 withInt:tmp->size_];
      [H doFinalWithByteArray:tmp withInt:0];
    }
    else {
      
#line 129
      [H updateWithByteArray:I withInt:0 withInt:I->size_];
      OrgBouncycastlePqcCryptoLmsLmsUtils_u32strWithInt_withOrgBouncycastleCryptoDigest_(JreIntDiv(node_num, 2), H);
      OrgBouncycastlePqcCryptoLmsLmsUtils_u16strWithShort_withOrgBouncycastleCryptoDigest_(OrgBouncycastlePqcCryptoLmsLMS_D_INTR, H);
      [H updateWithByteArray:tmp withInt:0 withInt:tmp->size_];
      [H updateWithByteArray:IOSObjectArray_Get(nil_chk(path), i) withInt:0 withInt:((IOSByteArray *) nil_chk(IOSObjectArray_Get(path, i)))->size_];
      [H doFinalWithByteArray:tmp withInt:0];
    }
    node_num = JreIntDiv(node_num, 2);
    i++;
  }
  IOSByteArray *Tc = tmp;
  return [publicKey matchesT1WithByteArray:Tc];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcCryptoLmsLMS)
