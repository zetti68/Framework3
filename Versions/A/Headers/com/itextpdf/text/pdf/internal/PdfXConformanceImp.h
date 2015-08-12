//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/internal/PdfXConformanceImp.java
//

#ifndef _ComItextpdfTextPdfInternalPdfXConformanceImp_H_
#define _ComItextpdfTextPdfInternalPdfXConformanceImp_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/interfaces/PdfXConformance.h"

@class ComItextpdfTextPdfPdfWriter;

@interface ComItextpdfTextPdfInternalPdfXConformanceImp : NSObject < ComItextpdfTextPdfInterfacesPdfXConformance > {
 @public
  jint pdfxConformance_;
  ComItextpdfTextPdfPdfWriter *writer_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)checkPdfIsoConformanceWithInt:(jint)key
                               withId:(id)obj1;

- (jint)getPDFXConformance;

- (jboolean)isPdfIso;

- (jboolean)isPdfX;

- (jboolean)isPdfX1A2001;

- (jboolean)isPdfX32002;

- (void)setPDFXConformanceWithInt:(jint)pdfxConformance;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfInternalPdfXConformanceImp)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfInternalPdfXConformanceImp, writer_, ComItextpdfTextPdfPdfWriter *)

FOUNDATION_EXPORT void ComItextpdfTextPdfInternalPdfXConformanceImp_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfInternalPdfXConformanceImp *self, ComItextpdfTextPdfPdfWriter *writer);

FOUNDATION_EXPORT ComItextpdfTextPdfInternalPdfXConformanceImp *new_ComItextpdfTextPdfInternalPdfXConformanceImp_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfWriter *writer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfInternalPdfXConformanceImp)

#endif // _ComItextpdfTextPdfInternalPdfXConformanceImp_H_
