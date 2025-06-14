//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/digests/MD4Digest.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/bouncycastle/crypto/digests/GeneralDigest.h"
#include "org/bouncycastle/crypto/digests/MD4Digest.h"
#include "org/bouncycastle/util/Memoable.h"

static void (*OrgBouncycastleCryptoDigestsMD4Digest_super$_copyInWithOrgBouncycastleCryptoDigestsGeneralDigest_)(id, SEL, id);

#if !__has_feature(objc_arc)
#error "org/bouncycastle/crypto/digests/MD4Digest must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleCryptoDigestsMD4Digest () {
 @public
  jint H1_;
  jint H2_;
  jint H3_;
  jint H4_;
  IOSIntArray *X_;
  jint xOff_;
}

- (void)copyInWithOrgBouncycastleCryptoDigestsMD4Digest:(OrgBouncycastleCryptoDigestsMD4Digest *)t OBJC_METHOD_FAMILY_NONE;

- (void)unpackWordWithInt:(jint)word
            withByteArray:(IOSByteArray *)outArg
                  withInt:(jint)outOff;

- (jint)rotateLeftWithInt:(jint)x
                  withInt:(jint)n;

- (jint)FWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

- (jint)GWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

- (jint)HWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoDigestsMD4Digest, X_, IOSIntArray *)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_DIGEST_LENGTH(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_DIGEST_LENGTH 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, DIGEST_LENGTH, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S11(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S11 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S11, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S12(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S12 7
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S12, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S13(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S13 11
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S13, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S14(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S14 19
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S14, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S21(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S21 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S21, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S22(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S22 5
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S22, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S23(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S23 9
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S23, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S24(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S24 13
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S24, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S31(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S31 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S31, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S32(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S32 9
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S32, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S33(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S33 11
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S33, jint)

inline jint OrgBouncycastleCryptoDigestsMD4Digest_get_S34(void);
#define OrgBouncycastleCryptoDigestsMD4Digest_S34 15
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsMD4Digest, S34, jint)

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsMD4Digest_copyInWithOrgBouncycastleCryptoDigestsMD4Digest_(OrgBouncycastleCryptoDigestsMD4Digest *self, OrgBouncycastleCryptoDigestsMD4Digest *t);

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsMD4Digest_unpackWordWithInt_withByteArray_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint word, IOSByteArray *outArg, jint outOff);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint x, jint n);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint u, jint v, jint w);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint u, jint v, jint w);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint u, jint v, jint w);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/digests/MD4Digest.java"

J2OBJC_INITIALIZED_DEFN(OrgBouncycastleCryptoDigestsMD4Digest)


#line 13
@implementation OrgBouncycastleCryptoDigestsMD4Digest

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 26
- (instancetype)init {
  OrgBouncycastleCryptoDigestsMD4Digest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 35
- (instancetype)initWithOrgBouncycastleCryptoDigestsMD4Digest:(OrgBouncycastleCryptoDigestsMD4Digest *)t {
  OrgBouncycastleCryptoDigestsMD4Digest_initWithOrgBouncycastleCryptoDigestsMD4Digest_(self, t);
  return self;
}


#line 42
- (void)copyInWithOrgBouncycastleCryptoDigestsMD4Digest:(OrgBouncycastleCryptoDigestsMD4Digest *)t {
  OrgBouncycastleCryptoDigestsMD4Digest_copyInWithOrgBouncycastleCryptoDigestsMD4Digest_(self, t);
}


#line 55
- (NSString *)getAlgorithmName {
  
#line 58
  return @"MD4";
}

- (jint)getDigestSize {
  
#line 64
  return OrgBouncycastleCryptoDigestsMD4Digest_DIGEST_LENGTH;
}

- (void)processWordWithByteArray:(IOSByteArray *)inArg
                         withInt:(jint)inOff {
  
#line 72
  *IOSIntArray_GetRef(nil_chk(X_), xOff_++) = (IOSByteArray_Get(nil_chk(inArg), inOff) & (jint) 0xff) | (JreLShift32((IOSByteArray_Get(inArg, inOff + 1) & (jint) 0xff), 8)) |
#line 73
  (JreLShift32((IOSByteArray_Get(inArg, inOff + 2) & (jint) 0xff), 16)) | (JreLShift32((IOSByteArray_Get(inArg, inOff + 3) & (jint) 0xff), 24));
  
#line 75
  if (xOff_ == 16) {
    
#line 77
    [self processBlock];
  }
}


#line 81
- (void)processLengthWithLong:(jlong)bitLength {
  
#line 85
  if (xOff_ > 14) {
    
#line 87
    [self processBlock];
  }
  
#line 90
  *IOSIntArray_GetRef(nil_chk(X_), 14) = (jint) (bitLength & (jint) 0xffffffff);
  *IOSIntArray_GetRef(X_, 15) = (jint) (JreURShift64(bitLength, 32));
}


#line 94
- (void)unpackWordWithInt:(jint)word
            withByteArray:(IOSByteArray *)outArg
                  withInt:(jint)outOff {
  OrgBouncycastleCryptoDigestsMD4Digest_unpackWordWithInt_withByteArray_withInt_(self, word, outArg, outOff);
}


#line 105
- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  
#line 110
  [self finish];
  
#line 112
  OrgBouncycastleCryptoDigestsMD4Digest_unpackWordWithInt_withByteArray_withInt_(self, H1_, outArg, outOff);
  OrgBouncycastleCryptoDigestsMD4Digest_unpackWordWithInt_withByteArray_withInt_(self, H2_, outArg, outOff + 4);
  OrgBouncycastleCryptoDigestsMD4Digest_unpackWordWithInt_withByteArray_withInt_(self, H3_, outArg, outOff + 8);
  OrgBouncycastleCryptoDigestsMD4Digest_unpackWordWithInt_withByteArray_withInt_(self, H4_, outArg, outOff + 12);
  
#line 117
  [self reset];
  
#line 119
  return OrgBouncycastleCryptoDigestsMD4Digest_DIGEST_LENGTH;
}


#line 125
- (void)reset {
  
#line 128
  [super reset];
  
#line 130
  H1_ = (jint) 0x67452301;
  H2_ = (jint) 0xefcdab89;
  H3_ = (jint) 0x98badcfe;
  H4_ = (jint) 0x10325476;
  
#line 135
  xOff_ = 0;
  
#line 137
  for (jint i = 0; i != ((IOSIntArray *) nil_chk(X_))->size_; i++) {
    
#line 139
    *IOSIntArray_GetRef(X_, i) = 0;
  }
}


#line 170
- (jint)rotateLeftWithInt:(jint)x
                  withInt:(jint)n {
  return OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, x, n);
}


#line 180
- (jint)FWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, u, v, w);
}


#line 188
- (jint)GWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, u, v, w);
}


