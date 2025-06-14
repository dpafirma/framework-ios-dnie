//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/apdu/dnie/LoadDataApduCommand.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EsGobJmulticardApduDnieLoadDataApduCommand")
#ifdef RESTRICT_EsGobJmulticardApduDnieLoadDataApduCommand
#define INCLUDE_ALL_EsGobJmulticardApduDnieLoadDataApduCommand 0
#else
#define INCLUDE_ALL_EsGobJmulticardApduDnieLoadDataApduCommand 1
#endif
#undef RESTRICT_EsGobJmulticardApduDnieLoadDataApduCommand

#if !defined (EsGobJmulticardApduDnieLoadDataApduCommand_) && (INCLUDE_ALL_EsGobJmulticardApduDnieLoadDataApduCommand || defined(INCLUDE_EsGobJmulticardApduDnieLoadDataApduCommand))
#define EsGobJmulticardApduDnieLoadDataApduCommand_

#define RESTRICT_EsGobJmulticardApduCommandApdu 1
#define INCLUDE_EsGobJmulticardApduCommandApdu 1
#include "es/gob/jmulticard/apdu/CommandApdu.h"

@class IOSByteArray;
@class JavaLangInteger;

/*!
 @brief APDU de carga de datos.
 Estos deben proporcionarse de origen con relleno PKCS#1.
 @author Tom&aacute;s Garc&iacute;a-Mer&aacute;s.
 */
@interface EsGobJmulticardApduDnieLoadDataApduCommand : EsGobJmulticardApduCommandApdu

#pragma mark Public

/*!
 @brief Construye una APDU de carga de datos.
 @param paddedDigestInfo <code> DigestInfo </code>  de los datos a cargar.
 */
- (instancetype)initWithByteArray:(IOSByteArray *)paddedDigestInfo;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithByte:(jbyte)arg0
                    withByte:(jbyte)arg1
                    withByte:(jbyte)arg2
                    withByte:(jbyte)arg3
               withByteArray:(IOSByteArray *)arg4
         withJavaLangInteger:(JavaLangInteger *)arg5 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(EsGobJmulticardApduDnieLoadDataApduCommand)

FOUNDATION_EXPORT void EsGobJmulticardApduDnieLoadDataApduCommand_initWithByteArray_(EsGobJmulticardApduDnieLoadDataApduCommand *self, IOSByteArray *paddedDigestInfo);

FOUNDATION_EXPORT EsGobJmulticardApduDnieLoadDataApduCommand *new_EsGobJmulticardApduDnieLoadDataApduCommand_initWithByteArray_(IOSByteArray *paddedDigestInfo) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EsGobJmulticardApduDnieLoadDataApduCommand *create_EsGobJmulticardApduDnieLoadDataApduCommand_initWithByteArray_(IOSByteArray *paddedDigestInfo);

J2OBJC_TYPE_LITERAL_HEADER(EsGobJmulticardApduDnieLoadDataApduCommand)

#endif

#pragma pop_macro("INCLUDE_ALL_EsGobJmulticardApduDnieLoadDataApduCommand")
