//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/math/linearalgebra/CharUtils.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/bouncycastle/pqc/math/linearalgebra/CharUtils.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/pqc/math/linearalgebra/CharUtils must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastlePqcMathLinearalgebraCharUtils ()

/*!
 @brief Default constructor (private)
 */
- (instancetype)init;

@end

__attribute__((unused)) static void OrgBouncycastlePqcMathLinearalgebraCharUtils_init(OrgBouncycastlePqcMathLinearalgebraCharUtils *self);

__attribute__((unused)) static OrgBouncycastlePqcMathLinearalgebraCharUtils *new_OrgBouncycastlePqcMathLinearalgebraCharUtils_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgBouncycastlePqcMathLinearalgebraCharUtils *create_OrgBouncycastlePqcMathLinearalgebraCharUtils_init(void);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/math/linearalgebra/CharUtils.java"


#line 3
@implementation OrgBouncycastlePqcMathLinearalgebraCharUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 9
- (instancetype)init {
  OrgBouncycastlePqcMathLinearalgebraCharUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 20
+ (IOSCharArray *)cloneWithCharArray:(IOSCharArray *)array {
  return OrgBouncycastlePqcMathLinearalgebraCharUtils_cloneWithCharArray_(array);
}


#line 33
+ (IOSByteArray *)toByteArrayWithCharArray:(IOSCharArray *)chars {
  return OrgBouncycastlePqcMathLinearalgebraCharUtils_toByteArrayWithCharArray_(chars);
}


#line 50
+ (IOSByteArray *)toByteArrayForPBEWithCharArray:(IOSCharArray *)chars {
  return OrgBouncycastlePqcMathLinearalgebraCharUtils_toByteArrayForPBEWithCharArray_(chars);
}


#line 84
+ (jboolean)equalsWithCharArray:(IOSCharArray *)left
                  withCharArray:(IOSCharArray *)right {
  return OrgBouncycastlePqcMathLinearalgebraCharUtils_equalsWithCharArray_withCharArray_(left, right);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "[C", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x9, 2, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x9, 3, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(cloneWithCharArray:);
  methods[2].selector = @selector(toByteArrayWithCharArray:);
  methods[3].selector = @selector(toByteArrayForPBEWithCharArray:);
  methods[4].selector = @selector(equalsWithCharArray:withCharArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "clone", "[C", "toByteArray", "toByteArrayForPBE", "equals", "[C[C" };
  static const J2ObjcClassInfo _OrgBouncycastlePqcMathLinearalgebraCharUtils = { "CharUtils", "org.bouncycastle.pqc.math.linearalgebra", ptrTable, methods, NULL, 7, 0x11, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastlePqcMathLinearalgebraCharUtils;
}

@end


#line 9
void OrgBouncycastlePqcMathLinearalgebraCharUtils_init(OrgBouncycastlePqcMathLinearalgebraCharUtils *self) {
  NSObject_init(self);
}


#line 9
OrgBouncycastlePqcMathLinearalgebraCharUtils *new_OrgBouncycastlePqcMathLinearalgebraCharUtils_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastlePqcMathLinearalgebraCharUtils, init)
}


#line 9
OrgBouncycastlePqcMathLinearalgebraCharUtils *create_OrgBouncycastlePqcMathLinearalgebraCharUtils_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastlePqcMathLinearalgebraCharUtils, init)
}


#line 20
IOSCharArray *OrgBouncycastlePqcMathLinearalgebraCharUtils_cloneWithCharArray_(IOSCharArray *array) {
  OrgBouncycastlePqcMathLinearalgebraCharUtils_initialize();
  IOSCharArray *result = [IOSCharArray newArrayWithLength:((IOSCharArray *) nil_chk(array))->size_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, 0, result, 0, array->size_);
  return result;
}


#line 33
IOSByteArray *OrgBouncycastlePqcMathLinearalgebraCharUtils_toByteArrayWithCharArray_(IOSCharArray *chars) {
  OrgBouncycastlePqcMathLinearalgebraCharUtils_initialize();
  IOSByteArray *result = [IOSByteArray newArrayWithLength:((IOSCharArray *) nil_chk(chars))->size_];
  for (jint i = chars->size_ - 1; i >= 0; i--) {
    
#line 38
    *IOSByteArray_GetRef(result, i) = (jbyte) IOSCharArray_Get(chars, i);
  }
  return result;
}


#line 50
IOSByteArray *OrgBouncycastlePqcMathLinearalgebraCharUtils_toByteArrayForPBEWithCharArray_(IOSCharArray *chars) {
  OrgBouncycastlePqcMathLinearalgebraCharUtils_initialize();
  
#line 53
  IOSByteArray *out = [IOSByteArray newArrayWithLength:((IOSCharArray *) nil_chk(chars))->size_];
  
#line 55
  for (jint i = 0; i < chars->size_; i++) {
    
#line 57
    *IOSByteArray_GetRef(out, i) = (jbyte) IOSCharArray_Get(chars, i);
  }
  
#line 60
  jint length = out->size_ * 2;
  IOSByteArray *ret = [IOSByteArray newArrayWithLength:length + 2];
  
#line 63
  jint j = 0;
  for (jint i = 0; i < out->size_; i++) {
    
#line 66
    j = i * 2;
    *IOSByteArray_GetRef(ret, j) = 0;
    *IOSByteArray_GetRef(ret, j + 1) = IOSByteArray_Get(out, i);
  }
  
#line 71
  *IOSByteArray_GetRef(ret, length) = 0;
  *IOSByteArray_GetRef(ret, length + 1) = 0;
  
#line 74
  return ret;
}


#line 84
jboolean OrgBouncycastlePqcMathLinearalgebraCharUtils_equalsWithCharArray_withCharArray_(IOSCharArray *left, IOSCharArray *right) {
  OrgBouncycastlePqcMathLinearalgebraCharUtils_initialize();
  if (((IOSCharArray *) nil_chk(left))->size_ != ((IOSCharArray *) nil_chk(right))->size_) {
    
#line 88
    return false;
  }
  jboolean result = true;
  for (jint i = left->size_ - 1; i >= 0; i--) {
    
#line 93
    result &= (IOSCharArray_Get(left, i) == IOSCharArray_Get(right, i));
  }
  return result;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastlePqcMathLinearalgebraCharUtils)
