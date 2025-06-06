//
//  HandleNFCError.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 11/4/25.
//

/// Native imports
#import <Foundation/Foundation.h>
#import <CoreNFC/CoreNFC.h>

/// Public imports
#import <DNIeFW/DNIeFWError.h>

/// Internal imports
#import "HandleNFCError.h"

@implementation HandleNFCError

/// Converts an `NSError` from the Core NFC framework into a structured `DNIeFWError` object.
/// Adds localized descriptions and assigns the enum case name as a `key` when applicable.
+ (DNIeFWError *)getNFCErrorWithNSError:(NSError *)error {
	if (![error.domain isEqualToString:NFCErrorDomain]) {
		return [DNIeFWError hardwareErrorWithCode:100000
								   description:@"Error desconocido de NFC"
										   key:error.domain];
	}

	switch (error.code) {
		case NFCReaderTransceiveErrorTagConnectionLost:
			return DNIeFWError.nfcReaderTransceiveErrorTagConnectionLost;

		case NFCReaderTransceiveErrorRetryExceeded:
			return DNIeFWError.nfcReaderTransceiveErrorRetryExceeded;

		case NFCReaderTransceiveErrorTagNotConnected:
			return DNIeFWError.nfcReaderTransceiveErrorTagNotConnected;

		case NFCReaderTransceiveErrorTagResponseError:
			return DNIeFWError.nfcReaderTransceiveErrorTagResponseError;

		case NFCReaderTransceiveErrorSessionInvalidated:
			return DNIeFWError.nfcReaderTransceiveErrorSessionInvalidated;

		case NFCReaderTransceiveErrorPacketTooLong:
			return DNIeFWError.nfcReaderTransceiveErrorPacketTooLong;

		case NFCReaderSessionInvalidationErrorUserCanceled:
			return DNIeFWError.nfcReaderSessionInvalidationErrorUserCanceled;

		case NFCReaderSessionInvalidationErrorSessionTimeout:
			return DNIeFWError.nfcReaderSessionInvalidationErrorSessionTimeout;

		case NFCReaderSessionInvalidationErrorSessionTerminatedUnexpectedly:
			return DNIeFWError.nfcReaderSessionInvalidationErrorSessionTerminatedUnexpectedly;

		case NFCReaderSessionInvalidationErrorSystemIsBusy:
			return DNIeFWError.nfcReaderSessionInvalidationErrorSystemIsBusy;

		case NFCReaderSessionInvalidationErrorFirstNDEFTagRead:
			return DNIeFWError.nfcReaderSessionInvalidationErrorFirstNDEFTagRead;

		case NFCReaderErrorUnsupportedFeature:
			return DNIeFWError.nfcReaderErrorUnsupportedFeature;

		case NFCReaderErrorSecurityViolation:
			return DNIeFWError.nfcReaderErrorSecurityViolation;

		case NFCReaderErrorInvalidParameter:
			return DNIeFWError.nfcReaderErrorInvalidParameter;

		case NFCReaderErrorInvalidParameterLength:
			return DNIeFWError.nfcReaderErrorInvalidParameterLength;

		case NFCReaderErrorParameterOutOfBound:
			return DNIeFWError.nfcReaderErrorParameterOutOfBound;

		case NFCReaderErrorRadioDisabled:
			return DNIeFWError.nfcReaderErrorRadioDisabled;

		default:
			return DNIeFWError.nfcUnknowError;
	}
}


@end
