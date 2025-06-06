//
//  IOSCallbackHandler.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Internal imports

///J2OBJC imports
#import "IOSObjectArray.h"
#import "IOSPrimitiveArray.h"
#import "IOSArray.h"
#import "IOSClass.h"
#import "javax/security/auth/callback/CallbackHandler.h"

@class IOSObjectArray;

NS_ASSUME_NONNULL_BEGIN

@interface IOSCallbackHandler : NSObject <JavaxSecurityAuthCallbackCallbackHandler>

@property (nonatomic, strong) NSString *can;
@property (nonatomic, strong) NSString *pin;

- (instancetype)initWithCan:(NSString *)can pin:(NSString *)pin;
- (void)handleWithJavaxSecurityAuthCallbackCallbackArray:(IOSObjectArray *)callbacks;

@end

NS_ASSUME_NONNULL_END
