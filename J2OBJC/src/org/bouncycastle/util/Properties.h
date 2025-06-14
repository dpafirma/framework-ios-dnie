//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/util/Properties.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleUtilProperties")
#ifdef RESTRICT_OrgBouncycastleUtilProperties
#define INCLUDE_ALL_OrgBouncycastleUtilProperties 0
#else
#define INCLUDE_ALL_OrgBouncycastleUtilProperties 1
#endif
#undef RESTRICT_OrgBouncycastleUtilProperties

#if !defined (OrgBouncycastleUtilProperties_) && (INCLUDE_ALL_OrgBouncycastleUtilProperties || defined(INCLUDE_OrgBouncycastleUtilProperties))
#define OrgBouncycastleUtilProperties_

@class JavaMathBigInteger;
@protocol JavaUtilSet;

/*!
 @brief Utility method for accessing properties values - properties can be set in java.security,
  thread local, and system properties.They are checked for in the same order with
  checking stopped as soon as a value is found.
 */
@interface OrgBouncycastleUtilProperties : NSObject

#pragma mark Public

/*!
 @brief Return propertyName as a BigInteger.
 @param propertyName name of property.
 @return value of property as a BigInteger, null if not defined.
 */
+ (JavaMathBigInteger *)asBigIntegerWithNSString:(NSString *)propertyName;

/*!
 @brief Return propertyName as an integer, defaultValue used if not defined.
 @param propertyName name of property.
 @param defaultValue integer to return if property not defined.
 @return value of property, or default if not found, as an int.
 */
+ (jint)asIntegerWithNSString:(NSString *)propertyName
                      withInt:(jint)defaultValue;

+ (id<JavaUtilSet>)asKeySetWithNSString:(NSString *)propertyName;

/*!
 @brief Return the String value of the property propertyName.Property valuation
  starts with java.security, then thread local, then system properties.
 @param propertyName name of property.
 @return value of property as a String, null if not defined.
 */
+ (NSString *)getPropertyValueWithNSString:(NSString *)propertyName;

/*!
 @brief Return whether a particular override has been set to true.
 @param propertyName the property name for the override.
 @return true if the property is set to "true", false otherwise.
 */
+ (jboolean)isOverrideSetWithNSString:(NSString *)propertyName;

/*!
 @brief Return whether a particular override has been set to false.
 @param propertyName the property name for the override.
 @param isTrue true if the override should be true, false otherwise.
 @return true if the property is set to the value of isTrue, false otherwise.
 */
+ (jboolean)isOverrideSetToWithNSString:(NSString *)propertyName
                            withBoolean:(jboolean)isTrue;

/*!
 @brief Remove any value for the specified override property for the current thread only.
 @param propertyName the property name for the override.
 @return true if the override was already set true in thread local, false otherwise.
 */
+ (jboolean)removeThreadOverrideWithNSString:(NSString *)propertyName;

/*!
 @brief Enable the specified override property for the current thread only.
 @param propertyName the property name for the override.
 @param enable true if the override should be enabled, false if it should be disabled.
 @return true if the override was already set true, false otherwise.
 */
+ (jboolean)setThreadOverrideWithNSString:(NSString *)propertyName
                              withBoolean:(jboolean)enable;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleUtilProperties)

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilProperties_isOverrideSetWithNSString_(NSString *propertyName);

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilProperties_isOverrideSetToWithNSString_withBoolean_(NSString *propertyName, jboolean isTrue);

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilProperties_setThreadOverrideWithNSString_withBoolean_(NSString *propertyName, jboolean enable);

FOUNDATION_EXPORT jboolean OrgBouncycastleUtilProperties_removeThreadOverrideWithNSString_(NSString *propertyName);

FOUNDATION_EXPORT jint OrgBouncycastleUtilProperties_asIntegerWithNSString_withInt_(NSString *propertyName, jint defaultValue);

FOUNDATION_EXPORT JavaMathBigInteger *OrgBouncycastleUtilProperties_asBigIntegerWithNSString_(NSString *propertyName);

FOUNDATION_EXPORT id<JavaUtilSet> OrgBouncycastleUtilProperties_asKeySetWithNSString_(NSString *propertyName);

FOUNDATION_EXPORT NSString *OrgBouncycastleUtilProperties_getPropertyValueWithNSString_(NSString *propertyName);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilProperties)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleUtilProperties")
