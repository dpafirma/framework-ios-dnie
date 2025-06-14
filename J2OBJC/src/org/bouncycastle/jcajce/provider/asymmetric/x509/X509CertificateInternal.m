//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/security/cert/CertificateEncodingException.h"
#include "org/bouncycastle/asn1/x509/BasicConstraints.h"
#include "org/bouncycastle/asn1/x509/Certificate.h"
#include "org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl.h"
#include "org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal.h"
#include "org/bouncycastle/jcajce/util/JcaJceHelper.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal () {
 @public
  IOSByteArray *encoding_;
  JavaSecurityCertCertificateEncodingException *exception_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal, encoding_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal, exception_, JavaSecurityCertCertificateEncodingException *)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal.java"


#line 14
@implementation OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal


#line 19
- (instancetype)initPackagePrivateWithOrgBouncycastleJcajceUtilJcaJceHelper:(id<OrgBouncycastleJcajceUtilJcaJceHelper>)bcHelper
                                     withOrgBouncycastleAsn1X509Certificate:(OrgBouncycastleAsn1X509Certificate *)c
                                withOrgBouncycastleAsn1X509BasicConstraints:(OrgBouncycastleAsn1X509BasicConstraints *)basicConstraints
                                                           withBooleanArray:(IOSBooleanArray *)keyUsage
                                                               withNSString:(NSString *)sigAlgName
                                                              withByteArray:(IOSByteArray *)sigAlgParams
                                                              withByteArray:(IOSByteArray *)encoding
                           withJavaSecurityCertCertificateEncodingException:(JavaSecurityCertCertificateEncodingException *)exception {
  OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal_initPackagePrivateWithOrgBouncycastleJcajceUtilJcaJceHelper_withOrgBouncycastleAsn1X509Certificate_withOrgBouncycastleAsn1X509BasicConstraints_withBooleanArray_withNSString_withByteArray_withByteArray_withJavaSecurityCertCertificateEncodingException_(self, bcHelper, c, basicConstraints, keyUsage, sigAlgName, sigAlgParams, encoding, exception);
  return self;
}


#line 29
- (IOSByteArray *)getEncoded {
  
#line 32
  if (nil != exception_) {
    
#line 34
    @throw exception_;
  }
  
#line 37
  if (nil == encoding_) {
    
#line 39
    @throw new_JavaSecurityCertCertificateEncodingException_init();
  }
  
#line 46
  return encoding_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgBouncycastleJcajceUtilJcaJceHelper:withOrgBouncycastleAsn1X509Certificate:withOrgBouncycastleAsn1X509BasicConstraints:withBooleanArray:withNSString:withByteArray:withByteArray:withJavaSecurityCertCertificateEncodingException:);
  methods[1].selector = @selector(getEncoded);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "encoding_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "exception_", "LJavaSecurityCertCertificateEncodingException;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgBouncycastleJcajceUtilJcaJceHelper;LOrgBouncycastleAsn1X509Certificate;LOrgBouncycastleAsn1X509BasicConstraints;[ZLNSString;[B[BLJavaSecurityCertCertificateEncodingException;", "LJavaSecurityCertCertificateEncodingException;" };
  static const J2ObjcClassInfo _OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal = { "X509CertificateInternal", "org.bouncycastle.jcajce.provider.asymmetric.x509", ptrTable, methods, fields, 7, 0x0, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal;
}

@end


#line 19
void OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal_initPackagePrivateWithOrgBouncycastleJcajceUtilJcaJceHelper_withOrgBouncycastleAsn1X509Certificate_withOrgBouncycastleAsn1X509BasicConstraints_withBooleanArray_withNSString_withByteArray_withByteArray_withJavaSecurityCertCertificateEncodingException_(OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal *self, id<OrgBouncycastleJcajceUtilJcaJceHelper> bcHelper, OrgBouncycastleAsn1X509Certificate *c, OrgBouncycastleAsn1X509BasicConstraints *basicConstraints, IOSBooleanArray *keyUsage, NSString *sigAlgName, IOSByteArray *sigAlgParams, IOSByteArray *encoding, JavaSecurityCertCertificateEncodingException *exception) {
  OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateImpl_initPackagePrivateWithOrgBouncycastleJcajceUtilJcaJceHelper_withOrgBouncycastleAsn1X509Certificate_withOrgBouncycastleAsn1X509BasicConstraints_withBooleanArray_withNSString_withByteArray_(self,
#line 23
  bcHelper, c, basicConstraints, keyUsage, sigAlgName, sigAlgParams);
  
#line 25
  self->encoding_ = encoding;
  self->exception_ = exception;
}


#line 19
OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal *new_OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal_initPackagePrivateWithOrgBouncycastleJcajceUtilJcaJceHelper_withOrgBouncycastleAsn1X509Certificate_withOrgBouncycastleAsn1X509BasicConstraints_withBooleanArray_withNSString_withByteArray_withByteArray_withJavaSecurityCertCertificateEncodingException_(id<OrgBouncycastleJcajceUtilJcaJceHelper> bcHelper, OrgBouncycastleAsn1X509Certificate *c, OrgBouncycastleAsn1X509BasicConstraints *basicConstraints, IOSBooleanArray *keyUsage, NSString *sigAlgName, IOSByteArray *sigAlgParams, IOSByteArray *encoding, JavaSecurityCertCertificateEncodingException *exception) {
  J2OBJC_NEW_IMPL(OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal, initPackagePrivateWithOrgBouncycastleJcajceUtilJcaJceHelper_withOrgBouncycastleAsn1X509Certificate_withOrgBouncycastleAsn1X509BasicConstraints_withBooleanArray_withNSString_withByteArray_withByteArray_withJavaSecurityCertCertificateEncodingException_, bcHelper, c, basicConstraints, keyUsage, sigAlgName, sigAlgParams, encoding, exception)
}


#line 19
OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal *create_OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal_initPackagePrivateWithOrgBouncycastleJcajceUtilJcaJceHelper_withOrgBouncycastleAsn1X509Certificate_withOrgBouncycastleAsn1X509BasicConstraints_withBooleanArray_withNSString_withByteArray_withByteArray_withJavaSecurityCertCertificateEncodingException_(id<OrgBouncycastleJcajceUtilJcaJceHelper> bcHelper, OrgBouncycastleAsn1X509Certificate *c, OrgBouncycastleAsn1X509BasicConstraints *basicConstraints, IOSBooleanArray *keyUsage, NSString *sigAlgName, IOSByteArray *sigAlgParams, IOSByteArray *encoding, JavaSecurityCertCertificateEncodingException *exception) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal, initPackagePrivateWithOrgBouncycastleJcajceUtilJcaJceHelper_withOrgBouncycastleAsn1X509Certificate_withOrgBouncycastleAsn1X509BasicConstraints_withBooleanArray_withNSString_withByteArray_withByteArray_withJavaSecurityCertCertificateEncodingException_, bcHelper, c, basicConstraints, keyUsage, sigAlgName, sigAlgParams, encoding, exception)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleJcajceProviderAsymmetricX509X509CertificateInternal)
