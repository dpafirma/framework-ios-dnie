//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/digests/KeccakDigest.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "org/bouncycastle/crypto/digests/KeccakDigest.h"
#include "org/bouncycastle/util/Arrays.h"
#include "org/bouncycastle/util/Pack.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/crypto/digests/KeccakDigest must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleCryptoDigestsKeccakDigest ()

- (void)init__WithInt:(jint)bitLength OBJC_METHOD_FAMILY_NONE;

- (void)initSpongeWithInt:(jint)rate OBJC_METHOD_FAMILY_NONE;

- (void)padAndSwitchToSqueezingPhase;

- (void)KeccakAbsorbWithByteArray:(IOSByteArray *)data
                          withInt:(jint)off;

- (void)KeccakExtract;

- (void)KeccakPermutation;

@end

inline IOSLongArray *OrgBouncycastleCryptoDigestsKeccakDigest_get_KeccakRoundConstants(void);
inline IOSLongArray *OrgBouncycastleCryptoDigestsKeccakDigest_set_KeccakRoundConstants(IOSLongArray *value);
static IOSLongArray *OrgBouncycastleCryptoDigestsKeccakDigest_KeccakRoundConstants;
J2OBJC_STATIC_FIELD_OBJ(OrgBouncycastleCryptoDigestsKeccakDigest, KeccakRoundConstants, IOSLongArray *)

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsKeccakDigest_init__WithInt_(OrgBouncycastleCryptoDigestsKeccakDigest *self, jint bitLength);

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsKeccakDigest_initSpongeWithInt_(OrgBouncycastleCryptoDigestsKeccakDigest *self, jint rate);

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsKeccakDigest_padAndSwitchToSqueezingPhase(OrgBouncycastleCryptoDigestsKeccakDigest *self);

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsKeccakDigest_KeccakAbsorbWithByteArray_withInt_(OrgBouncycastleCryptoDigestsKeccakDigest *self, IOSByteArray *data, jint off);

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsKeccakDigest_KeccakExtract(OrgBouncycastleCryptoDigestsKeccakDigest *self);

__attribute__((unused)) static void OrgBouncycastleCryptoDigestsKeccakDigest_KeccakPermutation(OrgBouncycastleCryptoDigestsKeccakDigest *self);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/digests/KeccakDigest.java"

J2OBJC_INITIALIZED_DEFN(OrgBouncycastleCryptoDigestsKeccakDigest)


#line 12
@implementation OrgBouncycastleCryptoDigestsKeccakDigest

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 29
- (instancetype)init {
  OrgBouncycastleCryptoDigestsKeccakDigest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 34
- (instancetype)initWithInt:(jint)bitLength {
  OrgBouncycastleCryptoDigestsKeccakDigest_initWithInt_(self, bitLength);
  return self;
}

- (instancetype)initWithOrgBouncycastleCryptoDigestsKeccakDigest:(OrgBouncycastleCryptoDigestsKeccakDigest *)source {
  OrgBouncycastleCryptoDigestsKeccakDigest_initWithOrgBouncycastleCryptoDigestsKeccakDigest_(self, source);
  return self;
}


#line 49
- (NSString *)getAlgorithmName {
  
#line 52
  return JreStrcat("$I", @"Keccak-", fixedOutputLength_);
}

- (jint)getDigestSize {
  
#line 58
  return JreIntDiv(fixedOutputLength_, 8);
}

- (void)updateWithByte:(jbyte)inArg {
  
#line 64
  [self absorbWithByte:inArg];
}

- (void)updateWithByteArray:(IOSByteArray *)inArg
                    withInt:(jint)inOff
                    withInt:(jint)len {
  [self absorbWithByteArray:inArg withInt:inOff withInt:len];
}

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  
#line 76
  [self squeezeWithByteArray:outArg withInt:outOff withLong:fixedOutputLength_];
  
#line 78
  [self reset];
  
#line 80
  return [self getDigestSize];
}

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff
                    withByte:(jbyte)partialByte
                     withInt:(jint)partialBits {
  
#line 88
  if (partialBits > 0) {
    
#line 90
    [self absorbBitsWithInt:partialByte withInt:partialBits];
  }
  
#line 93
  [self squeezeWithByteArray:outArg withInt:outOff withLong:fixedOutputLength_];
  
#line 95
  [self reset];
  
#line 97
  return [self getDigestSize];
}


#line 100
- (void)reset {
  
#line 103
  OrgBouncycastleCryptoDigestsKeccakDigest_init__WithInt_(self, fixedOutputLength_);
}


#line 111
- (jint)getByteLength {
  
#line 114
  return JreIntDiv(rate_, 8);
}

- (void)init__WithInt:(jint)bitLength {
  OrgBouncycastleCryptoDigestsKeccakDigest_init__WithInt_(self, bitLength);
}


#line 134
- (void)initSpongeWithInt:(jint)rate {
  OrgBouncycastleCryptoDigestsKeccakDigest_initSpongeWithInt_(self, rate);
}


#line 149
- (void)absorbWithByte:(jbyte)data {
  
#line 151
  if (JreIntMod(bitsInQueue_, 8) != 0) {
    
#line 153
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb with odd length queue");
  }
  if (squeezing_) {
    
#line 157
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb while squeezing");
  }
  
#line 160
  *IOSByteArray_GetRef(nil_chk(dataQueue_), JreURShift32(bitsInQueue_, 3)) = data;
  if ((bitsInQueue_ += 8) == rate_) {
    
#line 163
    OrgBouncycastleCryptoDigestsKeccakDigest_KeccakAbsorbWithByteArray_withInt_(self, dataQueue_, 0);
    bitsInQueue_ = 0;
  }
}


#line 168
- (void)absorbWithByteArray:(IOSByteArray *)data
                    withInt:(jint)off
                    withInt:(jint)len {
  
#line 170
  if (JreIntMod(bitsInQueue_, 8) != 0) {
    
#line 172
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb with odd length queue");
  }
  if (squeezing_) {
    
#line 176
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb while squeezing");
  }
  
#line 179
  jint bytesInQueue = JreURShift32(bitsInQueue_, 3);
  jint rateBytes = JreURShift32(rate_, 3);
  
#line 182
  jint available = rateBytes - bytesInQueue;
  if (len < available) {
    
#line 185
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, off, dataQueue_, bytesInQueue, len);
    bitsInQueue_ += JreLShift32(len, 3);
    return;
  }
  
#line 190
  jint count = 0;
  if (bytesInQueue > 0) {
    
#line 193
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, off, dataQueue_, bytesInQueue, available);
    count += available;
    OrgBouncycastleCryptoDigestsKeccakDigest_KeccakAbsorbWithByteArray_withInt_(self, dataQueue_, 0);
  }
  
#line 198
  jint remaining;
  while ((remaining = len - count) >= rateBytes) {
    
#line 201
    OrgBouncycastleCryptoDigestsKeccakDigest_KeccakAbsorbWithByteArray_withInt_(self, data, off + count);
    count += rateBytes;
  }
  
#line 205
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, off + count, dataQueue_, 0, remaining);
  bitsInQueue_ = JreLShift32(remaining, 3);
}


#line 209
- (void)absorbBitsWithInt:(jint)data
                  withInt:(jint)bits {
  if (bits < 1 || bits > 7) {
    
#line 213
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"'bits' must be in the range 1 to 7");
  }
  if (JreIntMod(bitsInQueue_, 8) != 0) {
    
#line 217
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb with odd length queue");
  }
  if (squeezing_) {
    
#line 221
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"attempt to absorb while squeezing");
  }
  
#line 224
  jint mask = (JreLShift32(1, bits)) - 1;
  *IOSByteArray_GetRef(nil_chk(dataQueue_), JreURShift32(bitsInQueue_, 3)) = (jbyte) (data & mask);
  
#line 228
  bitsInQueue_ += bits;
}


