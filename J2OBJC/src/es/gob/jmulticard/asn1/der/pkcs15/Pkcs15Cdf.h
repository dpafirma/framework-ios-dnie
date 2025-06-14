//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/asn1/der/pkcs15/Pkcs15Cdf.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf")
#ifdef RESTRICT_EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf
#define INCLUDE_ALL_EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf 0
#else
#define INCLUDE_ALL_EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf 1
#endif
#undef RESTRICT_EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf

#if !defined (EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf_) && (INCLUDE_ALL_EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf || defined(INCLUDE_EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf))
#define EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf_

@class IOSByteArray;

/*!
 @brief Funciones comunes a un CDF.
 Necesario para acomodar CDF que no se adec&uacute;en por completo al CDF especificado en
  PKCS#15, para tener de esta manera todas las implementanciones un ancestro com&uacute;n.
 @author Tom&aacute;s Garc&iacute;a-Mer&aacute;s.
 */
@protocol EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf < JavaObject >

/*!
 @brief Obtiene el n&uacute;mero de certificados del CDF.
 @return N&uacute;mero de certificados del CDF
 */
- (jint)getCertificateCount;

/*!
 @brief Obtiene la ruta PKCS#15 hacia el certificado indicado.
 @param index &Iacute; ndice del certificado.
 @return Ruta PKCS#15 hacia el certificado indicado o <code>null</code> si no hay ning&uacute;n certificados con ese alias.
 */
- (NSString *)getCertificatePathWithInt:(jint)index;

/*!
 @brief Obtiene el identificador del certificado indicado.
 @param index &Iacute; ndice del certificado.
 @return Identificador del certificado indicado o <code>null</code> si no hay ning&uacute;n certificados con ese alias.
 */
- (IOSByteArray *)getCertificateIdWithInt:(jint)index;

/*!
 @brief Establece el valor (en codificaci&oacute;n DER) del objeto ASN&#46;1.
 @param value Valor (TLC con codificaci &oacute; n DER) del objeto ASN &#46; 1.
 @throw Asn1ExceptionSi no se puede decodificar adecuadamente el valor establecido.
 @throw TlvExceptionSi hay errores relativos a los TLV DER al decodificar los datos de entrada.
 */
- (void)setDerValueWithByteArray:(IOSByteArray *)value;

/*!
 @brief Obtiene el alias del certificado indicado.
 @param index &Iacute; ndice del certificado.
 @return Alias del certificado indicado o <code>null</code> si no hay nung&uacute;n certificados con ese alias.
 */
- (NSString *)getCertificateAliasWithInt:(jint)index;

@end

J2OBJC_EMPTY_STATIC_INIT(EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf)

J2OBJC_TYPE_LITERAL_HEADER(EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf)

#endif

#pragma pop_macro("INCLUDE_ALL_EsGobJmulticardAsn1DerPkcs15Pkcs15Cdf")
