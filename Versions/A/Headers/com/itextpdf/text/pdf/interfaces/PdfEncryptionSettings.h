//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/interfaces/PdfEncryptionSettings.java
//

#ifndef _ComItextpdfTextPdfInterfacesPdfEncryptionSettings_H_
#define _ComItextpdfTextPdfInterfacesPdfEncryptionSettings_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;

@protocol ComItextpdfTextPdfInterfacesPdfEncryptionSettings < NSObject, JavaObject >

- (void)setEncryptionWithByteArray:(IOSByteArray *)userPassword
                     withByteArray:(IOSByteArray *)ownerPassword
                           withInt:(jint)permissions
                           withInt:(jint)encryptionType;

- (void)setEncryptionWithJavaSecurityCertCertificateArray:(IOSObjectArray *)certs
                                             withIntArray:(IOSIntArray *)permissions
                                                  withInt:(jint)encryptionType;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfInterfacesPdfEncryptionSettings)

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfInterfacesPdfEncryptionSettings)

#endif // _ComItextpdfTextPdfInterfacesPdfEncryptionSettings_H_