#line 231
- (void)padAndSwitchToSqueezingPhase {
  OrgBouncycastleCryptoDigestsKeccakDigest_padAndSwitchToSqueezingPhase(self);
}


#line 262
- (void)squeezeWithByteArray:(IOSByteArray *)output
                     withInt:(jint)offset
                    withLong:(jlong)outputLength {
  
#line 264
  if (!squeezing_) {
    
#line 266
    OrgBouncycastleCryptoDigestsKeccakDigest_padAndSwitchToSqueezingPhase(self);
  }
  
#line 269
  if (JreLongMod(outputLength, 8) != 0) {
    
#line 271
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"outputLength not a multiple of 8");
  }
  
#line 274
  jlong i = 0;
  while (i < outputLength) {
    
#line 277
    if (bitsInQueue_ == 0) {
      
#line 279
      OrgBouncycastleCryptoDigestsKeccakDigest_KeccakExtract(self);
    }
    jint partialBlock = (jint) JavaLangMath_minWithLong_withLong_(bitsInQueue_, outputLength - i);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(dataQueue_, JreIntDiv((rate_ - bitsInQueue_), 8), output, offset + (jint) (JreLongDiv(i, 8)), JreIntDiv(partialBlock, 8));
    bitsInQueue_ -= partialBlock;
    i += partialBlock;
  }
}


#line 288
- (void)KeccakAbsorbWithByteArray:(IOSByteArray *)data
                          withInt:(jint)off {
  OrgBouncycastleCryptoDigestsKeccakDigest_KeccakAbsorbWithByteArray_withInt_(self, data, off);
}


#line 302
- (void)KeccakExtract {
  OrgBouncycastleCryptoDigestsKeccakDigest_KeccakExtract(self);
}


#line 313
- (void)KeccakPermutation {
  OrgBouncycastleCryptoDigestsKeccakDigest_KeccakPermutation(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 5, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 8, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 9, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 10, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 10, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 15, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(initWithOrgBouncycastleCryptoDigestsKeccakDigest:);
  methods[3].selector = @selector(getAlgorithmName);
  methods[4].selector = @selector(getDigestSize);
  methods[5].selector = @selector(updateWithByte:);
  methods[6].selector = @selector(updateWithByteArray:withInt:withInt:);
  methods[7].selector = @selector(doFinalWithByteArray:withInt:);
  methods[8].selector = @selector(doFinalWithByteArray:withInt:withByte:withInt:);
  methods[9].selector = @selector(reset);
  methods[10].selector = @selector(getByteLength);
  methods[11].selector = @selector(init__WithInt:);
  methods[12].selector = @selector(initSpongeWithInt:);
  methods[13].selector = @selector(absorbWithByte:);
  methods[14].selector = @selector(absorbWithByteArray:withInt:withInt:);
  methods[15].selector = @selector(absorbBitsWithInt:withInt:);
  methods[16].selector = @selector(padAndSwitchToSqueezingPhase);
  methods[17].selector = @selector(squeezeWithByteArray:withInt:withLong:);
  methods[18].selector = @selector(KeccakAbsorbWithByteArray:withInt:);
  methods[19].selector = @selector(KeccakExtract);
  methods[20].selector = @selector(KeccakPermutation);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "KeccakRoundConstants", "[J", .constantValue.asLong = 0, 0xa, -1, 16, -1, -1 },
    { "state_", "[J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "dataQueue_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "rate_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "bitsInQueue_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "fixedOutputLength_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "squeezing_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "LOrgBouncycastleCryptoDigestsKeccakDigest;", "update", "B", "[BII", "doFinal", "[BI", "[BIBI", "init", "initSponge", "absorb", "absorbBits", "II", "squeeze", "[BIJ", "KeccakAbsorb", &OrgBouncycastleCryptoDigestsKeccakDigest_KeccakRoundConstants };
  static const J2ObjcClassInfo _OrgBouncycastleCryptoDigestsKeccakDigest = { "KeccakDigest", "org.bouncycastle.crypto.digests", ptrTable, methods, fields, 7, 0x1, 21, 7, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleCryptoDigestsKeccakDigest;
}

+ (void)initialize {
  if (self == [OrgBouncycastleCryptoDigestsKeccakDigest class]) {
    OrgBouncycastleCryptoDigestsKeccakDigest_KeccakRoundConstants = [IOSLongArray newArrayWithLongs:(jlong[]){
#line 15
      (jlong) 0x0000000000000001LL, (jlong) 0x0000000000008082LL,
#line 16
      (jlong) 0x800000000000808aLL, (jlong) 0x8000000080008000LL, (jlong) 0x000000000000808bLL, (jlong) 0x0000000080000001LL, (jlong) 0x8000000080008081LL,
#line 17
      (jlong) 0x8000000000008009LL, (jlong) 0x000000000000008aLL, (jlong) 0x0000000000000088LL, (jlong) 0x0000000080008009LL, (jlong) 0x000000008000000aLL,
#line 18
      (jlong) 0x000000008000808bLL, (jlong) 0x800000000000008bLL, (jlong) 0x8000000000008089LL, (jlong) 0x8000000000008003LL, (jlong) 0x8000000000008002LL,
#line 19
      (jlong) 0x8000000000000080LL, (jlong) 0x000000000000800aLL, (jlong) 0x800000008000000aLL, (jlong) 0x8000000080008081LL, (jlong) 0x8000000000008080LL,
#line 20
      (jlong) 0x0000000080000001LL, (jlong) 0x8000000080008008LL } count:24];
      J2OBJC_SET_INITIALIZED(OrgBouncycastleCryptoDigestsKeccakDigest)
    }
  }

@end


#line 29
void OrgBouncycastleCryptoDigestsKeccakDigest_init(OrgBouncycastleCryptoDigestsKeccakDigest *self) {
  OrgBouncycastleCryptoDigestsKeccakDigest_initWithInt_(self,
#line 31
  288);
}


#line 29
OrgBouncycastleCryptoDigestsKeccakDigest *new_OrgBouncycastleCryptoDigestsKeccakDigest_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDigestsKeccakDigest, init)
}


