//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"
#include "org/bouncycastle/math/ec/ECPointMap.h"
#include "org/bouncycastle/math/ec/ScaleXPointMap.h"
#include "org/bouncycastle/math/ec/endo/EndoUtil.h"
#include "org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism.h"
#include "org/bouncycastle/math/ec/endo/GLVTypeBParameters.h"
#include "org/bouncycastle/math/ec/endo/ScalarSplitParameters.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism.java"


#line 9
@implementation OrgBouncycastleMathEcEndoGLVTypeBEndomorphism


#line 14
- (instancetype)initWithOrgBouncycastleMathEcECCurve:(OrgBouncycastleMathEcECCurve *)curve
     withOrgBouncycastleMathEcEndoGLVTypeBParameters:(OrgBouncycastleMathEcEndoGLVTypeBParameters *)parameters {
  OrgBouncycastleMathEcEndoGLVTypeBEndomorphism_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVTypeBParameters_(self, curve, parameters);
  return self;
}


#line 26
- (IOSObjectArray *)decomposeScalarWithJavaMathBigInteger:(JavaMathBigInteger *)k {
  
#line 29
  return OrgBouncycastleMathEcEndoEndoUtil_decomposeScalarWithOrgBouncycastleMathEcEndoScalarSplitParameters_withJavaMathBigInteger_([((OrgBouncycastleMathEcEndoGLVTypeBParameters *) nil_chk(parameters_)) getSplitParams], k);
}

- (id<OrgBouncycastleMathEcECPointMap>)getPointMap {
  
#line 35
  return pointMap_;
}

- (jboolean)hasEfficientPointMap {
  
#line 41
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "[LJavaMathBigInteger;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleMathEcECPointMap;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgBouncycastleMathEcECCurve:withOrgBouncycastleMathEcEndoGLVTypeBParameters:);
  methods[1].selector = @selector(decomposeScalarWithJavaMathBigInteger:);
  methods[2].selector = @selector(getPointMap);
  methods[3].selector = @selector(hasEfficientPointMap);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "parameters_", "LOrgBouncycastleMathEcEndoGLVTypeBParameters;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "pointMap_", "LOrgBouncycastleMathEcECPointMap;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgBouncycastleMathEcECCurve;LOrgBouncycastleMathEcEndoGLVTypeBParameters;", "decomposeScalar", "LJavaMathBigInteger;" };
  static const J2ObjcClassInfo _OrgBouncycastleMathEcEndoGLVTypeBEndomorphism = { "GLVTypeBEndomorphism", "org.bouncycastle.math.ec.endo", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleMathEcEndoGLVTypeBEndomorphism;
}

@end


#line 14
void OrgBouncycastleMathEcEndoGLVTypeBEndomorphism_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVTypeBParameters_(OrgBouncycastleMathEcEndoGLVTypeBEndomorphism *self, OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcEndoGLVTypeBParameters *parameters) {
  NSObject_init(self);
  
#line 22
  self->parameters_ = parameters;
  self->pointMap_ = new_OrgBouncycastleMathEcScaleXPointMap_initWithOrgBouncycastleMathEcECFieldElement_([((OrgBouncycastleMathEcECCurve *) nil_chk(curve)) fromBigIntegerWithJavaMathBigInteger:[((OrgBouncycastleMathEcEndoGLVTypeBParameters *) nil_chk(parameters)) getBeta]]);
}


#line 14
OrgBouncycastleMathEcEndoGLVTypeBEndomorphism *new_OrgBouncycastleMathEcEndoGLVTypeBEndomorphism_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVTypeBParameters_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcEndoGLVTypeBParameters *parameters) {
  J2OBJC_NEW_IMPL(OrgBouncycastleMathEcEndoGLVTypeBEndomorphism, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVTypeBParameters_, curve, parameters)
}


#line 14
OrgBouncycastleMathEcEndoGLVTypeBEndomorphism *create_OrgBouncycastleMathEcEndoGLVTypeBEndomorphism_initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVTypeBParameters_(OrgBouncycastleMathEcECCurve *curve, OrgBouncycastleMathEcEndoGLVTypeBParameters *parameters) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleMathEcEndoGLVTypeBEndomorphism, initWithOrgBouncycastleMathEcECCurve_withOrgBouncycastleMathEcEndoGLVTypeBParameters_, curve, parameters)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcEndoGLVTypeBEndomorphism)
