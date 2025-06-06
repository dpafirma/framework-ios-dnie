//
//  DNIeFWError.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 Objeto que representa cualquier error en la ejecución de las funcionalidades del FW de DNIe
 Incluye errores de hardware, software o errores externos

 Cada instancia de `DNIeFWError` incluye:
 - Un código interno de error: `code`
 - Un descripción del error :`description`
 - Un tipo de error (hardware, internal_software, functional, third_party):  `type`
 - Un clave de localización para pode establecer las traducciones`localizationKey`
 */
@interface DNIeFWError : NSObject

/// Código de error
@property (nonatomic, assign, readwrite) NSInteger code;

/// Descripción del error para uso técnico
@property (nonatomic, strong, readwrite) NSString *errorDescription;

/// Tipo de categoría de error ("hardware", "internal_software", "functional", "third_party").
@property (nonatomic, strong, readwrite) NSString *type;

/// Clave de localización para poder traducir los mensajes desde las aplicaciones externas
@property (nonatomic, strong, readwrite) NSString *localizationKey;

#pragma mark - Factory Methods

/**
 Crea un error de tipo hardware

 @param code Código de error
 @param description Descripción
 @param key Clave localización para traducir
 @return Instancia `DNIeFWError`
 */
+ (instancetype)hardwareErrorWithCode:(NSInteger)code description:(NSString *)description key:(NSString *)key;

/**
 Crea un error de tipo software interno

 @param code Código de error
 @param description Descripción
 @param key Clave localización para traducir
 @return Instancia `DNIeFWError`
 */
+ (instancetype)internalSoftwareErrorWithCode:(NSInteger)code description:(NSString *)description key:(NSString *)key;

/**
 Crea un error de tipo terceros (librería jmulticard)

 @param code Código de error
 @param description Descripción
 @param key Clave localización para traducir
 @return Instancia `DNIeFWError`
 */
+ (instancetype)thirdPartyErrorWithCode:(NSInteger)code description:(NSString *)description key:(NSString *)key;

/**
 Crea un error de tipo funcional

 @param code Código de error
 @param description Descripción
 @param key Clave localización para traducir
 @return Instancia `DNIeFWError`
 */
+ (instancetype)functionalErrorWithCode:(NSInteger)code description:(NSString *)description key:(NSString *)key;

#pragma mark - Equality

/**
 Compara el error con otro error que se la pasa por párametro

 @param error Error a comparar.
 @return `YES` Si los errores son iguales, no en caso contrario `NO`.
 */
- (BOOL)isEqualToError:(DNIeFWError *)error;

#pragma mark - Hardware Errors

/// No se pudo restablecer la etiqueta NFC.
+ (DNIeFWError *)nfcCardResetError;

/// No se pudo enviar el comando APDU a la tarjeta NFC.
+ (DNIeFWError *)nfcCardSendCommandError;

/// El dispositivo no es compatible con la función NFC requerida.
+ (DNIeFWError *)nfcReaderErrorUnsupportedFeature;

/// Violación de seguridad durante la sesión NFC.
+ (DNIeFWError *)nfcReaderErrorSecurityViolation;

/// Parámetro no válido en la comunicación NFC.
+ (DNIeFWError *)nfcReaderErrorInvalidParameter;

/// La longitud del parámetro no es válida para la operación NFC.
+ (DNIeFWError *)nfcReaderErrorInvalidParameterLength;

/// El parámetro está fuera de los límites aceptados.
+ (DNIeFWError *)nfcReaderErrorParameterOutOfBound;

/// NFC está desactivada en el dispositivo.
+ (DNIeFWError *)nfcReaderErrorRadioDisabled;

/// Lost connection with the NFC tag.
+ (DNIeFWError *)nfcReaderTransceiveErrorTagConnectionLost;

/// Se perdió la conexión con la etiqueta NFC.
+ (DNIeFWError *)nfcReaderTransceiveErrorRetryExceeded;

