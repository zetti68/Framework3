//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/RectangleReadOnly.java
//

#ifndef _ComItextpdfTextRectangleReadOnly_H_
#define _ComItextpdfTextRectangleReadOnly_H_

@class ComItextpdfTextBaseColor;

#import "JreEmulation.h"
#include "com/itextpdf/text/Rectangle.h"

@interface ComItextpdfTextRectangleReadOnly : ComItextpdfTextRectangle {
}

- (instancetype)initWithFloat:(jfloat)llx
                    withFloat:(jfloat)lly
                    withFloat:(jfloat)urx
                    withFloat:(jfloat)ury;

- (instancetype)initWithFloat:(jfloat)llx
                    withFloat:(jfloat)lly
                    withFloat:(jfloat)urx
                    withFloat:(jfloat)ury
                      withInt:(jint)rotation;

- (instancetype)initWithFloat:(jfloat)urx
                    withFloat:(jfloat)ury;

- (instancetype)initWithFloat:(jfloat)urx
                    withFloat:(jfloat)ury
                      withInt:(jint)rotation;

- (instancetype)initWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect;

- (void)throwReadOnlyError;

- (void)setRotationWithInt:(jint)rotation;

- (void)setLeftWithFloat:(jfloat)llx;

- (void)setRightWithFloat:(jfloat)urx;

- (void)setTopWithFloat:(jfloat)ury;

- (void)setBottomWithFloat:(jfloat)lly;

- (void)normalize;

- (void)setBackgroundColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)value;

- (void)setGrayFillWithFloat:(jfloat)value;

- (void)setBorderWithInt:(jint)border;

- (void)setUseVariableBordersWithBoolean:(jboolean)useVariableBorders;

- (void)enableBorderSideWithInt:(jint)side;

- (void)disableBorderSideWithInt:(jint)side;

- (void)setBorderWidthWithFloat:(jfloat)borderWidth;

- (void)setBorderWidthLeftWithFloat:(jfloat)borderWidthLeft;

- (void)setBorderWidthRightWithFloat:(jfloat)borderWidthRight;

- (void)setBorderWidthTopWithFloat:(jfloat)borderWidthTop;

- (void)setBorderWidthBottomWithFloat:(jfloat)borderWidthBottom;

- (void)setBorderColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColor;

- (void)setBorderColorLeftWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColorLeft;

- (void)setBorderColorRightWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColorRight;

- (void)setBorderColorTopWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColorTop;

- (void)setBorderColorBottomWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColorBottom;

- (void)cloneNonPositionParametersWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect;

- (void)softCloneNonPositionParametersWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect;

- (NSString *)description;

@end

__attribute__((always_inline)) inline void ComItextpdfTextRectangleReadOnly_init() {}

#endif // _ComItextpdfTextRectangleReadOnly_H_