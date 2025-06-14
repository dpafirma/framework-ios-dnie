//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/x509/X509NameTokenizer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/annotation/Annotation.h"
#include "org/bouncycastle/asn1/x509/X509NameTokenizer.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/asn1/x509/X509NameTokenizer must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleAsn1X509X509NameTokenizer () {
 @public
  NSString *value_;
  jint index_;
  jchar separator_;
  JavaLangStringBuffer *buf_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509X509NameTokenizer, value_, NSString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1X509X509NameTokenizer, buf_, JavaLangStringBuffer *)

__attribute__((unused)) static IOSObjectArray *OrgBouncycastleAsn1X509X509NameTokenizer__Annotations$0(void);

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/asn1/x509/X509NameTokenizer.java"


#line 11
@implementation OrgBouncycastleAsn1X509X509NameTokenizer


#line 18
- (instancetype)initWithNSString:(NSString *)oid {
  OrgBouncycastleAsn1X509X509NameTokenizer_initWithNSString_(self, oid);
  return self;
}


#line 24
- (instancetype)initWithNSString:(NSString *)oid
                        withChar:(jchar)separator {
  OrgBouncycastleAsn1X509X509NameTokenizer_initWithNSString_withChar_(self, oid, separator);
  return self;
}


#line 33
- (jboolean)hasMoreTokens {
  
#line 35
  return (index_ != [((NSString *) nil_chk(value_)) java_length]);
}


#line 38
- (NSString *)nextToken {
  
#line 40
  if (index_ == [((NSString *) nil_chk(value_)) java_length]) {
    
#line 42
    return nil;
  }
  
#line 45
  jint end = index_ + 1;
  jboolean quoted = false;
  jboolean escaped = false;
  
#line 49
  [((JavaLangStringBuffer *) nil_chk(buf_)) setLengthWithInt:0];
  
#line 51
  while (end != [((NSString *) nil_chk(value_)) java_length]) {
    
#line 53
    jchar c = [((NSString *) nil_chk(value_)) charAtWithInt:end];
    
#line 55
    if (c == '"') {
      
#line 57
      if (!escaped) {
        
#line 59
        quoted = !quoted;
      }
      (void) [((JavaLangStringBuffer *) nil_chk(buf_)) appendWithChar:c];
      escaped = false;
    }
    else {
      
#line 66
      if (escaped || quoted) {
        
#line 68
        (void) [((JavaLangStringBuffer *) nil_chk(buf_)) appendWithChar:c];
        escaped = false;
      }
      else if (c == '\\') {
        
#line 73
        (void) [((JavaLangStringBuffer *) nil_chk(buf_)) appendWithChar:c];
        escaped = true;
      }
      else if (c == separator_) {
        
#line 78
        break;
      }
      else {
        
#line 82
        (void) [((JavaLangStringBuffer *) nil_chk(buf_)) appendWithChar:c];
      }
    }
    end++;
  }
  
#line 88
  index_ = end;
  
#line 90
  return [((JavaLangStringBuffer *) nil_chk(buf_)) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withChar:);
  methods[2].selector = @selector(hasMoreTokens);
  methods[3].selector = @selector(nextToken);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "index_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "separator_", "C", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "buf_", "LJavaLangStringBuffer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;C", (void *)&OrgBouncycastleAsn1X509X509NameTokenizer__Annotations$0 };
  static const J2ObjcClassInfo _OrgBouncycastleAsn1X509X509NameTokenizer = { "X509NameTokenizer", "org.bouncycastle.asn1.x509", ptrTable, methods, fields, 7, 0x1, 4, 4, -1, -1, -1, -1, 2 };
  return &_OrgBouncycastleAsn1X509X509NameTokenizer;
}

@end


#line 18
void OrgBouncycastleAsn1X509X509NameTokenizer_initWithNSString_(OrgBouncycastleAsn1X509X509NameTokenizer *self, NSString *oid) {
  OrgBouncycastleAsn1X509X509NameTokenizer_initWithNSString_withChar_(self,
#line 21
  oid, ',');
}


#line 18
OrgBouncycastleAsn1X509X509NameTokenizer *new_OrgBouncycastleAsn1X509X509NameTokenizer_initWithNSString_(NSString *oid) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1X509X509NameTokenizer, initWithNSString_, oid)
}


#line 18
OrgBouncycastleAsn1X509X509NameTokenizer *create_OrgBouncycastleAsn1X509X509NameTokenizer_initWithNSString_(NSString *oid) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1X509X509NameTokenizer, initWithNSString_, oid)
}


#line 24
void OrgBouncycastleAsn1X509X509NameTokenizer_initWithNSString_withChar_(OrgBouncycastleAsn1X509X509NameTokenizer *self, NSString *oid, jchar separator) {
  NSObject_init(self);
  self->buf_ = new_JavaLangStringBuffer_init();
  
#line 28
  self->value_ = oid;
  self->index_ = -1;
  self->separator_ = separator;
}


#line 24
OrgBouncycastleAsn1X509X509NameTokenizer *new_OrgBouncycastleAsn1X509X509NameTokenizer_initWithNSString_withChar_(NSString *oid, jchar separator) {
  J2OBJC_NEW_IMPL(OrgBouncycastleAsn1X509X509NameTokenizer, initWithNSString_withChar_, oid, separator)
}


#line 24
OrgBouncycastleAsn1X509X509NameTokenizer *create_OrgBouncycastleAsn1X509X509NameTokenizer_initWithNSString_withChar_(NSString *oid, jchar separator) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleAsn1X509X509NameTokenizer, initWithNSString_withChar_, oid, separator)
}

IOSObjectArray *OrgBouncycastleAsn1X509X509NameTokenizer__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1X509X509NameTokenizer)
