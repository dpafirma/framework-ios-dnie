//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/digests/SM3Digest.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/bouncycastle/crypto/digests/GeneralDigest.h"
#include "org/bouncycastle/crypto/digests/SM3Digest.h"
#include "org/bouncycastle/util/Memoable.h"
#include "org/bouncycastle/util/Pack.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/crypto/digests/SM3Digest must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleCryptoDigestsSM3Digest () {
 @public
  IOSIntArray *V_;
  IOSIntArray *inwords_;
  jint xOff_;
  IOSIntArray *W_;
}

- (void)copyInWithOrgBouncycastleCryptoDigestsSM3Digest:(OrgBouncycastleCryptoDigestsSM3Digest *)t OBJC_METHOD_FAMILY_NONE;

- (jint)P0WithInt:(jint)x;

- (jint)P1WithInt:(jint)x;

- (jint)FF0WithInt:(jint)x
           withInt:(jint)y
           withInt:(jint)z;

- (jint)FF1WithInt:(jint)x
           withInt:(jint)y
           withInt:(jint)z;

- (jint)GG0WithInt:(jint)x
           withInt:(jint)y
           withInt:(jint)z;

- (jint)GG1WithInt:(jint)x
           withInt:(jint)y
           withInt:(jint)z;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoDigestsSM3Digest, V_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoDigestsSM3Digest, inwords_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoDigestsSM3Digest, W_, IOSIntArray *)

inline jint OrgBouncycastleCryptoDigestsSM3Digest_get_DIGEST_LENGTH(void);
#define OrgBouncycastleCryptoDigestsSM3Digest_DIGEST_LENGTH 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsSM3Digest, DIGEST_LENGTH, jint)

inline jint OrgBouncycastleCryptoDigestsSM3Digest_get_BLOCK_SIZE(void);
#define OrgBouncycastleCryptoDigestsSM3Digest_BLOCK_SIZE 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoDigestsSM3Digest, BLOCK_SIZE, jint)

inline IOSIntArray *OrgBouncycastleCryptoDigestsSM3Digest_get_T(void);
static IOSIntArray *OrgBouncycastleCryptoDigestsSM3Digest_T;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastleCryptoDigestsSM3Digest, T, IOSIntArray *)

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsSM3Digest_copyInWithOrgBouncycastleCryptoDigestsSM3Digest_(OrgBouncycastleCryptoDigestsSM3Digest *self, OrgBouncycastleCryptoDigestsSM3Digest *t);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsSM3Digest_P0WithInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsSM3Digest_P1WithInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsSM3Digest_FF0WithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x, jint y, jint z);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsSM3Digest_FF1WithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x, jint y, jint z);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsSM3Digest_GG0WithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x, jint y, jint z);

__attribute__((unused)) static jint OrgBouncycastleCryptoDigestsSM3Digest_GG1WithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x, jint y, jint z);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/digests/SM3Digest.java"

J2OBJC_INITIALIZED_DEFN(OrgBouncycastleCryptoDigestsSM3Digest)


