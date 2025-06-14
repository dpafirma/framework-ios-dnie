//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/ec/custom/sec/SecP192K1Point.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP192K1Field.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement.h"
#include "org/bouncycastle/math/ec/custom/sec/SecP192K1Point.h"
#include "org/bouncycastle/math/raw/Nat.h"
#include "org/bouncycastle/math/raw/Nat192.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/math/ec/custom/sec/SecP192K1Point must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/ec/custom/sec/SecP192K1Point.java"


#line 9
@implementation OrgBouncycastleMathEcCustomSecSecP192K1Point

- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y {
  OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(self, curve, x, y);
  return self;
}


#line 16
- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)x
             withOrgBouncycastleMathEcECFieldElement:(OrgBouncycastleMathEcECFieldElement *)y
        withOrgBouncycastleMathEcECFieldElementArray:(IOSObjectArray *)zs {
  OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(self, curve, x, y, zs);
  return self;
}


#line 21
- (OrgBouncycastleMathEcECPoint *)detach {
  
#line 24
  return new_OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(nil, [self getAffineXCoord], [self getAffineYCoord]);
}


#line 28
- (OrgBouncycastleMathEcECPoint *)addWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b {
  
#line 31
  if ([self isInfinity]) {
    
#line 33
    return b;
  }
  if ([((OrgBouncycastleMathEcECPoint *) nil_chk(b)) isInfinity]) {
    
#line 37
    return self;
  }
  if (JreObjectEqualsEquals(self, b)) {
    
#line 41
    return [self twice];
  }
  
#line 44
  OrgBouncycastleMathEcECCurve *curve = [self getCurve];
  
#line 46
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *X1 = (OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) cast_chk(x_, [OrgBouncycastleMathEcCustomSecSecP192K1FieldElement class]);
  
#line 46
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Y1 = (OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) cast_chk(y_, [OrgBouncycastleMathEcCustomSecSecP192K1FieldElement class]);
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *X2 = (OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) cast_chk([b getXCoord], [OrgBouncycastleMathEcCustomSecSecP192K1FieldElement class]);
  
#line 47
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Y2 = (OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) cast_chk([b getYCoord], [OrgBouncycastleMathEcCustomSecSecP192K1FieldElement class]);
  
#line 49
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Z1 = (OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) cast_chk(IOSObjectArray_Get(nil_chk(zs_), 0), [OrgBouncycastleMathEcCustomSecSecP192K1FieldElement class]);
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Z2 = (OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) cast_chk([b getZCoordWithInt:0], [OrgBouncycastleMathEcCustomSecSecP192K1FieldElement class]);
  
#line 52
  jint c;
  IOSIntArray *tt1 = OrgBouncycastleMathRawNat192_createExt();
  IOSIntArray *t2 = OrgBouncycastleMathRawNat192_create();
  IOSIntArray *t3 = OrgBouncycastleMathRawNat192_create();
  IOSIntArray *t4 = OrgBouncycastleMathRawNat192_create();
  
#line 58
  jboolean Z1IsOne = [((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(Z1)) isOne];
  IOSIntArray *U2;
  
#line 59
  IOSIntArray *S2;
  if (Z1IsOne) {
    
#line 62
    U2 = ((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(X2))->x_;
    S2 = ((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(Y2))->x_;
  }
  else {
    
#line 67
    S2 = t3;
    OrgBouncycastleMathEcCustomSecSecP192K1Field_squareWithIntArray_withIntArray_(Z1->x_, S2);
    
#line 70
    U2 = t2;
    OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S2, ((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(X2))->x_, U2);
    
#line 73
    OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S2, Z1->x_, S2);
    OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S2, ((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(Y2))->x_, S2);
  }
  
#line 77
  jboolean Z2IsOne = [((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(Z2)) isOne];
  IOSIntArray *U1;
  
#line 78
  IOSIntArray *S1;
  if (Z2IsOne) {
    
#line 81
    U1 = ((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(X1))->x_;
    S1 = ((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(Y1))->x_;
  }
  else {
    
#line 86
    S1 = t4;
    OrgBouncycastleMathEcCustomSecSecP192K1Field_squareWithIntArray_withIntArray_(Z2->x_, S1);
    
#line 89
    U1 = tt1;
    OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S1, ((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(X1))->x_, U1);
    
#line 92
    OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S1, Z2->x_, S1);
    OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(S1, ((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(Y1))->x_, S1);
  }
  
#line 96
  IOSIntArray *H = OrgBouncycastleMathRawNat192_create();
  OrgBouncycastleMathEcCustomSecSecP192K1Field_subtractWithIntArray_withIntArray_withIntArray_(U1, U2, H);
  
#line 99
  IOSIntArray *R = t2;
  OrgBouncycastleMathEcCustomSecSecP192K1Field_subtractWithIntArray_withIntArray_withIntArray_(S1, S2, R);
  
#line 103
  if (OrgBouncycastleMathRawNat192_isZeroWithIntArray_(H)) {
    
#line 105
    if (OrgBouncycastleMathRawNat192_isZeroWithIntArray_(R)) {
      
#line 108
      return [self twice];
    }
    
#line 112
    return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  }
  
#line 115
  IOSIntArray *HSquared = t3;
  OrgBouncycastleMathEcCustomSecSecP192K1Field_squareWithIntArray_withIntArray_(H, HSquared);
  
#line 118
  IOSIntArray *G = OrgBouncycastleMathRawNat192_create();
  OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(HSquared, H, G);
  
#line 121
  IOSIntArray *V = t3;
  OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(HSquared, U1, V);
  
#line 124
  OrgBouncycastleMathEcCustomSecSecP192K1Field_negateWithIntArray_withIntArray_(G, G);
  OrgBouncycastleMathRawNat192_mulWithIntArray_withIntArray_withIntArray_(S1, G, tt1);
  
#line 127
  c = OrgBouncycastleMathRawNat192_addBothToWithIntArray_withIntArray_withIntArray_(V, V, G);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_reduce32WithInt_withIntArray_(c, G);
  
#line 130
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *X3 = new_OrgBouncycastleMathEcCustomSecSecP192K1FieldElement_initWithIntArray_(t4);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_squareWithIntArray_withIntArray_(R, X3->x_);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_subtractWithIntArray_withIntArray_withIntArray_(X3->x_, G, X3->x_);
  
#line 134
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Y3 = new_OrgBouncycastleMathEcCustomSecSecP192K1FieldElement_initWithIntArray_(G);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_subtractWithIntArray_withIntArray_withIntArray_(V, X3->x_, Y3->x_);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyAddToExtWithIntArray_withIntArray_withIntArray_(Y3->x_, R, tt1);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_reduceWithIntArray_withIntArray_(tt1, Y3->x_);
  
#line 139
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Z3 = new_OrgBouncycastleMathEcCustomSecSecP192K1FieldElement_initWithIntArray_(H);
  if (!Z1IsOne) {
    
#line 142
    OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Z3->x_, Z1->x_, Z3->x_);
  }
  if (!Z2IsOne) {
    
#line 146
    OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Z3->x_, Z2->x_, Z3->x_);
  }
  
#line 149
  IOSObjectArray *zs = [IOSObjectArray newArrayWithObjects:(id[]){ Z3 } count:1 type:OrgBouncycastleMathEcECFieldElement_class_()];
  
#line 151
  return new_OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(curve, X3, Y3, zs);
}


#line 155
- (OrgBouncycastleMathEcECPoint *)twice {
  
#line 158
  if ([self isInfinity]) {
    
#line 160
    return self;
  }
  
#line 163
  OrgBouncycastleMathEcECCurve *curve = [self getCurve];
  
#line 165
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Y1 = (OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) cast_chk(y_, [OrgBouncycastleMathEcCustomSecSecP192K1FieldElement class]);
  if ([((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(Y1)) isZero]) {
    
#line 168
    return [((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) getInfinity];
  }
  
#line 171
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *X1 = (OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) cast_chk(x_, [OrgBouncycastleMathEcCustomSecSecP192K1FieldElement class]);
  
#line 171
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Z1 = (OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) cast_chk(IOSObjectArray_Get(nil_chk(zs_), 0), [OrgBouncycastleMathEcCustomSecSecP192K1FieldElement class]);
  
#line 173
  jint c;
  
#line 175
  IOSIntArray *Y1Squared = OrgBouncycastleMathRawNat192_create();
  OrgBouncycastleMathEcCustomSecSecP192K1Field_squareWithIntArray_withIntArray_(Y1->x_, Y1Squared);
  
#line 178
  IOSIntArray *T = OrgBouncycastleMathRawNat192_create();
  OrgBouncycastleMathEcCustomSecSecP192K1Field_squareWithIntArray_withIntArray_(Y1Squared, T);
  
#line 181
  IOSIntArray *M = OrgBouncycastleMathRawNat192_create();
  OrgBouncycastleMathEcCustomSecSecP192K1Field_squareWithIntArray_withIntArray_(((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(X1))->x_, M);
  c = OrgBouncycastleMathRawNat192_addBothToWithIntArray_withIntArray_withIntArray_(M, M, M);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_reduce32WithInt_withIntArray_(c, M);
  
#line 186
  IOSIntArray *S = Y1Squared;
  OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Y1Squared, X1->x_, S);
  c = OrgBouncycastleMathRawNat_shiftUpBitsWithInt_withIntArray_withInt_withInt_(6, S, 2, 0);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_reduce32WithInt_withIntArray_(c, S);
  
#line 191
  IOSIntArray *t1 = OrgBouncycastleMathRawNat192_create();
  c = OrgBouncycastleMathRawNat_shiftUpBitsWithInt_withIntArray_withInt_withInt_withIntArray_(6, T, 3, 0, t1);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_reduce32WithInt_withIntArray_(c, t1);
  
#line 195
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *X3 = new_OrgBouncycastleMathEcCustomSecSecP192K1FieldElement_initWithIntArray_(T);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_squareWithIntArray_withIntArray_(M, X3->x_);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_subtractWithIntArray_withIntArray_withIntArray_(X3->x_, S, X3->x_);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_subtractWithIntArray_withIntArray_withIntArray_(X3->x_, S, X3->x_);
  
#line 200
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Y3 = new_OrgBouncycastleMathEcCustomSecSecP192K1FieldElement_initWithIntArray_(S);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_subtractWithIntArray_withIntArray_withIntArray_(S, X3->x_, Y3->x_);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Y3->x_, M, Y3->x_);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_subtractWithIntArray_withIntArray_withIntArray_(Y3->x_, t1, Y3->x_);
  
#line 205
  OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *Z3 = new_OrgBouncycastleMathEcCustomSecSecP192K1FieldElement_initWithIntArray_(M);
  OrgBouncycastleMathEcCustomSecSecP192K1Field_twiceWithIntArray_withIntArray_(Y1->x_, Z3->x_);
  if (![((OrgBouncycastleMathEcCustomSecSecP192K1FieldElement *) nil_chk(Z1)) isOne]) {
    
#line 209
    OrgBouncycastleMathEcCustomSecSecP192K1Field_multiplyWithIntArray_withIntArray_withIntArray_(Z3->x_, Z1->x_, Z3->x_);
  }
  
#line 212
  return new_OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(curve, X3, Y3, [IOSObjectArray newArrayWithObjects:(id[]){ Z3 } count:1 type:OrgBouncycastleMathEcECFieldElement_class_()]);
}


#line 215
- (OrgBouncycastleMathEcECPoint *)twicePlusWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)b {
  
#line 218
  if (JreObjectEqualsEquals(self, b)) {
    
#line 220
    return [self threeTimes];
  }
  if ([self isInfinity]) {
    
#line 224
    return b;
  }
  if ([((OrgBouncycastleMathEcECPoint *) nil_chk(b)) isInfinity]) {
    
#line 228
    return [self twice];
  }
  
#line 231
  OrgBouncycastleMathEcECFieldElement *Y1 = y_;
  if ([((OrgBouncycastleMathEcECFieldElement *) nil_chk(Y1)) isZero]) {
    
#line 234
    return b;
  }
  
#line 237
  return [((OrgBouncycastleMathEcECPoint *) nil_chk([self twice])) addWithOrgBouncycastleMathEcECPoint:b];
}


#line 240
- (OrgBouncycastleMathEcECPoint *)threeTimes {
  
#line 243
  if ([self isInfinity] || [((OrgBouncycastleMathEcECFieldElement *) nil_chk(y_)) isZero]) {
    
#line 245
    return self;
  }
  
#line 249
  return [((OrgBouncycastleMathEcECPoint *) nil_chk([self twice])) addWithOrgBouncycastleMathEcECPoint:self];
}


#line 252
- (OrgBouncycastleMathEcECPoint *)negate {
  
#line 255
  if ([self isInfinity]) {
    
#line 257
    return self;
  }
  
#line 260
  return new_OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(curve_, x_, [((OrgBouncycastleMathEcECFieldElement *) nil_chk(y_)) negate], zs_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgBouncycastleMathEcECCurve:withOrgBouncycastleMathEcECFieldElement:withOrgBouncycastleMathEcECFieldElement:);
  methods[1].selector = @selector(initWithOrgBouncycastleMathEcECCurve:withOrgBouncycastleMathEcECFieldElement:withOrgBouncycastleMathEcECFieldElement:withOrgBouncycastleMathEcECFieldElementArray:);
  methods[2].selector = @selector(detach);
  methods[3].selector = @selector(addWithOrgBouncycastleMathEcECPoint:);
  methods[4].selector = @selector(twice);
  methods[5].selector = @selector(twicePlusWithOrgBouncycastleMathEcECPoint:);
  methods[6].selector = @selector(threeTimes);
  methods[7].selector = @selector(negate);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgBouncycastleMathEcECCurve;LOrgBouncycastleMathEcECFieldElement;LOrgBouncycastleMathEcECFieldElement;", "LOrgBouncycastleMathEcECCurve;LOrgBouncycastleMathEcECFieldElement;LOrgBouncycastleMathEcECFieldElement;[LOrgBouncycastleMathEcECFieldElement;", "add", "LOrgBouncycastleMathEcECPoint;", "twicePlus" };
  static const J2ObjcClassInfo _OrgBouncycastleMathEcCustomSecSecP192K1Point = { "SecP192K1Point", "org.bouncycastle.math.ec.custom.sec", ptrTable, methods, NULL, 7, 0x1, 8, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleMathEcCustomSecSecP192K1Point;
}

@end


#line 11
void OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcCustomSecSecP192K1Point *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) {
  OrgBouncycastleMathEcECPoint_AbstractFp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(self,
#line 13
  curve, x, y);
}


#line 11
OrgBouncycastleMathEcCustomSecSecP192K1Point *new_OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) {
  J2OBJC_NEW_IMPL(OrgBouncycastleMathEcCustomSecSecP192K1Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_, curve, x, y)
}


#line 11
OrgBouncycastleMathEcCustomSecSecP192K1Point *create_OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleMathEcCustomSecSecP192K1Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_, curve, x, y)
}


#line 16
void OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcCustomSecSecP192K1Point *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs) {
  OrgBouncycastleMathEcECPoint_AbstractFp_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(self,
#line 18
  curve, x, y, zs);
}


#line 16
OrgBouncycastleMathEcCustomSecSecP192K1Point *new_OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs) {
  J2OBJC_NEW_IMPL(OrgBouncycastleMathEcCustomSecSecP192K1Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_, curve, x, y, zs)
}


#line 16
OrgBouncycastleMathEcCustomSecSecP192K1Point *create_OrgBouncycastleMathEcCustomSecSecP192K1Point_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcECFieldElement *x, OrgBouncycastleMathEcECFieldElement *y, IOSObjectArray *zs) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleMathEcCustomSecSecP192K1Point, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElement_withOrgBouncycastleMathEcECFieldElementArray_, curve, x, y, zs)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcCustomSecSecP192K1Point)
