//
//  HandleNFCError.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>
#import <CoreNFC/CoreNFC.h>

@class DNIeFWError;

@interface HandleNFCError : NSObject

+ (DNIeFWError *)getNFCErrorWithNSError:(NSError *)error;

@end
