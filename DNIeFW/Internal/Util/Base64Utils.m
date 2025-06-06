//
//  Base64Utils.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 21/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Internal imports
#import "Base64Utils.h"

@implementation Base64Utils: NSObject

+(NSData*) decode:(NSString*) str urlSafe:(Boolean) urlSafe;
{
	if (urlSafe)
	{
		return [Base64Utils decode:[Base64Utils urlSafeDecode:str]];
	}
	return [Base64Utils decode:str];
}

+(NSData*) decode:(NSString*) str
{
	if(str != NULL) {
		
		return [[NSData alloc] initWithBase64EncodedString:[
															str stringByRemovingPercentEncoding]
															options:NSDataBase64DecodingIgnoreUnknownCharacters];
	}
	else {
		return NULL;
	}
}

+(NSString*) encode:(NSData*) source urlSafe:(Boolean) urlSafe;
{
	if (urlSafe)
	{

		return [[Base64Utils urlSafeEncode:[Base64Utils encode:source]] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
	}
	return [Base64Utils encode:source];
}

+ (NSString *) encode:(NSData *)source
{
	return [source base64EncodedStringWithOptions: 0];
}

+(NSString*) urlSafeEncode: (NSString*) string {

	return [[string
			 stringByReplacingOccurrencesOfString:@"+" withString:@"-"]
			 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
}

+(NSString*) urlSafeDecode: (NSString*) string {
	
	return [[string
			stringByReplacingOccurrencesOfString:@"-" withString:@"+"]
			stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
}

@end
