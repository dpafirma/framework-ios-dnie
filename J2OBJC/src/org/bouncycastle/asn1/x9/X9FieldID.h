//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/x9/X9FieldID.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleAsn1X9X9FieldID")
#ifdef RESTRICT_OrgBouncycastleAsn1X9X9FieldID
#define INCLUDE_ALL_OrgBouncycastleAsn1X9X9FieldID 0
#else
#define INCLUDE_ALL_OrgBouncycastleAsn1X9X9FieldID 1
#endif
#undef RESTRICT_OrgBouncycastleAsn1X9X9FieldID

#if !defined (OrgBouncycastleAsn1X9X9FieldID_) && (INCLUDE_ALL_OrgBouncycastleAsn1X9X9FieldID || defined(INCLUDE_OrgBouncycastleAsn1X9X9FieldID))
#define OrgBouncycastleAsn1X9X9FieldID_

#define RESTRICT_OrgBouncycastleAsn1ASN1Object 1
#define INCLUDE_OrgBouncycastleAsn1ASN1Object 1
#include "org/bouncycastle/asn1/ASN1Object.h"

#define RESTRICT_OrgBouncycastleAsn1X9X9ObjectIdentifiers 1
#define INCLUDE_OrgBouncycastleAsn1X9X9ObjectIdentifiers 1
#include "org/bouncycastle/asn1/x9/X9ObjectIdentifiers.h"

@class JavaMathBigInteger;
@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1ASN1Primitive;

/*!
 @brief ASN.1 def for Elliptic-Curve Field ID structure.See
  X9.62, for further details.
 */
@interface OrgBouncycastleAsn1X9X9FieldID : OrgBouncycastleAsn1ASN1Object < OrgBouncycastleAsn1X9X9ObjectIdentifiers >

#pragma mark Public

/*!
 @brief Constructor for elliptic curves over prime fields 
 <code>F<sub>2</sub></code>.
 @param primeP The prime  <code> p </code>  defining the prime field.
 */
- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)primeP;

/*!
 @brief Constructor for elliptic curves over binary fields 
 <code>F<sub>2<sup>m</sup></sub></code>.
 @param m The exponent  <code> m </code>  of
    <code> F <sub> 2 <sup> m </sup> </sub> </code>
  .
 @param k1 The integer  <code> k1 </code>  where  <code> x <sup> m </sup>
   +  x <sup> k1 </sup>  + 1 </code>
   represents the reduction polynomial  <code> f(z) </code>
  .
 */
- (instancetype)initWithInt:(jint)m
                    withInt:(jint)k1;

/*!
 @brief Constructor for elliptic curves over binary fields 
 <code>F<sub>2<sup>m</sup></sub></code>.
 @param m The exponent  <code> m </code>  of
    <code> F <sub> 2 <sup> m </sup> </sub> </code>
  .
 @param k1 The integer  <code> k1 </code>  where  <code> x <sup> m </sup>
   +  x <sup> k3 </sup>  + x <sup> k2 </sup>  + x <sup> k1 </sup>
   + 1 </code>  represents the reduction polynomial  <code> f(z)
  </code> .
 @param k2 The integer  <code> k2 </code>  where  <code> x <sup> m </sup>
   +  x <sup> k3 </sup>  + x <sup> k2 </sup>  + x <sup> k1 </sup>
   + 1 </code>  represents the reduction polynomial  <code> f(z)
  </code> .
 @param k3 The integer  <code> k3 </code>  where  <code> x <sup> m </sup>
   +  x <sup> k3 </sup>  + x <sup> k2 </sup>  + x <sup> k1 </sup>
   + 1 </code>  represents the reduction polynomial  <code> f(z)
  </code> ..
 */
- (instancetype)initWithInt:(jint)m
                    withInt:(jint)k1
                    withInt:(jint)k2
                    withInt:(jint)k3;

- (OrgBouncycastleAsn1ASN1ObjectIdentifier *)getIdentifier;

+ (OrgBouncycastleAsn1X9X9FieldID *)getInstanceWithId:(id)obj;

- (OrgBouncycastleAsn1ASN1Primitive *)getParameters;

/*!
 @brief Produce a DER encoding of the following structure.
 @code

   FieldID ::= SEQUENCE {
       fieldType       FIELD-ID.&amp;id({IOSet}),
       parameters      FIELD-ID.&amp;Type({IOSet}{&#64;fieldType})
   } 
  
@endcode
 */
- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1X9X9FieldID)

FOUNDATION_EXPORT void OrgBouncycastleAsn1X9X9FieldID_initWithJavaMathBigInteger_(OrgBouncycastleAsn1X9X9FieldID *self, JavaMathBigInteger *primeP);

FOUNDATION_EXPORT OrgBouncycastleAsn1X9X9FieldID *new_OrgBouncycastleAsn1X9X9FieldID_initWithJavaMathBigInteger_(JavaMathBigInteger *primeP) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1X9X9FieldID *create_OrgBouncycastleAsn1X9X9FieldID_initWithJavaMathBigInteger_(JavaMathBigInteger *primeP);

FOUNDATION_EXPORT void OrgBouncycastleAsn1X9X9FieldID_initWithInt_withInt_(OrgBouncycastleAsn1X9X9FieldID *self, jint m, jint k1);

FOUNDATION_EXPORT OrgBouncycastleAsn1X9X9FieldID *new_OrgBouncycastleAsn1X9X9FieldID_initWithInt_withInt_(jint m, jint k1) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1X9X9FieldID *create_OrgBouncycastleAsn1X9X9FieldID_initWithInt_withInt_(jint m, jint k1);

FOUNDATION_EXPORT void OrgBouncycastleAsn1X9X9FieldID_initWithInt_withInt_withInt_withInt_(OrgBouncycastleAsn1X9X9FieldID *self, jint m, jint k1, jint k2, jint k3);

FOUNDATION_EXPORT OrgBouncycastleAsn1X9X9FieldID *new_OrgBouncycastleAsn1X9X9FieldID_initWithInt_withInt_withInt_withInt_(jint m, jint k1, jint k2, jint k3) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1X9X9FieldID *create_OrgBouncycastleAsn1X9X9FieldID_initWithInt_withInt_withInt_withInt_(jint m, jint k1, jint k2, jint k3);

FOUNDATION_EXPORT OrgBouncycastleAsn1X9X9FieldID *OrgBouncycastleAsn1X9X9FieldID_getInstanceWithId_(id obj);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1X9X9FieldID)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleAsn1X9X9FieldID")
