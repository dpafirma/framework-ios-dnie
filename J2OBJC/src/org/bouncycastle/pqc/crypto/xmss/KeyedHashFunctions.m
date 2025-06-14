//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/crypto/Digest.h"
#include "org/bouncycastle/crypto/Xof.h"
#include "org/bouncycastle/pqc/crypto/xmss/DigestUtil.h"
#include "org/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions.h"
#include "org/bouncycastle/pqc/crypto/xmss/XMSSUtil.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastlePqcCryptoXmssKeyedHashFunctions () {
 @public
  id<OrgBouncycastleCryptoDigest> digest_;
  jint digestSize_;
}

- (IOSByteArray *)coreDigestWithInt:(jint)fixedValue
                      withByteArray:(IOSByteArray *)key
                      withByteArray:(IOSByteArray *)index;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastlePqcCryptoXmssKeyedHashFunctions, digest_, id<OrgBouncycastleCryptoDigest>)

__attribute__((unused)) static IOSByteArray *OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_coreDigestWithInt_withByteArray_withByteArray_(OrgBouncycastlePqcCryptoXmssKeyedHashFunctions *self, jint fixedValue, IOSByteArray *key, IOSByteArray *index);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions.java"


#line 10
@implementation OrgBouncycastlePqcCryptoXmssKeyedHashFunctions


#line 15
- (instancetype)initPackagePrivateWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)treeDigest
                                                                      withInt:(jint)digestSize {
  OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_initPackagePrivateWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withInt_(self, treeDigest, digestSize);
  return self;
}


#line 26
- (IOSByteArray *)coreDigestWithInt:(jint)fixedValue
                      withByteArray:(IOSByteArray *)key
                      withByteArray:(IOSByteArray *)index {
  return OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_coreDigestWithInt_withByteArray_withByteArray_(self, fixedValue, key, index);
}


#line 48
- (IOSByteArray *)FWithByteArray:(IOSByteArray *)key
                   withByteArray:(IOSByteArray *)inArg {
  if (((IOSByteArray *) nil_chk(key))->size_ != digestSize_) {
    
#line 52
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"wrong key length");
  }
  if (((IOSByteArray *) nil_chk(inArg))->size_ != digestSize_) {
    
#line 56
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"wrong in length");
  }
  return OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_coreDigestWithInt_withByteArray_withByteArray_(self, 0, key, inArg);
}


#line 61
- (IOSByteArray *)HWithByteArray:(IOSByteArray *)key
                   withByteArray:(IOSByteArray *)inArg {
  if (((IOSByteArray *) nil_chk(key))->size_ != digestSize_) {
    
#line 65
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"wrong key length");
  }
  if (((IOSByteArray *) nil_chk(inArg))->size_ != (2 * digestSize_)) {
    
#line 69
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"wrong in length");
  }
  return OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_coreDigestWithInt_withByteArray_withByteArray_(self, 1, key, inArg);
}


#line 74
- (IOSByteArray *)HMsgWithByteArray:(IOSByteArray *)key
                      withByteArray:(IOSByteArray *)inArg {
  if (((IOSByteArray *) nil_chk(key))->size_ != (3 * digestSize_)) {
    
#line 78
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"wrong key length");
  }
  return OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_coreDigestWithInt_withByteArray_withByteArray_(self, 2, key, inArg);
}


