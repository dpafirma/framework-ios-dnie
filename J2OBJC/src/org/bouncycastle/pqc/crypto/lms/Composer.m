//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/lms/Composer.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/RuntimeException.h"
#include "org/bouncycastle/pqc/crypto/lms/Composer.h"
#include "org/bouncycastle/util/Encodable.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/crypto/lms/Composer must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastlePqcCryptoLmsComposer () {
 @public
  JavaIoByteArrayOutputStream *bos_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastlePqcCryptoLmsComposer, bos_, JavaIoByteArrayOutputStream *)

__attribute__((unused)) static void OrgBouncycastlePqcCryptoLmsComposer_init(OrgBouncycastlePqcCryptoLmsComposer *self);

__attribute__((unused)) static OrgBouncycastlePqcCryptoLmsComposer *new_OrgBouncycastlePqcCryptoLmsComposer_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgBouncycastlePqcCryptoLmsComposer *create_OrgBouncycastlePqcCryptoLmsComposer_init(void);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/lms/Composer.java"


#line 10
@implementation OrgBouncycastlePqcCryptoLmsComposer

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 14
- (instancetype)init {
  OrgBouncycastlePqcCryptoLmsComposer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 19
+ (OrgBouncycastlePqcCryptoLmsComposer *)compose {
  return OrgBouncycastlePqcCryptoLmsComposer_compose();
}


#line 24
- (OrgBouncycastlePqcCryptoLmsComposer *)u64strWithLong:(jlong)n {
  
#line 26
  (void) [self u32strWithInt:(jint) (JreURShift64(n, 32))];
  (void) [self u32strWithInt:(jint) n];
  
#line 29
  return self;
}


#line 32
- (OrgBouncycastlePqcCryptoLmsComposer *)u32strWithInt:(jint)n {
  
#line 34
  [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithInt:(jbyte) (JreURShift32(n, 24))];
  [bos_ writeWithInt:(jbyte) (JreURShift32(n, 16))];
  [bos_ writeWithInt:(jbyte) (JreURShift32(n, 8))];
  [bos_ writeWithInt:(jbyte) (n)];
  return self;
}


#line 41
- (OrgBouncycastlePqcCryptoLmsComposer *)u16strWithInt:(jint)n {
  
#line 43
  n &= (jint) 0xFFFF;
  [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithInt:(jbyte) (JreURShift32(n, 8))];
  [bos_ writeWithInt:(jbyte) (n)];
  return self;
}


#line 49
- (OrgBouncycastlePqcCryptoLmsComposer *)bytesWithOrgBouncycastleUtilEncodableArray:(IOSObjectArray *)encodable {
  
#line 51
  @try {
    {
      IOSObjectArray *a__ = encodable;
      id<OrgBouncycastleUtilEncodable> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      id<OrgBouncycastleUtilEncodable> const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        id<OrgBouncycastleUtilEncodable> e = *b__++;
        
#line 55
        [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithByteArray:[((id<OrgBouncycastleUtilEncodable>) nil_chk(e)) getEncoded]];
      }
    }
  }
  @catch (
#line 58
  JavaLangException *ex) {
    
#line 60
    @throw new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_([ex getMessage], ex);
  }
  
#line 63
  return self;
}


#line 67
- (OrgBouncycastlePqcCryptoLmsComposer *)bytesWithOrgBouncycastleUtilEncodable:(id<OrgBouncycastleUtilEncodable>)encodable {
  
#line 69
  @try {
    
#line 71
    [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithByteArray:[((id<OrgBouncycastleUtilEncodable>) nil_chk(encodable)) getEncoded]];
  }
  @catch (JavaLangException *ex) {
    
#line 75
    @throw new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_([ex getMessage], ex);
  }
  
#line 78
  return self;
}


#line 81
- (OrgBouncycastlePqcCryptoLmsComposer *)padWithInt:(jint)v
                                            withInt:(jint)len {
  for (; len >= 0; len--) {
    
#line 85
    @try {
      
#line 88
      [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithInt:v];
    }
    @catch (
#line 91
    JavaLangException *ex) {
      
#line 93
      @throw new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_([ex getMessage], ex);
    }
  }
  
#line 97
  return self;
}


#line 100
- (OrgBouncycastlePqcCryptoLmsComposer *)bytesWithByteArray2:(IOSObjectArray *)arrays {
  
#line 102
  @try {
    {
      IOSObjectArray *a__ = arrays;
      IOSByteArray * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      IOSByteArray * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        IOSByteArray *array = *b__++;
        
#line 106
        [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithByteArray:array];
      }
    }
  }
  @catch (
#line 109
  JavaLangException *ex) {
    
#line 111
    @throw new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_([ex getMessage], ex);
  }
  
