//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/crypto/sphincsplus/NodeEntry.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoSphincsplusNodeEntry")
#ifdef RESTRICT_OrgBouncycastlePqcCryptoSphincsplusNodeEntry
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoSphincsplusNodeEntry 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcCryptoSphincsplusNodeEntry 1
#endif
#undef RESTRICT_OrgBouncycastlePqcCryptoSphincsplusNodeEntry

#if !defined (OrgBouncycastlePqcCryptoSphincsplusNodeEntry_) && (INCLUDE_ALL_OrgBouncycastlePqcCryptoSphincsplusNodeEntry || defined(INCLUDE_OrgBouncycastlePqcCryptoSphincsplusNodeEntry))
#define OrgBouncycastlePqcCryptoSphincsplusNodeEntry_

@class IOSByteArray;

@interface OrgBouncycastlePqcCryptoSphincsplusNodeEntry : NSObject {
 @public
  IOSByteArray *nodeValue_;
  jint nodeHeight_;
}

#pragma mark Package-Private

- (instancetype)initPackagePrivateWithByteArray:(IOSByteArray *)nodeValue
                                        withInt:(jint)nodeHeight;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastlePqcCryptoSphincsplusNodeEntry)

J2OBJC_FIELD_SETTER(OrgBouncycastlePqcCryptoSphincsplusNodeEntry, nodeValue_, IOSByteArray *)

FOUNDATION_EXPORT void OrgBouncycastlePqcCryptoSphincsplusNodeEntry_initPackagePrivateWithByteArray_withInt_(OrgBouncycastlePqcCryptoSphincsplusNodeEntry *self, IOSByteArray *nodeValue, jint nodeHeight);

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoSphincsplusNodeEntry *new_OrgBouncycastlePqcCryptoSphincsplusNodeEntry_initPackagePrivateWithByteArray_withInt_(IOSByteArray *nodeValue, jint nodeHeight) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcCryptoSphincsplusNodeEntry *create_OrgBouncycastlePqcCryptoSphincsplusNodeEntry_initPackagePrivateWithByteArray_withInt_(IOSByteArray *nodeValue, jint nodeHeight);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcCryptoSphincsplusNodeEntry)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcCryptoSphincsplusNodeEntry")
