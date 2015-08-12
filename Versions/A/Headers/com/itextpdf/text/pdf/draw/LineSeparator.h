//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/draw/LineSeparator.java
//

#ifndef _ComItextpdfTextPdfDrawLineSeparator_H_
#define _ComItextpdfTextPdfDrawLineSeparator_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/draw/VerticalPositionMark.h"

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextFont;
@class ComItextpdfTextPdfPdfContentByte;

@interface ComItextpdfTextPdfDrawLineSeparator : ComItextpdfTextPdfDrawVerticalPositionMark {
 @public
  jfloat lineWidth_;
  jfloat percentage_;
  ComItextpdfTextBaseColor *lineColor_;
  jint alignment_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithFloat:(jfloat)lineWidth
                    withFloat:(jfloat)percentage
 withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)lineColor
                      withInt:(jint)align
                    withFloat:(jfloat)offset;

- (instancetype)initWithComItextpdfTextFont:(ComItextpdfTextFont *)font;

- (void)drawWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)canvas
                                       withFloat:(jfloat)llx
                                       withFloat:(jfloat)lly
                                       withFloat:(jfloat)urx
                                       withFloat:(jfloat)ury
                                       withFloat:(jfloat)y;

- (void)drawLineWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)canvas
                                           withFloat:(jfloat)leftX
                                           withFloat:(jfloat)rightX
                                           withFloat:(jfloat)y;

- (jint)getAlignment;

- (ComItextpdfTextBaseColor *)getLineColor;

- (jfloat)getLineWidth;

- (jfloat)getPercentage;

- (void)setAlignmentWithInt:(jint)align;

- (void)setLineColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (void)setLineWidthWithFloat:(jfloat)lineWidth;

- (void)setPercentageWithFloat:(jfloat)percentage;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfDrawLineSeparator)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfDrawLineSeparator, lineColor_, ComItextpdfTextBaseColor *)

FOUNDATION_EXPORT void ComItextpdfTextPdfDrawLineSeparator_initWithFloat_withFloat_withComItextpdfTextBaseColor_withInt_withFloat_(ComItextpdfTextPdfDrawLineSeparator *self, jfloat lineWidth, jfloat percentage, ComItextpdfTextBaseColor *lineColor, jint align, jfloat offset);

FOUNDATION_EXPORT ComItextpdfTextPdfDrawLineSeparator *new_ComItextpdfTextPdfDrawLineSeparator_initWithFloat_withFloat_withComItextpdfTextBaseColor_withInt_withFloat_(jfloat lineWidth, jfloat percentage, ComItextpdfTextBaseColor *lineColor, jint align, jfloat offset) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfDrawLineSeparator_initWithComItextpdfTextFont_(ComItextpdfTextPdfDrawLineSeparator *self, ComItextpdfTextFont *font);

FOUNDATION_EXPORT ComItextpdfTextPdfDrawLineSeparator *new_ComItextpdfTextPdfDrawLineSeparator_initWithComItextpdfTextFont_(ComItextpdfTextFont *font) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfDrawLineSeparator_init(ComItextpdfTextPdfDrawLineSeparator *self);

FOUNDATION_EXPORT ComItextpdfTextPdfDrawLineSeparator *new_ComItextpdfTextPdfDrawLineSeparator_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfDrawLineSeparator)

#endif // _ComItextpdfTextPdfDrawLineSeparator_H_
