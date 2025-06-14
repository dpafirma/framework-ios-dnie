//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi")
#ifdef RESTRICT_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi
#define INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi 1
#endif
#undef RESTRICT_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi

#if !defined (OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi_) && (INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi || defined(INCLUDE_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi))
#define OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi_

#define RESTRICT_JavaSecurityKeyPairGenerator 1
#define INCLUDE_JavaSecurityKeyPairGenerator 1
#include "java/security/KeyPairGenerator.h"

@class JavaSecurityKeyPair;
@class JavaSecuritySecureRandom;
@class OrgBouncycastlePqcCryptoNewhopeNHKeyPairGenerator;
@protocol JavaSecuritySpecAlgorithmParameterSpec;

@interface OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi : JavaSecurityKeyPairGenerator {
 @public
  OrgBouncycastlePqcCryptoNewhopeNHKeyPairGenerator *engine_;
  JavaSecuritySecureRandom *random_;
  jboolean initialised_;
}

#pragma mark Public

- (instancetype)init;

- (JavaSecurityKeyPair *)generateKeyPair;

- (void)initialize__WithJavaSecuritySpecAlgorithmParameterSpec:(id<JavaSecuritySpecAlgorithmParameterSpec>)params
                                  withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random OBJC_METHOD_FAMILY_NONE;

- (void)initialize__WithInt:(jint)strength
withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random OBJC_METHOD_FAMILY_NONE;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi)

J2OBJC_FIELD_SETTER(OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi, engine_, OrgBouncycastlePqcCryptoNewhopeNHKeyPairGenerator *)
J2OBJC_FIELD_SETTER(OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi, random_, JavaSecuritySecureRandom *)

FOUNDATION_EXPORT void OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi_init(OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi *self);

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi *new_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi *create_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcJcajceProviderNewhopeNHKeyPairGeneratorSpi")