#line 114
  return self;
}


#line 117
- (OrgBouncycastlePqcCryptoLmsComposer *)bytesWithByteArray2:(IOSObjectArray *)arrays
                                                     withInt:(jint)start
                                                     withInt:(jint)end {
  
#line 119
  @try {
    
#line 121
    jint j = start;
    while (j != end) {
      
#line 124
      [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithByteArray:IOSObjectArray_Get(nil_chk(arrays), j)];
      j++;
    }
  }
  @catch (JavaLangException *ex) {
    
#line 130
    @throw new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_([ex getMessage], ex);
  }
  
#line 133
  return self;
}


#line 137
- (OrgBouncycastlePqcCryptoLmsComposer *)bytesWithByteArray:(IOSByteArray *)array {
  
#line 139
  @try {
    
#line 141
    [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithByteArray:array];
  }
  @catch (JavaLangException *ex) {
    
#line 145
    @throw new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_([ex getMessage], ex);
  }
  
#line 148
  return self;
}


#line 152
- (OrgBouncycastlePqcCryptoLmsComposer *)bytesWithByteArray:(IOSByteArray *)array
                                                    withInt:(jint)start
                                                    withInt:(jint)len {
  
#line 154
  @try {
    
#line 156
    [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithByteArray:array withInt:start withInt:len];
  }
  @catch (JavaLangException *ex) {
    
#line 160
    @throw new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_([ex getMessage], ex);
  }
  
#line 163
  return self;
}


#line 166
- (IOSByteArray *)build {
  
#line 168
  return [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) toByteArray];
}


#line 171
- (OrgBouncycastlePqcCryptoLmsComposer *)padUntilWithInt:(jint)v
                                                 withInt:(jint)requiredLen {
  while ([((JavaIoByteArrayOutputStream *) nil_chk(bos_)) size] < requiredLen) {
    
#line 175
    [bos_ writeWithInt:v];
  }
  
#line 178
  return self;
}


#line 181
- (OrgBouncycastlePqcCryptoLmsComposer *)bool__WithBoolean:(jboolean)v {
  
#line 183
  [((JavaIoByteArrayOutputStream *) nil_chk(bos_)) writeWithInt:v ? 1 : 0];
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 5, 7, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 5, 10, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 5, 11, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 5, 12, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 5, 13, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 14, 9, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcCryptoLmsComposer;", 0x1, 15, 16, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compose);
  methods[2].selector = @selector(u64strWithLong:);
  methods[3].selector = @selector(u32strWithInt:);
  methods[4].selector = @selector(u16strWithInt:);
  methods[5].selector = @selector(bytesWithOrgBouncycastleUtilEncodableArray:);
  methods[6].selector = @selector(bytesWithOrgBouncycastleUtilEncodable:);
  methods[7].selector = @selector(padWithInt:withInt:);
  methods[8].selector = @selector(bytesWithByteArray2:);
  methods[9].selector = @selector(bytesWithByteArray2:withInt:withInt:);
  methods[10].selector = @selector(bytesWithByteArray:);
  methods[11].selector = @selector(bytesWithByteArray:withInt:withInt:);
  methods[12].selector = @selector(build);
  methods[13].selector = @selector(padUntilWithInt:withInt:);
  methods[14].selector = @selector(bool__WithBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "bos_", "LJavaIoByteArrayOutputStream;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "u64str", "J", "u32str", "I", "u16str", "bytes", "[LOrgBouncycastleUtilEncodable;", "LOrgBouncycastleUtilEncodable;", "pad", "II", "[[B", "[[BII", "[B", "[BII", "padUntil", "bool", "Z" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcCryptoLmsComposer = { "Composer", "org.bouncycastle.pqc.crypto.lms", ptrTable, methods, fields, 7, 0x1, 15, 1, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcCryptoLmsComposer;
}

@end


#line 14
void OrgBouncycastlePqcCryptoLmsComposer_init(OrgBouncycastlePqcCryptoLmsComposer *self) {
  NSObject_init(self);
  self->bos_ = new_JavaIoByteArrayOutputStream_init();
}


#line 14
OrgBouncycastlePqcCryptoLmsComposer *new_OrgBouncycastlePqcCryptoLmsComposer_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcCryptoLmsComposer, init)
}


#line 14
OrgBouncycastlePqcCryptoLmsComposer *create_OrgBouncycastlePqcCryptoLmsComposer_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcCryptoLmsComposer, init)
}


#line 19
OrgBouncycastlePqcCryptoLmsComposer *OrgBouncycastlePqcCryptoLmsComposer_compose() {
  OrgBouncycastlePqcCryptoLmsComposer_initialize();
  return new_OrgBouncycastlePqcCryptoLmsComposer_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcCryptoLmsComposer)
