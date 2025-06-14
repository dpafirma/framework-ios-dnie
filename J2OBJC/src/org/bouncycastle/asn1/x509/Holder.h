//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/x509/Holder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleAsn1X509Holder")
#ifdef RESTRICT_OrgBouncycastleAsn1X509Holder
#define INCLUDE_ALL_OrgBouncycastleAsn1X509Holder 0
#else
#define INCLUDE_ALL_OrgBouncycastleAsn1X509Holder 1
#endif
#undef RESTRICT_OrgBouncycastleAsn1X509Holder

#if !defined (OrgBouncycastleAsn1X509Holder_) && (INCLUDE_ALL_OrgBouncycastleAsn1X509Holder || defined(INCLUDE_OrgBouncycastleAsn1X509Holder))
#define OrgBouncycastleAsn1X509Holder_

#define RESTRICT_OrgBouncycastleAsn1ASN1Object 1
#define INCLUDE_OrgBouncycastleAsn1ASN1Object 1
#include "org/bouncycastle/asn1/ASN1Object.h"

@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1X509GeneralNames;
@class OrgBouncycastleAsn1X509IssuerSerial;
@class OrgBouncycastleAsn1X509ObjectDigestInfo;

/*!
 @brief The Holder object.
 <p>
  For an v2 attribute certificate this is:  
 @code

             Holder ::= SEQUENCE {
                   baseCertificateID   [0] IssuerSerial OPTIONAL,
                            -- the issuer and serial number of
                            -- the holder's Public Key Certificate
                   entityName          [1] GeneralNames OPTIONAL,
                            -- the name of the claimant or role
                   objectDigestInfo    [2] ObjectDigestInfo OPTIONAL
                            -- used to directly authenticate the holder,
                            -- for example, an executable
             } 
  
@endcode
   
 <p>
  For an v1 attribute certificate this is:  
 @code

          subject CHOICE {
           baseCertificateID [0] EXPLICIT IssuerSerial,
           -- associated with a Public Key Certificate
           subjectName [1] EXPLICIT GeneralNames },
           -- associated with a name 
  
@endcode
 */
@interface OrgBouncycastleAsn1X509Holder : OrgBouncycastleAsn1ASN1Object {
 @public
  OrgBouncycastleAsn1X509IssuerSerial *baseCertificateID_;
  OrgBouncycastleAsn1X509GeneralNames *entityName_;
  OrgBouncycastleAsn1X509ObjectDigestInfo *objectDigestInfo_;
}

#pragma mark Public

/*!
 @brief Constructs a holder with an entityName for V2 attribute certificates.
 @param entityName The entity or subject name.
 */
- (instancetype)initWithOrgBouncycastleAsn1X509GeneralNames:(OrgBouncycastleAsn1X509GeneralNames *)entityName;

/*!
 @brief Constructs a holder with an entityName for V2 attribute certificates or
  with a subjectName for V1 attribute certificates.
 @param entityName The entity or subject name.
 @param version_ The version of the attribute certificate.
 */
- (instancetype)initWithOrgBouncycastleAsn1X509GeneralNames:(OrgBouncycastleAsn1X509GeneralNames *)entityName
                                                    withInt:(jint)version_;

- (instancetype)initWithOrgBouncycastleAsn1X509IssuerSerial:(OrgBouncycastleAsn1X509IssuerSerial *)baseCertificateID;

/*!
 @brief Constructs a holder from a IssuerSerial for a V1 or V2 certificate.
 .
 @param baseCertificateID The IssuerSerial.
 @param version_ The version of the attribute certificate.
 */
- (instancetype)initWithOrgBouncycastleAsn1X509IssuerSerial:(OrgBouncycastleAsn1X509IssuerSerial *)baseCertificateID
                                                    withInt:(jint)version_;

/*!
 @brief Constructs a holder from an object digest info.
 @param objectDigestInfo The object digest info object.
 */
- (instancetype)initWithOrgBouncycastleAsn1X509ObjectDigestInfo:(OrgBouncycastleAsn1X509ObjectDigestInfo *)objectDigestInfo;

- (OrgBouncycastleAsn1X509IssuerSerial *)getBaseCertificateID;

/*!
 @brief Returns the entityName for an V2 attribute certificate or the subjectName
  for an V1 attribute certificate.
 @return The entityname or subjectname.
 */
- (OrgBouncycastleAsn1X509GeneralNames *)getEntityName;

+ (OrgBouncycastleAsn1X509Holder *)getInstanceWithId:(id)obj;

- (OrgBouncycastleAsn1X509ObjectDigestInfo *)getObjectDigestInfo;

/*!
 @brief Returns 1 for V2 attribute certificates or 0 for V1 attribute
  certificates.
 @return The version of the attribute certificate.
 */
- (jint)getVersion;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1X509Holder)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509Holder, baseCertificateID_, OrgBouncycastleAsn1X509IssuerSerial *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509Holder, entityName_, OrgBouncycastleAsn1X509GeneralNames *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509Holder, objectDigestInfo_, OrgBouncycastleAsn1X509ObjectDigestInfo *)

inline jint OrgBouncycastleAsn1X509Holder_get_V1_CERTIFICATE_HOLDER(void);
#define OrgBouncycastleAsn1X509Holder_V1_CERTIFICATE_HOLDER 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleAsn1X509Holder, V1_CERTIFICATE_HOLDER, jint)

inline jint OrgBouncycastleAsn1X509Holder_get_V2_CERTIFICATE_HOLDER(void);
#define OrgBouncycastleAsn1X509Holder_V2_CERTIFICATE_HOLDER 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgBouncycastleAsn1X509Holder, V2_CERTIFICATE_HOLDER, jint)

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *OrgBouncycastleAsn1X509Holder_getInstanceWithId_(id obj);

FOUNDATION_EXPORT void OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509IssuerSerial_(OrgBouncycastleAsn1X509Holder *self, OrgBouncycastleAsn1X509IssuerSerial *baseCertificateID);

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *new_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509IssuerSerial_(OrgBouncycastleAsn1X509IssuerSerial *baseCertificateID) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *create_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509IssuerSerial_(OrgBouncycastleAsn1X509IssuerSerial *baseCertificateID);

FOUNDATION_EXPORT void OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509IssuerSerial_withInt_(OrgBouncycastleAsn1X509Holder *self, OrgBouncycastleAsn1X509IssuerSerial *baseCertificateID, jint version_);

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *new_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509IssuerSerial_withInt_(OrgBouncycastleAsn1X509IssuerSerial *baseCertificateID, jint version_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *create_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509IssuerSerial_withInt_(OrgBouncycastleAsn1X509IssuerSerial *baseCertificateID, jint version_);

FOUNDATION_EXPORT void OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509GeneralNames_(OrgBouncycastleAsn1X509Holder *self, OrgBouncycastleAsn1X509GeneralNames *entityName);

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *new_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509GeneralNames_(OrgBouncycastleAsn1X509GeneralNames *entityName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *create_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509GeneralNames_(OrgBouncycastleAsn1X509GeneralNames *entityName);

FOUNDATION_EXPORT void OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509GeneralNames_withInt_(OrgBouncycastleAsn1X509Holder *self, OrgBouncycastleAsn1X509GeneralNames *entityName, jint version_);

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *new_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509GeneralNames_withInt_(OrgBouncycastleAsn1X509GeneralNames *entityName, jint version_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *create_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509GeneralNames_withInt_(OrgBouncycastleAsn1X509GeneralNames *entityName, jint version_);

FOUNDATION_EXPORT void OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509ObjectDigestInfo_(OrgBouncycastleAsn1X509Holder *self, OrgBouncycastleAsn1X509ObjectDigestInfo *objectDigestInfo);

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *new_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509ObjectDigestInfo_(OrgBouncycastleAsn1X509ObjectDigestInfo *objectDigestInfo) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleAsn1X509Holder *create_OrgBouncycastleAsn1X509Holder_initWithOrgBouncycastleAsn1X509ObjectDigestInfo_(OrgBouncycastleAsn1X509ObjectDigestInfo *objectDigestInfo);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1X509Holder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleAsn1X509Holder")
