//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/DERPrintableString.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleAsn1DERPrintableString")
#ifdef RESTRICT_OrgBouncycastleAsn1DERPrintableString
#define INCLUDE_ALL_OrgBouncycastleAsn1DERPrintableString 0
#else
#define INCLUDE_ALL_OrgBouncycastleAsn1DERPrintableString 1
#endif
#undef RESTRICT_OrgBouncycastleAsn1DERPrintableString

#if !defined (OrgBouncycastleAsn1DERPrintableString_) && (INCLUDE_ALL_OrgBouncycastleAsn1DERPrintableString || defined(INCLUDE_OrgBouncycastleAsn1DERPrintableString))
#define OrgBouncycastleAsn1DERPrintableString_

#define RESTRICT_OrgBouncycastleAsn1ASN1PrintableString 1
#define INCLUDE_OrgBouncycastleAsn1ASN1PrintableString 1
#include "org/bouncycastle/asn1/ASN1PrintableString.h"

@class IOSByteArray;
@class OrgBouncycastleAsn1ASN1TaggedObject;

/*!
 @brief DER PrintableString object.
 <p>
  X.680 section 37.4 defines PrintableString character codes as ASCII subset of following characters: 
 </p>
  <ul>
  <li>Latin capital letters: 'A' .. 'Z'</li>
  <li>Latin small letters: 'a' .. 'z'</li>
  <li>Digits: '0'..'9'</li>
  <li>Space</li>
  <li>Apostrophe: '\''</li>
  <li>Left parenthesis: '('</li>
  <li>Right parenthesis: ')'</li>
  <li>Plus sign: '+'</li>
  <li>Comma: ','</li>
  <li>Hyphen-minus: '-'</li>
  <li>Full stop: '.'</li>
  <li>Solidus: '/'</li>
  <li>Colon: ':'</li>
  <li>Equals sign: '='</li>
  <li>Question mark: '?'</li>
  </ul>
  <p>
  Explicit character set escape sequences are not allowed. 
 </p>
 */
@interface OrgBouncycastleAsn1DERPrintableString : OrgBouncycastleAsn1ASN1PrintableString

#pragma mark Public

/*!
 @brief Basic constructor - this does not validate the string
 */
- (instancetype)initWithNSString:(NSString *)string;

/*!
 @brief Constructor with optional validation.
 @param string the base string to wrap.
 @param validate whether or not to check the string.
 @throw IllegalArgumentExceptionif validate is true and the string
  contains characters that should not be in a PrintableString.
 */
- (instancetype)initWithNSString:(NSString *)string
                     withBoolean:(jboolean)validate;

/*!
 @brief Return a Printable String from a tagged object.
 @param obj the tagged object holding the object we want
 @param explicit_ true if the object is meant to be explicitly tagged false                  otherwise.
 @throw IllegalArgumentExceptionif the tagged object cannot be converted.
 @return a DERPrintableString instance, or null.
 */
+ (OrgBouncycastleAsn1DERPrintableString *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                  withBoolean:(jboolean)explicit_;

/*!
 @brief Return a printable string from the passed in object.
 @param obj a DERPrintableString or an object that can be converted into one.
 @throw IllegalArgumentExceptionif the object cannot be converted.
 @return a DERPrintableString instance, or null.
 */
+ (OrgBouncycastleAsn1DERPrintableString *)getInstanceWithId:(id)obj;

#pragma mark Package-Private

- (instancetype)initWithByteArray:(IOSByteArray *)contents
                      withBoolean:(jboolean)clone;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1DERPrintableString)

FOUNDATION_EXPORT OrgBouncycastleAsn1DERPrintableString *OrgBouncycastleAsn1DERPrintableString_getInstanceWithId_(id obj);

FOUNDATION_EXPORT OrgBouncycastleAsn1DERPrintableString *OrgBouncycastleAsn1DERPrintableString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_);

FOUNDATION_EXPORT void OrgBouncycastleAsn1DERPrintableString_initWithNSString_(OrgBouncycastleAsn1DERPrintableString *self, NSString *string);

FOUNDATION_EXPORT OrgBouncycastleAsn1DERPrintableString *new_OrgBouncycastleAsn1DERPrintableString_initWithNSString_(NSString *string) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1DERPrintableString *create_OrgBouncycastleAsn1DERPrintableString_initWithNSString_(NSString *string);

FOUNDATION_EXPORT void OrgBouncycastleAsn1DERPrintableString_initWithNSString_withBoolean_(OrgBouncycastleAsn1DERPrintableString *self, NSString *string, jboolean validate);

FOUNDATION_EXPORT OrgBouncycastleAsn1DERPrintableString *new_OrgBouncycastleAsn1DERPrintableString_initWithNSString_withBoolean_(NSString *string, jboolean validate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1DERPrintableString *create_OrgBouncycastleAsn1DERPrintableString_initWithNSString_withBoolean_(NSString *string, jboolean validate);

FOUNDATION_EXPORT void OrgBouncycastleAsn1DERPrintableString_initWithByteArray_withBoolean_(OrgBouncycastleAsn1DERPrintableString *self, IOSByteArray *contents, jboolean clone);

FOUNDATION_EXPORT OrgBouncycastleAsn1DERPrintableString *new_OrgBouncycastleAsn1DERPrintableString_initWithByteArray_withBoolean_(IOSByteArray *contents, jboolean clone) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1DERPrintableString *create_OrgBouncycastleAsn1DERPrintableString_initWithByteArray_withBoolean_(IOSByteArray *contents, jboolean clone);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1DERPrintableString)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleAsn1DERPrintableString")
