//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/TextMarginFinder.java
//

#ifndef _ComItextpdfTextPdfParserTextMarginFinder_H_
#define _ComItextpdfTextPdfParserTextMarginFinder_H_

@class ComItextpdfAwtGeomRectangle2D_Float;
@class ComItextpdfTextPdfParserImageRenderInfo;
@class ComItextpdfTextPdfParserTextRenderInfo;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/parser/RenderListener.h"

@interface ComItextpdfTextPdfParserTextMarginFinder : NSObject < ComItextpdfTextPdfParserRenderListener > {
 @public
  ComItextpdfAwtGeomRectangle2D_Float *textRectangle_;
}

- (void)renderTextWithComItextpdfTextPdfParserTextRenderInfo:(ComItextpdfTextPdfParserTextRenderInfo *)renderInfo;

- (jfloat)getLlx;

- (jfloat)getLly;

- (jfloat)getUrx;

- (jfloat)getUry;

- (jfloat)getWidth;

- (jfloat)getHeight;

- (void)beginTextBlock;

- (void)endTextBlock;

- (void)renderImageWithComItextpdfTextPdfParserImageRenderInfo:(ComItextpdfTextPdfParserImageRenderInfo *)renderInfo;

- (instancetype)init;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserTextMarginFinder *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfParserTextMarginFinder_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserTextMarginFinder, textRectangle_, ComItextpdfAwtGeomRectangle2D_Float *)

#endif // _ComItextpdfTextPdfParserTextMarginFinder_H_
