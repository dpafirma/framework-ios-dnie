//
//  DNIeFWSigningError.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 22/5/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Public imports
#import <DNIeFW/DNIeFWError.h>
#import <DNIeFW/DNIeFWSigningError.h>

@interface DNIeFWSigningError ()
@property (nonatomic) int pinRetriesLeft;
@end

@implementation DNIeFWSigningError

+ (instancetype)initWithDNIeFWError:(DNIeFWError *) error {
    DNIeFWSigningError *signerror = [[DNIeFWSigningError alloc] init];
    signerror.code = error.code;
    signerror.errorDescription = [error.errorDescription copy];
    signerror.type = [error.type copy];
    signerror.localizationKey = [error.localizationKey copy];
    signerror.pinRetriesLeft = -1;
    return signerror;
}

+ (instancetype)initWithDNIeFWError:(DNIeFWError *) error                                             pinRetriesLeft:(int)pinRetriesLeft {

    DNIeFWSigningError *signerror = [[DNIeFWSigningError alloc] init];
    signerror.code = error.code;
    signerror.errorDescription = [error.errorDescription copy];
    signerror.type = [error.type copy];
    signerror.localizationKey = [error.localizationKey copy];
    signerror.pinRetriesLeft = pinRetriesLeft;
    return signerror;
}

@end