#line 18
@implementation OrgBouncycastleCryptoDigestsSM3Digest

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 53
- (instancetype)init {
  OrgBouncycastleCryptoDigestsSM3Digest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 62
- (instancetype)initWithOrgBouncycastleCryptoDigestsSM3Digest:(OrgBouncycastleCryptoDigestsSM3Digest *)t {
  OrgBouncycastleCryptoDigestsSM3Digest_initWithOrgBouncycastleCryptoDigestsSM3Digest_(self, t);
  return self;
}


#line 69
- (void)copyInWithOrgBouncycastleCryptoDigestsSM3Digest:(OrgBouncycastleCryptoDigestsSM3Digest *)t {
  OrgBouncycastleCryptoDigestsSM3Digest_copyInWithOrgBouncycastleCryptoDigestsSM3Digest_(self, t);
}


#line 76
- (NSString *)getAlgorithmName {
  
#line 79
  return @"SM3";
}

- (jint)getDigestSize {
  
#line 85
  return OrgBouncycastleCryptoDigestsSM3Digest_DIGEST_LENGTH;
}


#line 89
- (id<OrgBouncycastleUtilMemoable>)copy__ {
  
#line 92
  return new_OrgBouncycastleCryptoDigestsSM3Digest_initWithOrgBouncycastleCryptoDigestsSM3Digest_(self);
}

- (void)resetWithOrgBouncycastleUtilMemoable:(id<OrgBouncycastleUtilMemoable>)other {
  
#line 98
  OrgBouncycastleCryptoDigestsSM3Digest *d = (OrgBouncycastleCryptoDigestsSM3Digest *) cast_chk(other, [OrgBouncycastleCryptoDigestsSM3Digest class]);
  
#line 100
  [super copyInWithOrgBouncycastleCryptoDigestsGeneralDigest:d];
  OrgBouncycastleCryptoDigestsSM3Digest_copyInWithOrgBouncycastleCryptoDigestsSM3Digest_(self, d);
}


#line 108
- (void)reset {
  
#line 111
  [super reset];
  
#line 113
  *IOSIntArray_GetRef(nil_chk(self->V_), 0) = (jint) 0x7380166F;
  *IOSIntArray_GetRef(self->V_, 1) = (jint) 0x4914B2B9;
  *IOSIntArray_GetRef(self->V_, 2) = (jint) 0x172442D7;
  *IOSIntArray_GetRef(self->V_, 3) = (jint) 0xDA8A0600;
  *IOSIntArray_GetRef(self->V_, 4) = (jint) 0xA96F30BC;
  *IOSIntArray_GetRef(self->V_, 5) = (jint) 0x163138AA;
  *IOSIntArray_GetRef(self->V_, 6) = (jint) 0xE38DEE4D;
  *IOSIntArray_GetRef(self->V_, 7) = (jint) 0xB0FB0E4E;
  
#line 122
  self->xOff_ = 0;
}


#line 126
- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  
#line 130
  [self finish];
  
#line 132
  OrgBouncycastleUtilPack_intToBigEndianWithIntArray_withByteArray_withInt_(V_, outArg, outOff);
  
#line 134
  [self reset];
  
#line 136
  return OrgBouncycastleCryptoDigestsSM3Digest_DIGEST_LENGTH;
}


#line 140
- (void)processWordWithByteArray:(IOSByteArray *)inArg
                         withInt:(jint)inOff {
  jint unseq$1 =
#line 146
  inOff;
  jint unseq$2 = ++inOff;
  jint unseq$3 = ++inOff;
  
#line 146
  jint n = ((JreLShift32((IOSByteArray_Get(nil_chk(inArg), unseq$1) & (jint) 0xff), 24)) |
#line 147
  (JreLShift32((IOSByteArray_Get(inArg, unseq$2) & (jint) 0xff), 16)) |
#line 148
  (JreLShift32((IOSByteArray_Get(inArg, unseq$3) & (jint) 0xff), 8)) |
#line 149
  ((IOSByteArray_Get(inArg, ++inOff) & (jint) 0xff)));
  
#line 151
  *IOSIntArray_GetRef(nil_chk(self->inwords_), self->xOff_) = n;
  ++self->xOff_;
  
#line 154
  if (self->xOff_ >= 16) {
    
#line 156
    [self processBlock];
  }
}


#line 160
- (void)processLengthWithLong:(jlong)bitLength {
  
#line 163
  if (self->xOff_ > (OrgBouncycastleCryptoDigestsSM3Digest_BLOCK_SIZE - 2)) {
    
#line 166
    *IOSIntArray_GetRef(nil_chk(self->inwords_), self->xOff_) = 0;
    ++self->xOff_;
    
#line 169
    [self processBlock];
  }
  
#line 172
  while (self->xOff_ < (OrgBouncycastleCryptoDigestsSM3Digest_BLOCK_SIZE - 2)) {
    
#line 174
    *IOSIntArray_GetRef(nil_chk(self->inwords_), self->xOff_) = 0;
    ++self->xOff_;
  }
  
#line 179
  *IOSIntArray_GetRef(nil_chk(self->inwords_), self->xOff_++) = (jint) (JreURShift64(bitLength, 32));
  *IOSIntArray_GetRef(self->inwords_, self->xOff_++) = (jint) (bitLength);
}


#line 221
- (jint)P0WithInt:(jint)x {
  return OrgBouncycastleCryptoDigestsSM3Digest_P0WithInt_(self, x);
}


#line 228
- (jint)P1WithInt:(jint)x {
  return OrgBouncycastleCryptoDigestsSM3Digest_P1WithInt_(self, x);
}


#line 235
- (jint)FF0WithInt:(jint)x
           withInt:(jint)y
           withInt:(jint)z {
  return OrgBouncycastleCryptoDigestsSM3Digest_FF0WithInt_withInt_withInt_(self, x, y, z);
}


#line 240
- (jint)FF1WithInt:(jint)x
           withInt:(jint)y
           withInt:(jint)z {
  return OrgBouncycastleCryptoDigestsSM3Digest_FF1WithInt_withInt_withInt_(self, x, y, z);
}


#line 245
- (jint)GG0WithInt:(jint)x
           withInt:(jint)y
           withInt:(jint)z {
  return OrgBouncycastleCryptoDigestsSM3Digest_GG0WithInt_withInt_withInt_(self, x, y, z);
}


#line 250
- (jint)GG1WithInt:(jint)x
           withInt:(jint)y
           withInt:(jint)z {
  return OrgBouncycastleCryptoDigestsSM3Digest_GG1WithInt_withInt_withInt_(self, x, y, z);
}

