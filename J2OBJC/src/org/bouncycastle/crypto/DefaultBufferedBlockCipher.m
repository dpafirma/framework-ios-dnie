//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/DefaultBufferedBlockCipher.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "org/bouncycastle/crypto/BlockCipher.h"
#include "org/bouncycastle/crypto/BufferedBlockCipher.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/DataLengthException.h"
#include "org/bouncycastle/crypto/DefaultBufferedBlockCipher.h"
#include "org/bouncycastle/crypto/MultiBlockCipher.h"
#include "org/bouncycastle/crypto/OutputLengthException.h"
#include "org/bouncycastle/crypto/StreamCipher.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/crypto/DefaultBufferedBlockCipher must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/DefaultBufferedBlockCipher.java"


#line 14
@implementation OrgBouncycastleCryptoDefaultBufferedBlockCipher

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 30
- (instancetype)init {
  OrgBouncycastleCryptoDefaultBufferedBlockCipher_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 39
- (instancetype)initWithOrgBouncycastleCryptoBlockCipher:(id<OrgBouncycastleCryptoBlockCipher>)cipher {
  OrgBouncycastleCryptoDefaultBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(self, cipher);
  return self;
}


#line 80
- (id<OrgBouncycastleCryptoBlockCipher>)getUnderlyingCipher {
  
#line 82
  return cipher_DefaultBufferedBlockCipher_;
}


#line 94
- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)params {
  
#line 99
  self->forEncryption_DefaultBufferedBlockCipher_ = forEncryption;
  
#line 101
  [self reset];
  
#line 103
  [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) init__WithBoolean:forEncryption withOrgBouncycastleCryptoCipherParameters:params];
}


#line 111
- (jint)getBlockSize {
  
#line 113
  return [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) getBlockSize];
}


#line 124
- (jint)getUpdateOutputSizeWithInt:(jint)len {
  
#line 127
  jint total = len + bufOff_DefaultBufferedBlockCipher_;
  jint leftOver;
  
#line 130
  if (pgpCFB_DefaultBufferedBlockCipher_) {
    
#line 132
    if (forEncryption_DefaultBufferedBlockCipher_) {
      
#line 134
      leftOver = JreIntMod(total, ((IOSByteArray *) nil_chk(buf_DefaultBufferedBlockCipher_))->size_) - ([((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) getBlockSize] + 2);
    }
    else {
      
#line 138
      leftOver = JreIntMod(total, ((IOSByteArray *) nil_chk(buf_DefaultBufferedBlockCipher_))->size_);
    }
  }
  else {
    
#line 143
    leftOver = JreIntMod(total, ((IOSByteArray *) nil_chk(buf_DefaultBufferedBlockCipher_))->size_);
  }
  
#line 146
  return total - leftOver;
}


#line 157
- (jint)getOutputSizeWithInt:(jint)length {
  
#line 160
  if (pgpCFB_DefaultBufferedBlockCipher_ && forEncryption_DefaultBufferedBlockCipher_) {
    
#line 162
    return length + bufOff_DefaultBufferedBlockCipher_ + ([((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) getBlockSize] + 2);
  }
  
#line 166
  return length + bufOff_DefaultBufferedBlockCipher_;
}


#line 179
- (jint)processByteWithByte:(jbyte)inArg
              withByteArray:(IOSByteArray *)outArg
                    withInt:(jint)outOff {
  
#line 185
  jint resultLen = 0;
  
#line 187
  *IOSByteArray_GetRef(nil_chk(buf_DefaultBufferedBlockCipher_), bufOff_DefaultBufferedBlockCipher_++) = inArg;
  
#line 189
  if (bufOff_DefaultBufferedBlockCipher_ == buf_DefaultBufferedBlockCipher_->size_) {
    
#line 191
    resultLen = [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) processBlockWithByteArray:buf_DefaultBufferedBlockCipher_ withInt:0 withByteArray:outArg withInt:outOff];
    bufOff_DefaultBufferedBlockCipher_ = 0;
  }
  
#line 195
  return resultLen;
}


#line 210
- (jint)processBytesWithByteArray:(IOSByteArray *)inArg
                          withInt:(jint)inOff
                          withInt:(jint)len
                    withByteArray:(IOSByteArray *)outArg
                          withInt:(jint)outOff {
  
#line 218
  if (len < 0) {
    
#line 220
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Can't have a negative input length!");
  }
  
#line 223
  jint blockSize = [self getBlockSize];
  jint length = [self getUpdateOutputSizeWithInt:len];
  
#line 226
  if (length > 0) {
    
#line 228
    if ((outOff + length) > ((IOSByteArray *) nil_chk(outArg))->size_) {
      
#line 230
      @throw new_OrgBouncycastleCryptoOutputLengthException_initWithNSString_(@"output buffer too short");
    }
  }
  
#line 234
  jint resultLen = 0;
  jint gapLen = ((IOSByteArray *) nil_chk(buf_DefaultBufferedBlockCipher_))->size_ - bufOff_DefaultBufferedBlockCipher_;
  
#line 237
  if (len > gapLen) {
    
#line 239
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(inArg, inOff, buf_DefaultBufferedBlockCipher_, bufOff_DefaultBufferedBlockCipher_, gapLen);
    
#line 241
    resultLen += [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) processBlockWithByteArray:buf_DefaultBufferedBlockCipher_ withInt:0 withByteArray:outArg withInt:outOff];
    
#line 243
    bufOff_DefaultBufferedBlockCipher_ = 0;
    len -= gapLen;
    inOff += gapLen;
    
#line 247
    if (mbCipher_ != nil) {
      
#line 249
      jint blockCount = JreIntDiv(len, [mbCipher_ getMultiBlockSize]);
      
#line 251
      if (blockCount > 0) {
        
#line 253
        resultLen += [((id<OrgBouncycastleCryptoMultiBlockCipher>) nil_chk(mbCipher_)) processBlocksWithByteArray:inArg withInt:inOff withInt:blockCount withByteArray:outArg withInt:outOff + resultLen];
        
#line 255
        jint processed = blockCount * [((id<OrgBouncycastleCryptoMultiBlockCipher>) nil_chk(mbCipher_)) getMultiBlockSize];
        
#line 257
        len -= processed;
        inOff += processed;
      }
    }
    else {
      
#line 263
      while (len > ((IOSByteArray *) nil_chk(buf_DefaultBufferedBlockCipher_))->size_) {
        
#line 265
        resultLen += [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) processBlockWithByteArray:inArg withInt:inOff withByteArray:outArg withInt:outOff + resultLen];
        
#line 267
        len -= blockSize;
        inOff += blockSize;
      }
    }
  }
  
#line 273
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(inArg, inOff, buf_DefaultBufferedBlockCipher_, bufOff_DefaultBufferedBlockCipher_, len);
  
#line 275
  bufOff_DefaultBufferedBlockCipher_ += len;
  
#line 277
  if (bufOff_DefaultBufferedBlockCipher_ == ((IOSByteArray *) nil_chk(buf_DefaultBufferedBlockCipher_))->size_) {
    
#line 279
    resultLen += [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) processBlockWithByteArray:buf_DefaultBufferedBlockCipher_ withInt:0 withByteArray:outArg withInt:outOff + resultLen];
    bufOff_DefaultBufferedBlockCipher_ = 0;
  }
  
#line 283
  return resultLen;
}


