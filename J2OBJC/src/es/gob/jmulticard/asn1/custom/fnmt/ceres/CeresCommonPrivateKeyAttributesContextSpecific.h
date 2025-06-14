//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/custom/fnmt/ceres/CeresCommonPrivateKeyAttributesContextSpecific.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific")
#ifdef RESTRICT_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific
#define INCLUDE_ALL_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific 0
#else
#define INCLUDE_ALL_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific 1
#endif
#undef RESTRICT_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific

#if !defined (EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific_) && (INCLUDE_ALL_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific || defined(INCLUDE_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific))
#define EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific_

#define RESTRICT_EsGobJmulticardAsn1DerContextSpecific 1
#define INCLUDE_EsGobJmulticardAsn1DerContextSpecific 1
#include "es/gob/jmulticard/asn1/der/ContextSpecific.h"

@class IOSClass;

/*!
 @brief Objeto ASN&#46;1 de contexto espec&iacute;fico del <i>CommonPrivateKeyAttributes</i>.
 @author Tom&aacute;s Garc&iacute;a-Mer&aacute;s.
 */
@interface EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific : EsGobJmulticardAsn1DerContextSpecific

#pragma mark Public

/*!
 @brief Construye un objeto ASN&#46;1 de contexto espec&iacute;fico del <i>X509CertificateAttributes</i>.
 */
- (instancetype)init;

- (void)checkTagWithByte:(jbyte)tag;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithIOSClass:(IOSClass *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific)

FOUNDATION_EXPORT void EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific_init(EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific *self);

FOUNDATION_EXPORT EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific *new_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific *create_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific_init(void);

J2OBJC_TYPE_LITERAL_HEADER(EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific)

#endif

#pragma pop_macro("INCLUDE_ALL_EsGobJmulticardAsn1CustomFnmtCeresCeresCommonPrivateKeyAttributesContextSpecific")
