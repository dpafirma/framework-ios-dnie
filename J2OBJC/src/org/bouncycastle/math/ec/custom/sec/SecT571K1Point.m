//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/ec/custom/sec/SecT571K1Point.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/ECConstants.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/custom/sec/SecT571Field.h"
#include "org/bouncycastle/math/ec/custom/sec/SecT571FieldElement.h"
#include "org/bouncycastle/math/ec/custom/sec/SecT571K1Point.h"
#include "org/bouncycastle/math/raw/Nat576.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/math/ec/custom/sec/SecT571K1Point must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/ec/custom/sec/SecT571K1Point.java"


#line 10
@implementation OrgBouncycastleMathEcCustomSecSecT571K1Point

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y {
  OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(self, curve, x, y);
  return self;
}


#line 17
- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
        withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs {
  OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(self, curve, x, y, zs);
  return self;
}


#line 22
- (OrgBouncycastleMathEcECPoint *)detach {
  
#line 25
  return new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(nil, [self getAffineXCoord], [self getAffineYCoord]);
}

- (OrgBouncycastleMathEcECFieldElement *)getYCoord {
  
#line 31
  OrgBouncycastleMathEcECFieldElement *X = x_;
  
#line 31
  OrgBouncycastleMathEcECFieldElement *L = y_;
  
#line 33
  if ([self isInfinity] || [((OrgBouncycastleMathEcECFieldElement *) nil_chk(X)) isZero]) {
    
#line 35
    return L;
  }
  
#line 39
  OrgBouncycastleMathEcECFieldElement *Y = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk(L)) addWithOrgBouncycastleMathEcECFieldElement:X])) multiplyWithOrgBouncycastleMathEcECFieldElement:X];
  
#line 41
  OrgBouncycastleMathEcECFieldElement *Z = IOSObjectArray_Get(nil_chk(zs_), 0);
  if (![((OrgBouncycastleMathEcECFieldElement *) nil_chk(Z)) isOne]) {
    
#line 44
    Y = [((OrgBouncycastleMathEcECFieldElement *) nil_chk(Y)) divideWithOrgBouncycastleMathEcECFieldElement:Z];
  }
  
#line 47
  return Y;
}


#line 50
- (jboolean)getCompressionYTilde {
  
#line 53
  OrgBouncycastleMathEcECFieldElement *X = [self getRawXCoord];
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(X)) isZero]) {
    
#line 56
    return false;
  }
  
#line 59
  OrgBouncycastleMathEcECFieldElement *Y = [self getRawYCoord];
  
#line 62
  return [((OrgBouncycastleMathEcECFieldElement *) nil_chk(Y)) testBitZero] != [X testBitZero];
}


#line 65
- (OrgBouncycastleMathEcECPoint *)addWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b {
  
#line 68
  if ([self isInfinity]) {
    
#line 70
    return b;
  }
  if ([((OrgBouncycastleMathEcECPoint *) nil_chk(b)) isInfinity]) {
    
#line 74
    return self;
  }
  
#line 77
  OrgBouncycastleMathEcECCurve *curve = [self getCurve];
  
#line 79
  OrgBouncycastleMathEcCustomSecSecT571FieldElement *X1 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk(x_, [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
  OrgBouncycastleMathEcCustomSecSecT571FieldElement *X2 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk([b getRawXCoord], [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
  
#line 82
  if ([((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(X1)) isZero]) {
    
#line 84
    if ([((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(X2)) isZero]) {
      
#line 86
      return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
    }
    
#line 89
    return [b addWithOrgBouncycastleMathEcECPoint:self];
  }
  
#line 92
  OrgBouncycastleMathEcCustomSecSecT571FieldElement *L1 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk(y_, [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
  
#line 92
  OrgBouncycastleMathEcCustomSecSecT571FieldElement *Z1 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk(IOSObjectArray_Get(nil_chk(zs_), 0), [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
  OrgBouncycastleMathEcCustomSecSecT571FieldElement *L2 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk([b getRawYCoord], [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
  
#line 93
  OrgBouncycastleMathEcCustomSecSecT571FieldElement *Z2 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk([b getZCoordWithInt:0], [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
  
#line 95
  IOSLongArray *t1 = OrgBouncycastleMathRawNat576_create64();
  IOSLongArray *t2 = OrgBouncycastleMathRawNat576_create64();
  IOSLongArray *t3 = OrgBouncycastleMathRawNat576_create64();
  IOSLongArray *t4 = OrgBouncycastleMathRawNat576_create64();
  
#line 100
  IOSLongArray *Z1Precomp = [((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(Z1)) isOne] ? nil : OrgBouncycastleMathEcCustomSecSecT571Field_precompMultiplicandWithLongArray_(Z1->x_);
  IOSLongArray *U2;
  
#line 101
  IOSLongArray *S2;
  if (Z1Precomp == nil) {
    
#line 104
    U2 = ((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(X2))->x_;
    S2 = ((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(L2))->x_;
  }
  else {
    
#line 109
    OrgBouncycastleMathEcCustomSecSecT571Field_multiplyPrecompWithLongArray_withLongArray_withLongArray_(((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(X2))->x_, Z1Precomp, U2 = t2);
    OrgBouncycastleMathEcCustomSecSecT571Field_multiplyPrecompWithLongArray_withLongArray_withLongArray_(((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(L2))->x_, Z1Precomp, S2 = t4);
  }
  
#line 113
  IOSLongArray *Z2Precomp = [((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(Z2)) isOne] ? nil : OrgBouncycastleMathEcCustomSecSecT571Field_precompMultiplicandWithLongArray_(Z2->x_);
  IOSLongArray *U1;
  
#line 114
  IOSLongArray *S1;
  if (Z2Precomp == nil) {
    
#line 117
    U1 = X1->x_;
    S1 = ((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(L1))->x_;
  }
  else {
    
#line 122
    OrgBouncycastleMathEcCustomSecSecT571Field_multiplyPrecompWithLongArray_withLongArray_withLongArray_(X1->x_, Z2Precomp, U1 = t1);
    OrgBouncycastleMathEcCustomSecSecT571Field_multiplyPrecompWithLongArray_withLongArray_withLongArray_(((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(L1))->x_, Z2Precomp, S1 = t3);
  }
  
#line 126
  IOSLongArray *A = t3;
  OrgBouncycastleMathEcCustomSecSecT571Field_addWithLongArray_withLongArray_withLongArray_(S1, S2, A);
  
#line 129
  IOSLongArray *B = t4;
  OrgBouncycastleMathEcCustomSecSecT571Field_addWithLongArray_withLongArray_withLongArray_(U1, U2, B);
  
#line 132
  if (OrgBouncycastleMathRawNat576_isZero64WithLongArray_(B)) {
    
#line 134
    if (OrgBouncycastleMathRawNat576_isZero64WithLongArray_(A)) {
      
#line 136
      return [self twice];
    }
    
#line 139
    return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  }
  
#line 142
  OrgBouncycastleMathEcCustomSecSecT571FieldElement *X3;
  
#line 142
  OrgBouncycastleMathEcCustomSecSecT571FieldElement *L3;
  
#line 142
  OrgBouncycastleMathEcCustomSecSecT571FieldElement *Z3;
  if ([X2 isZero]) {
    
#line 146
    OrgBouncycastleMathEcECPoint *p = [self normalize];
    X1 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk([((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getXCoord], [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
    OrgBouncycastleMathEcECFieldElement *Y1 = [p getYCoord];
    
#line 150
    OrgBouncycastleMathEcECFieldElement *Y2 = L2;
    OrgBouncycastleMathEcECFieldElement *L = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk(Y1)) addWithOrgBouncycastleMathEcECFieldElement:Y2])) divideWithOrgBouncycastleMathEcECFieldElement:X1];
    
#line 153
    X3 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk(L)) square])) addWithOrgBouncycastleMathEcECFieldElement:L])) addWithOrgBouncycastleMathEcECFieldElement:X1], [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
    if ([((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(X3)) isZero]) {
      
#line 156
      return new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(curve, X3, [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getB]);
    }
    
#line 159
    OrgBouncycastleMathEcECFieldElement *Y3 = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([L multiplyWithOrgBouncycastleMathEcECFieldElement:[((OrgBouncycastleMathEcCustomSecSecT571FieldElement *) nil_chk(X1)) addWithOrgBouncycastleMathEcECFieldElement:X3]])) addWithOrgBouncycastleMathEcECFieldElement:X3])) addWithOrgBouncycastleMathEcECFieldElement:Y1];
    L3 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk(Y3)) divideWithOrgBouncycastleMathEcECFieldElement:X3])) addWithOrgBouncycastleMathEcECFieldElement:X3], [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
    Z3 = (OrgBouncycastleMathEcCustomSecSecT571FieldElement *) cast_chk([((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) fromBigIntegerWithJavaMathBigInteger:JreLoadStatic(OrgBouncycastleMathEcECConstants, ONE)], [OrgBouncycastleMathEcCustomSecSecT571FieldElement class]);
  }
  else {
    
#line 165
    OrgBouncycastleMathEcCustomSecSecT571Field_squareWithLongArray_withLongArray_(B, B);
    
#line 167
    IOSLongArray *APrecomp = OrgBouncycastleMathEcCustomSecSecT571Field_precompMultiplicandWithLongArray_(A);
    
#line 169
    IOSLongArray *AU1 = t1;
    IOSLongArray *AU2 = t2;
    
#line 172
    OrgBouncycastleMathEcCustomSecSecT571Field_multiplyPrecompWithLongArray_withLongArray_withLongArray_(U1, APrecomp, AU1);
    OrgBouncycastleMathEcCustomSecSecT571Field_multiplyPrecompWithLongArray_withLongArray_withLongArray_(U2, APrecomp, AU2);
    
#line 175
    X3 = new_OrgBouncycastleMathEcCustomSecSecT571FieldElement_initWithLongArray_(t1);
    OrgBouncycastleMathEcCustomSecSecT571Field_multiplyWithLongArray_withLongArray_withLongArray_(AU1, AU2, X3->x_);
    
#line 178
    if ([X3 isZero]) {
      
#line 180
      return new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(curve, X3, [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getB]);
    }
    
#line 183
    Z3 = new_OrgBouncycastleMathEcCustomSecSecT571FieldElement_initWithLongArray_(t3);
    OrgBouncycastleMathEcCustomSecSecT571Field_multiplyPrecompWithLongArray_withLongArray_withLongArray_(B, APrecomp, Z3->x_);
    
#line 186
    if (Z2Precomp != nil) {
      
#line 188
      OrgBouncycastleMathEcCustomSecSecT571Field_multiplyPrecompWithLongArray_withLongArray_withLongArray_(Z3->x_, Z2Precomp, Z3->x_);
    }
    
#line 191
    IOSLongArray *tt = OrgBouncycastleMathRawNat576_createExt64();
    
#line 193
    OrgBouncycastleMathEcCustomSecSecT571Field_addWithLongArray_withLongArray_withLongArray_(AU2, B, t4);
    OrgBouncycastleMathEcCustomSecSecT571Field_squareAddToExtWithLongArray_withLongArray_(t4, tt);
    
#line 196
    OrgBouncycastleMathEcCustomSecSecT571Field_addWithLongArray_withLongArray_withLongArray_(L1->x_, Z1->x_, t4);
    OrgBouncycastleMathEcCustomSecSecT571Field_multiplyAddToExtWithLongArray_withLongArray_withLongArray_(t4, Z3->x_, tt);
    
#line 199
    L3 = new_OrgBouncycastleMathEcCustomSecSecT571FieldElement_initWithLongArray_(t4);
    OrgBouncycastleMathEcCustomSecSecT571Field_reduceWithLongArray_withLongArray_(tt, L3->x_);
    
#line 202
    if (Z1Precomp != nil) {
      
#line 204
      OrgBouncycastleMathEcCustomSecSecT571Field_multiplyPrecompWithLongArray_withLongArray_withLongArray_(Z3->x_, Z1Precomp, Z3->x_);
    }
  }
  
#line 208
  return new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(curve, X3, L3, [IOSObjectArray newArrayWithObjects:(id[]){ Z3 } count:1 type:OrgBouncycastleMathEcECFieldElement_class_()]);
}


#line 211
- (OrgBouncycastleMathEcECPoint *)twice {
  
#line 214
  if ([self isInfinity]) {
    
#line 216
    return self;
  }
  
#line 219
  OrgBouncycastleMathEcECCurve *curve = [self getCurve];
  
#line 221
  OrgBouncycastleMathEcECFieldElement *X1 = x_;
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(X1)) isZero]) {
    
#line 225
    return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  }
  
#line 229
  OrgBouncycastleMathEcECFieldElement *L1 = y_;
  
#line 229
  OrgBouncycastleMathEcECFieldElement *Z1 = IOSObjectArray_Get(nil_chk(zs_), 0);
  
#line 231
  jboolean Z1IsOne = [((OrgBouncycastleMathEcECFieldElement *) nil_chk(Z1)) isOne];
  OrgBouncycastleMathEcECFieldElement *Z1Sq = Z1IsOne ? Z1 : [Z1 square];
  OrgBouncycastleMathEcECFieldElement *T;
  if (Z1IsOne) {
    
#line 236
    T = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk(L1)) square])) addWithOrgBouncycastleMathEcECFieldElement:L1];
  }
  else {
    
#line 240
    T = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk(L1)) addWithOrgBouncycastleMathEcECFieldElement:Z1])) multiplyWithOrgBouncycastleMathEcECFieldElement:L1];
  }
  
#line 243
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(T)) isZero]) {
    
#line 245
    return new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(curve, T, [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getB]);
  }
  
#line 248
  OrgBouncycastleMathEcECFieldElement *X3 = [T square];
  OrgBouncycastleMathEcECFieldElement *Z3 = Z1IsOne ? T : [T multiplyWithOrgBouncycastleMathEcECFieldElement:Z1Sq];
  
#line 251
  OrgBouncycastleMathEcECFieldElement *t1 = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([L1 addWithOrgBouncycastleMathEcECFieldElement:X1])) square];
  OrgBouncycastleMathEcECFieldElement *t2 = Z1IsOne ? Z1 : [Z1Sq square];
  OrgBouncycastleMathEcECFieldElement *L3 = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk(t1)) addWithOrgBouncycastleMathEcECFieldElement:T])) addWithOrgBouncycastleMathEcECFieldElement:Z1Sq])) multiplyWithOrgBouncycastleMathEcECFieldElement:t1])) addWithOrgBouncycastleMathEcECFieldElement:t2])) addWithOrgBouncycastleMathEcECFieldElement:X3])) addWithOrgBouncycastleMathEcECFieldElement:Z3];
  
#line 255
  return new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(curve, X3, L3, [IOSObjectArray newArrayWithObjects:(id[]){ Z3 } count:1 type:OrgBouncycastleMathEcECFieldElement_class_()]);
}


#line 258
- (OrgBouncycastleMathEcECPoint *)twicePlusWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b {
  
#line 261
  if ([self isInfinity]) {
    
#line 263
    return b;
  }
  if ([((OrgBouncycastleMathEcECPoint *) nil_chk(b)) isInfinity]) {
    
#line 267
    return [self twice];
  }
  
#line 270
  OrgBouncycastleMathEcECCurve *curve = [self getCurve];
  
#line 272
  OrgBouncycastleMathEcECFieldElement *X1 = x_;
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(X1)) isZero]) {
    
#line 276
    return b;
  }
  
#line 280
  OrgBouncycastleMathEcECFieldElement *X2 = [b getRawXCoord];
  
#line 280
  OrgBouncycastleMathEcECFieldElement *Z2 = [b getZCoordWithInt:0];
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(X2)) isZero] || ![((OrgBouncycastleMathEcECFieldElement *) nil_chk(Z2)) isOne]) {
    
#line 283
    return [((OrgBouncycastleMathEcECPoint *) nil_chk([self twice])) addWithOrgBouncycastleMathEcECPoint:b];
  }
  
#line 286
  OrgBouncycastleMathEcECFieldElement *L1 = y_;
  
#line 286
  OrgBouncycastleMathEcECFieldElement *Z1 = IOSObjectArray_Get(nil_chk(zs_), 0);
  OrgBouncycastleMathEcECFieldElement *L2 = [b getRawYCoord];
  
#line 289
  OrgBouncycastleMathEcECFieldElement *X1Sq = [X1 square];
  OrgBouncycastleMathEcECFieldElement *L1Sq = [((OrgBouncycastleMathEcECFieldElement *) nil_chk(L1)) square];
  OrgBouncycastleMathEcECFieldElement *Z1Sq = [((OrgBouncycastleMathEcECFieldElement *) nil_chk(Z1)) square];
  OrgBouncycastleMathEcECFieldElement *L1Z1 = [L1 multiplyWithOrgBouncycastleMathEcECFieldElement:Z1];
  
#line 294
  OrgBouncycastleMathEcECFieldElement *T = [((OrgBouncycastleMathEcECFieldElement *) nil_chk(L1Sq)) addWithOrgBouncycastleMathEcECFieldElement:L1Z1];
  OrgBouncycastleMathEcECFieldElement *L2plus1 = [((OrgBouncycastleMathEcECFieldElement *) nil_chk(L2)) addOne];
  OrgBouncycastleMathEcECFieldElement *A = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk(L2plus1)) multiplyWithOrgBouncycastleMathEcECFieldElement:Z1Sq])) addWithOrgBouncycastleMathEcECFieldElement:L1Sq])) multiplyPlusProductWithOrgBouncycastleMathEcECFieldElement:T withOrgBouncycastleMathEcECFieldElement:X1Sq withOrgBouncycastleMathEcECFieldElement:Z1Sq];
  OrgBouncycastleMathEcECFieldElement *X2Z1Sq = [X2 multiplyWithOrgBouncycastleMathEcECFieldElement:Z1Sq];
  OrgBouncycastleMathEcECFieldElement *B = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk(X2Z1Sq)) addWithOrgBouncycastleMathEcECFieldElement:T])) square];
  
#line 300
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(B)) isZero]) {
    
#line 302
    if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(A)) isZero]) {
      
#line 304
      return [b twice];
    }
    
#line 307
    return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  }
  
#line 310
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(A)) isZero]) {
    
#line 312
    return new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(curve, A, [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getB]);
  }
  
#line 315
  OrgBouncycastleMathEcECFieldElement *X3 = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([A square])) multiplyWithOrgBouncycastleMathEcECFieldElement:X2Z1Sq];
  OrgBouncycastleMathEcECFieldElement *Z3 = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([A multiplyWithOrgBouncycastleMathEcECFieldElement:B])) multiplyWithOrgBouncycastleMathEcECFieldElement:Z1Sq];
  OrgBouncycastleMathEcECFieldElement *L3 = [((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([A addWithOrgBouncycastleMathEcECFieldElement:B])) square])) multiplyPlusProductWithOrgBouncycastleMathEcECFieldElement:T withOrgBouncycastleMathEcECFieldElement:L2plus1 withOrgBouncycastleMathEcECFieldElement:Z3];
  