- (void)processBlock {
  
#line 259
  for (jint j = 0; j < 16; ++j) {
    
#line 261
    *IOSIntArray_GetRef(nil_chk(self->W_), j) = IOSIntArray_Get(nil_chk(self->inwords_), j);
  }
  for (jint j = 16; j < 68; ++j) {
    
#line 265
    jint wj3 = IOSIntArray_Get(nil_chk(self->W_), j - 3);
    jint r15 = ((JreLShift32(wj3, 15)) | (JreURShift32(wj3, (32 - 15))));
    jint wj13 = IOSIntArray_Get(self->W_, j - 13);
    jint r7 = ((JreLShift32(wj13, 7)) | (JreURShift32(wj13, (32 - 7))));
    *IOSIntArray_GetRef(self->W_, j) = OrgBouncycastleCryptoDigestsSM3Digest_P1WithInt_(self, IOSIntArray_Get(self->W_, j - 16) ^ IOSIntArray_Get(self->W_, j - 9) ^ r15) ^ r7 ^ IOSIntArray_Get(nil_chk(self->W_), j - 6);
  }
  
#line 272
  jint A = IOSIntArray_Get(nil_chk(self->V_), 0);
  jint B = IOSIntArray_Get(self->V_, 1);
  jint C = IOSIntArray_Get(self->V_, 2);
  jint D = IOSIntArray_Get(self->V_, 3);
  jint E = IOSIntArray_Get(self->V_, 4);
  jint F = IOSIntArray_Get(self->V_, 5);
  jint G = IOSIntArray_Get(self->V_, 6);
  jint H = IOSIntArray_Get(self->V_, 7);
  
#line 282
  for (jint j = 0; j < 16; ++j) {
    
#line 284
    jint a12 = ((JreLShift32(A, 12)) | (JreURShift32(A, (32 - 12))));
    jint s1_ = a12 + E + IOSIntArray_Get(nil_chk(OrgBouncycastleCryptoDigestsSM3Digest_T), j);
    jint SS1 = ((JreLShift32(s1_, 7)) | (JreURShift32(s1_, (32 - 7))));
    jint SS2 = SS1 ^ a12;
    jint Wj = IOSIntArray_Get(nil_chk(W_), j);
    jint W1j = Wj ^ IOSIntArray_Get(W_, j + 4);
    jint TT1 = OrgBouncycastleCryptoDigestsSM3Digest_FF0WithInt_withInt_withInt_(self, A, B, C) + D + SS2 + W1j;
    jint TT2 = OrgBouncycastleCryptoDigestsSM3Digest_GG0WithInt_withInt_withInt_(self, E, F, G) + H + SS1 + Wj;
    D = C;
    C = ((JreLShift32(B, 9)) | (JreURShift32(B, (32 - 9))));
    B = A;
    A = TT1;
    H = G;
    G = ((JreLShift32(F, 19)) | (JreURShift32(F, (32 - 19))));
    F = E;
    E = OrgBouncycastleCryptoDigestsSM3Digest_P0WithInt_(self, TT2);
  }
  
#line 303
  for (jint j = 16; j < 64; ++j) {
    
#line 305
    jint a12 = ((JreLShift32(A, 12)) | (JreURShift32(A, (32 - 12))));
    jint s1_ = a12 + E + IOSIntArray_Get(nil_chk(OrgBouncycastleCryptoDigestsSM3Digest_T), j);
    jint SS1 = ((JreLShift32(s1_, 7)) | (JreURShift32(s1_, (32 - 7))));
    jint SS2 = SS1 ^ a12;
    jint Wj = IOSIntArray_Get(nil_chk(W_), j);
    jint W1j = Wj ^ IOSIntArray_Get(W_, j + 4);
    jint TT1 = OrgBouncycastleCryptoDigestsSM3Digest_FF1WithInt_withInt_withInt_(self, A, B, C) + D + SS2 + W1j;
    jint TT2 = OrgBouncycastleCryptoDigestsSM3Digest_GG1WithInt_withInt_withInt_(self, E, F, G) + H + SS1 + Wj;
    D = C;
    C = ((JreLShift32(B, 9)) | (JreURShift32(B, (32 - 9))));
    B = A;
    A = TT1;
    H = G;
    G = ((JreLShift32(F, 19)) | (JreURShift32(F, (32 - 19))));
    F = E;
    E = OrgBouncycastleCryptoDigestsSM3Digest_P0WithInt_(self, TT2);
  }
  
#line 323
  *IOSIntArray_GetRef(nil_chk(self->V_), 0) ^= A;
  *IOSIntArray_GetRef(self->V_, 1) ^= B;
  *IOSIntArray_GetRef(self->V_, 2) ^= C;
  *IOSIntArray_GetRef(self->V_, 3) ^= D;
  *IOSIntArray_GetRef(self->V_, 4) ^= E;
  *IOSIntArray_GetRef(self->V_, 5) ^= F;
  *IOSIntArray_GetRef(self->V_, 6) ^= G;
  *IOSIntArray_GetRef(self->V_, 7) ^= H;
  
#line 332
  self->xOff_ = 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleUtilMemoable;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 7, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 10, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 12, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 13, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 15, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 16, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 17, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgBouncycastleCryptoDigestsSM3Digest:);
  methods[2].selector = @selector(copyInWithOrgBouncycastleCryptoDigestsSM3Digest:);
  methods[3].selector = @selector(getAlgorithmName);
  methods[4].selector = @selector(getDigestSize);
  methods[5].selector = @selector(copy__);
  methods[6].selector = @selector(resetWithOrgBouncycastleUtilMemoable:);
  methods[7].selector = @selector(reset);
  methods[8].selector = @selector(doFinalWithByteArray:withInt:);
  methods[9].selector = @selector(processWordWithByteArray:withInt:);
  methods[10].selector = @selector(processLengthWithLong:);
  methods[11].selector = @selector(P0WithInt:);
  methods[12].selector = @selector(P1WithInt:);
  methods[13].selector = @selector(FF0WithInt:withInt:withInt:);
  methods[14].selector = @selector(FF1WithInt:withInt:withInt:);
  methods[15].selector = @selector(GG0WithInt:withInt:withInt:);
  methods[16].selector = @selector(GG1WithInt:withInt:withInt:);
  methods[17].selector = @selector(processBlock);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DIGEST_LENGTH", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsSM3Digest_DIGEST_LENGTH, 0x1a, -1, -1, -1, -1 },
    { "BLOCK_SIZE", "I", .constantValue.asInt = OrgBouncycastleCryptoDigestsSM3Digest_BLOCK_SIZE, 0x1a, -1, -1, -1, -1 },
    { "V_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "inwords_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "xOff_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "W_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "T", "[I", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgBouncycastleCryptoDigestsSM3Digest;", "copyIn", "copy", "reset", "LOrgBouncycastleUtilMemoable;", "doFinal", "[BI", "processWord", "processLength", "J", "P0", "I", "P1", "FF0", "III", "FF1", "GG0", "GG1", &OrgBouncycastleCryptoDigestsSM3Digest_T };
  static const J2ObjcClassInfo _OrgBouncycastleCryptoDigestsSM3Digest = { "SM3Digest", "org.bouncycastle.crypto.digests", ptrTable, methods, fields, 7, 0x1, 18, 7, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleCryptoDigestsSM3Digest;
}

+ (void)initialize {
  if (self == [OrgBouncycastleCryptoDigestsSM3Digest class]) {
    OrgBouncycastleCryptoDigestsSM3Digest_T = [IOSIntArray newArrayWithLength:
#line 32
    64];
    {
      
#line 36
      for (jint i = 0; i < 16; ++i) {
        
#line 38
        jint t = (jint) 0x79CC4519;
        *IOSIntArray_GetRef(OrgBouncycastleCryptoDigestsSM3Digest_T, i) = (JreLShift32(t, i)) | (JreURShift32(t, (32 - i)));
      }
      for (jint i = 16; i < 64; ++i) {
        
#line 43
        jint n = JreIntMod(i, 32);
        jint t = (jint) 0x7A879D8A;
        *IOSIntArray_GetRef(OrgBouncycastleCryptoDigestsSM3Digest_T, i) = (JreLShift32(t, n)) | (JreURShift32(t, (32 - n)));
      }
    }
    J2OBJC_SET_INITIALIZED(OrgBouncycastleCryptoDigestsSM3Digest)
  }
}

@end


#line 53
void OrgBouncycastleCryptoDigestsSM3Digest_init(OrgBouncycastleCryptoDigestsSM3Digest *self) {
  OrgBouncycastleCryptoDigestsGeneralDigest_init(self);
  self->V_ = [IOSIntArray newArrayWithLength:JreIntDiv(OrgBouncycastleCryptoDigestsSM3Digest_DIGEST_LENGTH,
#line 24
  4)];
  self->inwords_ = [IOSIntArray newArrayWithLength:OrgBouncycastleCryptoDigestsSM3Digest_BLOCK_SIZE];
  self->W_ = [IOSIntArray newArrayWithLength:
#line 29
  68];
  
#line 55
  [self reset];
}


#line 53
OrgBouncycastleCryptoDigestsSM3Digest *new_OrgBouncycastleCryptoDigestsSM3Digest_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDigestsSM3Digest, init)
}


