//
//  PublicDNIeDTO.m
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 15/4/25.
//

///Native imports
#import <Foundation/Foundation.h>

///Internal imports
#import "LogUtils.h"
#import "DNIeInfo+Internal.h"

@interface DNIeInfo ()

@property (nonatomic, copy, readwrite) NSString *dniNumber;
@property (nonatomic, copy, readwrite) NSString *docNumber;
@property (nonatomic, copy, readwrite) NSString *name;
@property (nonatomic, copy, readwrite) NSString *surname;
@property (nonatomic, copy, readwrite) NSString *gender;
@property (nonatomic, copy, readwrite) NSString *nationality;
@property (nonatomic, copy, readwrite) NSString *dateOfBirth;
@property (nonatomic, copy, readwrite) NSString *dateOfExpiry;
@property (nonatomic, copy, readwrite) NSString *birthCity;
@property (nonatomic, copy, readwrite) NSString *birthProvince;
@property (nonatomic, copy, readwrite) NSString *birthCountry;
@property (nonatomic, copy, readwrite) NSString *residenceAddress;
@property (nonatomic, copy, readwrite) NSString *residenceCity;
@property (nonatomic, copy, readwrite) NSString *residenceProvince;
@property (nonatomic, copy, readwrite) NSString *facePhotoBase64;
@property (nonatomic, copy, readwrite) NSString *signaturePhotoBase64;


@end

@implementation DNIeInfo

- (instancetype)initWithDniNumber:(NSString *)dniNumber
                        docNumber:(NSString *)docNumber
                             name:(NSString *)name
                          surname:(NSString *)surname
                           gender:(NSString *)gender
                      nationality:(NSString *)nationality
                      dateOfBirth:(NSString *)dateOfBirth
                     dateOfExpiry:(NSString *)dateOfExpiry
                        birthCity:(NSString *)birthCity
                    birthProvince:(NSString *)birthProvince
                     birthCountry:(NSString *)birthCountry
                 residenceAddress:(NSString *)residenceAddress
                    residenceCity:(NSString *)residenceCity
                residenceProvince:(NSString *)residenceProvince
                  facePhotoBase64:(NSString *)facePhotoBase64
             signaturePhotoBase64:(NSString *)signaturePhotoBase64
{
    self = [super init];
    if (self) {
        _dniNumber = [dniNumber copy];
        _docNumber = [docNumber copy];
        _name = [name copy];
        _surname = [surname copy];
        _gender = [gender copy];
        _nationality = [nationality copy];
        _dateOfBirth = [dateOfBirth copy];
        _dateOfExpiry = [dateOfExpiry copy];
        _birthCity = [birthCity copy];
        _birthProvince = [birthProvince copy];
        _birthCountry = [birthCountry copy];
        _residenceAddress = [residenceAddress copy];
        _residenceCity = [residenceCity copy];
        _residenceProvince = [residenceProvince copy];
        _facePhotoBase64 = [facePhotoBase64 copy];
        _signaturePhotoBase64 = [signaturePhotoBase64 copy];
    }
    return self;
}

- (void)logProperties {
	// Basic & Non-Private DNIe info
	[LogUtils print:@"🔹 dniNumber: %@", self.dniNumber];
	[LogUtils print:@"🔹 docNumber: %@", self.docNumber];
	[LogUtils print:@"🔹 name: %@", self.name];
	[LogUtils print:@"🔹 surname: %@", self.surname];
	[LogUtils print:@"🔹 gender: %@", self.gender];
	[LogUtils print:@"🔹 nationality: %@", self.nationality];
	[LogUtils print:@"🔹 dateOfBirth: %@", self.dateOfBirth];
	[LogUtils print:@"🔹 dateOfExpiry: %@", self.dateOfExpiry];
	[LogUtils print:@"🔹 birthCity: %@", self.birthCity];
	[LogUtils print:@"🔹 birthProvince: %@", self.birthProvince];
	[LogUtils print:@"🔹 birthCountry: %@", self.birthCountry];
	[LogUtils print:@"🔹 residenceAddress: %@", self.residenceAddress];
	[LogUtils print:@"🔹 residenceCity: %@", self.residenceCity];
	[LogUtils print:@"🔹 residenceProvince: %@", self.residenceProvince];
	
	[LogUtils print:@"📄 -------------------------------"];
}

@end
