//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/BarcodePostnet.java
//

#ifndef _ComItextpdfTextPdfBarcodePostnet_H_
#define _ComItextpdfTextPdfBarcodePostnet_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/Barcode.h"

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextPdfPdfContentByte;
@class ComItextpdfTextRectangle;
@class IOSByteArray;

@interface ComItextpdfTextPdfBarcodePostnet : ComItextpdfTextPdfBarcode

#pragma mark Public

- (instancetype)init;

- (ComItextpdfTextRectangle *)getBarcodeSize;

+ (IOSByteArray *)getBarsPostnetWithNSString:(NSString *)text;

- (ComItextpdfTextRectangle *)placeBarcodeWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)cb
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)barColor
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)textColor;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfBarcodePostnet)

FOUNDATION_EXPORT void ComItextpdfTextPdfBarcodePostnet_init(ComItextpdfTextPdfBarcodePostnet *self);

FOUNDATION_EXPORT ComItextpdfTextPdfBarcodePostnet *new_ComItextpdfTextPdfBarcodePostnet_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfBarcodePostnet_getBarsPostnetWithNSString_(NSString *text);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfBarcodePostnet)

#endif // _ComItextpdfTextPdfBarcodePostnet_H_
