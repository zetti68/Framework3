//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/DigestAlgorithms.java
//

#ifndef _ComItextpdfTextPdfSecurityDigestAlgorithms_H_
#define _ComItextpdfTextPdfSecurityDigestAlgorithms_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaSecurityMessageDigest;

@interface ComItextpdfTextPdfSecurityDigestAlgorithms : NSObject

#pragma mark Public

- (instancetype)init;

+ (IOSByteArray *)digestWithJavaIoInputStream:(JavaIoInputStream *)data
                withJavaSecurityMessageDigest:(JavaSecurityMessageDigest *)messageDigest;

+ (IOSByteArray *)digestWithJavaIoInputStream:(JavaIoInputStream *)data
                                 withNSString:(NSString *)hashAlgorithm
                                 withNSString:(NSString *)provider;

+ (NSString *)getAllowedDigestsWithNSString:(NSString *)name;

+ (NSString *)getDigestWithNSString:(NSString *)oid;

+ (JavaSecurityMessageDigest *)getMessageDigestWithNSString:(NSString *)hashAlgorithm
                                               withNSString:(NSString *)provider;

+ (JavaSecurityMessageDigest *)getMessageDigestFromOidWithNSString:(NSString *)digestOid
                                                      withNSString:(NSString *)provider;

+ (NSString *)normalizeDigestNameWithNSString:(NSString *)algo;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfSecurityDigestAlgorithms)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfSecurityDigestAlgorithms_SHA1_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfSecurityDigestAlgorithms, SHA1_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfSecurityDigestAlgorithms_SHA256_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfSecurityDigestAlgorithms, SHA256_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfSecurityDigestAlgorithms_SHA384_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfSecurityDigestAlgorithms, SHA384_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfSecurityDigestAlgorithms_SHA512_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfSecurityDigestAlgorithms, SHA512_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfSecurityDigestAlgorithms_RIPEMD160_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfSecurityDigestAlgorithms, RIPEMD160_, NSString *)

FOUNDATION_EXPORT JavaSecurityMessageDigest *ComItextpdfTextPdfSecurityDigestAlgorithms_getMessageDigestFromOidWithNSString_withNSString_(NSString *digestOid, NSString *provider);

FOUNDATION_EXPORT JavaSecurityMessageDigest *ComItextpdfTextPdfSecurityDigestAlgorithms_getMessageDigestWithNSString_withNSString_(NSString *hashAlgorithm, NSString *provider);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfSecurityDigestAlgorithms_digestWithJavaIoInputStream_withNSString_withNSString_(JavaIoInputStream *data, NSString *hashAlgorithm, NSString *provider);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfSecurityDigestAlgorithms_digestWithJavaIoInputStream_withJavaSecurityMessageDigest_(JavaIoInputStream *data, JavaSecurityMessageDigest *messageDigest);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfSecurityDigestAlgorithms_getDigestWithNSString_(NSString *oid);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfSecurityDigestAlgorithms_normalizeDigestNameWithNSString_(NSString *algo);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfSecurityDigestAlgorithms_getAllowedDigestsWithNSString_(NSString *name);

FOUNDATION_EXPORT void ComItextpdfTextPdfSecurityDigestAlgorithms_init(ComItextpdfTextPdfSecurityDigestAlgorithms *self);

FOUNDATION_EXPORT ComItextpdfTextPdfSecurityDigestAlgorithms *new_ComItextpdfTextPdfSecurityDigestAlgorithms_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfSecurityDigestAlgorithms)

#endif // _ComItextpdfTextPdfSecurityDigestAlgorithms_H_
