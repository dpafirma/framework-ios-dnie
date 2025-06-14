//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/params/DHParameters.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/crypto/params/DHParameters.h"
#include "org/bouncycastle/crypto/params/DHValidationParameters.h"
#include "org/bouncycastle/util/Properties.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/crypto/params/DHParameters must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleCryptoParamsDHParameters () {
 @public
  JavaMathBigInteger *g_;
  JavaMathBigInteger *p_;
  JavaMathBigInteger *q_;
  JavaMathBigInteger *j_;
  jint m_;
  jint l_;
  OrgBouncycastleCryptoParamsDHValidationParameters *validation_;
}

+ (jint)getDefaultMParamWithInt:(jint)lParam;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsDHParameters, g_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsDHParameters, p_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsDHParameters, q_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsDHParameters, j_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsDHParameters, validation_, OrgBouncycastleCryptoParamsDHValidationParameters *)

inline jint OrgBouncycastleCryptoParamsDHParameters_get_DEFAULT_MINIMUM_LENGTH(void);
#define OrgBouncycastleCryptoParamsDHParameters_DEFAULT_MINIMUM_LENGTH 160
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleCryptoParamsDHParameters, DEFAULT_MINIMUM_LENGTH, jint)

__attribute__((unused)) static jint OrgBouncycastleCryptoParamsDHParameters_getDefaultMParamWithInt_(jint lParam);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/params/DHParameters.java"


#line 8
@implementation OrgBouncycastleCryptoParamsDHParameters


#line 22
+ (jint)getDefaultMParamWithInt:(jint)lParam {
  return OrgBouncycastleCryptoParamsDHParameters_getDefaultMParamWithInt_(lParam);
}


#line 33
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_(self, p, g);
  return self;
}


#line 40
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(self, p, g, q);
  return self;
}


#line 48
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                                   withInt:(jint)l {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(self, p, g, q, l);
  return self;
}


#line 57
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                                   withInt:(jint)m
                                   withInt:(jint)l {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_(self, p, g, q, m, l);
  return self;
}


#line 67
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                    withJavaMathBigInteger:(JavaMathBigInteger *)j
withOrgBouncycastleCryptoParamsDHValidationParameters:(OrgBouncycastleCryptoParamsDHValidationParameters *)validation {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(self, p, g, q, j, validation);
  return self;
}


#line 77
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)p
                    withJavaMathBigInteger:(JavaMathBigInteger *)g
                    withJavaMathBigInteger:(JavaMathBigInteger *)q
                                   withInt:(jint)m
                                   withInt:(jint)l
                    withJavaMathBigInteger:(JavaMathBigInteger *)j
withOrgBouncycastleCryptoParamsDHValidationParameters:(OrgBouncycastleCryptoParamsDHValidationParameters *)validation {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(self, p, g, q, m, l, j, validation);
  return self;
}


#line 112
- (JavaMathBigInteger *)getP {
  
#line 114
  return p_;
}


#line 117
- (JavaMathBigInteger *)getG {
  
#line 119
  return g_;
}


#line 122
- (JavaMathBigInteger *)getQ {
  
#line 124
  return q_;
}


#line 132
- (JavaMathBigInteger *)getJ {
  
#line 134
  return j_;
}


#line 142
- (jint)getM {
  
#line 144
  return m_;
}


#line 152
- (jint)getL {
  
#line 154
  return l_;
}


#line 157
- (OrgBouncycastleCryptoParamsDHValidationParameters *)getValidationParameters {
  
#line 159
  return validation_;
}


#line 162
- (jboolean)isEqual:(id)obj {
  
#line 166
  if (!([obj isKindOfClass:[OrgBouncycastleCryptoParamsDHParameters class]])) {
    
#line 168
    return false;
  }
  
#line 171
  OrgBouncycastleCryptoParamsDHParameters *pm = (OrgBouncycastleCryptoParamsDHParameters *) cast_chk(obj, [OrgBouncycastleCryptoParamsDHParameters class]);
  
#line 173
  if ([self getQ] != nil) {
    
#line 175
    if (![((JavaMathBigInteger *) nil_chk([self getQ])) isEqual:[((OrgBouncycastleCryptoParamsDHParameters *) nil_chk(pm)) getQ]]) {
      
#line 177
      return false;
    }
  }
  else {
    
#line 182
    if ([((OrgBouncycastleCryptoParamsDHParameters *) nil_chk(pm)) getQ] != nil) {
      
#line 184
      return false;
    }
  }
  
#line 188
  return [((JavaMathBigInteger *) nil_chk([pm getP])) isEqual:p_] && [((JavaMathBigInteger *) nil_chk([pm getG])) isEqual:g_];
}


#line 191
- (NSUInteger)hash {
  
#line 194
  return ((jint) [((JavaMathBigInteger *) nil_chk([self getP])) hash]) ^ ((jint) [((JavaMathBigInteger *) nil_chk([self getG])) hash]) ^ ([self getQ] != nil ? ((jint) [((JavaMathBigInteger *) nil_chk([self getQ])) hash]) : 0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0xa, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 6, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 7, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleCryptoParamsDHValidationParameters;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getDefaultMParamWithInt:);
  methods[1].selector = @selector(initWithJavaMathBigInteger:withJavaMathBigInteger:);
  methods[2].selector = @selector(initWithJavaMathBigInteger:withJavaMathBigInteger:withJavaMathBigInteger:);
  methods[3].selector = @selector(initWithJavaMathBigInteger:withJavaMathBigInteger:withJavaMathBigInteger:withInt:);
  methods[4].selector = @selector(initWithJavaMathBigInteger:withJavaMathBigInteger:withJavaMathBigInteger:withInt:withInt:);
  methods[5].selector = @selector(initWithJavaMathBigInteger:withJavaMathBigInteger:withJavaMathBigInteger:withJavaMathBigInteger:withOrgBouncycastleCryptoParamsDHValidationParameters:);
  methods[6].selector = @selector(initWithJavaMathBigInteger:withJavaMathBigInteger:withJavaMathBigInteger:withInt:withInt:withJavaMathBigInteger:withOrgBouncycastleCryptoParamsDHValidationParameters:);
  methods[7].selector = @selector(getP);
  methods[8].selector = @selector(getG);
  methods[9].selector = @selector(getQ);
  methods[10].selector = @selector(getJ);
  methods[11].selector = @selector(getM);
  methods[12].selector = @selector(getL);
  methods[13].selector = @selector(getValidationParameters);
  methods[14].selector = @selector(isEqual:);
  methods[15].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MINIMUM_LENGTH", "I", .constantValue.asInt = OrgBouncycastleCryptoParamsDHParameters_DEFAULT_MINIMUM_LENGTH, 0x1a, -1, -1, -1, -1 },
    { "g_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "p_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "q_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "j_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "m_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "l_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "validation_", "LOrgBouncycastleCryptoParamsDHValidationParameters;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getDefaultMParam", "I", "LJavaMathBigInteger;LJavaMathBigInteger;", "LJavaMathBigInteger;LJavaMathBigInteger;LJavaMathBigInteger;", "LJavaMathBigInteger;LJavaMathBigInteger;LJavaMathBigInteger;I", "LJavaMathBigInteger;LJavaMathBigInteger;LJavaMathBigInteger;II", "LJavaMathBigInteger;LJavaMathBigInteger;LJavaMathBigInteger;LJavaMathBigInteger;LOrgBouncycastleCryptoParamsDHValidationParameters;", "LJavaMathBigInteger;LJavaMathBigInteger;LJavaMathBigInteger;IILJavaMathBigInteger;LOrgBouncycastleCryptoParamsDHValidationParameters;", "equals", "LNSObject;", "hashCode" };
  static const J2ObjcClassInfo _OrgBouncycastleCryptoParamsDHParameters = { "DHParameters", "org.bouncycastle.crypto.params", ptrTable, methods, fields, 7, 0x1, 16, 8, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleCryptoParamsDHParameters;
}

@end


#line 22
jint OrgBouncycastleCryptoParamsDHParameters_getDefaultMParamWithInt_(jint lParam) {
  OrgBouncycastleCryptoParamsDHParameters_initialize();
  
#line 25
  if (lParam == 0) {
    
#line 27
    return OrgBouncycastleCryptoParamsDHParameters_DEFAULT_MINIMUM_LENGTH;
  }
  
#line 30
  return lParam < OrgBouncycastleCryptoParamsDHParameters_DEFAULT_MINIMUM_LENGTH ? lParam : OrgBouncycastleCryptoParamsDHParameters_DEFAULT_MINIMUM_LENGTH;
}


#line 33
void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g) {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(self,
#line 37
  p, g, nil, 0);
}


