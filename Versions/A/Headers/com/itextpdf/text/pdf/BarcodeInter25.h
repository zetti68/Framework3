//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/BarcodeInter25.java
//

#ifndef _ComItextpdfTextPdfBarcodeInter25_H_
#define _ComItextpdfTextPdfBarcodeInter25_H_

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextPdfPdfContentByte;
@class ComItextpdfTextRectangle;
@class IOSByteArray;
@class IOSObjectArray;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/Barcode.h"

@interface ComItextpdfTextPdfBarcodeInter25 : ComItextpdfTextPdfBarcode {
}

- (instancetype)init;

+ (NSString *)keepNumbersWithNSString:(NSString *)text;

+ (jchar)getChecksumWithNSString:(NSString *)text;

+ (IOSByteArray *)getBarsInter25WithNSString:(NSString *)text;

- (ComItextpdfTextRectangle *)getBarcodeSize;

- (ComItextpdfTextRectangle *)placeBarcodeWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)cb
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)barColor
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)textColor;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfBarcodeInter25_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfBarcodeInter25)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfBarcodeInter25_BARS_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodeInter25, BARS_, IOSObjectArray *)

#endif // _ComItextpdfTextPdfBarcodeInter25_H_
