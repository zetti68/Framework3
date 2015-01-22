//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/CRLVerifier.java
//

#ifndef _ComItextpdfTextPdfSecurityCRLVerifier_H_
#define _ComItextpdfTextPdfSecurityCRLVerifier_H_

@class ComItextpdfTextPdfSecurityCertificateVerifier;
@class JavaSecurityCertX509CRL;
@class JavaSecurityCertX509Certificate;
@class JavaUtilDate;
@protocol ComItextpdfTextLogLogger;
@protocol JavaUtilList;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/security/RootStoreVerifier.h"

@interface ComItextpdfTextPdfSecurityCRLVerifier : ComItextpdfTextPdfSecurityRootStoreVerifier {
 @public
  id<JavaUtilList> crls_;
}

- (instancetype)initWithComItextpdfTextPdfSecurityCertificateVerifier:(ComItextpdfTextPdfSecurityCertificateVerifier *)verifier
                                                     withJavaUtilList:(id<JavaUtilList>)crls;

- (id<JavaUtilList>)verifyWithJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)signCert
                          withJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)issuerCert
                                             withJavaUtilDate:(JavaUtilDate *)signDate;

- (jboolean)verifyWithJavaSecurityCertX509CRL:(JavaSecurityCertX509CRL *)crl
          withJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)signCert
          withJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)issuerCert
                             withJavaUtilDate:(JavaUtilDate *)signDate;

- (JavaSecurityCertX509CRL *)getCRLWithJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)signCert
                                   withJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)issuerCert;

- (jboolean)isSignatureValidWithJavaSecurityCertX509CRL:(JavaSecurityCertX509CRL *)crl
                    withJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)crlIssuer;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfSecurityCRLVerifier *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfSecurityCRLVerifier_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfSecurityCRLVerifier)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfSecurityCRLVerifier, crls_, id<JavaUtilList>)

FOUNDATION_EXPORT id<ComItextpdfTextLogLogger> ComItextpdfTextPdfSecurityCRLVerifier_LOGGER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfSecurityCRLVerifier, LOGGER_, id<ComItextpdfTextLogLogger>)

#endif // _ComItextpdfTextPdfSecurityCRLVerifier_H_