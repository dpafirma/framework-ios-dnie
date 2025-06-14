//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/cms/AttributeTable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleAsn1CmsAttributeTable")
#ifdef RESTRICT_OrgBouncycastleAsn1CmsAttributeTable
#define INCLUDE_ALL_OrgBouncycastleAsn1CmsAttributeTable 0
#else
#define INCLUDE_ALL_OrgBouncycastleAsn1CmsAttributeTable 1
#endif
#undef RESTRICT_OrgBouncycastleAsn1CmsAttributeTable

#if !defined (OrgBouncycastleAsn1CmsAttributeTable_) && (INCLUDE_ALL_OrgBouncycastleAsn1CmsAttributeTable || defined(INCLUDE_OrgBouncycastleAsn1CmsAttributeTable))
#define OrgBouncycastleAsn1CmsAttributeTable_

@class JavaUtilHashtable;
@class OrgBouncycastleAsn1ASN1EncodableVector;
@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1ASN1Set;
@class OrgBouncycastleAsn1CmsAttribute;
@class OrgBouncycastleAsn1CmsAttributes;
@protocol OrgBouncycastleAsn1ASN1Encodable;

/*!
 @brief This is helper tool to construct <code>Attributes</code> sets.
 */
@interface OrgBouncycastleAsn1CmsAttributeTable : NSObject

#pragma mark Public

- (instancetype)initWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v;

- (instancetype)initWithOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)s;

- (instancetype)initWithOrgBouncycastleAsn1CmsAttribute:(OrgBouncycastleAsn1CmsAttribute *)attr;

- (instancetype)initWithOrgBouncycastleAsn1CmsAttributes:(OrgBouncycastleAsn1CmsAttributes *)attrs;

- (instancetype)initWithJavaUtilHashtable:(JavaUtilHashtable *)attrs;

/*!
 @brief Return a new table with the passed in attribute added.
 @param attrType the type of the attribute to add.
 @param attrValue the value corresponding to the attribute (will be wrapped in a SET).
 @return a new table with the extra attribute in it.
 */
- (OrgBouncycastleAsn1CmsAttributeTable *)addWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)attrType
                                                    withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)attrValue;

/*!
 @brief Return the first attribute matching the OBJECT IDENTIFIER oid.
 @param oid type of attribute required.
 @return first attribute found of type oid.
 */
- (OrgBouncycastleAsn1CmsAttribute *)getWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)oid;

/*!
 @brief Return all the attributes matching the OBJECT IDENTIFIER oid.The vector will be 
  empty if there are no attributes of the required type present.
 @param oid type of attribute required.
 @return a vector of all the attributes found of type oid.
 */
- (OrgBouncycastleAsn1ASN1EncodableVector *)getAllWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)oid;

- (OrgBouncycastleAsn1CmsAttributeTable *)removeWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)attrType;

- (jint)size;

- (OrgBouncycastleAsn1ASN1EncodableVector *)toASN1EncodableVector;

- (OrgBouncycastleAsn1CmsAttributes *)toASN1Structure;

- (JavaUtilHashtable *)toHashtable;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmsAttributeTable)

FOUNDATION_EXPORT void OrgBouncycastleAsn1CmsAttributeTable_initWithJavaUtilHashtable_(OrgBouncycastleAsn1CmsAttributeTable *self, JavaUtilHashtable *attrs);

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *new_OrgBouncycastleAsn1CmsAttributeTable_initWithJavaUtilHashtable_(JavaUtilHashtable *attrs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *create_OrgBouncycastleAsn1CmsAttributeTable_initWithJavaUtilHashtable_(JavaUtilHashtable *attrs);

FOUNDATION_EXPORT void OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1ASN1EncodableVector_(OrgBouncycastleAsn1CmsAttributeTable *self, OrgBouncycastleAsn1ASN1EncodableVector *v);

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *new_OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1ASN1EncodableVector_(OrgBouncycastleAsn1ASN1EncodableVector *v) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *create_OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1ASN1EncodableVector_(OrgBouncycastleAsn1ASN1EncodableVector *v);

FOUNDATION_EXPORT void OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1ASN1Set_(OrgBouncycastleAsn1CmsAttributeTable *self, OrgBouncycastleAsn1ASN1Set *s);

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *new_OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1ASN1Set_(OrgBouncycastleAsn1ASN1Set *s) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *create_OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1ASN1Set_(OrgBouncycastleAsn1ASN1Set *s);

FOUNDATION_EXPORT void OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1CmsAttribute_(OrgBouncycastleAsn1CmsAttributeTable *self, OrgBouncycastleAsn1CmsAttribute *attr);

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *new_OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1CmsAttribute_(OrgBouncycastleAsn1CmsAttribute *attr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *create_OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1CmsAttribute_(OrgBouncycastleAsn1CmsAttribute *attr);

FOUNDATION_EXPORT void OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1CmsAttributes_(OrgBouncycastleAsn1CmsAttributeTable *self, OrgBouncycastleAsn1CmsAttributes *attrs);

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *new_OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1CmsAttributes_(OrgBouncycastleAsn1CmsAttributes *attrs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsAttributeTable *create_OrgBouncycastleAsn1CmsAttributeTable_initWithOrgBouncycastleAsn1CmsAttributes_(OrgBouncycastleAsn1CmsAttributes *attrs);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmsAttributeTable)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleAsn1CmsAttributeTable")
