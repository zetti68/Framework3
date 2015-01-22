//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ColorDetails.java
//

#ifndef _ComItextpdfTextPdfColorDetails_H_
#define _ComItextpdfTextPdfColorDetails_H_

@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfSpotColor;
@class ComItextpdfTextPdfPdfWriter;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfColorDetails : NSObject {
 @public
  ComItextpdfTextPdfPdfIndirectReference *indirectReference_;
  ComItextpdfTextPdfPdfName *colorName_;
  ComItextpdfTextPdfPdfSpotColor *spotcolor_;
}

- (instancetype)initWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)colorName
       withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)indirectReference
               withComItextpdfTextPdfPdfSpotColor:(ComItextpdfTextPdfPdfSpotColor *)scolor;

- (ComItextpdfTextPdfPdfIndirectReference *)getIndirectReference;

- (ComItextpdfTextPdfPdfName *)getColorName;

- (ComItextpdfTextPdfPdfObject *)getSpotColorWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfColorDetails *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfColorDetails_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfColorDetails, indirectReference_, ComItextpdfTextPdfPdfIndirectReference *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfColorDetails, colorName_, ComItextpdfTextPdfPdfName *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfColorDetails, spotcolor_, ComItextpdfTextPdfPdfSpotColor *)

#endif // _ComItextpdfTextPdfColorDetails_H_