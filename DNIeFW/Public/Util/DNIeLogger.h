//
//  DNIeLogger.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 23/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
Una clase de utilidad para controlar los logs dentro del marco DNIeFW.

Permite habilitar o deshabilitar los logs  (p. ej., códigos de error, pasos internos) desde aplicaciones de terceros, lo cual puede ser útil durante la integración, la depuración o el soporte en producción.
*/
@interface DNIeLogger : NSObject

/**
Habilita o deshabilita el log a nivel de framework.

Llama a este método al inicio de la aplicación para activar el log de depuración desde el framework DNIeFW.

@param enabled Pasa `SÍ` para habilitar el registro o `NO` para deshabilitarlo.
*/
+ (void)setEnabled:(BOOL)enabled;

/**
Comprueba si el log de DNIeFW está habilitado.

@return `YES` si el log  está habilitado; de lo contrario, `NO`.
*/
+ (BOOL)isEnabled;

@end

NS_ASSUME_NONNULL_END
