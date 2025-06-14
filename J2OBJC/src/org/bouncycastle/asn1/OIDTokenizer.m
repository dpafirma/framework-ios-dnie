//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/OIDTokenizer.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/OIDTokenizer.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/asn1/OIDTokenizer must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleAsn1OIDTokenizer () {
 @public
  NSString *oid_;
  jint index_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1OIDTokenizer, oid_, NSString *)

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/OIDTokenizer.java"


#line 9
@implementation OrgBouncycastleAsn1OIDTokenizer


#line 18
- (instancetype)initWithNSString:(NSString *)oid {
  OrgBouncycastleAsn1OIDTokenizer_initWithNSString_(self, oid);
  return self;
}


#line 30
- (jboolean)hasMoreTokens {
  
#line 32
  return index_ != -1;
}


#line 40
- (NSString *)nextToken {
  
#line 42
  if (index_ == -1) {
    
#line 44
    return nil;
  }
  
#line 47
  NSString *token;
  jint end = [((NSString *) nil_chk(oid_)) java_indexOf:'.' fromIndex:index_];
  
#line 50
  if (end == -1) {
    
#line 52
    token = [oid_ java_substring:index_];
    index_ = -1;
    return token;
  }
  
#line 57
  token = [oid_ java_substring:index_ endIndex:end];
  
#line 59
  index_ = end + 1;
  return token;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(hasMoreTokens);
  methods[2].selector = @selector(nextToken);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "oid_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "index_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _OrgBouncycastleAsn1OIDTokenizer = { "OIDTokenizer", "org.bouncycastle.asn1", ptrTable, methods, fields, 7, 0x1, 3, 2, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleAsn1OIDTokenizer;
}

@end


#line 18
void OrgBouncycastleAsn1OIDTokenizer_initWithNSString_(OrgBouncycastleAsn1OIDTokenizer *self, NSString *oid) {
  NSObject_init(self);
  
#line 21
  self->oid_ = oid;
  self->index_ = 0;
}


#line 18
OrgBouncycastleAsn1OIDTokenizer *new_OrgBouncycastleAsn1OIDTokenizer_initWithNSString_(NSString *oid) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1OIDTokenizer, initWithNSString_, oid)
}


#line 18
OrgBouncycastleAsn1OIDTokenizer *create_OrgBouncycastleAsn1OIDTokenizer_initWithNSString_(NSString *oid) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1OIDTokenizer, initWithNSString_, oid)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1OIDTokenizer)
