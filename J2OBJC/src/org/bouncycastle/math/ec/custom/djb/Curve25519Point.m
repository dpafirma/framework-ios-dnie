//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/ec/custom/djb/Curve25519Point.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/custom/djb/Curve25519Field.h"
#include "org/bouncycastle/math/ec/custom/djb/Curve25519FieldElement.h"
#include "org/bouncycastle/math/ec/custom/djb/Curve25519Point.h"
#include "org/bouncycastle/math/raw/Nat256.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/math/ec/custom/djb/Curve25519Point must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/ec/custom/djb/Curve25519Point.java"


#line 8
@implementation OrgBouncycastleMathEcCustomDjbCurve25519Point

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y {
  OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(self, curve, x, y);
  return self;
}


#line 15
- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
        withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs {
  OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(self, curve, x, y, zs);
  return self;
}


#line 20
- (OrgBouncycastleMathEcECPoint *)detach {
  
#line 23
  return new_OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(nil, [self getAffineXCoord], [self getAffineYCoord]);
}

- (OrgBouncycastleMathEcECFieldElement *)getZCoordWithInt:(jint)index {
  
#line 29
  if (index == 1) {
    
#line 31
    return [self getJacobianModifiedW];
  }
  
#line 34
  return [super getZCoordWithInt:index];
}


