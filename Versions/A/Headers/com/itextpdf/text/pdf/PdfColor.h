//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfColor.java
//

#ifndef _ComItextpdfTextPdfPdfColor_H_
#define _ComItextpdfTextPdfPdfColor_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfArray.h"

@class ComItextpdfTextBaseColor;

@interface ComItextpdfTextPdfPdfColor : ComItextpdfTextPdfPdfArray

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (instancetype)initWithInt:(jint)red
                    withInt:(jint)green
                    withInt:(jint)blue;


@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfColor)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfColor_initWithInt_withInt_withInt_(ComItextpdfTextPdfPdfColor *self, jint red, jint green, jint blue);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfColor *new_ComItextpdfTextPdfPdfColor_initWithInt_withInt_withInt_(jint red, jint green, jint blue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfColor_initWithComItextpdfTextBaseColor_(ComItextpdfTextPdfPdfColor *self, ComItextpdfTextBaseColor *color);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfColor *new_ComItextpdfTextPdfPdfColor_initWithComItextpdfTextBaseColor_(ComItextpdfTextBaseColor *color) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfColor)

#endif // _ComItextpdfTextPdfPdfColor_H_
