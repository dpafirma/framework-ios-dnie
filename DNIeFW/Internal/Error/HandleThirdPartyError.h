//
//  HandeThirdPartyErrors.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 22/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

@class DNIeFWError;

NS_ASSUME_NONNULL_BEGIN

@interface HandleThirdPartyError : NSObject

+ (DNIeFWError *)getDNIEErrorWithCode:(NSInteger)code;

@end

NS_ASSUME_NONNULL_END
