//
//  NSDateFormatter+Utils.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Internal imports
#import "NSDateFormatter+Utils.h"

@implementation NSDateFormatter (Utils)

- (id) initWithCurrentLocale
{
	static NSLocale* locale = nil;
	self = [self init];
	if (locale == nil) {
		NSString *currentLanguage = [[NSBundle mainBundle] preferredLocalizations][0];
		locale = [[NSLocale alloc] initWithLocaleIdentifier:currentLanguage];
	}
	[self setLocale:locale];
	return self;
}

@end