#line 53
OrgBouncycastleCryptoDigestsSM3Digest *create_OrgBouncycastleCryptoDigestsSM3Digest_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDigestsSM3Digest, init)
}


#line 62
void OrgBouncycastleCryptoDigestsSM3Digest_initWithOrgBouncycastleCryptoDigestsSM3Digest_(OrgBouncycastleCryptoDigestsSM3Digest *self, OrgBouncycastleCryptoDigestsSM3Digest *t) {
  OrgBouncycastleCryptoDigestsGeneralDigest_initWithOrgBouncycastleCryptoDigestsGeneralDigest_(self,
#line 64
  t);
  self->V_ = [IOSIntArray newArrayWithLength:JreIntDiv(OrgBouncycastleCryptoDigestsSM3Digest_DIGEST_LENGTH,
#line 24
  4)];
  self->inwords_ = [IOSIntArray newArrayWithLength:OrgBouncycastleCryptoDigestsSM3Digest_BLOCK_SIZE];
  self->W_ = [IOSIntArray newArrayWithLength:
#line 29
  68];
  
#line 66
  OrgBouncycastleCryptoDigestsSM3Digest_copyInWithOrgBouncycastleCryptoDigestsSM3Digest_(self, t);
}


#line 62
OrgBouncycastleCryptoDigestsSM3Digest *new_OrgBouncycastleCryptoDigestsSM3Digest_initWithOrgBouncycastleCryptoDigestsSM3Digest_(OrgBouncycastleCryptoDigestsSM3Digest *t) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDigestsSM3Digest, initWithOrgBouncycastleCryptoDigestsSM3Digest_, t)
}