#line 83
- (IOSByteArray *)PRFWithByteArray:(IOSByteArray *)key
                     withByteArray:(IOSByteArray *)address {
  if (((IOSByteArray *) nil_chk(key))->size_ != digestSize_) {
    
#line 87
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"wrong key length");
  }
  if (((IOSByteArray *) nil_chk(address))->size_ != 32) {
    
#line 91
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"wrong address length");
  }
  return OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_coreDigestWithInt_withByteArray_withByteArray_(self, 3, key, address);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0x2, 1, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, 3, 4, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, 5, 4, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, 6, 4, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, 7, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgBouncycastleAsn1ASN1ObjectIdentifier:withInt:);
  methods[1].selector = @selector(coreDigestWithInt:withByteArray:withByteArray:);
  methods[2].selector = @selector(FWithByteArray:withByteArray:);
  methods[3].selector = @selector(HWithByteArray:withByteArray:);
  methods[4].selector = @selector(HMsgWithByteArray:withByteArray:);
  methods[5].selector = @selector(PRFWithByteArray:withByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "digest_", "LOrgBouncycastleCryptoDigest;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "digestSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgBouncycastleAsn1ASN1ObjectIdentifier;I", "coreDigest", "I[B[B", "F", "[B[B", "H", "HMsg", "PRF" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcCryptoXmssKeyedHashFunctions = { "KeyedHashFunctions", "org.bouncycastle.pqc.crypto.xmss", ptrTable, methods, fields, 7, 0x10, 6, 2, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcCryptoXmssKeyedHashFunctions;
}

@end


#line 15
void OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_initPackagePrivateWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withInt_(OrgBouncycastlePqcCryptoXmssKeyedHashFunctions *self, OrgBouncycastleAsn1ASN1ObjectIdentifier *treeDigest, jint digestSize) {
  NSObject_init(self);
  
#line 18
  if (treeDigest == nil) {
    
#line 20
    @throw new_JavaLangNullPointerException_initWithNSString_(@"digest == null");
  }
  self->digest_ = OrgBouncycastlePqcCryptoXmssDigestUtil_getDigestWithOrgBouncycastleAsn1ASN1ObjectIdentifier_(treeDigest);
  self->digestSize_ = digestSize;
}


#line 15
OrgBouncycastlePqcCryptoXmssKeyedHashFunctions *new_OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_initPackagePrivateWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withInt_(OrgBouncycastleAsn1ASN1ObjectIdentifier *treeDigest, jint digestSize) {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcCryptoXmssKeyedHashFunctions, initPackagePrivateWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withInt_, treeDigest, digestSize)
}


#line 15
OrgBouncycastlePqcCryptoXmssKeyedHashFunctions *create_OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_initPackagePrivateWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withInt_(OrgBouncycastleAsn1ASN1ObjectIdentifier *treeDigest, jint digestSize) {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcCryptoXmssKeyedHashFunctions, initPackagePrivateWithOrgBouncycastleAsn1ASN1ObjectIdentifier_withInt_, treeDigest, digestSize)
}


#line 26
IOSByteArray *OrgBouncycastlePqcCryptoXmssKeyedHashFunctions_coreDigestWithInt_withByteArray_withByteArray_(OrgBouncycastlePqcCryptoXmssKeyedHashFunctions *self, jint fixedValue, IOSByteArray *key, IOSByteArray *index) {
  
#line 28
  IOSByteArray *in = OrgBouncycastlePqcCryptoXmssXMSSUtil_toBytesBigEndianWithLong_withInt_(fixedValue, self->digestSize_);
  
#line 30
  [((id<OrgBouncycastleCryptoDigest>) nil_chk(self->digest_)) updateWithByteArray:in withInt:0 withInt:((IOSByteArray *) nil_chk(in))->size_];
  
#line 32
  [self->digest_ updateWithByteArray:key withInt:0 withInt:((IOSByteArray *) nil_chk(key))->size_];
  
#line 34
  [self->digest_ updateWithByteArray:index withInt:0 withInt:((IOSByteArray *) nil_chk(index))->size_];
  
#line 36
  IOSByteArray *out = [IOSByteArray newArrayWithLength:self->digestSize_];
  if ([OrgBouncycastleCryptoXof_class_() isInstance:self->digest_]) {
    
#line 39
    [((id<OrgBouncycastleCryptoXof>) cast_check(self->digest_, OrgBouncycastleCryptoXof_class_())) doFinalWithByteArray:out withInt:0 withInt:self->digestSize_];
  }
  else {
    
#line 43
    [self->digest_ doFinalWithByteArray:out withInt:0];
  }
  return out;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcCryptoXmssKeyedHashFunctions)
