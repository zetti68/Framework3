//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/OcspClient.java
//

#ifndef _ComItextpdfTextPdfSecurityOcspClient_H_
#define _ComItextpdfTextPdfSecurityOcspClient_H_

@class IOSByteArray;
@class JavaSecurityCertX509Certificate;

#import "JreEmulation.h"

@protocol ComItextpdfTextPdfSecurityOcspClient < NSObject, JavaObject >

- (IOSByteArray *)getEncodedWithJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)checkCert
                            withJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)rootCert
                                                   withNSString:(NSString *)url;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfSecurityOcspClient_init() {}

#endif // _ComItextpdfTextPdfSecurityOcspClient_H_
