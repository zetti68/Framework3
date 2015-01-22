//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/BarcodeEANSUPP.java
//

#ifndef _ComItextpdfTextPdfBarcodeEANSUPP_H_
#define _ComItextpdfTextPdfBarcodeEANSUPP_H_

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextPdfPdfContentByte;
@class ComItextpdfTextRectangle;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/Barcode.h"

@interface ComItextpdfTextPdfBarcodeEANSUPP : ComItextpdfTextPdfBarcode {
 @public
  ComItextpdfTextPdfBarcode *ean_;
  ComItextpdfTextPdfBarcode *supp_;
}

- (instancetype)initWithComItextpdfTextPdfBarcode:(ComItextpdfTextPdfBarcode *)ean
                    withComItextpdfTextPdfBarcode:(ComItextpdfTextPdfBarcode *)supp;

- (ComItextpdfTextRectangle *)getBarcodeSize;

- (ComItextpdfTextRectangle *)placeBarcodeWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)cb
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)barColor
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)textColor;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfBarcodeEANSUPP *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfBarcodeEANSUPP_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBarcodeEANSUPP, ean_, ComItextpdfTextPdfBarcode *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBarcodeEANSUPP, supp_, ComItextpdfTextPdfBarcode *)

#endif // _ComItextpdfTextPdfBarcodeEANSUPP_H_
