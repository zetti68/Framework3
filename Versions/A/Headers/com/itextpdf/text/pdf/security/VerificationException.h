//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/VerificationException.java
//

#ifndef _ComItextpdfTextPdfSecurityVerificationException_H_
#define _ComItextpdfTextPdfSecurityVerificationException_H_

@class JavaSecurityCertCertificate;

#import "JreEmulation.h"
#include "java/security/GeneralSecurityException.h"

#define ComItextpdfTextPdfSecurityVerificationException_serialVersionUID 2978604513926438256LL

@interface ComItextpdfTextPdfSecurityVerificationException : JavaSecurityGeneralSecurityException {
}

- (instancetype)initWithJavaSecurityCertCertificate:(JavaSecurityCertCertificate *)cert
                                       withNSString:(NSString *)message;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfSecurityVerificationException_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfSecurityVerificationException, serialVersionUID, jlong)

#endif // _ComItextpdfTextPdfSecurityVerificationException_H_