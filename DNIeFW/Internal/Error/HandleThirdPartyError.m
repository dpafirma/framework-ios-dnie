//
//  HandeThirdPartyErrors.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 22/4/25.
//

///Public imports
#import <DNIeFW/DNIeFWError.h>

///Internal imports
#import "HandleThirdPartyError.h"
#import "LogUtils.h"

@implementation HandleThirdPartyError

+ (DNIeFWError *)getDNIEErrorWithCode:(NSInteger)code {
	[LogUtils print:@"getDNIEErrorWithCode: %ld", (long)code];
	switch (code) {
		case 1: return DNIeFWError.invalidCard;
		case 2: return DNIeFWError.burnedCard;
		case 3: return DNIeFWError.connectionError;
		case 4: return DNIeFWError.notInitialized;
		case 5: return DNIeFWError.operationError;
		case 6: return DNIeFWError.badPin;
		case 7: return DNIeFWError.lockedCard;
		case 8: return DNIeFWError.pinError;
		case 9: return DNIeFWError.badCan;
		case 10: return DNIeFWError.severeError;
		case 11: return DNIeFWError.noCertAvailable;
		default: return DNIeFWError.generalSoftwareError;
	}
}

@end