#line 300
- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff {
  
#line 305
  @try {
    
#line 307
    jint resultLen = 0;
    
#line 309
    if (outOff + bufOff_DefaultBufferedBlockCipher_ > ((IOSByteArray *) nil_chk(outArg))->size_) {
      
#line 311
      @throw new_OrgBouncycastleCryptoOutputLengthException_initWithNSString_(@"output buffer too short for doFinal()");
    }
    
#line 314
    if (bufOff_DefaultBufferedBlockCipher_ != 0) {
      
#line 316
      if (!partialBlockOkay_DefaultBufferedBlockCipher_) {
        
#line 318
        @throw new_OrgBouncycastleCryptoDataLengthException_initWithNSString_(@"data not block size aligned");
      }
      
#line 321
      [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) processBlockWithByteArray:buf_DefaultBufferedBlockCipher_ withInt:0 withByteArray:buf_DefaultBufferedBlockCipher_ withInt:0];
      resultLen = bufOff_DefaultBufferedBlockCipher_;
      bufOff_DefaultBufferedBlockCipher_ = 0;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf_DefaultBufferedBlockCipher_, 0, outArg, outOff, resultLen);
    }
    
#line 327
    return resultLen;
  }
  @finally {
    
#line 331
    [self reset];
  }
}


#line 339
- (void)reset {
  
#line 344
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(buf_DefaultBufferedBlockCipher_))->size_; i++) {
    
#line 346
    *IOSByteArray_GetRef(buf_DefaultBufferedBlockCipher_, i) = 0;
  }
  
#line 349
  bufOff_DefaultBufferedBlockCipher_ = 0;
  
