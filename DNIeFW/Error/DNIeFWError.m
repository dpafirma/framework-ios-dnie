//
//  DNIeFWError.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

/// Public imports
#import <DNIeFW/DNIeFWError.h>

@implementation DNIeFWError
#pragma mark - Factory Methods

+ (instancetype)hardwareErrorWithCode:(NSInteger)code description:(NSString *)description key:(NSString *)key {
	DNIeFWError *error = [[DNIeFWError alloc] init];
	error->_code = code;
	error->_errorDescription = [description copy];
	error->_type = @"hardware";
	error->_localizationKey = key;
	return error;
}

+ (instancetype)internalSoftwareErrorWithCode:(NSInteger)code description:(NSString *)description key:(NSString *)key {
	DNIeFWError *error = [[DNIeFWError alloc] init];
	error->_code = code;
	error->_errorDescription = [description copy];
	error->_type = @"internal_software";
	error->_localizationKey = key;
	return error;
}

+ (instancetype)thirdPartyErrorWithCode:(NSInteger)code description:(NSString *)description key:(NSString *)key {
	DNIeFWError *error = [[DNIeFWError alloc] init];
	error->_code = code;
	error->_errorDescription = [description copy];
	error->_type = @"third_party";
	error->_localizationKey = key;
	return error;
}

+ (instancetype)functionalErrorWithCode:(NSInteger)code description:(NSString *)description key:(NSString *)key {
	DNIeFWError *error = [[DNIeFWError alloc] init];
	error->_code = code;
	error->_errorDescription = [description copy];
	error->_type = @"functional";
	error->_localizationKey = key;
	return error;
}

#pragma mark - Equality

- (BOOL)isEqual:(id)object {
	if (self == object) return YES;
	if (![object isKindOfClass:[DNIeFWError class]]) return NO;
	return [self isEqualToError:(DNIeFWError *)object];
}

- (BOOL)isEqualToError:(DNIeFWError *)error {
	return self.code == error.code;
}

- (NSUInteger)hash {
	return (NSUInteger)self.code;
}

