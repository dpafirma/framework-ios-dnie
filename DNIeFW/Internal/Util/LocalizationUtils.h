//
//  LocalizationUtils.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocalizationUtils : NSObject

/// Devuelve una cadena localizada desde el bundle del framework DNIeFW
+ (NSString *)localizedStringForKey:(NSString *)key;

/// Muestra en consola información de depuración sobre el sistema
+ (void)logLocalizationDebug;

/// Muestra en consola información de depuración sobre una clave localizada
+ (void)logLocalizationDebugForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
