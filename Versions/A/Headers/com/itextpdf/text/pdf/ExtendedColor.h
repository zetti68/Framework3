//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ExtendedColor.java
//

#ifndef _ComItextpdfTextPdfExtendedColor_H_
#define _ComItextpdfTextPdfExtendedColor_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/BaseColor.h"

#define ComItextpdfTextPdfExtendedColor_TYPE_RGB 0
#define ComItextpdfTextPdfExtendedColor_TYPE_GRAY 1
#define ComItextpdfTextPdfExtendedColor_TYPE_CMYK 2
#define ComItextpdfTextPdfExtendedColor_TYPE_SEPARATION 3
#define ComItextpdfTextPdfExtendedColor_TYPE_PATTERN 4
#define ComItextpdfTextPdfExtendedColor_TYPE_SHADING 5

@interface ComItextpdfTextPdfExtendedColor : ComItextpdfTextBaseColor {
 @public
  jint type_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)type;

- (instancetype)initWithInt:(jint)type
                  withFloat:(jfloat)red
                  withFloat:(jfloat)green
                  withFloat:(jfloat)blue;

- (instancetype)initWithInt:(jint)type
                    withInt:(jint)red
                    withInt:(jint)green
                    withInt:(jint)blue
                    withInt:(jint)alpha;

- (jint)getType;

+ (jint)getTypeWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

#pragma mark Package-Private

+ (jfloat)normalizeWithFloat:(jfloat)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfExtendedColor)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfExtendedColor, TYPE_RGB, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfExtendedColor, TYPE_GRAY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfExtendedColor, TYPE_CMYK, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfExtendedColor, TYPE_SEPARATION, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfExtendedColor, TYPE_PATTERN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfExtendedColor, TYPE_SHADING, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfExtendedColor_initWithInt_(ComItextpdfTextPdfExtendedColor *self, jint type);

FOUNDATION_EXPORT void ComItextpdfTextPdfExtendedColor_initWithInt_withFloat_withFloat_withFloat_(ComItextpdfTextPdfExtendedColor *self, jint type, jfloat red, jfloat green, jfloat blue);

FOUNDATION_EXPORT void ComItextpdfTextPdfExtendedColor_initWithInt_withInt_withInt_withInt_withInt_(ComItextpdfTextPdfExtendedColor *self, jint type, jint red, jint green, jint blue, jint alpha);

FOUNDATION_EXPORT jint ComItextpdfTextPdfExtendedColor_getTypeWithComItextpdfTextBaseColor_(ComItextpdfTextBaseColor *color);

FOUNDATION_EXPORT jfloat ComItextpdfTextPdfExtendedColor_normalizeWithFloat_(jfloat value);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfExtendedColor)

#endif // _ComItextpdfTextPdfExtendedColor_H_