#line 33
OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *g) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_, p, g)
}


#line 33
OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *g) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_, p, g)
}


#line 40
void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q) {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(self,
#line 45
  p, g, q, 0);
}


#line 40
OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_, p, g, q)
}


#line 40
OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_, p, g, q)
}


#line 48
void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint l) {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(self,
#line 54
  p, g, q, OrgBouncycastleCryptoParamsDHParameters_getDefaultMParamWithInt_(l), l, nil, nil);
}


#line 48
OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint l) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_, p, g, q, l)
}


#line 48
OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint l) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_, p, g, q, l)
}


#line 57
void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l) {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(self,
#line 64
  p, g, q, m, l, nil, nil);
}


#line 57
OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_, p, g, q, m, l)
}


#line 57
OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_, p, g, q, m, l)
}


#line 67
void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation) {
  OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(self,
#line 74
  p, g, q, OrgBouncycastleCryptoParamsDHParameters_DEFAULT_MINIMUM_LENGTH, 0, j, validation);
}


#line 67
OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_, p, g, q, j, validation)
}


#line 67
OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_, p, g, q, j, validation)
}


#line 77
void OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(OrgBouncycastleCryptoParamsDHParameters *self, JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation) {
  NSObject_init(self);
  
#line 86
  if (l != 0) {
    
#line 88
    if (l > [((JavaMathBigInteger *) nil_chk(p)) bitLength]) {
      
#line 90
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"when l value specified, it must satisfy 2^(l-1) <= p");
    }
    if (l < m) {
      
#line 94
      @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"when l value specified, it may not be less than m value");
    }
  }
  
#line 98
  if (m > [((JavaMathBigInteger *) nil_chk(p)) bitLength] && !OrgBouncycastleUtilProperties_isOverrideSetWithNSString_(@"org.bouncycastle.dh.allow_unsafe_p_value")) {
    
#line 100
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"unsafe p value so small specific l required");
  }
  
#line 103
  self->g_ = g;
  self->p_ = p;
  self->q_ = q;
  self->m_ = m;
  self->l_ = l;
  self->j_ = j;
  self->validation_ = validation;
}


#line 77
OrgBouncycastleCryptoParamsDHParameters *new_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_, p, g, q, m, l, j, validation)
}


#line 77
OrgBouncycastleCryptoParamsDHParameters *create_OrgBouncycastleCryptoParamsDHParameters_initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_(JavaMathBigInteger *p, JavaMathBigInteger *g, JavaMathBigInteger *q, jint m, jint l, JavaMathBigInteger *j, OrgBouncycastleCryptoParamsDHValidationParameters *validation) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoParamsDHParameters, initWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_withInt_withInt_withJavaMathBigInteger_withOrgBouncycastleCryptoParamsDHValidationParameters_, p, g, q, m, l, j, validation)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsDHParameters)