#line 29
OrgBouncycastleCryptoDigestsKeccakDigest *create_OrgBouncycastleCryptoDigestsKeccakDigest_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDigestsKeccakDigest, init)
}


#line 34
void OrgBouncycastleCryptoDigestsKeccakDigest_initWithInt_(OrgBouncycastleCryptoDigestsKeccakDigest *self, jint bitLength) {
  NSObject_init(self);
  self->state_ = [IOSLongArray newArrayWithLength:
#line 22
  25];
  self->dataQueue_ = [IOSByteArray newArrayWithLength:192];
  
#line 36
  OrgBouncycastleCryptoDigestsKeccakDigest_init__WithInt_(self, bitLength);
}


#line 34
OrgBouncycastleCryptoDigestsKeccakDigest *new_OrgBouncycastleCryptoDigestsKeccakDigest_initWithInt_(jint bitLength) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDigestsKeccakDigest, initWithInt_, bitLength)
}


#line 34
OrgBouncycastleCryptoDigestsKeccakDigest *create_OrgBouncycastleCryptoDigestsKeccakDigest_initWithInt_(jint bitLength) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDigestsKeccakDigest, initWithInt_, bitLength)
}


#line 39
void OrgBouncycastleCryptoDigestsKeccakDigest_initWithOrgBouncycastleCryptoDigestsKeccakDigest_(OrgBouncycastleCryptoDigestsKeccakDigest *self, OrgBouncycastleCryptoDigestsKeccakDigest *source) {
  NSObject_init(self);
  self->state_ = [IOSLongArray newArrayWithLength:
#line 22
  25];
  self->dataQueue_ = [IOSByteArray newArrayWithLength:192];
  
#line 41
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(((OrgBouncycastleCryptoDigestsKeccakDigest *) nil_chk(source))->state_, 0, self->state_, 0, source->state_->size_);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(source->dataQueue_, 0, self->dataQueue_, 0, ((IOSByteArray *) nil_chk(source->dataQueue_))->size_);
  self->rate_ = source->rate_;
  self->bitsInQueue_ = source->bitsInQueue_;
  self->fixedOutputLength_ = source->fixedOutputLength_;
  self->squeezing_ = source->squeezing_;
}


#line 39
OrgBouncycastleCryptoDigestsKeccakDigest *new_OrgBouncycastleCryptoDigestsKeccakDigest_initWithOrgBouncycastleCryptoDigestsKeccakDigest_(OrgBouncycastleCryptoDigestsKeccakDigest *source) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDigestsKeccakDigest, initWithOrgBouncycastleCryptoDigestsKeccakDigest_, source)
}


#line 39
OrgBouncycastleCryptoDigestsKeccakDigest *create_OrgBouncycastleCryptoDigestsKeccakDigest_initWithOrgBouncycastleCryptoDigestsKeccakDigest_(OrgBouncycastleCryptoDigestsKeccakDigest *source) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDigestsKeccakDigest, initWithOrgBouncycastleCryptoDigestsKeccakDigest_, source)
}


#line 117
void OrgBouncycastleCryptoDigestsKeccakDigest_init__WithInt_(OrgBouncycastleCryptoDigestsKeccakDigest *self, jint bitLength) {
  
#line 119
  switch (bitLength) {
    
#line 121
    case 128:
    case 224:
    case 256:
    case 288:
    case 384:
    case 512:
    OrgBouncycastleCryptoDigestsKeccakDigest_initSpongeWithInt_(self, 1600 - (JreLShift32(bitLength, 1)));
    break;
    default:
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"bitLength must be one of 128, 224, 256, 288, 384, or 512.");
  }
}


#line 134
void OrgBouncycastleCryptoDigestsKeccakDigest_initSpongeWithInt_(OrgBouncycastleCryptoDigestsKeccakDigest *self, jint rate) {
  
#line 136
  if (rate <= 0 || rate >= 1600 || JreIntMod(rate, 64) != 0) {
    
#line 138
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"invalid rate value");
  }
  
#line 141
  self->rate_ = rate;
  JavaUtilArrays_fillWithLongArray_withLong_(self->state_, 0LL);
  OrgBouncycastleUtilArrays_fillWithByteArray_withByte_(self->dataQueue_, (jbyte) 0);
  self->bitsInQueue_ = 0;
  self->squeezing_ = false;
  self->fixedOutputLength_ = JreIntDiv((1600 - rate), 2);
}


#line 231
void OrgBouncycastleCryptoDigestsKeccakDigest_padAndSwitchToSqueezingPhase(OrgBouncycastleCryptoDigestsKeccakDigest *self) {
  
#line 233
  *IOSByteArray_GetRef(nil_chk(self->dataQueue_), JreURShift32(self->bitsInQueue_, 3)) |= (jbyte) (JreLShift32(1, (self->bitsInQueue_ & 7)));
  
#line 235
  if (++self->bitsInQueue_ == self->rate_) {
    
#line 237
    OrgBouncycastleCryptoDigestsKeccakDigest_KeccakAbsorbWithByteArray_withInt_(self, self->dataQueue_, 0);
  }
  else {
    
#line 241
    jint full = JreURShift32(self->bitsInQueue_, 6);
    
#line 241
    jint partial = self->bitsInQueue_ & 63;
    jint off = 0;
    for (jint i = 0; i < full; ++i) {
      
#line 245
      *IOSLongArray_GetRef(nil_chk(self->state_), i) ^= OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_(self->dataQueue_, off);
      off += 8;
    }
    
#line 249
    if (partial > 0) {
      
#line 251
      jlong mask = (JreLShift64(1LL, partial)) - 1LL;
      *IOSLongArray_GetRef(nil_chk(self->state_), full) ^= OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_(self->dataQueue_, off) & mask;
    }
  }
  
#line 256
  *IOSLongArray_GetRef(nil_chk(self->state_), JreURShift32(self->rate_ - 1, 6)) ^= JreLShift64(1LL, 63);
  
#line 258
  self->bitsInQueue_ = 0;
  self->squeezing_ = true;
}


