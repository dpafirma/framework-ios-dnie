//
//  StateAPDUCommand.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

@class IOSByteArray;

@interface StateAPDUCommand : NSObject
@property (nonatomic, assign) BOOL isFinished;
@property (nonatomic, strong, nullable) IOSByteArray *returnIOSByteArray;
@end
