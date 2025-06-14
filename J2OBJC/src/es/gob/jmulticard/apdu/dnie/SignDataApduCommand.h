//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/apdu/dnie/SignDataApduCommand.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EsGobJmulticardApduDnieSignDataApduCommand")
#ifdef RESTRICT_EsGobJmulticardApduDnieSignDataApduCommand
#define INCLUDE_ALL_EsGobJmulticardApduDnieSignDataApduCommand 0
#else
#define INCLUDE_ALL_EsGobJmulticardApduDnieSignDataApduCommand 1
#endif
#undef RESTRICT_EsGobJmulticardApduDnieSignDataApduCommand

#if !defined (EsGobJmulticardApduDnieSignDataApduCommand_) && (INCLUDE_ALL_EsGobJmulticardApduDnieSignDataApduCommand || defined(INCLUDE_EsGobJmulticardApduDnieSignDataApduCommand))
#define EsGobJmulticardApduDnieSignDataApduCommand_

#define RESTRICT_EsGobJmulticardApduCommandApdu 1
#define INCLUDE_EsGobJmulticardApduCommandApdu 1
#include "es/gob/jmulticard/apdu/CommandApdu.h"

@class IOSByteArray;
@class JavaLangInteger;

/*!
 @brief APDU de firma de datos.
 Los datos a firmar deben cargarse previamente con una APDU <code>LoadData</code>.
 @author Tom&aacute;s Garc&iacute;a-Mer&aacute;s
 */
@interface EsGobJmulticardApduDnieSignDataApduCommand : EsGobJmulticardApduCommandApdu

#pragma mark Public

/*!
 @brief Construye una APDU de firma de datos.
 @param reference Referencia de la clave de firma.
 @param keySize Tama &ntilde; o en bits de la clave de firma.
 */
- (instancetype)initWithByte:(jbyte)reference
                     withInt:(jint)keySize;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithByte:(jbyte)arg0
                    withByte:(jbyte)arg1
                    withByte:(jbyte)arg2
                    withByte:(jbyte)arg3
               withByteArray:(IOSByteArray *)arg4
         withJavaLangInteger:(JavaLangInteger *)arg5 NS_UNAVAILABLE;

- (instancetype)initWithByteArray:(IOSByteArray *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(EsGobJmulticardApduDnieSignDataApduCommand)

FOUNDATION_EXPORT void EsGobJmulticardApduDnieSignDataApduCommand_initWithByte_withInt_(EsGobJmulticardApduDnieSignDataApduCommand *self, jbyte reference, jint keySize);

FOUNDATION_EXPORT EsGobJmulticardApduDnieSignDataApduCommand *new_EsGobJmulticardApduDnieSignDataApduCommand_initWithByte_withInt_(jbyte reference, jint keySize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EsGobJmulticardApduDnieSignDataApduCommand *create_EsGobJmulticardApduDnieSignDataApduCommand_initWithByte_withInt_(jbyte reference, jint keySize);

J2OBJC_TYPE_LITERAL_HEADER(EsGobJmulticardApduDnieSignDataApduCommand)

#endif

#pragma pop_macro("INCLUDE_ALL_EsGobJmulticardApduDnieSignDataApduCommand")
