//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/DataLengthException.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/crypto/DataLengthException.h"
#include "org/bouncycastle/crypto/RuntimeCryptoException.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/crypto/DataLengthException must be compiled with ARC (-fobjc-arc)"
#endif

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/crypto/DataLengthException.java"


#line 9
@implementation OrgBouncycastleCryptoDataLengthException

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 15
- (instancetype)init {
  OrgBouncycastleCryptoDataLengthException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 24
- (instancetype)initWithNSString:(NSString *)message {
  OrgBouncycastleCryptoDataLengthException_initWithNSString_(self, message);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _OrgBouncycastleCryptoDataLengthException = { "DataLengthException", "org.bouncycastle.crypto", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleCryptoDataLengthException;
}

@end


#line 15
void OrgBouncycastleCryptoDataLengthException_init(OrgBouncycastleCryptoDataLengthException *self) {
  OrgBouncycastleCryptoRuntimeCryptoException_init(self);
}


#line 15
OrgBouncycastleCryptoDataLengthException *new_OrgBouncycastleCryptoDataLengthException_init() {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDataLengthException, init)
}


#line 15
OrgBouncycastleCryptoDataLengthException *create_OrgBouncycastleCryptoDataLengthException_init() {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDataLengthException, init)
}


#line 24
void OrgBouncycastleCryptoDataLengthException_initWithNSString_(OrgBouncycastleCryptoDataLengthException *self, NSString *message) {
  OrgBouncycastleCryptoRuntimeCryptoException_initWithNSString_(self,
#line 27
  message);
}


#line 24
OrgBouncycastleCryptoDataLengthException *new_OrgBouncycastleCryptoDataLengthException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(OrgBouncycastleCryptoDataLengthException, initWithNSString_, message)
}


#line 24
OrgBouncycastleCryptoDataLengthException *create_OrgBouncycastleCryptoDataLengthException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(OrgBouncycastleCryptoDataLengthException, initWithNSString_, message)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDataLengthException)