#line 62
OrgBouncycastleCryptoDigestsSM3Digest *create_OrgBouncycastleCryptoDigestsSM3Digest_initWithOrgBouncycastleCryptoDigestsSM3Digest_(OrgBouncycastleCryptoDigestsSM3Digest *t) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDigestsSM3Digest, initWithOrgBouncycastleCryptoDigestsSM3Digest_, t)
}


#line 69
void OrgBouncycastleCryptoDigestsSM3Digest_copyInWithOrgBouncycastleCryptoDigestsSM3Digest_(OrgBouncycastleCryptoDigestsSM3Digest *self, OrgBouncycastleCryptoDigestsSM3Digest *t) {
  
#line 71
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(((OrgBouncycastleCryptoDigestsSM3Digest *) nil_chk(t))->V_, 0, self->V_, 0, ((IOSIntArray *) nil_chk(self->V_))->size_);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(t->inwords_, 0, self->inwords_, 0, ((IOSIntArray *) nil_chk(self->inwords_))->size_);
  self->xOff_ = t->xOff_;
}


#line 221
jint OrgBouncycastleCryptoDigestsSM3Digest_P0WithInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x) {
  
#line 223
  jint r9 = ((JreLShift32(x, 9)) | (JreURShift32(x, (32 - 9))));
  jint r17 = ((JreLShift32(x, 17)) | (JreURShift32(x, (32 - 17))));
  return (x ^ r9 ^ r17);
}


#line 228
jint OrgBouncycastleCryptoDigestsSM3Digest_P1WithInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x) {
  
#line 230
  jint r15 = ((JreLShift32(x, 15)) | (JreURShift32(x, (32 - 15))));
  jint r23 = ((JreLShift32(x, 23)) | (JreURShift32(x, (32 - 23))));
  return (x ^ r15 ^ r23);
}


#line 235
jint OrgBouncycastleCryptoDigestsSM3Digest_FF0WithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x, jint y, jint z) {
  
#line 237
  return (x ^ y ^ z);
}


#line 240
jint OrgBouncycastleCryptoDigestsSM3Digest_FF1WithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x, jint y, jint z) {
  
#line 242
  return ((x & y) | (x & z) | (y & z));
}


#line 245
jint OrgBouncycastleCryptoDigestsSM3Digest_GG0WithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x, jint y, jint z) {
  
#line 247
  return (x ^ y ^ z);
}


#line 250
jint OrgBouncycastleCryptoDigestsSM3Digest_GG1WithInt_withInt_withInt_(OrgBouncycastleCryptoDigestsSM3Digest *self, jint x, jint y, jint z) {
  
#line 252
  return ((x & y) | ((~x) & z));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDigestsSM3Digest)
