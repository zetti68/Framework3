//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ShadingColor.java
//

#ifndef _ComItextpdfTextPdfShadingColor_H_
#define _ComItextpdfTextPdfShadingColor_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/ExtendedColor.h"

@class ComItextpdfTextPdfPdfShadingPattern;

@interface ComItextpdfTextPdfShadingColor : ComItextpdfTextPdfExtendedColor {
 @public
  ComItextpdfTextPdfPdfShadingPattern *shadingPattern_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfShadingPattern:(ComItextpdfTextPdfPdfShadingPattern *)shadingPattern;

- (jboolean)isEqual:(id)obj;

- (ComItextpdfTextPdfPdfShadingPattern *)getPdfShadingPattern;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfShadingColor)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfShadingColor, shadingPattern_, ComItextpdfTextPdfPdfShadingPattern *)

FOUNDATION_EXPORT void ComItextpdfTextPdfShadingColor_initWithComItextpdfTextPdfPdfShadingPattern_(ComItextpdfTextPdfShadingColor *self, ComItextpdfTextPdfPdfShadingPattern *shadingPattern);

FOUNDATION_EXPORT ComItextpdfTextPdfShadingColor *new_ComItextpdfTextPdfShadingColor_initWithComItextpdfTextPdfPdfShadingPattern_(ComItextpdfTextPdfPdfShadingPattern *shadingPattern) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfShadingColor)

#endif // _ComItextpdfTextPdfShadingColor_H_
