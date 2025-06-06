//
//  PublicDNIeDTO.h
//  DNIeFW
//
//  Created by Desarrollo Abamobile on 15/4/25.
//
///Public  imports
#import <DNIeFW/DNIeInfo.h>

NS_ASSUME_NONNULL_BEGIN

@interface DNIeInfo (Internal)

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
             signaturePhotoBase64:(NSString *)signaturePhotoBase64;

@end

NS_ASSUME_NONNULL_END
