//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/StringBuilder.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil.h"
#include "org/bouncycastle/util/encoders/Base64.h"

@class OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries;

#if !__has_feature(objc_arc)
#error "org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil () {
 @public
  IOSObjectArray *_supportedBoundaries_;
}

- (NSString *)readLineWithJavaIoInputStream:(JavaIoInputStream *)inArg;

/*!
 @brief Returns a <code>Boundaries</code> object representing the passed in boundary
  string.
 @param line the boundary string
 @return the <code>Boundaries</code> object corresponding to the given boundary
          string or <code>null</code> if the passed in string is not a valid
          boundary.
 */
- (OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *)getBoundariesWithNSString:(NSString *)line;

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil, _supportedBoundaries_, IOSObjectArray *)

__attribute__((unused)) static NSString *OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_readLineWithJavaIoInputStream_(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil *self, JavaIoInputStream *inArg);

__attribute__((unused)) static OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_getBoundariesWithNSString_(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil *self, NSString *line);

/*!
 @brief Boundary class.Keeps track of the required header/footer pair for the
  current PEM object.
 */
@interface OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries : NSObject {
 @public
  NSString *_header_;
  NSString *_footer_;
}

- (instancetype)initWithNSString:(NSString *)type;

- (jboolean)isTheExpectedHeaderWithNSString:(NSString *)line;

- (jboolean)isTheExpectedFooterWithNSString:(NSString *)line;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries)

J2OBJC_FIELD_SETTER(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries, _header_, NSString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries, _footer_, NSString *)

__attribute__((unused)) static void OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *self, NSString *type);

__attribute__((unused)) static OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *new_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(NSString *type) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *create_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(NSString *type);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil.java"


#line 9
@implementation OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil


#line 39
- (instancetype)initPackagePrivateWithNSString:(NSString *)type {
  OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_initPackagePrivateWithNSString_(self, type);
  return self;
}


#line 46
- (NSString *)readLineWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  return OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_readLineWithJavaIoInputStream_(self, inArg);
}


#line 98
- (OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *)getBoundariesWithNSString:(NSString *)line {
  return OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_getBoundariesWithNSString_(self, line);
}


#line 110
- (OrgBouncycastleAsn1ASN1Sequence *)readPEMObjectWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                                            withBoolean:(jboolean)isFirst {
  
#line 115
  NSString *line;
  JavaLangStringBuilder *pemBuf = new_JavaLangStringBuilder_init();
  
#line 118
  OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *header = nil;
  
#line 120
  while (header == nil && (line = OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_readLineWithJavaIoInputStream_(self, inArg)) != nil) {
    
#line 122
    header = OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_getBoundariesWithNSString_(self, line);
    if (header != nil && ![header isTheExpectedHeaderWithNSString:line]) {
      
#line 125
      @throw new_JavaIoIOException_initWithNSString_(@"malformed PEM data: found footer where header was expected");
    }
  }
  
#line 129
  if (header == nil) {
    
#line 131
    if (!isFirst) {
      
#line 134
      return nil;
    }
    @throw new_JavaIoIOException_initWithNSString_(@"malformed PEM data: no header found");
  }
  
#line 139
  OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *footer = nil;
  
#line 141
  while (footer == nil && (line = OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_readLineWithJavaIoInputStream_(self, inArg)) != nil) {
    
#line 143
    footer = OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_getBoundariesWithNSString_(self, line);
    if (footer != nil) {
      
#line 146
      if (![header isTheExpectedFooterWithNSString:line]) {
        
#line 148
        @throw new_JavaIoIOException_initWithNSString_(@"malformed PEM data: header/footer mismatch");
      }
    }
    else {
      
#line 153
      (void) [pemBuf appendWithNSString:line];
    }
  }
  
#line 157
  if (footer == nil) {
    
#line 159
    @throw new_JavaIoIOException_initWithNSString_(@"malformed PEM data: no footer found");
  }
  
#line 162
  if ([pemBuf java_length] != 0) {
    
#line 164
    @try {
      
#line 166
      return OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(OrgBouncycastleUtilEncodersBase64_decodeWithNSString_([pemBuf description]));
    }
    @catch (JavaLangException *e) {
      
#line 170
      @throw new_JavaIoIOException_initWithNSString_(@"malformed PEM data encountered");
    }
  }
  
#line 174
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries;", 0x2, 4, 0, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleAsn1ASN1Sequence;", 0x0, 5, 6, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithNSString:);
  methods[1].selector = @selector(readLineWithJavaIoInputStream:);
  methods[2].selector = @selector(getBoundariesWithNSString:);
  methods[3].selector = @selector(readPEMObjectWithJavaIoInputStream:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_supportedBoundaries_", "[LOrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "readLine", "LJavaIoInputStream;", "LJavaIoIOException;", "getBoundaries", "readPEMObject", "LJavaIoInputStream;Z", "LOrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries;" };
  static const J2ObjcClassInfo _OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil = { "PEMUtil", "org.bouncycastle.jcajce.provider.asymmetric.x509", ptrTable, methods, fields, 7, 0x0, 4, 1, -1, 7, -1, -1, -1 };
  return &_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil;
}

@end


#line 39
void OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_initPackagePrivateWithNSString_(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil *self, NSString *type) {
  NSObject_init(self);
  self->_supportedBoundaries_ = [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(
#line 42
  type), create_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(JreStrcat("$$", @"X509 ", type)), create_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(
#line 43
  @"PKCS7") } count:3 type:OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_class_()];
}


#line 39
OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil *new_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_initPackagePrivateWithNSString_(NSString *type) {
  J2OBJC_NEW_IMPL(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil, initPackagePrivateWithNSString_, type)
}


#line 39
OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil *create_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_initPackagePrivateWithNSString_(NSString *type) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil, initPackagePrivateWithNSString_, type)
}


#line 46
NSString *OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_readLineWithJavaIoInputStream_(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil *self, JavaIoInputStream *inArg) {
  
#line 48
  jint c;
  JavaLangStringBuilder *l = new_JavaLangStringBuilder_init();
  
#line 51
  do {
    
#line 53
    while ((c = [((JavaIoInputStream *) nil_chk(inArg)) read]) != 0x000d && c != 0x000a && c >= 0) {
      
#line 55
      (void) [l appendWithChar:(jchar) c];
    }
  }
  while (c >= 0 && [l java_length] == 0);
  
#line 60
  if (c < 0) {
    
#line 63
    if ([l java_length] == 0) {
      
#line 65
      return nil;
    }
    return [l description];
  }
  
#line 71
  if (c == 0x000d) {
    
#line 74
    [inArg markWithInt:1];
    if ((c = [inArg read]) == 0x000a) {
      
#line 77
      [inArg markWithInt:1];
    }
    
#line 80
    if (c > 0) {
      
#line 82
      [inArg reset];
    }
  }
  
#line 86
  return [l description];
}


#line 98
OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_getBoundariesWithNSString_(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil *self, NSString *line) {
  {
    IOSObjectArray *a__ = self->_supportedBoundaries_;
    OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *boundary = *b__++;
      
#line 101
      if ([((OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *) nil_chk(boundary)) isTheExpectedHeaderWithNSString:line] || [boundary isTheExpectedFooterWithNSString:line]) {
        
#line 103
        return boundary;
      }
    }
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/jcajce/provider/asymmetric/x509/PEMUtil.java"


#line 16
@implementation OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries


#line 21
- (instancetype)initWithNSString:(NSString *)type {
  OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(self, type);
  return self;
}

- (jboolean)isTheExpectedHeaderWithNSString:(NSString *)line {
  
#line 28
  return [((NSString *) nil_chk(line)) java_hasPrefix:_header_];
}


#line 31
- (jboolean)isTheExpectedFooterWithNSString:(NSString *)line {
  
#line 33
  return [((NSString *) nil_chk(line)) java_hasPrefix:_footer_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(isTheExpectedHeaderWithNSString:);
  methods[2].selector = @selector(isTheExpectedFooterWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_header_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_footer_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "isTheExpectedHeader", "isTheExpectedFooter", "LOrgBouncycastleJcajceProviderAsymmetricX509PEMUtil;" };
  static const J2ObjcClassInfo _OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries = { "Boundaries", "org.bouncycastle.jcajce.provider.asymmetric.x509", ptrTable, methods, fields, 7, 0xa, 3, 2, 3, -1, -1, -1, -1 };
  return &_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries;
}

@end


#line 21
void OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *self, NSString *type) {
  NSObject_init(self);
  
#line 22
  self->_header_ = JreStrcat("$$$", @"-----BEGIN ", type, @"-----");
  self->_footer_ = JreStrcat("$$$", @"-----END ", type, @"-----");
}


#line 21
OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *new_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(NSString *type) {
  J2OBJC_NEW_IMPL(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries, initWithNSString_, type)
}


#line 21
OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries *create_OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries_initWithNSString_(NSString *type) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries, initWithNSString_, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleJcajceProviderAsymmetricX509PEMUtil_Boundaries)
