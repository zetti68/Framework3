//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/GraphicsState.java
//

#ifndef _ComItextpdfTextPdfParserGraphicsState_H_
#define _ComItextpdfTextPdfParserGraphicsState_H_

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextPdfCMapAwareDocumentFont;
@class ComItextpdfTextPdfParserMatrix;
@class ComItextpdfTextPdfPdfName;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfParserGraphicsState : NSObject {
 @public
  ComItextpdfTextPdfParserMatrix *ctm_;
  jfloat characterSpacing_;
  jfloat wordSpacing_;
  jfloat horizontalScaling_;
  jfloat leading_;
  ComItextpdfTextPdfCMapAwareDocumentFont *font_;
  jfloat fontSize_;
  jint renderMode_;
  jfloat rise_;
  jboolean knockout_;
  ComItextpdfTextPdfPdfName *colorSpaceFill_;
  ComItextpdfTextPdfPdfName *colorSpaceStroke_;
  ComItextpdfTextBaseColor *fillColor_;
  ComItextpdfTextBaseColor *strokeColor_;
}

- (instancetype)init;

- (instancetype)initWithComItextpdfTextPdfParserGraphicsState:(ComItextpdfTextPdfParserGraphicsState *)source;

- (ComItextpdfTextPdfParserMatrix *)getCtm;

- (jfloat)getCharacterSpacing;

- (jfloat)getWordSpacing;

- (jfloat)getHorizontalScaling;

- (jfloat)getLeading;

- (ComItextpdfTextPdfCMapAwareDocumentFont *)getFont;

- (jfloat)getFontSize;

- (jint)getRenderMode;

- (jfloat)getRise;

- (jboolean)isKnockout;

- (ComItextpdfTextPdfPdfName *)getColorSpaceFill;

- (ComItextpdfTextPdfPdfName *)getColorSpaceStroke;

- (ComItextpdfTextBaseColor *)getFillColor;

- (ComItextpdfTextBaseColor *)getStrokeColor;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserGraphicsState *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfParserGraphicsState_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserGraphicsState, ctm_, ComItextpdfTextPdfParserMatrix *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserGraphicsState, font_, ComItextpdfTextPdfCMapAwareDocumentFont *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserGraphicsState, colorSpaceFill_, ComItextpdfTextPdfPdfName *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserGraphicsState, colorSpaceStroke_, ComItextpdfTextPdfPdfName *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserGraphicsState, fillColor_, ComItextpdfTextBaseColor *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserGraphicsState, strokeColor_, ComItextpdfTextBaseColor *)

#endif // _ComItextpdfTextPdfParserGraphicsState_H_