//
//  DNIeSecureSession.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/5/25.
//

/// Native imports
#import <Foundation/Foundation.h>

/// Public imports
#import <DNIeFW/DNIeFWError.h>
#import <DNIeFW/DNIeFWSigningError.h>
#import <DNIeFW/DNIeSignatureAlgorithm.h>

NS_ASSUME_NONNULL_BEGIN

/*
 Importante. Una vez finalizadas las operaciones es necesario llamar al método finish para cerrar la conexón NFC. En caso de que se produzca un error no es necesario porque gestiona internamente el cierre de la conexión NFC
 */
@protocol DNIeSecureSessionProtocol <NSObject>

/**
 * Obtiene el certificado de firma del DNIe.
 *
 * @param error Un puntero a un objeto DNIeFWError que se establecerá si ocurre un error durante la obtención del certificado. Puede ser `nil` si no se desea recibir información del error.
 *
 * @return Un objeto `NSData` que contiene el certificado de firma, o `nil` si ocurre un error.
 */
- (nullable NSData *)getSigningCertificateWithError:(DNIeFWError * _Nullable * _Nullable)error;

/**
 * Realiza la firma de los datos proporcionados utilizando el algoritmo especificado.
 *
 * @param dataToSign Los datos que se desean firmar.
 * @param algorithm El algoritmo de firma a utilizar (por ejemplo, RSA-SHA256).
 * @param error Un puntero a un objeto DNIeFWSigningError que se establecerá si ocurre un error durante el proceso de firma. Puede ser `nil` si no se desea recibir información del error.
 *
 * @return Un objeto NSData que contiene los datos firmados en formato PKCS#1, o `nil` si ocurre un error.
 */
- (nullable NSData *)signData:(NSData *)dataToSign
					algorithm:(DNIeSignatureAlgorithm)algorithm
					   error:(DNIeFWSigningError * _Nullable * _Nullable)error;

/**
 * Finaliza la sesión NFC activa.
 *
 * Este método debe ser llamado una vez que se hayan completado todas las operaciones con el DNIe.
 * Es necesario para liberar correctamente los recursos y cerrar la sesión de forma segura.
 */
- (void)finish;

@end

/**
 Implementación de la interfaz `DNIeSecureSessionProtocol`.

 Esta clase gestiona el ciclo de vida de una sesión segura activa con el DNIe, permitiendo operaciones criptográficas cumpliendo con los estándares oficiales.
 */
@interface DNIeSecureSession : NSObject <DNIeSecureSessionProtocol>

@end

NS_ASSUME_NONNULL_END