#line 37
- (OrgBouncycastleMathEcECPoint *)addWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b {
  
#line 40
  if ([self isInfinity]) {
    
#line 42
    return b;
  }
  if ([((OrgBouncycastleMathEcECPoint *) nil_chk(b)) isInfinity]) {
    
#line 46
    return self;
  }
  if (JreObjectEqualsEquals(self, b)) {
    
#line 50
    return [self twice];
  }
  
#line 53
  OrgBouncycastleMathEcECCurve *curve = [self getCurve];
  
#line 55
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *X1 = (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk(x_, [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  
#line 55
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Y1 = (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk(y_, [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  
#line 55
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Z1 =
#line 56
  (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk(IOSObjectArray_Get(nil_chk(zs_), 0), [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *X2 = (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk([b getXCoord], [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  
#line 57
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Y2 = (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk([b getYCoord], [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  
#line 57
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Z2 =
#line 58
  (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk([b getZCoordWithInt:0], [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  
#line 60
  jint c;
  IOSIntArray *tt1 = OrgBouncycastleMathRawNat256_createExt();
  IOSIntArray *t2 = OrgBouncycastleMathRawNat256_create();
  IOSIntArray *t3 = OrgBouncycastleMathRawNat256_create();
  IOSIntArray *t4 = OrgBouncycastleMathRawNat256_create();
  
#line 66
  jboolean Z1IsOne = [((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(Z1)) isOne];
  IOSIntArray *U2;
  
#line 67
  IOSIntArray *S2;
  if (Z1IsOne) {
    
#line 70
    U2 = ((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(X2))->x_;
    S2 = ((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(Y2))->x_;
  }
  else {
    
#line 75
    S2 = t3;
    OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(Z1->x_, S2);
    
#line 78
    U2 = t2;
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(S2, ((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(X2))->x_, U2);
    
#line 81
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(S2, Z1->x_, S2);
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(S2, ((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(Y2))->x_, S2);
  }
  
#line 85
  jboolean Z2IsOne = [((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(Z2)) isOne];
  IOSIntArray *U1;
  
#line 86
  IOSIntArray *S1;
  if (Z2IsOne) {
    
#line 89
    U1 = ((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(X1))->x_;
    S1 = ((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(Y1))->x_;
  }
  else {
    
#line 94
    S1 = t4;
    OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(Z2->x_, S1);
    
#line 97
    U1 = tt1;
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(S1, ((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(X1))->x_, U1);
    
#line 100
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(S1, Z2->x_, S1);
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(S1, ((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(Y1))->x_, S1);
  }
  
#line 104
  IOSIntArray *H = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(U1, U2, H);
  
#line 107
  IOSIntArray *R = t2;
  OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(S1, S2, R);
  
#line 111
  if (OrgBouncycastleMathRawNat256_isZeroWithIntArray_(H)) {
    
#line 113
    if (OrgBouncycastleMathRawNat256_isZeroWithIntArray_(R)) {
      
#line 116
      return [self twice];
    }
    
#line 120
    return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  }
  
#line 123
  IOSIntArray *HSquared = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(H, HSquared);
  
#line 126
  IOSIntArray *G = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(HSquared, H, G);
  
#line 129
  IOSIntArray *V = t3;
  OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(HSquared, U1, V);
  
#line 132
  OrgBouncycastleMathEcCustomDjbCurve25519Field_negateWithIntArray_withIntArray_(G, G);
  OrgBouncycastleMathRawNat256_mulWithIntArray_withIntArray_withIntArray_(S1, G, tt1);
  
#line 135
  c = OrgBouncycastleMathRawNat256_addBothToWithIntArray_withIntArray_withIntArray_(V, V, G);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_reduce27WithInt_withIntArray_(c, G);
  
#line 138
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *X3 = new_OrgBouncycastleMathEcCustomDjbCurve25519FieldElement_initWithIntArray_(t4);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(R, X3->x_);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(X3->x_, G, X3->x_);
  
#line 142
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Y3 = new_OrgBouncycastleMathEcCustomDjbCurve25519FieldElement_initWithIntArray_(G);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(V, X3->x_, Y3->x_);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyAddToExtWithIntArray_withIntArray_withIntArray_(Y3->x_, R, tt1);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_reduceWithIntArray_withIntArray_(tt1, Y3->x_);
  
#line 147
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Z3 = new_OrgBouncycastleMathEcCustomDjbCurve25519FieldElement_initWithIntArray_(H);
  if (!Z1IsOne) {
    
#line 150
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(Z3->x_, Z1->x_, Z3->x_);
  }
  if (!Z2IsOne) {
    
#line 154
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(Z3->x_, Z2->x_, Z3->x_);
  }
  
#line 157
  IOSIntArray *Z3Squared = Z1IsOne && Z2IsOne ? HSquared : nil;
  
#line 160
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *W3 = [self calculateJacobianModifiedWWithOrgBouncycastleMathEcCustomDjbCurve25519FieldElement:Z3 withIntArray:Z3Squared];
  
#line 162
  IOSObjectArray *zs = [IOSObjectArray newArrayWithObjects:(id[]){ Z3, W3 } count:2 type:OrgBouncycastleMathEcECFieldElement_class_()];
  
#line 164
  return new_OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(curve, X3, Y3, zs);
}


#line 167
- (OrgBouncycastleMathEcECPoint *)twice {
  
#line 170
  if ([self isInfinity]) {
    
#line 172
    return self;
  }
  
#line 175
  OrgBouncycastleMathEcECCurve *curve = [self getCurve];
  
#line 177
  OrgBouncycastleMathEcECFieldElement *Y1 = y_;
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(Y1)) isZero]) {
    
#line 180
    return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  }
  
#line 183
  return [self twiceJacobianModifiedWithBoolean:true];
}


#line 186
- (OrgBouncycastleMathEcECPoint *)twicePlusWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b {
  
#line 189
  if (JreObjectEqualsEquals(self, b)) {
    
#line 191
    return [self threeTimes];
  }
  if ([self isInfinity]) {
    
#line 195
    return b;
  }
  if ([((OrgBouncycastleMathEcECPoint *) nil_chk(b)) isInfinity]) {
    
#line 199
    return [self twice];
  }
  
#line 202
  OrgBouncycastleMathEcECFieldElement *Y1 = y_;
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(Y1)) isZero]) {
    
#line 205
    return b;
  }
  
#line 208
  return [((OrgBouncycastleMathEcCustomDjbCurve25519Point *) nil_chk([self twiceJacobianModifiedWithBoolean:false])) addWithOrgBouncycastleMathEcECPoint:b];
}


#line 211
- (OrgBouncycastleMathEcECPoint *)threeTimes {
  
#line 214
  if ([self isInfinity]) {
    
#line 216
    return self;
  }
  
#line 219
  OrgBouncycastleMathEcECFieldElement *Y1 = y_;
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(Y1)) isZero]) {
    
#line 222
    return self;
  }
  
#line 225
  return [((OrgBouncycastleMathEcCustomDjbCurve25519Point *) nil_chk([self twiceJacobianModifiedWithBoolean:false])) addWithOrgBouncycastleMathEcECPoint:self];
}


#line 228
- (OrgBouncycastleMathEcECPoint *)negate {
  
#line 231
  if ([self isInfinity]) {
    
#line 233
    return self;
  }
  
#line 236
  return new_OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_([self getCurve], x_, [((OrgBouncycastleMathEcECFieldElement *) nil_chk(y_)) negate], zs_);
}


#line 239
- (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *)calculateJacobianModifiedWWithOrgBouncycastleMathEcCustomDjbCurve25519FieldElement:(OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *)Z
                                                                                                                                withIntArray:(IOSIntArray *)ZSquared {
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *a4 = (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk([((OrgBouncycastleMathEcECCurve *) nil_chk([self getCurve])) getA], [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  if ([((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(Z)) isOne]) {
    
#line 244
    return a4;
  }
  
#line 247
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *W = new_OrgBouncycastleMathEcCustomDjbCurve25519FieldElement_init();
  if (ZSquared == nil) {
    
#line 250
    ZSquared = W->x_;
    OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(Z->x_, ZSquared);
  }
  OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(ZSquared, W->x_);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(W->x_, ((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(a4))->x_, W->x_);
  return W;
}


#line 258
- (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *)getJacobianModifiedW {
  
#line 260
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *W = (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk(IOSObjectArray_Get(nil_chk(zs_), 1), [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  if (W == nil) {
    
#line 264
    (void) IOSObjectArray_Set(zs_, 1, W = [self calculateJacobianModifiedWWithOrgBouncycastleMathEcCustomDjbCurve25519FieldElement:(OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk(IOSObjectArray_Get(zs_, 0), [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]) withIntArray:nil]);
  }
  return W;
}


#line 269
- (OrgBouncycastleMathEcCustomDjbCurve25519Point *)twiceJacobianModifiedWithBoolean:(jboolean)calculateW {
  
#line 271
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *X1 = (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk(x_, [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  
#line 271
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Y1 = (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk(y_, [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  
#line 271
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Z1 =
#line 272
  (OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) cast_chk(IOSObjectArray_Get(nil_chk(zs_), 0), [OrgBouncycastleMathEcCustomDjbCurve25519FieldElement class]);
  
#line 271
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *W1 =
#line 272
  [self getJacobianModifiedW];
  
#line 274
  jint c;
  
#line 276
  IOSIntArray *M = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(X1))->x_, M);
  c = OrgBouncycastleMathRawNat256_addBothToWithIntArray_withIntArray_withIntArray_(M, M, M);
  c += OrgBouncycastleMathRawNat256_addToWithIntArray_withIntArray_(((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(W1))->x_, M);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_reduce27WithInt_withIntArray_(c, M);
  
#line 282
  IOSIntArray *_2Y1 = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomDjbCurve25519Field_twiceWithIntArray_withIntArray_(((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(Y1))->x_, _2Y1);
  
#line 285
  IOSIntArray *_2Y1Squared = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(_2Y1, Y1->x_, _2Y1Squared);
  
#line 288
  IOSIntArray *S = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(_2Y1Squared, X1->x_, S);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_twiceWithIntArray_withIntArray_(S, S);
  
#line 292
  IOSIntArray *_8T = OrgBouncycastleMathRawNat256_create();
  OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(_2Y1Squared, _8T);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_twiceWithIntArray_withIntArray_(_8T, _8T);
  
#line 296
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *X3 = new_OrgBouncycastleMathEcCustomDjbCurve25519FieldElement_initWithIntArray_(_2Y1Squared);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_squareWithIntArray_withIntArray_(M, X3->x_);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(X3->x_, S, X3->x_);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(X3->x_, S, X3->x_);
  
#line 301
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Y3 = new_OrgBouncycastleMathEcCustomDjbCurve25519FieldElement_initWithIntArray_(S);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(S, X3->x_, Y3->x_);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(Y3->x_, M, Y3->x_);
  OrgBouncycastleMathEcCustomDjbCurve25519Field_subtractWithIntArray_withIntArray_withIntArray_(Y3->x_, _8T, Y3->x_);
  
#line 306
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *Z3 = new_OrgBouncycastleMathEcCustomDjbCurve25519FieldElement_initWithIntArray_(_2Y1);
  if (!OrgBouncycastleMathRawNat256_isOneWithIntArray_(((OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *) nil_chk(Z1))->x_)) {
    
#line 309
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(Z3->x_, Z1->x_, Z3->x_);
  }
  
#line 312
  OrgBouncycastleMathEcCustomDjbCurve25519FieldElement *W3 = nil;
  if (calculateW) {
    
#line 315
    W3 = new_OrgBouncycastleMathEcCustomDjbCurve25519FieldElement_initWithIntArray_(_8T);
    OrgBouncycastleMathEcCustomDjbCurve25519Field_multiplyWithIntArray_withIntArray_withIntArray_(W3->x_, W1->x_, W3->x_);
    OrgBouncycastleMathEcCustomDjbCurve25519Field_twiceWithIntArray_withIntArray_(W3->x_, W3->x_);
  }
  
#line 320
  return new_OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_([self getCurve], X3, Y3, [IOSObjectArray newArrayWithObjects:(id[]){ Z3, W3 } count:2 type:OrgBouncycastleMathEcECFieldElement_class_()]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECFieldElement;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcCustomDjbCurve25519FieldElement;", 0x4, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcCustomDjbCurve25519FieldElement;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcCustomDjbCurve25519Point;", 0x4, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgBouncycastleMathEcECCurve:withOrgBouncycastleMathEcECFieldElement:withOrgBouncycastleMathEcECFieldElement:);
  methods[1].selector = @selector(initWithOrgBouncycastleMathEcECCurve:withOrgBouncycastleMathEcECFieldElement:withOrgBouncycastleMathEcECFieldElement:withOrgBouncycastleMathEcECFieldElementArray:);
  methods[2].selector = @selector(detach);
  methods[3].selector = @selector(getZCoordWithInt:);
  methods[4].selector = @selector(addWithOrgBouncycastleMathEcECPoint:);
  methods[5].selector = @selector(twice);
  methods[6].selector = @selector(twicePlusWithOrgBouncycastleMathEcECPoint:);
  methods[7].selector = @selector(threeTimes);
  methods[8].selector = @selector(negate);
  methods[9].selector = @selector(calculateJacobianModifiedWWithOrgBouncycastleMathEcCustomDjbCurve25519FieldElement:withIntArray:);
  methods[10].selector = @selector(getJacobianModifiedW);
  methods[11].selector = @selector(twiceJacobianModifiedWithBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgBouncycastleMathEcECCurve;LOrgBouncycastleMathEcECFieldElement;LOrgBouncycastleMathEcECFieldElement;", "LOrgBouncycastleMathEcECCurve;LOrgBouncycastleMathEcECFieldElement;LOrgBouncycastleMathEcECFieldElement;[LOrgBouncycastleMathEcECFieldElement;", "getZCoord", "I", "add", "LOrgBouncycastleMathEcECPoint;", "twicePlus", "calculateJacobianModifiedW", "LOrgBouncycastleMathEcCustomDjbCurve25519FieldElement;[I", "twiceJacobianModified", "Z" };
  static const J2ObjcClassInfo _OrgBouncycastleMathEcCustomDjbCurve25519Point = { "Curve25519Point", "org.bouncycastle.math.ec.custom.djb", ptrTable, methods, NULL, 7, 0x1, 12, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleMathEcCustomDjbCurve25519Point;
}

@end


#line 10
void OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcCustomDjbCurve25519Point *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) {
  OrgBouncycastleMathEcECPoint_AbstractFp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(self,
#line 12
  curve, x, y);
}


#line 10
OrgBouncycastleMathEcCustomDjbCurve25519Point *new_OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) {
  J2OBJC_NEW_IMPL(OrgBouncycastleMathEcCustomDjbCurve25519Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_, curve, x, y)
}


#line 10
OrgBouncycastleMathEcCustomDjbCurve25519Point *create_OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleMathEcCustomDjbCurve25519Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_, curve, x, y)
}


#line 15
void OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcCustomDjbCurve25519Point *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs) {
  OrgBouncycastleMathEcECPoint_AbstractFp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(self,
#line 17
  curve, x, y, zs);
}


#line 15
OrgBouncycastleMathEcCustomDjbCurve25519Point *new_OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs) {
  J2OBJC_NEW_IMPL(OrgBouncycastleMathEcCustomDjbCurve25519Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_, curve, x, y, zs)
}


#line 15
OrgBouncycastleMathEcCustomDjbCurve25519Point *create_OrgBouncycastleMathEcCustomDjbCurve25519Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleMathEcCustomDjbCurve25519Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_, curve, x, y, zs)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcCustomDjbCurve25519Point)
