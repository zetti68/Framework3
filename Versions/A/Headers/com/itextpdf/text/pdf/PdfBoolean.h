//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfBoolean.java
//

#ifndef _ComItextpdfTextPdfPdfBoolean_H_
#define _ComItextpdfTextPdfPdfBoolean_H_

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfObject.h"

@interface ComItextpdfTextPdfPdfBoolean : ComItextpdfTextPdfPdfObject {
 @public
  jboolean value_;
}

- (instancetype)initWithBoolean:(jboolean)value;

- (instancetype)initWithNSString:(NSString *)value;

- (jboolean)booleanValue;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfBoolean *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfPdfBoolean_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfPdfBoolean)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfBoolean *ComItextpdfTextPdfPdfBoolean_PDFTRUE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfBoolean, PDFTRUE_, ComItextpdfTextPdfPdfBoolean *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfBoolean *ComItextpdfTextPdfPdfBoolean_PDFFALSE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfBoolean, PDFFALSE_, ComItextpdfTextPdfPdfBoolean *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfPdfBoolean_TRUE__;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfBoolean, TRUE__, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfPdfBoolean_FALSE__;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfBoolean, FALSE__, NSString *)

#endif // _ComItextpdfTextPdfPdfBoolean_H_