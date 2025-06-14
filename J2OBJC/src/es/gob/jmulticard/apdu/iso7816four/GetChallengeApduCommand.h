//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/apdu/iso7816four/GetChallengeApduCommand.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EsGobJmulticardApduIso7816fourGetChallengeApduCommand")
#ifdef RESTRICT_EsGobJmulticardApduIso7816fourGetChallengeApduCommand
#define INCLUDE_ALL_EsGobJmulticardApduIso7816fourGetChallengeApduCommand 0
#else
#define INCLUDE_ALL_EsGobJmulticardApduIso7816fourGetChallengeApduCommand 1
#endif
#undef RESTRICT_EsGobJmulticardApduIso7816fourGetChallengeApduCommand

#if !defined (EsGobJmulticardApduIso7816fourGetChallengeApduCommand_) && (INCLUDE_ALL_EsGobJmulticardApduIso7816fourGetChallengeApduCommand || defined(INCLUDE_EsGobJmulticardApduIso7816fourGetChallengeApduCommand))
#define EsGobJmulticardApduIso7816fourGetChallengeApduCommand_

#define RESTRICT_EsGobJmulticardApduCommandApdu 1
#define INCLUDE_EsGobJmulticardApduCommandApdu 1
#include "es/gob/jmulticard/apdu/CommandApdu.h"

@class IOSByteArray;
@class JavaLangInteger;

/*!
 @brief APDU ISO 7816-4 para la obtenci&oacute;n de una cadena de octetos
  aleatoria de desaf&iacute;o.
 @author Alberto Mart&iacute;nez Cerquero
 @author Tom&aacute;s Garc&iacute;a-Mer&aacute;s.
 */
@interface EsGobJmulticardApduIso7816fourGetChallengeApduCommand : EsGobJmulticardApduCommandApdu

#pragma mark Public

/*!
 @brief Crea una APDU ISO 7816-4 para la obtenci&oacute;n de un n&uacute;mero
  aleatorio de 8 octetos a trav&eacute;s de la tarjeta.
 @param cla Clase (CLA) de la APDU.
 */
- (instancetype)initWithByte:(jbyte)cla;

/*!
 @brief Crea una APDU ISO 7816-4 para la obtenci&oacute;n de un n&uacute;mero
  aleatorio de <i>n</i> octetos a trav&eacute;s de la tarjeta.
 @param cla Clase (CLA) de la APDU.
 @param numBytes N &uacute; mero de octetos del desaf &iacute; o generado
 */
- (instancetype)initWithByte:(jbyte)cla
                     withInt:(jint)numBytes;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithByte:(jbyte)arg0
                    withByte:(jbyte)arg1
                    withByte:(jbyte)arg2
                    withByte:(jbyte)arg3
               withByteArray:(IOSByteArray *)arg4
         withJavaLangInteger:(JavaLangInteger *)arg5 NS_UNAVAILABLE;

- (instancetype)initWithByteArray:(IOSByteArray *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(EsGobJmulticardApduIso7816fourGetChallengeApduCommand)

FOUNDATION_EXPORT void EsGobJmulticardApduIso7816fourGetChallengeApduCommand_initWithByte_(EsGobJmulticardApduIso7816fourGetChallengeApduCommand *self, jbyte cla);

FOUNDATION_EXPORT EsGobJmulticardApduIso7816fourGetChallengeApduCommand *new_EsGobJmulticardApduIso7816fourGetChallengeApduCommand_initWithByte_(jbyte cla) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EsGobJmulticardApduIso7816fourGetChallengeApduCommand *create_EsGobJmulticardApduIso7816fourGetChallengeApduCommand_initWithByte_(jbyte cla);

FOUNDATION_EXPORT void EsGobJmulticardApduIso7816fourGetChallengeApduCommand_initWithByte_withInt_(EsGobJmulticardApduIso7816fourGetChallengeApduCommand *self, jbyte cla, jint numBytes);

FOUNDATION_EXPORT EsGobJmulticardApduIso7816fourGetChallengeApduCommand *new_EsGobJmulticardApduIso7816fourGetChallengeApduCommand_initWithByte_withInt_(jbyte cla, jint numBytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EsGobJmulticardApduIso7816fourGetChallengeApduCommand *create_EsGobJmulticardApduIso7816fourGetChallengeApduCommand_initWithByte_withInt_(jbyte cla, jint numBytes);

J2OBJC_TYPE_LITERAL_HEADER(EsGobJmulticardApduIso7816fourGetChallengeApduCommand)

#endif

#pragma pop_macro("INCLUDE_ALL_EsGobJmulticardApduIso7816fourGetChallengeApduCommand")
