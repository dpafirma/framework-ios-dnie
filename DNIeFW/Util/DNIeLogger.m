//
//  DNIeLogger.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on [Date].
//

///Native imports
#import <Foundation/Foundation.h>

///Internal  imports
#import "DNIeLogger.h"
#import "LogUtils.h"
#import "LocalizationUtils.h"

@implementation DNIeLogger

+ (void)setEnabled:(BOOL)enabled {
	[LogUtils setLoggingEnabled:enabled];
	[LocalizationUtils logLocalizationDebug];
}

+ (BOOL)isEnabled {
	return [LogUtils loggingEnabled];
}

@end