#line 354
  [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher_DefaultBufferedBlockCipher_)) reset];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleCryptoBlockCipher;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, 8, 9, -1, -1, -1 },
    { NULL, "I", 0x1, 10, 11, 9, -1, -1, -1 },
    { NULL, "I", 0x1, 12, 13, 14, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgBouncycastleCryptoBlockCipher:);
  methods[2].selector = @selector(getUnderlyingCipher);
  methods[3].selector = @selector(init__WithBoolean:withOrgBouncycastleCryptoCipherParameters:);
  methods[4].selector = @selector(getBlockSize);
  methods[5].selector = @selector(getUpdateOutputSizeWithInt:);
  methods[6].selector = @selector(getOutputSizeWithInt:);
  methods[7].selector = @selector(processByteWithByte:withByteArray:withInt:);
  methods[8].selector = @selector(processBytesWithByteArray:withInt:withInt:withByteArray:withInt:);
  methods[9].selector = @selector(doFinalWithByteArray:withInt:);
  methods[10].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buf_DefaultBufferedBlockCipher_", "[B", .constantValue.asLong = 0, 0x4, 15, -1, -1, -1 },
    { "bufOff_DefaultBufferedBlockCipher_", "I", .constantValue.asLong = 0, 0x4, 16, -1, -1, -1 },
    { "forEncryption_DefaultBufferedBlockCipher_", "Z", .constantValue.asLong = 0, 0x4, 17, -1, -1, -1 },
    { "cipher_DefaultBufferedBlockCipher_", "LOrgBouncycastleCryptoBlockCipher;", .constantValue.asLong = 0, 0x4, 18, -1, -1, -1 },
    { "mbCipher_", "LOrgBouncycastleCryptoMultiBlockCipher;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "partialBlockOkay_DefaultBufferedBlockCipher_", "Z", .constantValue.asLong = 0, 0x4, 19, -1, -1, -1 },
    { "pgpCFB_DefaultBufferedBlockCipher_", "Z", .constantValue.asLong = 0, 0x4, 20, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgBouncycastleCryptoBlockCipher;", "init", "ZLOrgBouncycastleCryptoCipherParameters;", "LJavaLangIllegalArgumentException;", "getUpdateOutputSize", "I", "getOutputSize", "processByte", "B[BI", "LOrgBouncycastleCryptoDataLengthException;LJavaLangIllegalStateException;", "processBytes", "[BII[BI", "doFinal", "[BI", "LOrgBouncycastleCryptoDataLengthException;LJavaLangIllegalStateException;LOrgBouncycastleCryptoInvalidCipherTextException;", "buf", "bufOff", "forEncryption", "cipher", "partialBlockOkay", "pgpCFB" };
  static const J2ObjcClassInfo _OrgBouncycastleCryptoDefaultBufferedBlockCipher = { "DefaultBufferedBlockCipher", "org.bouncycastle.crypto", ptrTable, methods, fields, 7, 0x1, 11, 7, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleCryptoDefaultBufferedBlockCipher;
}

@end


#line 30
void OrgBouncycastleCryptoDefaultBufferedBlockCipher_init(OrgBouncycastleCryptoDefaultBufferedBlockCipher *self) {
  OrgBouncycastleCryptoBufferedBlockCipher_init(self);
}


#line 30
OrgBouncycastleCryptoDefaultBufferedBlockCipher *new_OrgBouncycastleCryptoDefaultBufferedBlockCipher_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDefaultBufferedBlockCipher, init)
}


#line 30
OrgBouncycastleCryptoDefaultBufferedBlockCipher *create_OrgBouncycastleCryptoDefaultBufferedBlockCipher_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDefaultBufferedBlockCipher, init)
}


#line 39
void OrgBouncycastleCryptoDefaultBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(OrgBouncycastleCryptoDefaultBufferedBlockCipher *self, id<OrgBouncycastleCryptoBlockCipher> cipher) {
  OrgBouncycastleCryptoBufferedBlockCipher_init(self);
  
#line 42
  self->cipher_DefaultBufferedBlockCipher_ = cipher;
  
#line 44
  if ([OrgBouncycastleCryptoMultiBlockCipher_class_() isInstance:cipher]) {
    
#line 46
    self->mbCipher_ = (id<OrgBouncycastleCryptoMultiBlockCipher>) cast_check(cipher, OrgBouncycastleCryptoMultiBlockCipher_class_());
    self->buf_DefaultBufferedBlockCipher_ = [IOSByteArray newArrayWithLength:[((id<OrgBouncycastleCryptoMultiBlockCipher>) nil_chk(self->mbCipher_)) getMultiBlockSize]];
  }
  else {
    
#line 51
    self->mbCipher_ = nil;
    self->buf_DefaultBufferedBlockCipher_ = [IOSByteArray newArrayWithLength:[((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher)) getBlockSize]];
  }
  
#line 55
  self->bufOff_DefaultBufferedBlockCipher_ = 0;
  
#line 60
  NSString *name = [((id<OrgBouncycastleCryptoBlockCipher>) nil_chk(cipher)) getAlgorithmName];
  jint idx = [((NSString *) nil_chk(name)) java_indexOf:'/'] + 1;
  
#line 63
  self->pgpCFB_DefaultBufferedBlockCipher_ = (idx > 0 && [name java_hasPrefix:@"PGP" offset:idx]);
  
#line 65
  if (self->pgpCFB_DefaultBufferedBlockCipher_ || [OrgBouncycastleCryptoStreamCipher_class_() isInstance:cipher]) {
    
#line 67
    self->partialBlockOkay_DefaultBufferedBlockCipher_ = true;
  }
  else {
    
#line 71
    self->partialBlockOkay_DefaultBufferedBlockCipher_ = (idx > 0 && ([name java_hasPrefix:@"OpenPGP" offset:idx]));
  }
}


#line 39
OrgBouncycastleCryptoDefaultBufferedBlockCipher *new_OrgBouncycastleCryptoDefaultBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(id<OrgBouncycastleCryptoBlockCipher> cipher) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDefaultBufferedBlockCipher, initWithOrgBouncycastleCryptoBlockCipher_, cipher)
}


#line 39
OrgBouncycastleCryptoDefaultBufferedBlockCipher *create_OrgBouncycastleCryptoDefaultBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(id<OrgBouncycastleCryptoBlockCipher> cipher) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDefaultBufferedBlockCipher, initWithOrgBouncycastleCryptoBlockCipher_, cipher)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDefaultBufferedBlockCipher)
