//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/apdu/dnie/ChangePinApduCommand.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EsGobJmulticardApduDnieChangePinApduCommand")
#ifdef RESTRICT_EsGobJmulticardApduDnieChangePinApduCommand
#define INCLUDE_ALL_EsGobJmulticardApduDnieChangePinApduCommand 0
#else
#define INCLUDE_ALL_EsGobJmulticardApduDnieChangePinApduCommand 1
#endif
#undef RESTRICT_EsGobJmulticardApduDnieChangePinApduCommand

#if !defined (EsGobJmulticardApduDnieChangePinApduCommand_) && (INCLUDE_ALL_EsGobJmulticardApduDnieChangePinApduCommand || defined(INCLUDE_EsGobJmulticardApduDnieChangePinApduCommand))
#define EsGobJmulticardApduDnieChangePinApduCommand_

#define RESTRICT_EsGobJmulticardApduCommandApdu 1
#define INCLUDE_EsGobJmulticardApduCommandApdu 1
#include "es/gob/jmulticard/apdu/CommandApdu.h"

@class IOSByteArray;
@class JavaLangInteger;

/*!
 @brief APDU para el cambio de PIN.
 @author Sergio Mart&iacute;nez Rico
 @author Tom&aacute;s Garc&iacute;a-Mer&aacute;s Capote.
 */
@interface EsGobJmulticardApduDnieChangePinApduCommand : EsGobJmulticardApduCommandApdu

#pragma mark Public

/*!
 @brief Construye una APDU ISO 7816-4 de cambio de PIN.
 @param oldPIN Pin actual de la tarjeta inteligente.
 @param newPIN Pin nuevo de la tarjeta inteligente.
 */
- (instancetype)initWithByteArray:(IOSByteArray *)oldPIN
                    withByteArray:(IOSByteArray *)newPIN;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithByte:(jbyte)arg0
                    withByte:(jbyte)arg1
                    withByte:(jbyte)arg2
                    withByte:(jbyte)arg3
               withByteArray:(IOSByteArray *)arg4
         withJavaLangInteger:(JavaLangInteger *)arg5 NS_UNAVAILABLE;

- (instancetype)initWithByteArray:(IOSByteArray *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(EsGobJmulticardApduDnieChangePinApduCommand)

FOUNDATION_EXPORT void EsGobJmulticardApduDnieChangePinApduCommand_initWithByteArray_withByteArray_(EsGobJmulticardApduDnieChangePinApduCommand *self, IOSByteArray *oldPIN, IOSByteArray *newPIN);

FOUNDATION_EXPORT EsGobJmulticardApduDnieChangePinApduCommand *new_EsGobJmulticardApduDnieChangePinApduCommand_initWithByteArray_withByteArray_(IOSByteArray *oldPIN, IOSByteArray *newPIN) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EsGobJmulticardApduDnieChangePinApduCommand *create_EsGobJmulticardApduDnieChangePinApduCommand_initWithByteArray_withByteArray_(IOSByteArray *oldPIN, IOSByteArray *newPIN);

J2OBJC_TYPE_LITERAL_HEADER(EsGobJmulticardApduDnieChangePinApduCommand)

#endif

#pragma pop_macro("INCLUDE_ALL_EsGobJmulticardApduDnieChangePinApduCommand")
