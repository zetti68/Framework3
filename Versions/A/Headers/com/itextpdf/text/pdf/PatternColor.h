//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PatternColor.java
//

#ifndef _ComItextpdfTextPdfPatternColor_H_
#define _ComItextpdfTextPdfPatternColor_H_

@class ComItextpdfTextPdfPdfPatternPainter;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/ExtendedColor.h"

#define ComItextpdfTextPdfPatternColor_serialVersionUID -1185448552860615964LL

@interface ComItextpdfTextPdfPatternColor : ComItextpdfTextPdfExtendedColor {
 @public
  ComItextpdfTextPdfPdfPatternPainter *painter_;
}

- (instancetype)initWithComItextpdfTextPdfPdfPatternPainter:(ComItextpdfTextPdfPdfPatternPainter *)painter;

- (ComItextpdfTextPdfPdfPatternPainter *)getPainter;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPatternColor *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPatternColor_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPatternColor, painter_, ComItextpdfTextPdfPdfPatternPainter *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPatternColor, serialVersionUID, jlong)

#endif // _ComItextpdfTextPdfPatternColor_H_
