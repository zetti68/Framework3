//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/RegionTextRenderFilter.java
//

#ifndef _ComItextpdfTextPdfParserRegionTextRenderFilter_H_
#define _ComItextpdfTextPdfParserRegionTextRenderFilter_H_

@class ComItextpdfAwtGeomRectangle2D;
@class ComItextpdfTextPdfParserTextRenderInfo;
@class ComItextpdfTextRectangle;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/parser/RenderFilter.h"

@interface ComItextpdfTextPdfParserRegionTextRenderFilter : ComItextpdfTextPdfParserRenderFilter {
 @public
  ComItextpdfAwtGeomRectangle2D *filterRect_;
}

- (instancetype)initWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)filterRect;

- (instancetype)initWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)filterRect;

- (jboolean)allowTextWithComItextpdfTextPdfParserTextRenderInfo:(ComItextpdfTextPdfParserTextRenderInfo *)renderInfo;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserRegionTextRenderFilter *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfParserRegionTextRenderFilter_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserRegionTextRenderFilter, filterRect_, ComItextpdfAwtGeomRectangle2D *)

#endif // _ComItextpdfTextPdfParserRegionTextRenderFilter_H_