#line 319
  return new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(curve, X3, L3, [IOSObjectArray newArrayWithObjects:(id[]){ Z3 } count:1 type:OrgBouncycastleMathEcECFieldElement_class_()]);
}


#line 322
- (OrgBouncycastleMathEcECPoint *)negate {
  
#line 325
  if ([self isInfinity]) {
    
#line 327
    return self;
  }
  
#line 330
  OrgBouncycastleMathEcECFieldElement *X = x_;
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(X)) isZero]) {
    
#line 333
    return self;
  }
  
#line 337
  OrgBouncycastleMathEcECFieldElement *L = y_;
  
#line 337
  OrgBouncycastleMathEcECFieldElement *Z = IOSObjectArray_Get(nil_chk(zs_), 0);
  return new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(curve_, X, [((OrgBouncycastleMathEcECFieldElement *) nil_chk(L)) addWithOrgBouncycastleMathEcECFieldElement:Z], [IOSObjectArray newArrayWithObjects:(id[]){ Z } count:1 type:OrgBouncycastleMathEcECFieldElement_class_()]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECFieldElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgBouncycastleMathEcECCurve:withOrgBouncycastleMathEcECFieldElement:withOrgBouncycastleMathEcECFieldElement:);
  methods[1].selector = @selector(initWithOrgBouncycastleMathEcECCurve:withOrgBouncycastleMathEcECFieldElement:withOrgBouncycastleMathEcECFieldElement:withOrgBouncycastleMathEcECFieldElementArray:);
  methods[2].selector = @selector(detach);
  methods[3].selector = @selector(getYCoord);
  methods[4].selector = @selector(getCompressionYTilde);
  methods[5].selector = @selector(addWithOrgBouncycastleMathEcECPoint:);
  methods[6].selector = @selector(twice);
  methods[7].selector = @selector(twicePlusWithOrgBouncycastleMathEcECPoint:);
  methods[8].selector = @selector(negate);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgBouncycastleMathEcECCurve;LOrgBouncycastleMathEcECFieldElement;LOrgBouncycastleMathEcECFieldElement;", "LOrgBouncycastleMathEcECCurve;LOrgBouncycastleMathEcECFieldElement;LOrgBouncycastleMathEcECFieldElement;[LOrgBouncycastleMathEcECFieldElement;", "add", "LOrgBouncycastleMathEcECPoint;", "twicePlus" };
  static const J2ObjcClassInfo _OrgBouncycastleMathEcCustomSecSecT571K1Point = { "SecT571K1Point", "org.bouncycastle.math.ec.custom.sec", ptrTable, methods, NULL, 7, 0x1, 9, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleMathEcCustomSecSecT571K1Point;
}

@end


#line 12
void OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcCustomSecSecT571K1Point *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) {
  OrgBouncycastleMathEcECPoint_AbstractF2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(self,
#line 14
  curve, x, y);
}


#line 12
OrgBouncycastleMathEcCustomSecSecT571K1Point *new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) {
  J2OBJC_NEW_IMPL(OrgBouncycastleMathEcCustomSecSecT571K1Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_, curve, x, y)
}


#line 12
OrgBouncycastleMathEcCustomSecSecT571K1Point *create_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleMathEcCustomSecSecT571K1Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_, curve, x, y)
}


#line 17
void OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcCustomSecSecT571K1Point *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs) {
  OrgBouncycastleMathEcECPoint_AbstractF2m_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(self,
#line 19
  curve, x, y, zs);
}


#line 17
OrgBouncycastleMathEcCustomSecSecT571K1Point *new_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs) {
  J2OBJC_NEW_IMPL(OrgBouncycastleMathEcCustomSecSecT571K1Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_, curve, x, y, zs)
}


#line 17
OrgBouncycastleMathEcCustomSecSecT571K1Point *create_OrgBouncycastleMathEcCustomSecSecT571K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleMathEcCustomSecSecT571K1Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_, curve, x, y, zs)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcCustomSecSecT571K1Point)
