//
//  DNIeBasicService.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/5/25.
//

/// Native imports
#import <Foundation/Foundation.h>

/// Public imports
#import <DNIeFW/DNIeFWError.h>
#import <DNIeFW/DNIeInfo.h>

NS_ASSUME_NONNULL_BEGIN

/**
Interfaz que define el servicio para recuperar información básica de un DNIe español utilizando únicamente el CAN (Número de Acceso a la Tarjeta).
*/
@protocol DNIeBasicServiceProtocol <NSObject>

/**
Realiza la lectura NFC del DNIe  para obtener todos los datos disponibles utilizando el CAN indicado.
Este método gestiona toda la conexión NFC con el DNIe (inicialización, comandos y finalización) por lo que no es necesario ninguna gestión adicional

@param can Cadena de 6 dígitos que representa el Número de Acceso a la Tarjeta (CAN) del DNIe.
@param completion Un bloque que se ejecuta al finalizar la operación. Si la lectura es exitosa, se proporciona un objeto `DNIeInfo` con los datos leídos y el parámetro de error será `nil`. Si ocurre un error, el objeto `DNIeInfo` será `nil` y se proporcionará un objeto `DNIeFWError` con información del error.
*/
- (void)readBasicInfoWithCAN:(NSString *)can
				  completion:(void (^)(DNIeInfo * _Nullable info, DNIeFWError * _Nullable error))completion;

@end

/**
 Implementación de la interfaz `DNIeBasicServiceProtocol`.
 */
@interface DNIeBasicService : NSObject <DNIeBasicServiceProtocol>

- (instancetype)init;

@end

NS_ASSUME_NONNULL_END