#line 288
void OrgBouncycastleCryptoDigestsKeccakDigest_KeccakAbsorbWithByteArray_withInt_(OrgBouncycastleCryptoDigestsKeccakDigest *self, IOSByteArray *data, jint off) {
  
#line 292
  jint count = JreURShift32(self->rate_, 6);
  for (jint i = 0; i < count; ++i) {
    
#line 295
    *IOSLongArray_GetRef(nil_chk(self->state_), i) ^= OrgBouncycastleUtilPack_littleEndianToLongWithByteArray_withInt_(data, off);
    off += 8;
  }
  
#line 299
  OrgBouncycastleCryptoDigestsKeccakDigest_KeccakPermutation(self);
}


#line 302
void OrgBouncycastleCryptoDigestsKeccakDigest_KeccakExtract(OrgBouncycastleCryptoDigestsKeccakDigest *self) {
  
#line 306
  OrgBouncycastleCryptoDigestsKeccakDigest_KeccakPermutation(self);
  
#line 308
  OrgBouncycastleUtilPack_longToLittleEndianWithLongArray_withInt_withInt_withByteArray_withInt_(self->state_, 0, JreURShift32(self->rate_, 6), self->dataQueue_, 0);
  
#line 310
  self->bitsInQueue_ = self->rate_;
}


#line 313
void OrgBouncycastleCryptoDigestsKeccakDigest_KeccakPermutation(OrgBouncycastleCryptoDigestsKeccakDigest *self) {
  
#line 315
  IOSLongArray *A = self->state_;
  
#line 317
  jlong a00 = IOSLongArray_Get(nil_chk(A), 0);
  
#line 317
  jlong a01 = IOSLongArray_Get(A, 1);
  
#line 317
  jlong a02 = IOSLongArray_Get(A, 2);
  
#line 317
  jlong a03 = IOSLongArray_Get(A, 3);
  
#line 317
  jlong a04 = IOSLongArray_Get(A, 4);
  jlong a05 = IOSLongArray_Get(A, 5);
  
#line 318
  jlong a06 = IOSLongArray_Get(A, 6);
  
#line 318
  jlong a07 = IOSLongArray_Get(A, 7);
  
#line 318
  jlong a08 = IOSLongArray_Get(A, 8);
  
#line 318
  jlong a09 = IOSLongArray_Get(A, 9);
  jlong a10 = IOSLongArray_Get(A, 10);
  
#line 319
  jlong a11 = IOSLongArray_Get(A, 11);
  
#line 319
  jlong a12 = IOSLongArray_Get(A, 12);
  
#line 319
  jlong a13 = IOSLongArray_Get(A, 13);
  
#line 319
  jlong a14 = IOSLongArray_Get(A, 14);
  jlong a15 = IOSLongArray_Get(A, 15);
  
#line 320
  jlong a16 = IOSLongArray_Get(A, 16);
  
#line 320
  jlong a17 = IOSLongArray_Get(A, 17);
  
#line 320
  jlong a18 = IOSLongArray_Get(A, 18);
  
#line 320
  jlong a19 = IOSLongArray_Get(A, 19);
  jlong a20 = IOSLongArray_Get(A, 20);
  
#line 321
  jlong a21 = IOSLongArray_Get(A, 21);
  
#line 321
  jlong a22 = IOSLongArray_Get(A, 22);
  
#line 321
  jlong a23 = IOSLongArray_Get(A, 23);
  
#line 321
  jlong a24 = IOSLongArray_Get(A, 24);
  
#line 323
  for (jint i = 0; i < 24; i++) {
    
#line 326
    jlong c0 = a00 ^ a05 ^ a10 ^ a15 ^ a20;
    jlong c1 = a01 ^ a06 ^ a11 ^ a16 ^ a21;
    jlong c2 = a02 ^ a07 ^ a12 ^ a17 ^ a22;
    jlong c3 = a03 ^ a08 ^ a13 ^ a18 ^ a23;
    jlong c4 = a04 ^ a09 ^ a14 ^ a19 ^ a24;
    
#line 332
    jlong d1 = ((JreLShift64(c1, 1)) | (JreURShift64(c1, -1))) ^ c4;
    jlong d2 = ((JreLShift64(c2, 1)) | (JreURShift64(c2, -1))) ^ c0;
    jlong d3 = ((JreLShift64(c3, 1)) | (JreURShift64(c3, -1))) ^ c1;
    jlong d4 = ((JreLShift64(c4, 1)) | (JreURShift64(c4, -1))) ^ c2;
    jlong d0 = ((JreLShift64(c0, 1)) | (JreURShift64(c0, -1))) ^ c3;
    
#line 338
    a00 ^= d1;
    
#line 338
    a05 ^= d1;
    
#line 338
    a10 ^= d1;
    
#line 338
    a15 ^= d1;
    
#line 338
    a20 ^= d1;
    a01 ^= d2;
    
#line 339
    a06 ^= d2;
    
#line 339
    a11 ^= d2;
    
#line 339
    a16 ^= d2;
    
#line 339
    a21 ^= d2;
    a02 ^= d3;
    
#line 340
    a07 ^= d3;
    
#line 340
    a12 ^= d3;
    
#line 340
    a17 ^= d3;
    
#line 340
    a22 ^= d3;
    a03 ^= d4;
    
#line 341
    a08 ^= d4;
    
#line 341
    a13 ^= d4;
    
#line 341
    a18 ^= d4;
    
#line 341
    a23 ^= d4;
    a04 ^= d0;
    
#line 342
    a09 ^= d0;
    
#line 342
    a14 ^= d0;
    
#line 342
    a19 ^= d0;
    
#line 342
    a24 ^= d0;
    
#line 345
    c1 = (JreLShift64(a01, 1)) | (JreURShift64(a01, 63));
    a01 = (JreLShift64(a06, 44)) | (JreURShift64(a06, 20));
    a06 = (JreLShift64(a09, 20)) | (JreURShift64(a09, 44));
    a09 = (JreLShift64(a22, 61)) | (JreURShift64(a22, 3));
    a22 = (JreLShift64(a14, 39)) | (JreURShift64(a14, 25));
    a14 = (JreLShift64(a20, 18)) | (JreURShift64(a20, 46));
    a20 = (JreLShift64(a02, 62)) | (JreURShift64(a02, 2));
    a02 = (JreLShift64(a12, 43)) | (JreURShift64(a12, 21));
    a12 = (JreLShift64(a13, 25)) | (JreURShift64(a13, 39));
    a13 = (JreLShift64(a19, 8)) | (JreURShift64(a19, 56));
    a19 = (JreLShift64(a23, 56)) | (JreURShift64(a23, 8));
    a23 = (JreLShift64(a15, 41)) | (JreURShift64(a15, 23));
    a15 = (JreLShift64(a04, 27)) | (JreURShift64(a04, 37));
    a04 = (JreLShift64(a24, 14)) | (JreURShift64(a24, 50));
    a24 = (JreLShift64(a21, 2)) | (JreURShift64(a21, 62));
    a21 = (JreLShift64(a08, 55)) | (JreURShift64(a08, 9));
    a08 = (JreLShift64(a16, 45)) | (JreURShift64(a16, 19));
    a16 = (JreLShift64(a05, 36)) | (JreURShift64(a05, 28));
    a05 = (JreLShift64(a03, 28)) | (JreURShift64(a03, 36));
    a03 = (JreLShift64(a18, 21)) | (JreURShift64(a18, 43));
    a18 = (JreLShift64(a17, 15)) | (JreURShift64(a17, 49));
    a17 = (JreLShift64(a11, 10)) | (JreURShift64(a11, 54));
    a11 = (JreLShift64(a07, 6)) | (JreURShift64(a07, 58));
    a07 = (JreLShift64(a10, 3)) | (JreURShift64(a10, 61));
    a10 = c1;
    
#line 372
    c0 = a00 ^ ~a01 & a02;
    c1 = a01 ^ ~a02 & a03;
    a02 ^= ~a03 & a04;
    a03 ^= ~a04 & a00;
    a04 ^= ~a00 & a01;
    a00 = c0;
    a01 = c1;
    
#line 380
    c0 = a05 ^ ~a06 & a07;
    c1 = a06 ^ ~a07 & a08;
    a07 ^= ~a08 & a09;
    a08 ^= ~a09 & a05;
    a09 ^= ~a05 & a06;
    a05 = c0;
    a06 = c1;
    
#line 388
    c0 = a10 ^ ~a11 & a12;
    c1 = a11 ^ ~a12 & a13;
    a12 ^= ~a13 & a14;
    a13 ^= ~a14 & a10;
    a14 ^= ~a10 & a11;
    a10 = c0;
    a11 = c1;
    
#line 396
    c0 = a15 ^ ~a16 & a17;
    c1 = a16 ^ ~a17 & a18;
    a17 ^= ~a18 & a19;
    a18 ^= ~a19 & a15;
    a19 ^= ~a15 & a16;
    a15 = c0;
    a16 = c1;
    
#line 404
    c0 = a20 ^ ~a21 & a22;
    c1 = a21 ^ ~a22 & a23;
    a22 ^= ~a23 & a24;
    a23 ^= ~a24 & a20;
    a24 ^= ~a20 & a21;
    a20 = c0;
    a21 = c1;
    
#line 413
    a00 ^= IOSLongArray_Get(nil_chk(OrgBouncycastleCryptoDigestsKeccakDigest_KeccakRoundConstants), i);
  }
  
#line 416
  *IOSLongArray_GetRef(A, 0) = a00;
  
#line 416
  *IOSLongArray_GetRef(A, 1) = a01;
  
#line 416
  *IOSLongArray_GetRef(A, 2) = a02;
  
#line 416
  *IOSLongArray_GetRef(A, 3) = a03;
  
#line 416
  *IOSLongArray_GetRef(A, 4) = a04;
  *IOSLongArray_GetRef(A, 5) = a05;
  
#line 417
  *IOSLongArray_GetRef(A, 6) = a06;
  
#line 417
  *IOSLongArray_GetRef(A, 7) = a07;
  
#line 417
  *IOSLongArray_GetRef(A, 8) = a08;
  
#line 417
  *IOSLongArray_GetRef(A, 9) = a09;
  *IOSLongArray_GetRef(A, 10) = a10;
  
#line 418
  *IOSLongArray_GetRef(A, 11) = a11;
  
#line 418
  *IOSLongArray_GetRef(A, 12) = a12;
  
#line 418
  *IOSLongArray_GetRef(A, 13) = a13;
  
#line 418
  *IOSLongArray_GetRef(A, 14) = a14;
  *IOSLongArray_GetRef(A, 15) = a15;
  
#line 419
  *IOSLongArray_GetRef(A, 16) = a16;
  
#line 419
  *IOSLongArray_GetRef(A, 17) = a17;
  
#line 419
  *IOSLongArray_GetRef(A, 18) = a18;
  
#line 419
  *IOSLongArray_GetRef(A, 19) = a19;
  *IOSLongArray_GetRef(A, 20) = a20;
  
#line 420
  *IOSLongArray_GetRef(A, 21) = a21;
  
#line 420
  *IOSLongArray_GetRef(A, 22) = a22;
  
#line 420
  *IOSLongArray_GetRef(A, 23) = a23;
  
#line 420
  *IOSLongArray_GetRef(A, 24) = a24;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDigestsKeccakDigest)
