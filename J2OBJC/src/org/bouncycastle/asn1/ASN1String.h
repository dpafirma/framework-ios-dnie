//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/ASN1String.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleAsn1ASN1String")
#ifdef RESTRICT_OrgBouncycastleAsn1ASN1String
#define INCLUDE_ALL_OrgBouncycastleAsn1ASN1String 0
#else
#define INCLUDE_ALL_OrgBouncycastleAsn1ASN1String 1
#endif
#undef RESTRICT_OrgBouncycastleAsn1ASN1String

#if !defined (OrgBouncycastleAsn1ASN1String_) && (INCLUDE_ALL_OrgBouncycastleAsn1ASN1String || defined(INCLUDE_OrgBouncycastleAsn1ASN1String))
#define OrgBouncycastleAsn1ASN1String_

/*!
 @brief General interface implemented by ASN.1 STRING objects for extracting the content String.
 */
@protocol OrgBouncycastleAsn1ASN1String < JavaObject >

/*!
 @brief Return a Java String representation of this STRING type's content.
 @return a Java String representation of this STRING.
 */
- (NSString *)getString;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1ASN1String)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1ASN1String)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleAsn1ASN1String")
