//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/math/field/ExtensionField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleMathFieldExtensionField")
#ifdef RESTRICT_OrgBouncycastleMathFieldExtensionField
#define INCLUDE_ALL_OrgBouncycastleMathFieldExtensionField 0
#else
#define INCLUDE_ALL_OrgBouncycastleMathFieldExtensionField 1
#endif
#undef RESTRICT_OrgBouncycastleMathFieldExtensionField

#if !defined (OrgBouncycastleMathFieldExtensionField_) && (INCLUDE_ALL_OrgBouncycastleMathFieldExtensionField || defined(INCLUDE_OrgBouncycastleMathFieldExtensionField))
#define OrgBouncycastleMathFieldExtensionField_

#define RESTRICT_OrgBouncycastleMathFieldFiniteField 1
#define INCLUDE_OrgBouncycastleMathFieldFiniteField 1
#include "org/bouncycastle/math/field/FiniteField.h"

@protocol OrgBouncycastleMathFieldExtensionField < OrgBouncycastleMathFieldFiniteField, JavaObject >

- (id<OrgBouncycastleMathFieldFiniteField>)getSubfield;

- (jint)getDegree;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathFieldExtensionField)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathFieldExtensionField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleMathFieldExtensionField")
