//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/operator/AlgorithmNameFinder.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/operator/AlgorithmNameFinder.h"

#if !__has_feature(objc_arc)
#error "org/bouncycastle/operator/AlgorithmNameFinder must be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgBouncycastleOperatorAlgorithmNameFinder : NSObject

@end

#line 1 "/Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/operator/AlgorithmNameFinder.java"


#line 9
@implementation OrgBouncycastleOperatorAlgorithmNameFinder

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(hasAlgorithmNameWithOrgBouncycastleAsn1ASN1ObjectIdentifier:);
  methods[1].selector = @selector(getAlgorithmNameWithOrgBouncycastleAsn1ASN1ObjectIdentifier:);
  methods[2].selector = @selector(getAlgorithmNameWithOrgBouncycastleAsn1X509AlgorithmIdentifier:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "hasAlgorithmName", "LOrgBouncycastleAsn1ASN1ObjectIdentifier;", "getAlgorithmName", "LOrgBouncycastleAsn1X509AlgorithmIdentifier;" };
  static const J2ObjcClassInfo _OrgBouncycastleOperatorAlgorithmNameFinder = { "AlgorithmNameFinder", "org.bouncycastle.operator", ptrTable, methods, NULL, 7, 0x609, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgBouncycastleOperatorAlgorithmNameFinder;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgBouncycastleOperatorAlgorithmNameFinder)
