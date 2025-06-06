//
//  LocalizationUtils.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Internal imports
#import "LocalizationUtils.h"
#import "IOSNFCSessionManager.h"
#import "LogUtils.h"

@implementation LocalizationUtils

+ (NSString *)localizedStringForKey:(NSString *)key {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[IOSNFCSessionManager class]];
	NSString *value = [frameworkBundle localizedStringForKey:key value:@"[NOT FOUND]" table:nil];
	
	return value;
}

+ (void)logLocalizationDebug {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[IOSNFCSessionManager class]];
	NSString *lang = [[NSLocale preferredLanguages] firstObject];
	NSString *langCode = [[lang componentsSeparatedByString:@"-"] firstObject];
	NSString *path = [frameworkBundle pathForResource:langCode ofType:@"lproj"];

	[LogUtils print:@"Localization Debug Info"];
	[LogUtils print:@"%@", [NSString stringWithFormat:@"- Current language: %@", lang]];
	[LogUtils print:@"%@", [NSString stringWithFormat:@"- Language code: %@", langCode]];
	[LogUtils print:@"%@", [NSString stringWithFormat:@"- Framework bundle path: %@", frameworkBundle.bundlePath]];
	[LogUtils print:@"%@", [NSString stringWithFormat:@"- %@.lproj path: %@", langCode, path ?: @"Not found"]];
}

+ (void)logLocalizationDebugForKey:(NSString *)key {
	NSBundle *frameworkBundle = [NSBundle bundleForClass:[IOSNFCSessionManager class]];
	NSString *testString = [frameworkBundle localizedStringForKey:key value:@"[NOT FOUND]" table:nil];
	[LogUtils print:@"%@", [NSString stringWithFormat:@"- Key %@ → %@", key, testString]];
}

@end
