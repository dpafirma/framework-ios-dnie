//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/ASN1Primitive.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleAsn1ASN1Primitive")
#ifdef RESTRICT_OrgBouncycastleAsn1ASN1Primitive
#define INCLUDE_ALL_OrgBouncycastleAsn1ASN1Primitive 0
#else
#define INCLUDE_ALL_OrgBouncycastleAsn1ASN1Primitive 1
#endif
#undef RESTRICT_OrgBouncycastleAsn1ASN1Primitive

#if !defined (OrgBouncycastleAsn1ASN1Primitive_) && (INCLUDE_ALL_OrgBouncycastleAsn1ASN1Primitive || defined(INCLUDE_OrgBouncycastleAsn1ASN1Primitive))
#define OrgBouncycastleAsn1ASN1Primitive_

#define RESTRICT_OrgBouncycastleAsn1ASN1Object 1
#define INCLUDE_OrgBouncycastleAsn1ASN1Object 1
#include "org/bouncycastle/asn1/ASN1Object.h"

@class IOSByteArray;
@class JavaIoOutputStream;
@class OrgBouncycastleAsn1ASN1OutputStream;
@protocol OrgBouncycastleAsn1ASN1Encodable;

/*!
 @brief Base class for ASN.1 primitive objects.These are the actual objects used to generate byte encodings.
 */
@interface OrgBouncycastleAsn1ASN1Primitive : OrgBouncycastleAsn1ASN1Object

#pragma mark Public

- (void)encodeToWithJavaIoOutputStream:(JavaIoOutputStream *)output;

- (void)encodeToWithJavaIoOutputStream:(JavaIoOutputStream *)output
                          withNSString:(NSString *)encoding;

- (jboolean)equalsWithOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)other;

- (jboolean)equalsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)other;

- (jboolean)isEqual:(id)o;

/*!
 @brief Create a base ASN.1 object from a byte stream.
 @param data the byte stream to parse.
 @return the base ASN.1 object represented by the byte stream.
 @throw IOExceptionif there is a problem parsing the data, or parsing the stream did not exhaust the available data.
 */
+ (OrgBouncycastleAsn1ASN1Primitive *)fromByteArrayWithByteArray:(IOSByteArray *)data;

- (NSUInteger)hash;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

#pragma mark Package-Private

- (instancetype)init;

/*!
 @brief Equality (similarity) comparison for two ASN1Primitive objects.
 */
- (jboolean)asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)o;

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg
                                          withBoolean:(jboolean)withTag;

/*!
 @brief Return true if this objected is a CONSTRUCTED one, false otherwise.
 @return true if CONSTRUCTED bit set on object's tag, false otherwise.
 */
- (jboolean)encodeConstructed;

- (jint)encodedLengthWithBoolean:(jboolean)withTag;

/*!
 @brief Return the current object as one which encodes using Distinguished Encoding Rules.
 @return a DER version of this.
 */
- (OrgBouncycastleAsn1ASN1Primitive *)toDERObject;

/*!
 @brief Return the current object as one which encodes using Definite Length encoding.
 @return a DL version of this.
 */
- (OrgBouncycastleAsn1ASN1Primitive *)toDLObject;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1ASN1Primitive)

FOUNDATION_EXPORT void OrgBouncycastleAsn1ASN1Primitive_init(OrgBouncycastleAsn1ASN1Primitive *self);

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1Primitive *OrgBouncycastleAsn1ASN1Primitive_fromByteArrayWithByteArray_(IOSByteArray *data);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1ASN1Primitive)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleAsn1ASN1Primitive")
