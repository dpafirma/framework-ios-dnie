//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/ASN1IA5String.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleAsn1ASN1IA5String")
#ifdef RESTRICT_OrgBouncycastleAsn1ASN1IA5String
#define INCLUDE_ALL_OrgBouncycastleAsn1ASN1IA5String 0
#else
#define INCLUDE_ALL_OrgBouncycastleAsn1ASN1IA5String 1
#endif
#undef RESTRICT_OrgBouncycastleAsn1ASN1IA5String

#if !defined (OrgBouncycastleAsn1ASN1IA5String_) && (INCLUDE_ALL_OrgBouncycastleAsn1ASN1IA5String || defined(INCLUDE_OrgBouncycastleAsn1ASN1IA5String))
#define OrgBouncycastleAsn1ASN1IA5String_

#define RESTRICT_OrgBouncycastleAsn1ASN1Primitive 1
#define INCLUDE_OrgBouncycastleAsn1ASN1Primitive 1
#include "org/bouncycastle/asn1/ASN1Primitive.h"

#define RESTRICT_OrgBouncycastleAsn1ASN1String 1
#define INCLUDE_OrgBouncycastleAsn1ASN1String 1
#include "org/bouncycastle/asn1/ASN1String.h"

@class IOSByteArray;
@class OrgBouncycastleAsn1ASN1OutputStream;
@class OrgBouncycastleAsn1ASN1TaggedObject;
@class OrgBouncycastleAsn1ASN1UniversalType;

/*!
 @brief ASN.1 IA5String object - this is a ISO 646 (ASCII) string encoding code points 0 to 127.
 <p>
  Explicit character set escape sequences are not allowed. 
 </p>
 */
@interface OrgBouncycastleAsn1ASN1IA5String : OrgBouncycastleAsn1ASN1Primitive < OrgBouncycastleAsn1ASN1String > {
 @public
  IOSByteArray *contents_;
}

#pragma mark Public

/*!
 @brief Return an IA5 String from a tagged object.
 @param taggedObject the tagged object holding the object we want
 @param explicit_ true if the object is meant to be explicitly               tagged false otherwise.
 @throw IllegalArgumentExceptionif the tagged object cannot
                be converted.
 @return an ASN1IA5String instance, or null.
 */
+ (OrgBouncycastleAsn1ASN1IA5String *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)taggedObject
                                                                             withBoolean:(jboolean)explicit_;

/*!
 @brief Return an IA5 string from the passed in object
 @param obj an ASN1IA5String or an object that can be converted into one.
 @throw IllegalArgumentExceptionif the object cannot be converted.
 @return a ASN1IA5String instance, or null.
 */
+ (OrgBouncycastleAsn1ASN1IA5String *)getInstanceWithId:(id)obj;

- (IOSByteArray *)getOctets;

- (NSString *)getString;

- (NSUInteger)hash;

/*!
 @brief return true if the passed in String can be represented without
  loss as an IA5String, false otherwise.
 @param str the string to check.
 @return true if character set in IA5String set, false otherwise.
 */
+ (jboolean)isIA5StringWithNSString:(NSString *)str;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithByteArray:(IOSByteArray *)contents
                      withBoolean:(jboolean)clone;

- (instancetype)initWithNSString:(NSString *)string
                     withBoolean:(jboolean)validate;

- (jboolean)asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)other;

+ (OrgBouncycastleAsn1ASN1IA5String *)createPrimitiveWithByteArray:(IOSByteArray *)contents;

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg
                                          withBoolean:(jboolean)withTag;

- (jboolean)encodeConstructed;

- (jint)encodedLengthWithBoolean:(jboolean)withTag;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleAsn1ASN1IA5String)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1ASN1IA5String, contents_, IOSByteArray *)

inline OrgBouncycastleAsn1ASN1UniversalType *OrgBouncycastleAsn1ASN1IA5String_get_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1UniversalType *OrgBouncycastleAsn1ASN1IA5String_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastleAsn1ASN1IA5String, TYPE, OrgBouncycastleAsn1ASN1UniversalType *)

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1IA5String *OrgBouncycastleAsn1ASN1IA5String_getInstanceWithId_(id obj);

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1IA5String *OrgBouncycastleAsn1ASN1IA5String_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *taggedObject, jboolean explicit_);

FOUNDATION_EXPORT void OrgBouncycastleAsn1ASN1IA5String_initWithNSString_withBoolean_(OrgBouncycastleAsn1ASN1IA5String *self, NSString *string, jboolean validate);

FOUNDATION_EXPORT void OrgBouncycastleAsn1ASN1IA5String_initWithByteArray_withBoolean_(OrgBouncycastleAsn1ASN1IA5String *self, IOSByteArray *contents, jboolean clone);

FOUNDATION_EXPORT jboolean OrgBouncycastleAsn1ASN1IA5String_isIA5StringWithNSString_(NSString *str);

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1IA5String *OrgBouncycastleAsn1ASN1IA5String_createPrimitiveWithByteArray_(IOSByteArray *contents);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1ASN1IA5String)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleAsn1ASN1IA5String")
