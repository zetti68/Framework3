//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/CertificateVerifier.java
//

#ifndef _ComItextpdfTextPdfSecurityCertificateVerifier_H_
#define _ComItextpdfTextPdfSecurityCertificateVerifier_H_

#include "J2ObjC_header.h"

@class JavaSecurityCertX509Certificate;
@class JavaUtilDate;
@protocol JavaUtilList;

@interface ComItextpdfTextPdfSecurityCertificateVerifier : NSObject {
 @public
  ComItextpdfTextPdfSecurityCertificateVerifier *verifier_;
  jboolean onlineCheckingAllowed_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfSecurityCertificateVerifier:(ComItextpdfTextPdfSecurityCertificateVerifier *)verifier;

- (void)setOnlineCheckingAllowedWithBoolean:(jboolean)onlineCheckingAllowed;

- (id<JavaUtilList>)verifyWithJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)signCert
                          withJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)issuerCert
                                             withJavaUtilDate:(JavaUtilDate *)signDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfSecurityCertificateVerifier)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfSecurityCertificateVerifier, verifier_, ComItextpdfTextPdfSecurityCertificateVerifier *)

FOUNDATION_EXPORT void ComItextpdfTextPdfSecurityCertificateVerifier_initWithComItextpdfTextPdfSecurityCertificateVerifier_(ComItextpdfTextPdfSecurityCertificateVerifier *self, ComItextpdfTextPdfSecurityCertificateVerifier *verifier);

FOUNDATION_EXPORT ComItextpdfTextPdfSecurityCertificateVerifier *new_ComItextpdfTextPdfSecurityCertificateVerifier_initWithComItextpdfTextPdfSecurityCertificateVerifier_(ComItextpdfTextPdfSecurityCertificateVerifier *verifier) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfSecurityCertificateVerifier)

#endif // _ComItextpdfTextPdfSecurityCertificateVerifier_H_
