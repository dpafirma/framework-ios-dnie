//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/operator/AlgorithmNameFinder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleOperatorAlgorithmNameFinder")
#ifdef RESTRICT_OrgBouncycastleOperatorAlgorithmNameFinder
#define INCLUDE_ALL_OrgBouncycastleOperatorAlgorithmNameFinder 0
#else
#define INCLUDE_ALL_OrgBouncycastleOperatorAlgorithmNameFinder 1
#endif
#undef RESTRICT_OrgBouncycastleOperatorAlgorithmNameFinder

#if !defined (OrgBouncycastleOperatorAlgorithmNameFinder_) && (INCLUDE_ALL_OrgBouncycastleOperatorAlgorithmNameFinder || defined(INCLUDE_OrgBouncycastleOperatorAlgorithmNameFinder))
#define OrgBouncycastleOperatorAlgorithmNameFinder_

@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1X509AlgorithmIdentifier;

/*!
 @brief General finder for converting OIDs and AlgorithmIdentifiers into strings.
 */
@protocol OrgBouncycastleOperatorAlgorithmNameFinder < JavaObject >

/*!
 @brief Return true if the passed in objectIdentifier has a "human friendly" name associated with it.
 @param objectIdentifier the OID of interest.
 @return true if a name lookup exists for the OID, false otherwise.
 */
- (jboolean)hasAlgorithmNameWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)objectIdentifier;

/*!
 @brief Return a string representation of the passed in objectIdentifier.
 @param objectIdentifier the OID of interest.
 @return a "human friendly" representation of the OID, the OID as a string if none available.
 */
- (NSString *)getAlgorithmNameWithOrgBouncycastleAsn1ASN1ObjectIdentifier:(OrgBouncycastleAsn1ASN1ObjectIdentifier *)objectIdentifier;

/*!
 @brief Return a string representation of the passed in AlgorithmIdentifier, based on the OID in the AlgorithmField, with the parameters
  included where appropriate.
 @param algorithmIdentifier the AlgorithmIdentifier of interest.
 @return a "human friendly" representation of the algorithmIdentifier, the identifiers OID as a string if none available.
 */
- (NSString *)getAlgorithmNameWithOrgBouncycastleAsn1X509AlgorithmIdentifier:(OrgBouncycastleAsn1X509AlgorithmIdentifier *)algorithmIdentifier;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleOperatorAlgorithmNameFinder)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleOperatorAlgorithmNameFinder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleOperatorAlgorithmNameFinder")
