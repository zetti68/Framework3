//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/CrlClientOffline.java
//

#ifndef _ComItextpdfTextPdfSecurityCrlClientOffline_H_
#define _ComItextpdfTextPdfSecurityCrlClientOffline_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/security/CrlClient.h"

@class IOSByteArray;
@class JavaSecurityCertCRL;
@class JavaSecurityCertX509Certificate;
@protocol JavaUtilCollection;

@interface ComItextpdfTextPdfSecurityCrlClientOffline : NSObject < ComItextpdfTextPdfSecurityCrlClient >

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)crlEncoded;

- (instancetype)initWithJavaSecurityCertCRL:(JavaSecurityCertCRL *)crl;

- (id<JavaUtilCollection>)getEncodedWithJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)checkCert
                                                           withNSString:(NSString *)url;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfSecurityCrlClientOffline)

FOUNDATION_EXPORT void ComItextpdfTextPdfSecurityCrlClientOffline_initWithByteArray_(ComItextpdfTextPdfSecurityCrlClientOffline *self, IOSByteArray *crlEncoded);

FOUNDATION_EXPORT ComItextpdfTextPdfSecurityCrlClientOffline *new_ComItextpdfTextPdfSecurityCrlClientOffline_initWithByteArray_(IOSByteArray *crlEncoded) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfSecurityCrlClientOffline_initWithJavaSecurityCertCRL_(ComItextpdfTextPdfSecurityCrlClientOffline *self, JavaSecurityCertCRL *crl);

FOUNDATION_EXPORT ComItextpdfTextPdfSecurityCrlClientOffline *new_ComItextpdfTextPdfSecurityCrlClientOffline_initWithJavaSecurityCertCRL_(JavaSecurityCertCRL *crl) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfSecurityCrlClientOffline)

#endif // _ComItextpdfTextPdfSecurityCrlClientOffline_H_