+ (DNIeFWError *)nfcCardResetError {
	return [DNIeFWError hardwareErrorWithCode:100 description:@"Error al resetear la tarjeta NFC" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcCardSendCommandError {
	return [DNIeFWError hardwareErrorWithCode:101 description:@"Error al ejecutar comando en la tarjeta NFC" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderErrorUnsupportedFeature {
	return [DNIeFWError hardwareErrorWithCode:102 description:@"Función no soportada por el hardware del dispositivo" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderErrorSecurityViolation {
	return [DNIeFWError hardwareErrorWithCode:103 description:@"Restricción de seguridad" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderErrorInvalidParameter {
	return [DNIeFWError hardwareErrorWithCode:104 description:@"Parámetro inválido en la conexion NFC" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderErrorInvalidParameterLength {
	return [DNIeFWError hardwareErrorWithCode:105 description:@"Longitud de parámetro no válida en la conexión NFC" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderErrorParameterOutOfBound {
	return [DNIeFWError hardwareErrorWithCode:106 description:@"Parámetro fuera de los límites aceptables" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderErrorRadioDisabled {
	return [DNIeFWError hardwareErrorWithCode:107 description:@"La radio NFC está deshabilitada" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderTransceiveErrorTagConnectionLost {
	return [DNIeFWError hardwareErrorWithCode:108 description:@"La conexión con la etiqueta NFC se perdió" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderTransceiveErrorRetryExceeded {
	return [DNIeFWError hardwareErrorWithCode:109 description:@"Se alcanzó el límite de intentos para transmitir datos" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderTransceiveErrorTagResponseError {
	return [DNIeFWError hardwareErrorWithCode:110 description:@"Respuesta inválida desde la etiqueta NFC" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderTransceiveErrorSessionInvalidated {
	return [DNIeFWError hardwareErrorWithCode:111 description:@"Transmisión en sesión invalidada" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderTransceiveErrorTagNotConnected {
	return [DNIeFWError hardwareErrorWithCode:112 description:@"La etiqueta NFC no está conectada" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderTransceiveErrorPacketTooLong {
	return [DNIeFWError hardwareErrorWithCode:113 description:@"Paquete demasiado largo para la etiqueta NFC" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderSessionInvalidationErrorUserCanceled {
	return [DNIeFWError hardwareErrorWithCode:114 description:@"El usuario canceló manualmente la sesión" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderSessionInvalidationErrorSessionTimeout {
	return [DNIeFWError hardwareErrorWithCode:115 description:@"La sesión NFC expiró debido a inactividad" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderSessionInvalidationErrorSessionTerminatedUnexpectedly {
	return [DNIeFWError hardwareErrorWithCode:116 description:@"La sesión NFC se cerró inesperadamente" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderSessionInvalidationErrorSystemIsBusy {
	return [DNIeFWError hardwareErrorWithCode:117 description:@"El sistema está ocupado" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcReaderSessionInvalidationErrorFirstNDEFTagRead {
	return [DNIeFWError hardwareErrorWithCode:118 description:@"Sesión cerrada tras leer la primera etiqueta (según configuración)" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcTagCommandConfigurationErrorInvalidParameters {
	return [DNIeFWError hardwareErrorWithCode:119 description:@"Configuración inválida en los comandos enviados a la etiqueta" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcNdefReaderSessionErrorTagNotWritable {
	return [DNIeFWError hardwareErrorWithCode:120 description:@"La etiqueta NFC no es escribible" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcNdefReaderSessionErrorTagUpdateFailure {
	return [DNIeFWError hardwareErrorWithCode:121 description:@"Fallo al intentar actualizar la etiqueta" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcNdefReaderSessionErrorTagSizeTooSmall {
	return [DNIeFWError hardwareErrorWithCode:122 description:@"Espacio insuficiente en la etiqueta NFC" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcNdefReaderSessionErrorZeroLengthMessage {
	return [DNIeFWError hardwareErrorWithCode:123 description:@"El mensaje NDEF tiene longitud cero" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)nfcUnknowError {
	return [DNIeFWError hardwareErrorWithCode:124 description:@"Error desconocido al conectar con la tarjeta NFC" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)generalSoftwareError {
	return [DNIeFWError internalSoftwareErrorWithCode:200 description:@"Error general de software" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)userOperationCanceled {
	return [DNIeFWError functionalErrorWithCode:201 description:@"Operación cancelada por el usuario." key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)certificateNeeded {
	return [DNIeFWError functionalErrorWithCode:127 description:@"Error en la operación, no hay certificados" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)invalidCard {
	return [DNIeFWError thirdPartyErrorWithCode:1 description:@"La tarjeta identificada en el lector es desconocida o no está soportada" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)burnedCard {
	return [DNIeFWError thirdPartyErrorWithCode:2 description:@"La tarjeta está corrompida, posiblemente se autodestruyó" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)connectionError {
	return [DNIeFWError thirdPartyErrorWithCode:3 description:@"No se ha podido conectar con la tarjeta" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)notInitialized {
	return [DNIeFWError thirdPartyErrorWithCode:4 description:@"La conexión con la tarjeta no está inicializada" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)operationError {
	return [DNIeFWError thirdPartyErrorWithCode:5 description:@"Ocurrió un error inesperado durante la operación" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)badPin {
	return [DNIeFWError thirdPartyErrorWithCode:6 description:@"PIN incorrecto" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)lockedCard {
	return [DNIeFWError thirdPartyErrorWithCode:7 description:@"Tarjeta bloqueada" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)pinError {
	return [DNIeFWError thirdPartyErrorWithCode:8 description:@"Error durante la validación del PIN" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)badCan {
	return [DNIeFWError thirdPartyErrorWithCode:9 description:@"Error durante la validación del CAN" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)severeError {
	return [DNIeFWError thirdPartyErrorWithCode:10 description:@"Error genérico durante la comunicación con el DNIe" key:NSStringFromSelector(_cmd)];
}

+ (DNIeFWError *)noCertAvailable {
	return [DNIeFWError thirdPartyErrorWithCode:11 description:@"No se dispone de certificado de firma digital" key:NSStringFromSelector(_cmd)];
}

@end
