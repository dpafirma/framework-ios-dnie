//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/cms/CMSSignedHelper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleCmsCMSSignedHelper")
#ifdef RESTRICT_OrgBouncycastleCmsCMSSignedHelper
#define INCLUDE_ALL_OrgBouncycastleCmsCMSSignedHelper 0
#else
#define INCLUDE_ALL_OrgBouncycastleCmsCMSSignedHelper 1
#endif
#undef RESTRICT_OrgBouncycastleCmsCMSSignedHelper

#if !defined (OrgBouncycastleCmsCMSSignedHelper_) && (INCLUDE_ALL_OrgBouncycastleCmsCMSSignedHelper || defined(INCLUDE_OrgBouncycastleCmsCMSSignedHelper))
#define OrgBouncycastleCmsCMSSignedHelper_

@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1ASN1Set;
@class OrgBouncycastleAsn1X509AlgorithmIdentifier;
@protocol OrgBouncycastleOperatorDigestAlgorithmIdentifierFinder;
@protocol OrgBouncycastleUtilStore;

@interface OrgBouncycastleCmsCMSSignedHelper : NSObject

#pragma mark Package-Private

- (instancetype)initPackagePrivate;

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)fixDigestAlgIDWithOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)algId
                                                  withOrgBouncycastleOperatorDigestAlgorithmIdentifierFinder:(id<OrgBouncycastleOperatorDigestAlgorithmIdentifierFinder>)dgstAlgFinder;

- (id<OrgBouncycastleUtilStore>)getAttributeCertificatesWithOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)certSet;

- (id<OrgBouncycastleUtilStore>)getCertificatesWithOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)certSet;

- (id<OrgBouncycastleUtilStore>)getCRLsWithOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)crlSet;

/*!
 @brief Return the digest encryption algorithm using one of the standard
  JCA string representations rather the the algorithm identifier (if
  possible).
 */
- (NSString *)getEncryptionAlgNameWithNSString:(NSString *)encryptionAlgOID;

- (id<OrgBouncycastleUtilStore>)getOtherRevocationInfoWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)otherRevocationInfoFormat
                                                                   withOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)crlSet;

- (void)setSigningEncryptionAlgorithmMappingWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)oid
                                                                           withNSString:(NSString *)algorithmName;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleCmsCMSSignedHelper)

inline OrgBouncycastleCmsCMSSignedHelper *OrgBouncycastleCmsCMSSignedHelper_get_INSTANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgBouncycastleCmsCMSSignedHelper *OrgBouncycastleCmsCMSSignedHelper_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastleCmsCMSSignedHelper, INSTANCE, OrgBouncycastleCmsCMSSignedHelper *)

FOUNDATION_EXPORT void OrgBouncycastleCmsCMSSignedHelper_initPackagePrivate(OrgBouncycastleCmsCMSSignedHelper *self);

FOUNDATION_EXPORT OrgBouncycastleCmsCMSSignedHelper *new_OrgBouncycastleCmsCMSSignedHelper_initPackagePrivate(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleCmsCMSSignedHelper *create_OrgBouncycastleCmsCMSSignedHelper_initPackagePrivate(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCmsCMSSignedHelper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleCmsCMSSignedHelper")
