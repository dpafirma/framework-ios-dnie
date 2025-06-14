//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/desarrolloabamobile/Downloads/jmulticard-ios/src/main/java/org/bouncycastle/pqc/jcajce/spec/RainbowParameterSpec.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec")
#ifdef RESTRICT_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec
#define INCLUDE_ALL_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec 0
#else
#define INCLUDE_ALL_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec 1
#endif
#undef RESTRICT_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec

#if !defined (OrgBouncycastlePqcJcajceSpecRainbowParameterSpec_) && (INCLUDE_ALL_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec || defined(INCLUDE_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec))
#define OrgBouncycastlePqcJcajceSpecRainbowParameterSpec_

#define RESTRICT_JavaSecuritySpecAlgorithmParameterSpec 1
#define INCLUDE_JavaSecuritySpecAlgorithmParameterSpec 1
#include "java/security/spec/AlgorithmParameterSpec.h"

@class IOSIntArray;

/*!
 @brief This class provides methods for setting and getting the Rainbow-parameters
  like number of Vinegar-variables in the layers, number of layers and so on.
 <p>
  More detailed information about the needed parameters for the Rainbow
  Signature Scheme is to be found in the paper of Jintai Ding, Dieter Schmidt:
  Rainbow, a New Multivariable Polynomial Signature Scheme. ACNS 2005: 164-175
  (https://dx.doi.org/10.1007/11496137_12) 
 </p>
 */
@interface OrgBouncycastlePqcJcajceSpecRainbowParameterSpec : NSObject < JavaSecuritySpecAlgorithmParameterSpec >

#pragma mark Public

/*!
 @brief Default Constructor The elements of the array containing the number of
  Vinegar variables in each layer are set to the default values here.
 */
- (instancetype)init;

/*!
 @brief Constructor with parameters
 @param vi The elements of the array containing the number of Vinegar            variables per layer are set to the values of the input array.
 @throw IllegalArgumentExceptionif the variables are invalid.
 */
- (instancetype)initWithIntArray:(IOSIntArray *)vi;

/*!
 @brief Getter for the number of all the polynomials in Rainbow
 @return the number of the polynomials
 */
- (jint)getDocumentLength;

/*!
 @brief Getter for the number of layers
 @return the number of layers
 */
- (jint)getNumOfLayers;

/*!
 @brief Getter for the array containing the number of Vinegar-variables per layer
 @return the numbers of vinegars per layer
 */
- (IOSIntArray *)getVi;

@end

J2OBJC_STATIC_INIT(OrgBouncycastlePqcJcajceSpecRainbowParameterSpec)

FOUNDATION_EXPORT void OrgBouncycastlePqcJcajceSpecRainbowParameterSpec_init(OrgBouncycastlePqcJcajceSpecRainbowParameterSpec *self);

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceSpecRainbowParameterSpec *new_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceSpecRainbowParameterSpec *create_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec_init(void);

FOUNDATION_EXPORT void OrgBouncycastlePqcJcajceSpecRainbowParameterSpec_initWithIntArray_(OrgBouncycastlePqcJcajceSpecRainbowParameterSpec *self, IOSIntArray *vi);

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceSpecRainbowParameterSpec *new_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec_initWithIntArray_(IOSIntArray *vi) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgBouncycastlePqcJcajceSpecRainbowParameterSpec *create_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec_initWithIntArray_(IOSIntArray *vi);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastlePqcJcajceSpecRainbowParameterSpec)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgBouncycastlePqcJcajceSpecRainbowParameterSpec")
