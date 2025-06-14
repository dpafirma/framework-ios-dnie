//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath")
#ifdef RESTRICT_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath
#define INCLUDE_ALL_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath 0
#else
#define INCLUDE_ALL_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath 1
#endif
#undef RESTRICT_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath

#if !defined (OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_) && (INCLUDE_ALL_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath || defined(INCLUDE_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath))
#define OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_

#define RESTRICT_JavaSecurityCertCertPath 1
#define INCLUDE_JavaSecurityCertCertPath 1
#include "java/security/cert/CertPath.h"

@class IOSByteArray;
@class JavaIoInputStream;
@protocol JavaUtilIterator;
@protocol JavaUtilList;

/*!
 @brief CertPath implementation for X.509 certificates.
 */
@interface OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath : JavaSecurityCertCertPath

#pragma mark Public

/*!
 @brief Returns the list of certificates in this certification
  path.The List returned must be immutable and thread-safe.
 @return an immutable List of Certificates (may be empty, but not null)
 */
- (id<JavaUtilList>)getCertificates;

/*!
 @brief Returns the encoded form of this certification path, using
  the default encoding.
 @return the encoded bytes
 @throw java.security.cert.CertificateEncodingExceptionif an encoding error occurs
 */
- (IOSByteArray *)getEncoded;

/*!
 @brief Returns the encoded form of this certification path, using
  the specified encoding.
 @param encoding the name of the encoding to use
 @return the encoded bytes
 @throw java.security.cert.CertificateEncodingExceptionif an encoding error
  occurs or the encoding requested is not supported
 */
- (IOSByteArray *)getEncodedWithNSString:(NSString *)encoding;

/*!
 @brief Returns an iteration of the encodings supported by this
  certification path, with the default encoding
  first.Attempts to modify the returned Iterator via its
  remove method result in an UnsupportedOperationException.
 @return an Iterator over the names of the supported encodings (as Strings)
 */
- (id<JavaUtilIterator>)getEncodings;

#pragma mark Package-Private

/*!
 @brief Creates a CertPath of the specified type.
 This constructor is protected because most users should use
  a CertificateFactory to create CertPaths.
 */
- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inStream
                             withNSString:(NSString *)encoding;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)certificates;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath)

inline id<JavaUtilList> OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_get_certPathEncodings(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<JavaUtilList> OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_certPathEncodings;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath, certPathEncodings, id<JavaUtilList>)

FOUNDATION_EXPORT void OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_initWithJavaUtilList_(OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath *self, id<JavaUtilList> certificates);

FOUNDATION_EXPORT OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath *new_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_initWithJavaUtilList_(id<JavaUtilList> certificates) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath *create_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_initWithJavaUtilList_(id<JavaUtilList> certificates);

FOUNDATION_EXPORT void OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_initWithJavaIoInputStream_withNSString_(OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath *self, JavaIoInputStream *inStream, NSString *encoding);

FOUNDATION_EXPORT OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath *new_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_initWithJavaIoInputStream_withNSString_(JavaIoInputStream *inStream, NSString *encoding) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath *create_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath_initWithJavaIoInputStream_withNSString_(JavaIoInputStream *inStream, NSString *encoding);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastleJcajceProviderAsymmetricX509PKIXCertPath")
