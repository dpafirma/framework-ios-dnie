//
//  DNIeInfo.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 15/4/25.
//

/// Native imports
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
* DNIeInfo
* Modelo de datos que contiene toda la información que se puede extraerdel DNI electrónico español (DNIe)
*/
@interface DNIeInfo : NSObject

/// DNI
@property (nonatomic, copy, readonly) NSString *dniNumber;

/// Número de documento impreso en la tarjeta (puede ser diferente del dniNumber).
@property (nonatomic, copy, readonly) NSString *docNumber;

/// Nombre del titular.
@property (nonatomic, copy, readonly) NSString *name;

/// Apellidos del titular
@property (nonatomic, copy, readonly) NSString *surname;

/// Género del titular (por ejemplo, "M" o "F").
@property (nonatomic, copy, readonly) NSString *gender;

/// Nacionalidad del titular (por ejemplo, "ESP").
@property (nonatomic, copy, readonly) NSString *nationality;

/// Fecha de nacimiento (formato: AAAA-MM-DD).
@property (nonatomic, copy, readonly) NSString *dateOfBirth;

/// Fecha de caducidad (formato: AAAA-MM-DD).
@property (nonatomic, copy, readonly) NSString *dateOfExpiry;

/// Ciudad de nacimiento
@property (nonatomic, copy, readonly) NSString *birthCity;

/// Provincia de nacimiento
@property (nonatomic, copy, readonly) NSString *birthProvince;

/// País de nacimiento
@property (nonatomic, copy, readonly) NSString *birthCountry;

/// Dirección de residencia
@property (nonatomic, copy, readonly) NSString *residenceAddress;

/// Ciudad de residencia
@property (nonatomic, copy, readonly) NSString *residenceCity;

/// Provincia de residencia
@property (nonatomic, copy, readonly) NSString *residenceProvince;

/// Imagen codificada en Base64 de la foto del rostro del titular.
@property (nonatomic, copy, readonly) NSString *facePhotoBase64;

/// Imagen codificada en Base64 de la firma manuscrita del titular.
@property (nonatomic, copy, readonly) NSString *signaturePhotoBase64;

/// Registra todos los valores de propiedad para fines de depuración.
- (void)logProperties;

@end

NS_ASSUME_NONNULL_END
