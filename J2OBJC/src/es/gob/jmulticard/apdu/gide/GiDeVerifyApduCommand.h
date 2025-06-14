//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/es/gob/jmulticard/apdu/gide/GiDeVerifyApduCommand.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EsGobJmulticardApduGideGiDeVerifyApduCommand")
#ifdef RESTRICT_EsGobJmulticardApduGideGiDeVerifyApduCommand
#define INCLUDE_ALL_EsGobJmulticardApduGideGiDeVerifyApduCommand 0
#else
#define INCLUDE_ALL_EsGobJmulticardApduGideGiDeVerifyApduCommand 1
#endif
#undef RESTRICT_EsGobJmulticardApduGideGiDeVerifyApduCommand

#if !defined (EsGobJmulticardApduGideGiDeVerifyApduCommand_) && (INCLUDE_ALL_EsGobJmulticardApduGideGiDeVerifyApduCommand || defined(INCLUDE_EsGobJmulticardApduGideGiDeVerifyApduCommand))
#define EsGobJmulticardApduGideGiDeVerifyApduCommand_

#define RESTRICT_EsGobJmulticardApduCommandApdu 1
#define INCLUDE_EsGobJmulticardApduCommandApdu 1
#include "es/gob/jmulticard/apdu/CommandApdu.h"

@class IOSByteArray;
@class JavaLangInteger;
@class JavaxSecurityAuthCallbackPasswordCallback;

/*!
 @brief APDU ISO 7816-4 de verificaci&oacute;n de PIN (CHV, <i>Card Holder Verification</i>).
 @author Tom&aacute;s Garc&iacute;a-Mer&aacute;s.
 */
@interface EsGobJmulticardApduGideGiDeVerifyApduCommand : EsGobJmulticardApduCommandApdu

#pragma mark Public

/*!
 @brief Construye una APDU ISO 7816-4 de verificaci&oacute;n de PIN (CHV, <i>Card Holder Verification</i>).
 @param pinPc Pin de la tarjeta inteligente.
 */
- (instancetype)initWithJavaxSecurityAuthCallbackPasswordCallback:(JavaxSecurityAuthCallbackPasswordCallback *)pinPc;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithByte:(jbyte)arg0
                    withByte:(jbyte)arg1
                    withByte:(jbyte)arg2
                    withByte:(jbyte)arg3
               withByteArray:(IOSByteArray *)arg4
         withJavaLangInteger:(JavaLangInteger *)arg5 NS_UNAVAILABLE;

- (instancetype)initWithByteArray:(IOSByteArray *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(EsGobJmulticardApduGideGiDeVerifyApduCommand)

FOUNDATION_EXPORT void EsGobJmulticardApduGideGiDeVerifyApduCommand_initWithJavaxSecurityAuthCallbackPasswordCallback_(EsGobJmulticardApduGideGiDeVerifyApduCommand *self, JavaxSecurityAuthCallbackPasswordCallback *pinPc);

FOUNDATION_EXPORT EsGobJmulticardApduGideGiDeVerifyApduCommand *new_EsGobJmulticardApduGideGiDeVerifyApduCommand_initWithJavaxSecurityAuthCallbackPasswordCallback_(JavaxSecurityAuthCallbackPasswordCallback *pinPc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EsGobJmulticardApduGideGiDeVerifyApduCommand *create_EsGobJmulticardApduGideGiDeVerifyApduCommand_initWithJavaxSecurityAuthCallbackPasswordCallback_(JavaxSecurityAuthCallbackPasswordCallback *pinPc);

J2OBJC_TYPE_LITERAL_HEADER(EsGobJmulticardApduGideGiDeVerifyApduCommand)

#endif

#pragma pop_macro("INCLUDE_ALL_EsGobJmulticardApduGideGiDeVerifyApduCommand")
