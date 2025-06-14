//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/connection/ApduEncrypterDes.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "es/gob/jmulticard/CryptoHelper.h"
#include "es/gob/jmulticard/HexUtils.h"
#include "es/gob/jmulticard/apdu/ResponseApdu.h"
#include "es/gob/jmulticard/apdu/StatusWord.h"
#include "es/gob/jmulticard/asn1/bertlv/BerTlv.h"
#include "es/gob/jmulticard/connection/AbstractApduEncrypter.h"
#include "es/gob/jmulticard/connection/ApduConnectionException.h"
#include "es/gob/jmulticard/connection/ApduEncrypterDes.h"
#include "es/gob/jmulticard/connection/cwa14890/InvalidCryptographicChecksumException.h"
#include "es/gob/jmulticard/connection/cwa14890/SecureChannelException.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/IOException.h"
#include "java/lang/NegativeArraySizeException.h"
#include "java/lang/SecurityException.h"
#include "java/lang/System.h"

#if !__has_feature(objc_arc)
#error "es/gob/jmulticard/connection/ApduEncrypterDes must be compiled with ARC (-fobjc-arc)"
#endif

@interface EsGobJmulticardConnectionApduEncrypterDes ()

/*!
 @brief Comprueba que un c&oacute;digo de verificaci&oacute;n sea correcto con respecto a
  unos datos y el c&oacute;digo de respuesta de una petici&oacute;n.
 @param verificableData Datos.
 @param macTlvBytes C &oacute; digo de verificaci &oacute; n.
 @param ssc C &oacute; digo de secuencia.
 @param kMac Clave para la generaci &oacute; n del MAC.
 @param cryptoHelper Manejador de operaciones criptogr &aacute; ficas.
 */
- (void)verifyMacWithByteArray:(IOSByteArray *)verificableData
                 withByteArray:(IOSByteArray *)macTlvBytes
                 withByteArray:(IOSByteArray *)ssc
                 withByteArray:(IOSByteArray *)kMac
withEsGobJmulticardCryptoHelper:(EsGobJmulticardCryptoHelper *)cryptoHelper;

@end

/*!
 @brief <i>Tag</i> del TLV de estado de respuesta de una APDU de respuesta.
 */
inline jbyte EsGobJmulticardConnectionApduEncrypterDes_get_TAG_SW_TLV(void);
#define EsGobJmulticardConnectionApduEncrypterDes_TAG_SW_TLV -103
J2OBJC_STATIC_FIELD_CONSTANT(EsGobJmulticardConnectionApduEncrypterDes, TAG_SW_TLV, jbyte)

/*!
 @brief <i>Tag</i> del TLV de c&oacute;digo de autenticaci&oacute;n de mensaje (MAC)
  de una APDU de respuesta.
 */
inline jbyte EsGobJmulticardConnectionApduEncrypterDes_get_TAG_MAC_TLV(void);
#define EsGobJmulticardConnectionApduEncrypterDes_TAG_MAC_TLV -114
J2OBJC_STATIC_FIELD_CONSTANT(EsGobJmulticardConnectionApduEncrypterDes, TAG_MAC_TLV, jbyte)

/*!
 @brief Longitud de la MAC de las APDU cifradas.
 */
inline jbyte EsGobJmulticardConnectionApduEncrypterDes_get_MAC_LENGTH_4(void);
#define EsGobJmulticardConnectionApduEncrypterDes_MAC_LENGTH_4 4
J2OBJC_STATIC_FIELD_CONSTANT(EsGobJmulticardConnectionApduEncrypterDes, MAC_LENGTH_4, jbyte)

__attribute__((unused)) static void EsGobJmulticardConnectionApduEncrypterDes_verifyMacWithByteArray_withByteArray_withByteArray_withByteArray_withEsGobJmulticardCryptoHelper_(EsGobJmulticardConnectionApduEncrypterDes *self, IOSByteArray *verificableData, IOSByteArray *macTlvBytes, IOSByteArray *ssc, IOSByteArray *kMac, EsGobJmulticardCryptoHelper *cryptoHelper);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/connection/ApduEncrypterDes.java"


#line 55
@implementation EsGobJmulticardConnectionApduEncrypterDes

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  EsGobJmulticardConnectionApduEncrypterDes_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 74
- (jint)getMacLength {
  
#line 76
  return EsGobJmulticardConnectionApduEncrypterDes_MAC_LENGTH_4;
}


#line 79
- (IOSByteArray *)encryptDataWithByteArray:(IOSByteArray *)data
                             withByteArray:(IOSByteArray *)key
                             withByteArray:(IOSByteArray *)ssc
           withEsGobJmulticardCryptoHelper:(EsGobJmulticardCryptoHelper *)cryptoHelper {
  
#line 84
  return [((EsGobJmulticardCryptoHelper *) nil_chk(cryptoHelper)) desedeEncryptWithByteArray:data withByteArray:key];
}


#line 94
- (IOSByteArray *)generateMacWithByteArray:(IOSByteArray *)dataPadded
                             withByteArray:(IOSByteArray *)ssc
                             withByteArray:(IOSByteArray *)kMac
           withEsGobJmulticardCryptoHelper:(EsGobJmulticardCryptoHelper *)cryptoHelper {
  
#line 100
  IOSByteArray *keyDesBytes = [IOSByteArray newArrayWithLength:8];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(kMac, 0, keyDesBytes, 0, 8);
  
#line 103
  IOSByteArray *tmpData = [((EsGobJmulticardCryptoHelper *) nil_chk(cryptoHelper)) desEncryptWithByteArray:ssc withByteArray:keyDesBytes];
  
#line 105
  jint i = 0;
  while (i < ((IOSByteArray *) nil_chk(dataPadded))->size_ - 8) {
    tmpData = [cryptoHelper desEncryptWithByteArray:EsGobJmulticardHexUtils_xor__WithByteArray_withByteArray_(
#line 108
    tmpData, EsGobJmulticardHexUtils_subArrayWithByteArray_withInt_withInt_(dataPadded, i, 8)) withByteArray:
#line 109
    keyDesBytes];
    
#line 111
    i += 8;
  }
  
#line 114
  IOSByteArray *keyTdesBytes = [IOSByteArray newArrayWithLength:24];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(kMac, 0, keyTdesBytes, 0, 16);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(kMac, 0, keyTdesBytes, 16, 8);
  
#line 118
  return EsGobJmulticardHexUtils_subArrayWithByteArray_withInt_withInt_(
#line 119
  [cryptoHelper desedeEncryptWithByteArray:EsGobJmulticardHexUtils_xor__WithByteArray_withByteArray_(
#line 121
  tmpData, EsGobJmulticardHexUtils_subArrayWithByteArray_withInt_withInt_(
#line 122
  dataPadded, i, 8)) withByteArray:
#line 124
  keyTdesBytes],
#line 126
  0,
#line 127
  [self getMacLength]);
}

- (EsGobJmulticardApduResponseApdu *)decryptResponseApduWithEsGobJmulticardApduResponseApdu:(EsGobJmulticardApduResponseApdu *)responseApdu
                                                                              withByteArray:(IOSByteArray *)keyCipher
                                                                              withByteArray:(IOSByteArray *)ssc
                                                                              withByteArray:(IOSByteArray *)kMac
                                                            withEsGobJmulticardCryptoHelper:(EsGobJmulticardCryptoHelper *)cryptoHelper {
  
#line 148
  if (![((EsGobJmulticardApduResponseApdu *) nil_chk(responseApdu)) isOk]) {
    return new_EsGobJmulticardApduResponseApdu_initWithByteArray_withByteArray_(
#line 150
    [((EsGobJmulticardApduStatusWord *) nil_chk([responseApdu getStatusWord])) getBytes],
#line 151
    [responseApdu getBytes]);
  }
  
#line 156
  JavaIoByteArrayInputStream *recordOfTlvs = new_JavaIoByteArrayInputStream_initWithByteArray_([responseApdu getData]);
  EsGobJmulticardAsn1BertlvBerTlv *dataTlv = nil;
  EsGobJmulticardAsn1BertlvBerTlv *swTlv = nil;
  EsGobJmulticardAsn1BertlvBerTlv *macTlv = nil;
  @try {
    EsGobJmulticardAsn1BertlvBerTlv *tlv = EsGobJmulticardAsn1BertlvBerTlv_createInstanceWithJavaIoByteArrayInputStream_(recordOfTlvs);
    if ([((EsGobJmulticardAsn1BertlvBerTlv *) nil_chk(tlv)) getTag] == EsGobJmulticardConnectionAbstractApduEncrypter_TAG_DATA_TLV) {
      dataTlv = tlv;
      tlv = EsGobJmulticardAsn1BertlvBerTlv_createInstanceWithJavaIoByteArrayInputStream_(recordOfTlvs);
    }
    if ([((EsGobJmulticardAsn1BertlvBerTlv *) nil_chk(tlv)) getTag] == EsGobJmulticardConnectionApduEncrypterDes_TAG_SW_TLV) {
      swTlv = tlv;
      tlv = EsGobJmulticardAsn1BertlvBerTlv_createInstanceWithJavaIoByteArrayInputStream_(recordOfTlvs);
    }
    if ([((EsGobJmulticardAsn1BertlvBerTlv *) nil_chk(tlv)) getTag] == EsGobJmulticardConnectionApduEncrypterDes_TAG_MAC_TLV) {
      macTlv = tlv;
    }
  }
  @catch (JavaLangNegativeArraySizeException *e) {
    @throw new_EsGobJmulticardConnectionApduConnectionException_initWithNSString_withJavaLangThrowable_(
#line 176
    @"Error en el formato de la respuesta remitida por el canal seguro", e);
  }
  
#line 180
  if (macTlv == nil) {
    @throw new_EsGobJmulticardConnectionCwa14890SecureChannelException_initWithNSString_(
#line 182
    @"No se ha encontrado el TLV del MAC en la APDU");
  }
  
#line 185
  if (swTlv == nil) {
    @throw new_EsGobJmulticardConnectionCwa14890SecureChannelException_initWithNSString_(
#line 187
    @"No se ha encontrado el TLV del StatusWord en la APDU cifrada");
  }
  
#line 192
  jint tlvsLenght = (dataTlv != nil ? 1 + 1 + JreIntDiv(((IOSByteArray *) nil_chk([dataTlv getValue]))->size_, 128) + ((IOSByteArray *) nil_chk([dataTlv getValue]))->size_ : 0) +
#line 193
  1 + 1 + ((IOSByteArray *) nil_chk([swTlv getValue]))->size_;
  EsGobJmulticardConnectionApduEncrypterDes_verifyMacWithByteArray_withByteArray_withByteArray_withByteArray_withEsGobJmulticardCryptoHelper_(self, EsGobJmulticardHexUtils_subArrayWithByteArray_withInt_withInt_(
#line 196
  [responseApdu getData],
#line 197
  0,
#line 198
  tlvsLenght),
#line 200
  [macTlv getValue],
#line 201
  ssc,
#line 202
  kMac,
#line 203
  cryptoHelper);
  
#line 206
  if (dataTlv == nil) {
    return new_EsGobJmulticardApduResponseApdu_initWithByteArray_([swTlv getValue]);
  }
  
#line 212
  IOSByteArray *decryptedData = EsGobJmulticardConnectionAbstractApduEncrypter_removePadding7816WithByteArray_(
#line 213
  [((EsGobJmulticardCryptoHelper *) nil_chk(cryptoHelper)) desedeDecryptWithByteArray:EsGobJmulticardHexUtils_subArrayWithByteArray_withInt_withInt_(
#line 214
  [dataTlv getValue], 1, ((IOSByteArray *) nil_chk([dataTlv getValue]))->size_ - 1) withByteArray:
#line 215
  keyCipher]);
  
#line 219
  IOSByteArray *responseApduBytes = [IOSByteArray newArrayWithLength:((IOSByteArray *) nil_chk(decryptedData))->size_ + ((IOSByteArray *) nil_chk([swTlv getValue]))->size_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(decryptedData, 0, responseApduBytes, 0, decryptedData->size_);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([swTlv getValue], 0, responseApduBytes, decryptedData->size_, ((IOSByteArray *) nil_chk([swTlv getValue]))->size_);
  
#line 223
  return new_EsGobJmulticardApduResponseApdu_initWithByteArray_withByteArray_(
#line 224
  responseApduBytes,
#line 225
  [responseApdu getBytes]);
}


#line 236
- (void)verifyMacWithByteArray:(IOSByteArray *)verificableData
                 withByteArray:(IOSByteArray *)macTlvBytes
                 withByteArray:(IOSByteArray *)ssc
                 withByteArray:(IOSByteArray *)kMac
withEsGobJmulticardCryptoHelper:(EsGobJmulticardCryptoHelper *)cryptoHelper {
  EsGobJmulticardConnectionApduEncrypterDes_verifyMacWithByteArray_withByteArray_withByteArray_withByteArray_withEsGobJmulticardCryptoHelper_(self, verificableData, macTlvBytes, ssc, kMac, cryptoHelper);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, 0, 1, 2, -1, -1, -1 },
    { NULL, "[B", 0x4, 3, 1, 2, -1, -1, -1 },
    { NULL, "LEsGobJmulticardApduResponseApdu;", 0x1, 4, 5, 2, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getMacLength);
  methods[2].selector = @selector(encryptDataWithByteArray:withByteArray:withByteArray:withEsGobJmulticardCryptoHelper:);
  methods[3].selector = @selector(generateMacWithByteArray:withByteArray:withByteArray:withEsGobJmulticardCryptoHelper:);
  methods[4].selector = @selector(decryptResponseApduWithEsGobJmulticardApduResponseApdu:withByteArray:withByteArray:withByteArray:withEsGobJmulticardCryptoHelper:);
  methods[5].selector = @selector(verifyMacWithByteArray:withByteArray:withByteArray:withByteArray:withEsGobJmulticardCryptoHelper:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TAG_SW_TLV", "B", .constantValue.asChar = EsGobJmulticardConnectionApduEncrypterDes_TAG_SW_TLV, 0x1a, -1, -1, -1, -1 },
    { "TAG_MAC_TLV", "B", .constantValue.asChar = EsGobJmulticardConnectionApduEncrypterDes_TAG_MAC_TLV, 0x1a, -1, -1, -1, -1 },
    { "MAC_LENGTH_4", "B", .constantValue.asChar = EsGobJmulticardConnectionApduEncrypterDes_MAC_LENGTH_4, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "encryptData", "[B[B[BLEsGobJmulticardCryptoHelper;", "LJavaIoIOException;", "generateMac", "decryptResponseApdu", "LEsGobJmulticardApduResponseApdu;[B[B[BLEsGobJmulticardCryptoHelper;", "verifyMac", "[B[B[B[BLEsGobJmulticardCryptoHelper;" };
  static const J2ObjcClassInfo _EsGobJmulticardConnectionApduEncrypterDes = { "ApduEncrypterDes", "es.gob.jmulticard.connection", ptrTable, methods, fields, 7, 0x1, 6, 3, -1, -1, -1, -1, -1 };
  return &_EsGobJmulticardConnectionApduEncrypterDes;
}

@end


#line 58
void EsGobJmulticardConnectionApduEncrypterDes_init(EsGobJmulticardConnectionApduEncrypterDes *self) {
  EsGobJmulticardConnectionAbstractApduEncrypter_init(self);
  
#line 59
  self->paddingLength_ = 8;
}


#line 58
EsGobJmulticardConnectionApduEncrypterDes *new_EsGobJmulticardConnectionApduEncrypterDes_init() {
  J2OBJC_NEW_IMPL(EsGobJmulticardConnectionApduEncrypterDes, init)
}


#line 58
EsGobJmulticardConnectionApduEncrypterDes *create_EsGobJmulticardConnectionApduEncrypterDes_init() {
  J2OBJC_CREATE_IMPL(EsGobJmulticardConnectionApduEncrypterDes, init)
}


#line 236
void EsGobJmulticardConnectionApduEncrypterDes_verifyMacWithByteArray_withByteArray_withByteArray_withByteArray_withEsGobJmulticardCryptoHelper_(EsGobJmulticardConnectionApduEncrypterDes *self, IOSByteArray *verificableData, IOSByteArray *macTlvBytes, IOSByteArray *ssc, IOSByteArray *kMac, EsGobJmulticardCryptoHelper *cryptoHelper) {
  
#line 242
  IOSByteArray *calculatedMac;
  @try {
    calculatedMac = [self generateMacWithByteArray:EsGobJmulticardConnectionAbstractApduEncrypter_addPadding7816WithByteArray_withInt_(verificableData, self->paddingLength_) withByteArray:ssc withByteArray:kMac withEsGobJmulticardCryptoHelper:cryptoHelper];
  }
  @catch (JavaIoIOException *e) {
    @throw new_JavaLangSecurityException_initWithNSString_withJavaLangThrowable_(
#line 248
    @"No se pudo calcular el MAC teorico de la respuesta de la tarjeta para su verificacion", e);
  }
  
#line 253
  if (!EsGobJmulticardHexUtils_arrayEqualsWithByteArray_withByteArray_(macTlvBytes, calculatedMac)) {
    @throw new_EsGobJmulticardConnectionCwa14890InvalidCryptographicChecksumException_init();
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EsGobJmulticardConnectionApduEncrypterDes)
