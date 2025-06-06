//
//  CustomExtendedInfoDNIeWrapper.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/5/25.
//

/// Native imports
#import <Foundation/Foundation.h>

/// Public imports
#import <DNIeFW/DNIeFWSigningError.h>
#import <DNIeFW/DNIeSecureSession.h>
#import <DNIeFW/DNIeSignatureAlgorithm.h>

NS_ASSUME_NONNULL_BEGIN

/**
 Interfaz que define los métodos de operación del DNIe a través de CAN y PIN.

 Permite obtener una sesión de DNIe conectada por NFC para poder obtener el certificado, realizar firmas y por otra parte expone un método autónomo para poder realizar una firma totalmente gestionada
 */
@protocol DNIeSecureServiceProtocol <NSObject>

/**
 Inicia una sesión segura con el DNIe utilizando las credenciales CAN y PIN proporcionadas.

 Este método realiza una autenticación completa con el chip del DNIe y, tras una autenticación exitosa, devuelve una instancia de `DNIeSecureSessionProtocol`, lo que permite el acceso a las operaciones seguras del chip.

 @param can El Número de Acceso a la Tarjeta (CAN) del DNIe (exactamente 6 dígitos numéricos).
 @param pin El Número de Identificación Personal (PIN) necesario para desbloquear las funciones seguras del chip.
 @param completion Un bloque que se ejecuta al finalizar la operación. Si la conexión es exitosa, se proporciona un objeto `DNIeSecureSessionProtocol` con la conexión con el DNie establecida y el parámetro de error será `nil`. Si ocurre un error, el objeto `DNIeSecureSessionProtocol` será `nil` y se proporcionará un objeto `DNIeFWError` con información del error.
 
 */
- (void)startSecureSessionWithCan:(NSString *)can
							  pin:(NSString *)pin
					   completion:(void (^)(id<DNIeSecureSessionProtocol> _Nullable dnieSecureSession, DNIeFWError * _Nullable error))completion;

/**
 Realiza la firma de los datos proporcionados utilizando el algoritmo especificado. Este método es totalmente autogestionado, realiza la conexión con el DNIe, realiza la firma de los datos y cierra la sesión NFC con el DNie. No es necesario realizar nada más
 
 @param dataToSign Los datos que se desean firmar.
 @param algorithm El algoritmo de firma a utilizar (por ejemplo, RSA-SHA256).
 @param can El Número de Acceso a la Tarjeta (CAN) del DNIe (debe tener exactamente 6 dígitos numéricos).
 @param pin El Número de Identificación Personal (PIN) necesario para autenticar y desbloquear la funcionalidad de firma.
 @param completion Un bloque que se ejecuta al finalizar la operación. Si la firma es exitosa, se proporciona un objeto `NSData` que contiene los datos firmados en formato PKCS#1 y el parámetro de error será `nil`. Si ocurre un error, el objeto `NSData` será `nil` y se proporcionará un objeto `DNIeFWSigningError` con información del error, si es un error de PIN este este objeto contiene el número restante de intentos de pin, en caso de otro error este campo será nil
 */
- (void)signDataWithData:(NSData *)dataToSign
			   algorithm:(DNIeSignatureAlgorithm)algorithm
					can:(NSString *)can
					pin:(NSString *)pin
			  completion:(void (^)(NSData * _Nullable dataSigned, DNIeFWSigningError * _Nullable error))completion;


@end

/**
 Implementación de la interfaz `DNIeBasicServiceProtocol`.
 */
@interface DNIeSecureService : NSObject <DNIeSecureServiceProtocol>

@end

NS_ASSUME_NONNULL_END
