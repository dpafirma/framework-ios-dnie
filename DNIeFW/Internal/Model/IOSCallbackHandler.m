//
//  IOSCallbackHandler.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Internal Imports
#import "IOSCallbackHandler.h"
#import "LogUtils.h"

///J2OBJC  imports
#import "IOSArray.h"
#import "IOSClass.h"
#import "javax/security/auth/callback/Callback.h"
#import "javax/security/auth/callback/CallbackHandler.h"
#import "javax/security/auth/callback/PasswordCallback.h"
#import "javax/security/auth/callback/UnsupportedCallbackException.h"
#import "es/gob/jmulticard/callback/CustomTextInputCallback.h"

@implementation IOSCallbackHandler

- (instancetype)initWithCan:(NSString *)can pin:(NSString *)pin {
	self = [super init];
	if (self) {
		_can = can;
		_pin = pin;
	}
	return self;
}

- (void)handleWithJavaxSecurityAuthCallbackCallbackArray:(IOSObjectArray *)callbacks {
	NSUInteger length = [callbacks length];

	for (NSUInteger i = 0; i < length; i++) {
		id callback = [callbacks objectAtIndex:i];

		if (![callback conformsToProtocol:@protocol(JavaxSecurityAuthCallbackCallback)]) {
			continue;
		}

		[LogUtils print:@"Executing handle of custom IOSCallbackHandler"];
		[LogUtils print:@"%@", callback];

		if ([callback isKindOfClass:[JavaxSecurityAuthCallbackPasswordCallback class]]) {
			JavaxSecurityAuthCallbackPasswordCallback *passwordCallback = (JavaxSecurityAuthCallbackPasswordCallback *)callback;
			IOSCharArray *passwordCharArray = [IOSCharArray arrayWithNSString:self.pin];
			[LogUtils print:@"Set PIN"];
			[passwordCallback setPasswordWithCharArray:passwordCharArray];
			break;
		} else if ([callback isKindOfClass:[EsGobJmulticardCallbackCustomTextInputCallback class]]) {
			EsGobJmulticardCallbackCustomTextInputCallback *textInputCallback = (EsGobJmulticardCallbackCustomTextInputCallback *)callback;
			[LogUtils print:@"Set CAN"];
			[textInputCallback setTextWithNSString:self.can];
		}
	}
}

- (id)java_clone {
	return self;
}

 -(IOSClass *)java_getClass {
	return [IOSClass classForIosName:@"IOSCallbackHandler"];
}

- (void)java_notify {}
- (void)java_notifyAll {}
- (void)java_wait {}
- (void)java_waitWithLong:(jlong)timeout {}
- (void)java_waitWithLong:(jlong)timeout withInt:(jint)nanos {}

- (BOOL)isEqual:(id)object {
	return false;
}

- (NSUInteger)hash {
	return self.can.hash ^ self.pin.hash;
}

- (NSString *)description {
	return [NSString stringWithFormat:@"<IOSCallbackHandler: can=%@, pin=****>", self.can];
}

@end
