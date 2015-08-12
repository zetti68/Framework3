//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/RootStoreVerifier.java
//

#ifndef _ComItextpdfTextPdfSecurityRootStoreVerifier_H_
#define _ComItextpdfTextPdfSecurityRootStoreVerifier_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/security/CertificateVerifier.h"

@class JavaSecurityCertX509Certificate;
@class JavaSecurityKeyStore;
@class JavaUtilDate;
@protocol ComItextpdfTextLogLogger;
@protocol JavaUtilList;

@interface ComItextpdfTextPdfSecurityRootStoreVerifier : ComItextpdfTextPdfSecurityCertificateVerifier {
 @public
  JavaSecurityKeyStore *rootStore_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfSecurityCertificateVerifier:(ComItextpdfTextPdfSecurityCertificateVerifier *)verifier;

- (void)setRootStoreWithJavaSecurityKeyStore:(JavaSecurityKeyStore *)keyStore;

- (id<JavaUtilList>)verifyWithJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)signCert
                          withJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)issuerCert
                                             withJavaUtilDate:(JavaUtilDate *)signDate;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfSecurityRootStoreVerifier)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfSecurityRootStoreVerifier, rootStore_, JavaSecurityKeyStore *)

FOUNDATION_EXPORT id<ComItextpdfTextLogLogger> ComItextpdfTextPdfSecurityRootStoreVerifier_LOGGER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfSecurityRootStoreVerifier, LOGGER_, id<ComItextpdfTextLogLogger>)

FOUNDATION_EXPORT void ComItextpdfTextPdfSecurityRootStoreVerifier_initWithComItextpdfTextPdfSecurityCertificateVerifier_(ComItextpdfTextPdfSecurityRootStoreVerifier *self, ComItextpdfTextPdfSecurityCertificateVerifier *verifier);

FOUNDATION_EXPORT ComItextpdfTextPdfSecurityRootStoreVerifier *new_ComItextpdfTextPdfSecurityRootStoreVerifier_initWithComItextpdfTextPdfSecurityCertificateVerifier_(ComItextpdfTextPdfSecurityCertificateVerifier *verifier) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfSecurityRootStoreVerifier)

#endif // _ComItextpdfTextPdfSecurityRootStoreVerifier_H_
