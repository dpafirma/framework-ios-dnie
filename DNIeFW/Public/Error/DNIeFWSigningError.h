//
//  DNIeFWSingingError.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 22/5/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Public imports
#import <DNIeFW/DNIeFWError.h>

NS_ASSUME_NONNULL_BEGIN

/**
 * Error  que indica un fallo en la operación de firma,
 + si es un error de firma incluye información del número de reintentos de PIN restantes.
 */
@interface DNIeFWSigningError : DNIeFWError

/// Número de reintentos de PIN restantes (Solo en el caso de que el error sea de pin incorrecto)
@property (nonatomic, readonly) int pinRetriesLeft;

/// Método  para crear un error de firma.
+ (instancetype)initWithDNIeFWError:(DNIeFWError *) error                                             pinRetriesLeft:(int)pinRetriesLeft;

/// Método  para crear un error de firma.
+ (instancetype)initWithDNIeFWError:(DNIeFWError *) error;

@end

NS_ASSUME_NONNULL_END

