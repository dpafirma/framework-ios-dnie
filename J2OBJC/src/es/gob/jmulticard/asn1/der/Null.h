//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/der/Null.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EsGobJmulticardAsn1DerNull")
#ifdef RESTRICT_EsGobJmulticardAsn1DerNull
#define INCLUDE_ALL_EsGobJmulticardAsn1DerNull 0
#else
#define INCLUDE_ALL_EsGobJmulticardAsn1DerNull 1
#endif
#undef RESTRICT_EsGobJmulticardAsn1DerNull

#if !defined (EsGobJmulticardAsn1DerNull_) && (INCLUDE_ALL_EsGobJmulticardAsn1DerNull || defined(INCLUDE_EsGobJmulticardAsn1DerNull))
#define EsGobJmulticardAsn1DerNull_

#define RESTRICT_EsGobJmulticardAsn1DecoderObject 1
#define INCLUDE_EsGobJmulticardAsn1DecoderObject 1
#include "es/gob/jmulticard/asn1/DecoderObject.h"

@class IOSByteArray;

/*!
 @brief Tipo nulo.
 @author Tom&aacute;s Garc&iacute;a-Mer&aacute;s.
 */
@interface EsGobJmulticardAsn1DerNull : EsGobJmulticardAsn1DecoderObject

#pragma mark Public

- (instancetype)init;

- (void)checkTagWithByte:(jbyte)tag;

- (void)setDerValueWithByteArray:(IOSByteArray *)value;

#pragma mark Protected

- (void)decodeValue;

- (jbyte)getDefaultTag;

@end

J2OBJC_EMPTY_STATIC_INIT(EsGobJmulticardAsn1DerNull)

FOUNDATION_EXPORT void EsGobJmulticardAsn1DerNull_init(EsGobJmulticardAsn1DerNull *self);

FOUNDATION_EXPORT EsGobJmulticardAsn1DerNull *new_EsGobJmulticardAsn1DerNull_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EsGobJmulticardAsn1DerNull *create_EsGobJmulticardAsn1DerNull_init(void);

J2OBJC_TYPE_LITERAL_HEADER(EsGobJmulticardAsn1DerNull)

#endif

#pragma pop_macro("INCLUDE_ALL_EsGobJmulticardAsn1DerNull")
