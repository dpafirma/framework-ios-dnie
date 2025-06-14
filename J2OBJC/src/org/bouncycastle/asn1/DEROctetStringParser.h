//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/DEROctetStringParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleAsn1DEROctetStringParser")
#ifdef RESTRICT_OrgBouncycastleAsn1DEROctetStringParser
#define INCLUDE_ALL_OrgBouncycastleAsn1DEROctetStringParser 0
#else
#define INCLUDE_ALL_OrgBouncycastleAsn1DEROctetStringParser 1
#endif
#undef RESTRICT_OrgBouncycastleAsn1DEROctetStringParser

#if !defined (OrgBouncycastleAsn1DEROctetStringParser_) && (INCLUDE_ALL_OrgBouncycastleAsn1DEROctetStringParser || defined(INCLUDE_OrgBouncycastleAsn1DEROctetStringParser))
#define OrgBouncycastleAsn1DEROctetStringParser_

#define RESTRICT_OrgBouncycastleAsn1ASN1OctetStringParser 1
#define INCLUDE_OrgBouncycastleAsn1ASN1OctetStringParser 1
#include "org/bouncycastle/asn1/ASN1OctetStringParser.h"

@class JavaIoInputStream;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1DefiniteLengthInputStream;

/*!
 @brief Parser for DER encoded OCTET STRINGS
 */
@interface OrgBouncycastleAsn1DEROctetStringParser : NSObject < OrgBouncycastleAsn1ASN1OctetStringParser >

#pragma mark Public

/*!
 @brief Return an in-memory, encodable, representation of the OCTET STRING.
 @return a DEROctetString.
 @throw IOExceptionif there is an issue loading the data.
 */
- (OrgBouncycastleAsn1ASN1Primitive *)getLoadedObject;

/*!
 @brief Return an InputStream representing the contents of the OCTET STRING.
 @return an InputStream with its source as the OCTET STRING content.
 */
- (JavaIoInputStream *)getOctetStream;

/*!
 @brief Return an DEROctetString representing this parser and its contents.
 @return an DEROctetString
 */
- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

#pragma mark Package-Private

- (instancetype)initWithOrgBouncycastleAsn1DefiniteLengthInputStream:(OrgBouncycastleAsn1DefiniteLengthInputStream *)stream;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1DEROctetStringParser)

FOUNDATION_EXPORT void OrgBouncycastleAsn1DEROctetStringParser_initWithOrgBouncycastleAsn1DefiniteLengthInputStream_(OrgBouncycastleAsn1DEROctetStringParser *self, OrgBouncycastleAsn1DefiniteLengthInputStream *stream);

FOUNDATION_EXPORT OrgBouncycastleAsn1DEROctetStringParser *new_OrgBouncycastleAsn1DEROctetStringParser_initWithOrgBouncycastleAsn1DefiniteLengthInputStream_(OrgBouncycastleAsn1DefiniteLengthInputStream *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1DEROctetStringParser *create_OrgBouncycastleAsn1DEROctetStringParser_initWithOrgBouncycastleAsn1DefiniteLengthInputStream_(OrgBouncycastleAsn1DefiniteLengthInputStream *stream);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1DEROctetStringParser)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleAsn1DEROctetStringParser")