/// Respuesta no válida o mal formada de la etiqueta.
+ (DNIeFWError *)nfcReaderTransceiveErrorTagResponseError;

/// La sesión NFC se invalidó durante la transmisión.
+ (DNIeFWError *)nfcReaderTransceiveErrorSessionInvalidated;

/// La etiqueta NFC no estaba conectada durante la operación.
+ (DNIeFWError *)nfcReaderTransceiveErrorTagNotConnected;

/// El tamaño de la carga útil excede la longitud permitida para la etiqueta NFC.
+ (DNIeFWError *)nfcReaderTransceiveErrorPacketTooLong;

/// El usuario canceló manualmente la sesión NFC.
+ (DNIeFWError *)nfcReaderSessionInvalidationErrorUserCanceled;

/// Se agotó el tiempo de sesión NFC.
+ (DNIeFWError *)nfcReaderSessionInvalidationErrorSessionTimeout;

/// Sesión finalizada inesperadamente por el sistema.
+ (DNIeFWError *)nfcReaderSessionInvalidationErrorSessionTerminatedUnexpectedly;

/// No se pudo iniciar la sesión porque el sistema está ocupado.
+ (DNIeFWError *)nfcReaderSessionInvalidationErrorSystemIsBusy;

/// Sesión NFC cerrada después de leer la primera etiqueta (según el comportamiento de iOS)ior).
+ (DNIeFWError *)nfcReaderSessionInvalidationErrorFirstNDEFTagRead;

/// Se utilizó una configuración no válida al enviar un comando de etiqueta.
+ (DNIeFWError *)nfcTagCommandConfigurationErrorInvalidParameters;

/// Se intentó escribir en una etiqueta de solo lectura.
+ (DNIeFWError *)nfcNdefReaderSessionErrorTagNotWritable;

/// No se pudo actualizar el contenido de la etiqueta.
+ (DNIeFWError *)nfcNdefReaderSessionErrorTagUpdateFailure;

/// La memoria de etiqueta es demasiado pequeña para la operación.
+ (DNIeFWError *)nfcNdefReaderSessionErrorTagSizeTooSmall;

/// Se encontró un mensaje de longitud cero al leer desde la etiqueta.
+ (DNIeFWError *)nfcNdefReaderSessionErrorZeroLengthMessage;

///Error de comunicación NFC desconocido o no clasificado.
+ (DNIeFWError *)nfcUnknowError;

#pragma mark - Internal Software Errors

/// Error de software genérico no relacionado con el hardware o sistemas externos.
+ (DNIeFWError *)generalSoftwareError;

#pragma mark - Functional Errors

/// El usuario canceló la operación en curso.
+ (DNIeFWError *)userOperationCanceled;

#pragma mark - Third Party Errors

/// La tarjeta insertada no es compatible.
+ (DNIeFWError *)invalidCard;

/// La tarjeta parece estar dañada o se ha autodestruido.
+ (DNIeFWError *)burnedCard;

/// No se pudo establecer la conexión con la tarjeta.
+ (DNIeFWError *)connectionError;

/// El elemento seguro no se inicializó
+ (DNIeFWError *)notInitialized;

/// Fallo inesperado durante el funcionamiento de la tarjeta.
+ (DNIeFWError *)operationError;

/// El PIN es incorrecto.
+ (DNIeFWError *)badPin;

/// La tarjeta está bloqueada debido a demasiados intentos incorrectos.
+ (DNIeFWError *)lockedCard;

/// Error genérico en el procesamiento del PIN.
+ (DNIeFWError *)pinError;

/// CAN (Card Access Number) no es correcto o no se puede leer.
+ (DNIeFWError *)badCan;

///Error de comunicación grave o desconocido.
+ (DNIeFWError *)severeError;

/// No se ha encontrado certificado de firma válido en el DNIe.
+ (DNIeFWError *)noCertAvailable;

@end

NS_ASSUME_NONNULL_END
