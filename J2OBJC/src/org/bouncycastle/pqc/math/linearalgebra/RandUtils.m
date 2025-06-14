//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/math/linearalgebra/RandUtils.java
//

#include "J2ObjC_source.h"
#include "java/security/SecureRandom.h"
#include "org/bouncycastle/pqc/math/linearalgebra/RandUtils.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/math/linearalgebra/RandUtils must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/math/linearalgebra/RandUtils.java"


#line 5
@implementation OrgBouncycastlePqcMathLinearalgebraRandUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 5
- (instancetype)init {
  OrgBouncycastlePqcMathLinearalgebraRandUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 7
+ (jint)nextIntWithJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)rand
                                    withInt:(jint)n {
  return OrgBouncycastlePqcMathLinearalgebraRandUtils_nextIntWithJavaSecuritySecureRandom_withInt_(rand, n);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(nextIntWithJavaSecuritySecureRandom:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "nextInt", "LJavaSecuritySecureRandom;I" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcMathLinearalgebraRandUtils = { "RandUtils", "org.bouncycastle.pqc.math.linearalgebra", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcMathLinearalgebraRandUtils;
}

@end


#line 5
void OrgBouncycastlePqcMathLinearalgebraRandUtils_init(OrgBouncycastlePqcMathLinearalgebraRandUtils *self) {
  NSObject_init(self);
}


#line 5
OrgBouncycastlePqcMathLinearalgebraRandUtils *new_OrgBouncycastlePqcMathLinearalgebraRandUtils_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcMathLinearalgebraRandUtils, init)
}


#line 5
OrgBouncycastlePqcMathLinearalgebraRandUtils *create_OrgBouncycastlePqcMathLinearalgebraRandUtils_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcMathLinearalgebraRandUtils, init)
}


#line 7
jint OrgBouncycastlePqcMathLinearalgebraRandUtils_nextIntWithJavaSecuritySecureRandom_withInt_(JavaSecuritySecureRandom *rand, jint n) {
  OrgBouncycastlePqcMathLinearalgebraRandUtils_initialize();
  
#line 10
  if ((n & -n) == n) {
    
#line 12
    return (jint) (JreRShift64((n * (jlong) (JreURShift32([((JavaSecuritySecureRandom *) nil_chk(rand)) nextInt], 1))), 31));
  }
  
#line 15
  jint bits;
  
#line 15
  jint value;
  do {
    
#line 18
    bits = JreURShift32([((JavaSecuritySecureRandom *) nil_chk(rand)) nextInt], 1);
    value = JreIntMod(bits, n);
  }
  while (bits - value + (n - 1) < 0);
  
#line 23
  return value;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcMathLinearalgebraRandUtils)
