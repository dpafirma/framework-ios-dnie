//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/math/linearalgebra/GF2nField.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "java/math/BigInteger.h"
#include "java/security/SecureRandom.h"
#include "java/util/Vector.h"
#include "org/bouncycastle/pqc/math/linearalgebra/GF2Polynomial.h"
#include "org/bouncycastle/pqc/math/linearalgebra/GF2nElement.h"
#include "org/bouncycastle/pqc/math/linearalgebra/GF2nField.h"
#include "org/bouncycastle/pqc/math/linearalgebra/GF2nONBElement.h"
#include "org/bouncycastle/pqc/math/linearalgebra/GF2nONBField.h"
#include "org/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement.h"
#include "org/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/math/linearalgebra/GF2nField must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/math/linearalgebra/GF2nField.java"


#line 17
@implementation OrgBouncycastlePqcMathLinearalgebraGF2nField


#line 43
- (instancetype)initWithJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random {
  OrgBouncycastlePqcMathLinearalgebraGF2nField_initWithJavaSecuritySecureRandom_(self, random);
  return self;
}


#line 53
- (jint)getDegree {
  
#line 55
  return mDegree_;
}


#line 63
- (OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *)getFieldPolynomial {
  
#line 65
  if (fieldPolynomial_ == nil) {
    
#line 67
    [self computeFieldPolynomial];
  }
  return new_OrgBouncycastlePqcMathLinearalgebraGF2Polynomial_initWithOrgBouncycastlePqcMathLinearalgebraGF2Polynomial_(fieldPolynomial_);
}


#line 79
- (jboolean)isEqual:(id)other {
  
#line 82
  if (other == nil || !([other isKindOfClass:[OrgBouncycastlePqcMathLinearalgebraGF2nField class]])) {
    
#line 84
    return false;
  }
  
#line 87
  OrgBouncycastlePqcMathLinearalgebraGF2nField *otherField = (OrgBouncycastlePqcMathLinearalgebraGF2nField *) cast_chk(other, [OrgBouncycastlePqcMathLinearalgebraGF2nField class]);
  
#line 89
  if (otherField->mDegree_ != mDegree_) {
    
#line 91
    return false;
  }
  if (![((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(fieldPolynomial_)) isEqual:otherField->fieldPolynomial_]) {
    
#line 95
    return false;
  }
  if (([self isKindOfClass:[OrgBouncycastlePqcMathLinearalgebraGF2nPolynomialField class]]) &&
#line 98
  !([otherField isKindOfClass:[OrgBouncycastlePqcMathLinearalgebraGF2nPolynomialField class]])) {
    
#line 100
    return false;
  }
  if (([self isKindOfClass:[OrgBouncycastlePqcMathLinearalgebraGF2nONBField class]]) &&
#line 103
  !([otherField isKindOfClass:[OrgBouncycastlePqcMathLinearalgebraGF2nONBField class]])) {
    
#line 105
    return false;
  }
  return true;
}


#line 113
- (NSUInteger)hash {
  
#line 116
  return mDegree_ + ((jint) [((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(fieldPolynomial_)) hash]);
}


#line 129
- (OrgBouncycastlePqcMathLinearalgebraGF2nElement *)getRandomRootWithOrgBouncycastlePqcMathLinearalgebraGF2Polynomial:(OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *)B0FieldPolynomial {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 138
- (void)computeCOBMatrixWithOrgBouncycastlePqcMathLinearalgebraGF2nField:(OrgBouncycastlePqcMathLinearalgebraGF2nField *)B1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)computeFieldPolynomial {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 151
- (IOSObjectArray *)invertMatrixWithOrgBouncycastlePqcMathLinearalgebraGF2PolynomialArray:(IOSObjectArray *)matrix {
  
#line 153
  IOSObjectArray *a = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(matrix))->size_ type:OrgBouncycastlePqcMathLinearalgebraGF2Polynomial_class_()];
  IOSObjectArray *inv = [IOSObjectArray newArrayWithLength:matrix->size_ type:OrgBouncycastlePqcMathLinearalgebraGF2Polynomial_class_()];
  OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *dummy;
  jint i;
  
#line 156
  jint j;
  
#line 158
  for (i = 0; i < mDegree_; i++) {
    
#line 160
    (void) IOSObjectArray_SetAndConsume(a, i, new_OrgBouncycastlePqcMathLinearalgebraGF2Polynomial_initWithOrgBouncycastlePqcMathLinearalgebraGF2Polynomial_(IOSObjectArray_Get(matrix, i)));
    (void) IOSObjectArray_SetAndConsume(inv, i, new_OrgBouncycastlePqcMathLinearalgebraGF2Polynomial_initWithInt_(mDegree_));
    [((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(IOSObjectArray_Get(inv, i))) setBitWithInt:mDegree_ - 1 - i];
  }
  
#line 166
  for (i = 0; i < mDegree_ - 1; i++) {
    
#line 169
    j = i;
    while ((j < mDegree_) && ![((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(IOSObjectArray_Get(a, j))) testBitWithInt:mDegree_ - 1 - i]) {
      
#line 172
      j++;
    }
    if (j >= mDegree_) {
      
#line 176
      @throw new_JavaLangRuntimeException_initWithNSString_(
#line 177
      @"GF2nField.invertMatrix: Matrix cannot be inverted!");
    }
    if (i != j) {
      
#line 181
      dummy = IOSObjectArray_Get(a, i);
      (void) IOSObjectArray_Set(a, i, IOSObjectArray_Get(a, j));
      (void) IOSObjectArray_Set(a, j, dummy);
      dummy = IOSObjectArray_Get(inv, i);
      (void) IOSObjectArray_Set(inv, i, IOSObjectArray_Get(inv, j));
      (void) IOSObjectArray_Set(inv, j, dummy);
    }
    for (j = i + 1; j < mDegree_; j++) {
      
#line 191
      if ([((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(IOSObjectArray_Get(a, j))) testBitWithInt:mDegree_ - 1 - i]) {
        
#line 193
        [((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(IOSObjectArray_Get(a, j))) addToThisWithOrgBouncycastlePqcMathLinearalgebraGF2Polynomial:IOSObjectArray_Get(a, i)];
        [((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(IOSObjectArray_Get(inv, j))) addToThisWithOrgBouncycastlePqcMathLinearalgebraGF2Polynomial:IOSObjectArray_Get(inv, i)];
      }
    }
  }
  
#line 199
  for (i = mDegree_ - 1; i > 0; i--) {
    
#line 201
    for (j = i - 1; j >= 0; j--) {
      
#line 204
      if ([((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(IOSObjectArray_Get(a, j))) testBitWithInt:mDegree_ - 1 - i]) {
        
#line 206
        [((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(IOSObjectArray_Get(a, j))) addToThisWithOrgBouncycastlePqcMathLinearalgebraGF2Polynomial:IOSObjectArray_Get(a, i)];
        [((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(IOSObjectArray_Get(inv, j))) addToThisWithOrgBouncycastlePqcMathLinearalgebraGF2Polynomial:IOSObjectArray_Get(inv, i)];
      }
    }
  }
  return inv;
}

- (OrgBouncycastlePqcMathLinearalgebraGF2nElement *)convertWithOrgBouncycastlePqcMathLinearalgebraGF2nElement:(OrgBouncycastlePqcMathLinearalgebraGF2nElement *)elem
                                                             withOrgBouncycastlePqcMathLinearalgebraGF2nField:(OrgBouncycastlePqcMathLinearalgebraGF2nField *)basis {
  
#line 231
  if (JreObjectEqualsEquals(basis, self)) {
    
#line 233
    return (OrgBouncycastlePqcMathLinearalgebraGF2nElement *) cast_chk([((OrgBouncycastlePqcMathLinearalgebraGF2nElement *) nil_chk(elem)) java_clone], [OrgBouncycastlePqcMathLinearalgebraGF2nElement class]);
  }
  if ([((OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *) nil_chk(fieldPolynomial_)) isEqual:((OrgBouncycastlePqcMathLinearalgebraGF2nField *) nil_chk(basis))->fieldPolynomial_]) {
    
#line 237
    return (OrgBouncycastlePqcMathLinearalgebraGF2nElement *) cast_chk([((OrgBouncycastlePqcMathLinearalgebraGF2nElement *) nil_chk(elem)) java_clone], [OrgBouncycastlePqcMathLinearalgebraGF2nElement class]);
  }
  if (mDegree_ != basis->mDegree_) {
    
#line 241
    @throw new_JavaLangRuntimeException_initWithNSString_(@"GF2nField.convert: B1 has a different degree and thus cannot be coverted to!");
  }
  
#line 245
  jint i;
  IOSObjectArray *COBMatrix;
  i = [((JavaUtilVector *) nil_chk(fields_)) indexOfWithId:basis];
  if (i == -1) {
    
#line 250
    [self computeCOBMatrixWithOrgBouncycastlePqcMathLinearalgebraGF2nField:basis];
    i = [((JavaUtilVector *) nil_chk(fields_)) indexOfWithId:basis];
  }
  COBMatrix = (IOSObjectArray *) cast_check([((JavaUtilVector *) nil_chk(matrices_)) elementAtWithInt:i], IOSClass_arrayType(OrgBouncycastlePqcMathLinearalgebraGF2Polynomial_class_(), 1));
  
#line 255
  OrgBouncycastlePqcMathLinearalgebraGF2nElement *elemCopy = (OrgBouncycastlePqcMathLinearalgebraGF2nElement *) cast_chk([((OrgBouncycastlePqcMathLinearalgebraGF2nElement *) nil_chk(elem)) java_clone], [OrgBouncycastlePqcMathLinearalgebraGF2nElement class]);
  if ([elemCopy isKindOfClass:[OrgBouncycastlePqcMathLinearalgebraGF2nONBElement class]]) {
    
#line 259
    [((OrgBouncycastlePqcMathLinearalgebraGF2nONBElement *) nil_chk(((OrgBouncycastlePqcMathLinearalgebraGF2nONBElement *) elemCopy))) reverseOrder];
  }
  OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *bs = new_OrgBouncycastlePqcMathLinearalgebraGF2Polynomial_initWithInt_withJavaMathBigInteger_(mDegree_, [((OrgBouncycastlePqcMathLinearalgebraGF2nElement *) nil_chk(elemCopy)) toFlexiBigInt]);
  [bs expandNWithInt:mDegree_];
  OrgBouncycastlePqcMathLinearalgebraGF2Polynomial *result = new_OrgBouncycastlePqcMathLinearalgebraGF2Polynomial_initWithInt_(mDegree_);
  for (i = 0; i < mDegree_; i++) {
    
#line 266
    if ([bs vectorMultWithOrgBouncycastlePqcMathLinearalgebraGF2Polynomial:IOSObjectArray_Get(nil_chk(COBMatrix), i)]) {
      
#line 268
      [result setBitWithInt:mDegree_ - 1 - i];
    }
  }
  if ([basis isKindOfClass:[OrgBouncycastlePqcMathLinearalgebraGF2nPolynomialField class]]) {
    
#line 273
    return new_OrgBouncycastlePqcMathLinearalgebraGF2nPolynomialElement_initWithOrgBouncycastlePqcMathLinearalgebraGF2nPolynomialField_withOrgBouncycastlePqcMathLinearalgebraGF2Polynomial_((OrgBouncycastlePqcMathLinearalgebraGF2nPolynomialField *) basis,
#line 274
    result);
  }
  else if ([basis isKindOfClass:[OrgBouncycastlePqcMathLinearalgebraGF2nONBField class]]) {
    
#line 278
    OrgBouncycastlePqcMathLinearalgebraGF2nONBElement *res = new_OrgBouncycastlePqcMathLinearalgebraGF2nONBElement_initWithOrgBouncycastlePqcMathLinearalgebraGF2nONBField_withJavaMathBigInteger_((OrgBouncycastlePqcMathLinearalgebraGF2nONBField *) basis,
#line 279
    [result toFlexiBigInt]);
    
#line 281
    [res reverseOrder];
    return res;
  }
  else {
    
#line 286
    @throw new_JavaLangRuntimeException_initWithNSString_(
#line 287
    @"GF2nField.convert: B1 must be an instance of GF2nPolynomialField or GF2nONBField!");
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcMathLinearalgebraGF2Polynomial;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcMathLinearalgebraGF2nElement;", 0x404, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x404, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x404, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LOrgBouncycastlePqcMathLinearalgebraGF2Polynomial;", 0x14, 8, 9, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastlePqcMathLinearalgebraGF2nElement;", 0x11, 10, 11, 12, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaSecuritySecureRandom:);
  methods[1].selector = @selector(getDegree);
  methods[2].selector = @selector(getFieldPolynomial);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(getRandomRootWithOrgBouncycastlePqcMathLinearalgebraGF2Polynomial:);
  methods[6].selector = @selector(computeCOBMatrixWithOrgBouncycastlePqcMathLinearalgebraGF2nField:);
  methods[7].selector = @selector(computeFieldPolynomial);
  methods[8].selector = @selector(invertMatrixWithOrgBouncycastlePqcMathLinearalgebraGF2PolynomialArray:);
  methods[9].selector = @selector(convertWithOrgBouncycastlePqcMathLinearalgebraGF2nElement:withOrgBouncycastlePqcMathLinearalgebraGF2nField:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "random_", "LJavaSecuritySecureRandom;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "mDegree_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "fieldPolynomial_", "LOrgBouncycastlePqcMathLinearalgebraGF2Polynomial;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "fields_", "LJavaUtilVector;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "matrices_", "LJavaUtilVector;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaSecuritySecureRandom;", "equals", "LNSObject;", "hashCode", "getRandomRoot", "LOrgBouncycastlePqcMathLinearalgebraGF2Polynomial;", "computeCOBMatrix", "LOrgBouncycastlePqcMathLinearalgebraGF2nField;", "invertMatrix", "[LOrgBouncycastlePqcMathLinearalgebraGF2Polynomial;", "convert", "LOrgBouncycastlePqcMathLinearalgebraGF2nElement;LOrgBouncycastlePqcMathLinearalgebraGF2nField;", "LJavaLangRuntimeException;" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcMathLinearalgebraGF2nField = { "GF2nField", "org.bouncycastle.pqc.math.linearalgebra", ptrTable, methods, fields, 7, 0x401, 10, 5, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcMathLinearalgebraGF2nField;
}

@end


#line 43
void OrgBouncycastlePqcMathLinearalgebraGF2nField_initWithJavaSecuritySecureRandom_(OrgBouncycastlePqcMathLinearalgebraGF2nField *self, JavaSecuritySecureRandom *random) {
  NSObject_init(self);
  self->random_ = random;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcMathLinearalgebraGF2nField)