#line 196
- (jint)HWithInt:(jint)u
         withInt:(jint)v
         withInt:(jint)w {
  return OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, u, v, w);
}


#line 204
- (void)processBlock {
  
#line 207
  jint a = H1_;
  jint b = H2_;
  jint c = H3_;
  jint d = H4_;
  
#line 215
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 0), OrgBouncycastleCryptoDigestsMD4Digest_S11);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 1), OrgBouncycastleCryptoDigestsMD4Digest_S12);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 2), OrgBouncycastleCryptoDigestsMD4Digest_S13);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 3), OrgBouncycastleCryptoDigestsMD4Digest_S14);
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 4), OrgBouncycastleCryptoDigestsMD4Digest_S11);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 5), OrgBouncycastleCryptoDigestsMD4Digest_S12);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 6), OrgBouncycastleCryptoDigestsMD4Digest_S13);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 7), OrgBouncycastleCryptoDigestsMD4Digest_S14);
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 8), OrgBouncycastleCryptoDigestsMD4Digest_S11);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 9), OrgBouncycastleCryptoDigestsMD4Digest_S12);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 10), OrgBouncycastleCryptoDigestsMD4Digest_S13);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 11), OrgBouncycastleCryptoDigestsMD4Digest_S14);
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 12), OrgBouncycastleCryptoDigestsMD4Digest_S11);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 13), OrgBouncycastleCryptoDigestsMD4Digest_S12);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 14), OrgBouncycastleCryptoDigestsMD4Digest_S13);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 15), OrgBouncycastleCryptoDigestsMD4Digest_S14);
  
#line 235
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 0) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S21);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 4) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S22);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 8) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S23);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 12) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S24);
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 1) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S21);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 5) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S22);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 9) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S23);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 13) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S24);
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 2) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S21);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 6) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S22);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 10) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S23);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 14) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S24);
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 3) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S21);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 7) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S22);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 11) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S23);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 15) + (jint) 0x5a827999, OrgBouncycastleCryptoDigestsMD4Digest_S24);
  
#line 255
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 0) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S31);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 8) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S32);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 4) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S33);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 12) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S34);
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 2) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S31);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 10) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S32);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 6) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S33);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 14) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S34);
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 1) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S31);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 9) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S32);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 5) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S33);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 13) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S34);
  a = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, a + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, b, c, d) + IOSIntArray_Get(nil_chk(X_), 3) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S31);
  d = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, d + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, a, b, c) + IOSIntArray_Get(nil_chk(X_), 11) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S32);
  c = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, c + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, d, a, b) + IOSIntArray_Get(nil_chk(X_), 7) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S33);
  b = OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(self, b + OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(self, c, d, a) + IOSIntArray_Get(nil_chk(X_), 15) + (jint) 0x6ed9eba1, OrgBouncycastleCryptoDigestsMD4Digest_S34);
  
#line 272
  H1_ += a;
  H2_ += b;
  H3_ += c;
  H4_ += d;
  
#line 280
  xOff_ = 0;
  for (jint i = 0; i != ((IOSIntArray *) nil_chk(X_))->size_; i++) {
    
#line 283
    *IOSIntArray_GetRef(X_, i) = 0;
  }
}


#line 287
- (id<OrgBouncycastleUtilMemoable>)copy__ {
  
#line 290
  return new_OrgBouncycastleCryptoDigestsMD4Digest_initWithOrgBouncycastleCryptoDigestsMD4Digest_(self);
}

- (void)resetWithOrgBouncycastleUtilMemoable:(id<OrgBouncycastleUtilMemoable>)other {
  
#line 296
  OrgBouncycastleCryptoDigestsMD4Digest *d = (OrgBouncycastleCryptoDigestsMD4Digest *) cast_chk(other, [OrgBouncycastleCryptoDigestsMD4Digest class]);
  
#line 298
  OrgBouncycastleCryptoDigestsMD4Digest_copyInWithOrgBouncycastleCryptoDigestsMD4Digest_(self, d);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 11, 12, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 13, 12, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 14, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleUtilMemoable;", 0x1, 15, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgBouncycastleCryptoDigestsMD4Digest:);
  methods[2].selector = @selector(copyInWithOrgBouncycastleCryptoDigestsMD4Digest:);
  methods[3].selector = @selector(getAlgorithmName);
  methods[4].selector = @selector(getDigestSize);
  methods[5].selector = @selector(processWordWithByteArray:withInt:);
  methods[6].selector = @selector(processLengthWithLong:);
  methods[7].selector = @selector(unpackWordWithInt:withByteArray:withInt:);
  methods[8].selector = @selector(doFinalWithByteArray:withInt:);
  methods[9].selector = @selector(reset);
  methods[10].selector = @selector(rotateLeftWithInt:withInt:);
  methods[11].selector = @selector(FWithInt:withInt:withInt:);
  methods[12].selector = @selector(GWithInt:withInt:withInt:);
  methods[13].selector = @selector(HWithInt:withInt:withInt:);
  methods[14].selector = @selector(processBlock);
  methods[15].selector = @selector(copy__);
  methods[16].selector = @selector(resetWithOrgBouncycastleUtilMemoable:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DIGEST_LENGTH", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_DIGEST_LENGTH, 0x1a, -1, -1, -1, -1 },
    { "H1_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "H2_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "H3_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "H4_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "X_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "xOff_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "S11", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S11, 0x1a, -1, -1, -1, -1 },
    { "S12", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S12, 0x1a, -1, -1, -1, -1 },
    { "S13", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S13, 0x1a, -1, -1, -1, -1 },
    { "S14", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S14, 0x1a, -1, -1, -1, -1 },
    { "S21", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S21, 0x1a, -1, -1, -1, -1 },
    { "S22", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S22, 0x1a, -1, -1, -1, -1 },
    { "S23", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S23, 0x1a, -1, -1, -1, -1 },
    { "S24", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S24, 0x1a, -1, -1, -1, -1 },
    { "S31", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S31, 0x1a, -1, -1, -1, -1 },
    { "S32", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S32, 0x1a, -1, -1, -1, -1 },
    { "S33", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S33, 0x1a, -1, -1, -1, -1 },
    { "S34", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsMD4Digest_S34, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgBouncycastleCryptoDigestsMD4Digest;", "copyIn", "processWord", "[BI", "processLength", "J", "unpackWord", "I[BI", "doFinal", "rotateLeft", "II", "F", "III", "G", "H", "copy", "reset", "LOrgBouncycastleUtilMemoable;" };
  static const J2ObjcClassInfo _OrgBouncycastleCryptoDigestsMD4Digest = { "MD4Digest", "org.bouncycastle.crypto.digests", ptrTable, methods, fields, 7, 0x1, 17, 19, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleCryptoDigestsMD4Digest;
}

+ (void)initialize {
  if (self == [OrgBouncycastleCryptoDigestsMD4Digest class]) {
    OrgBouncycastleCryptoDigestsMD4Digest_super$_copyInWithOrgBouncycastleCryptoDigestsGeneralDigest_ = (void (*)(id, SEL, id))[OrgBouncycastleCryptoDigestsGeneralDigest instanceMethodForSelector:@selector(copyInWithOrgBouncycastleCryptoDigestsGeneralDigest:)];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleCryptoDigestsMD4Digest)
  }
}

@end


#line 26
void OrgBouncycastleCryptoDigestsMD4Digest_init(OrgBouncycastleCryptoDigestsMD4Digest *self) {
  OrgBouncycastleCryptoDigestsGeneralDigest_init(self);
  self->X_ = [IOSIntArray newArrayWithLength:
#line 20
  16];
  
#line 28
  [self reset];
}


#line 26
OrgBouncycastleCryptoDigestsMD4Digest *new_OrgBouncycastleCryptoDigestsMD4Digest_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDigestsMD4Digest, init)
}


#line 26
OrgBouncycastleCryptoDigestsMD4Digest *create_OrgBouncycastleCryptoDigestsMD4Digest_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDigestsMD4Digest, init)
}


#line 35
void OrgBouncycastleCryptoDigestsMD4Digest_initWithOrgBouncycastleCryptoDigestsMD4Digest_(OrgBouncycastleCryptoDigestsMD4Digest *self, OrgBouncycastleCryptoDigestsMD4Digest *t) {
  OrgBouncycastleCryptoDigestsGeneralDigest_initWithOrgBouncycastleCryptoDigestsGeneralDigest_(self,
#line 37
  t);
  self->X_ = [IOSIntArray newArrayWithLength:
#line 20
  16];
  
#line 39
  OrgBouncycastleCryptoDigestsMD4Digest_copyInWithOrgBouncycastleCryptoDigestsMD4Digest_(self, t);
}


#line 35
OrgBouncycastleCryptoDigestsMD4Digest *new_OrgBouncycastleCryptoDigestsMD4Digest_initWithOrgBouncycastleCryptoDigestsMD4Digest_(OrgBouncycastleCryptoDigestsMD4Digest *t) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDigestsMD4Digest, initWithOrgBouncycastleCryptoDigestsMD4Digest_, t)
}


#line 35
OrgBouncycastleCryptoDigestsMD4Digest *create_OrgBouncycastleCryptoDigestsMD4Digest_initWithOrgBouncycastleCryptoDigestsMD4Digest_(OrgBouncycastleCryptoDigestsMD4Digest *t) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDigestsMD4Digest, initWithOrgBouncycastleCryptoDigestsMD4Digest_, t)
}


#line 42
void OrgBouncycastleCryptoDigestsMD4Digest_copyInWithOrgBouncycastleCryptoDigestsMD4Digest_(OrgBouncycastleCryptoDigestsMD4Digest *self, OrgBouncycastleCryptoDigestsMD4Digest *t) {
  
#line 44
  OrgBouncycastleCryptoDigestsMD4Digest_super$_copyInWithOrgBouncycastleCryptoDigestsGeneralDigest_(self, @selector(copyInWithOrgBouncycastleCryptoDigestsGeneralDigest:), t);
  
#line 46
  self->H1_ = ((OrgBouncycastleCryptoDigestsMD4Digest *) nil_chk(t))->H1_;
  self->H2_ = t->H2_;
  self->H3_ = t->H3_;
  self->H4_ = t->H4_;
  
#line 51
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(t->X_, 0, self->X_, 0, ((IOSIntArray *) nil_chk(t->X_))->size_);
  self->xOff_ = t->xOff_;
}


#line 94
void OrgBouncycastleCryptoDigestsMD4Digest_unpackWordWithInt_withByteArray_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint word, IOSByteArray *outArg, jint outOff) {
  
#line 99
  *IOSByteArray_GetRef(nil_chk(outArg), outOff) = (jbyte) word;
  *IOSByteArray_GetRef(outArg, outOff + 1) = (jbyte) (JreURShift32(word, 8));
  *IOSByteArray_GetRef(outArg, outOff + 2) = (jbyte) (JreURShift32(word, 16));
  *IOSByteArray_GetRef(outArg, outOff + 3) = (jbyte) (JreURShift32(word, 24));
}


#line 170
jint OrgBouncycastleCryptoDigestsMD4Digest_rotateLeftWithInt_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint x, jint n) {
  
#line 174
  return (JreLShift32(x, n)) | (JreURShift32(x, (32 - n)));
}


#line 180
jint OrgBouncycastleCryptoDigestsMD4Digest_FWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint u, jint v, jint w) {
  
#line 185
  return (u & v) | (~u & w);
}


#line 188
jint OrgBouncycastleCryptoDigestsMD4Digest_GWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint u, jint v, jint w) {
  
#line 193
  return (u & v) | (u & w) | (v & w);
}


#line 196
jint OrgBouncycastleCryptoDigestsMD4Digest_HWithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsMD4Digest *self, jint u, jint v, jint w) {
  
#line 201
  return u ^ v ^ w;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDigestsMD4Digest)
