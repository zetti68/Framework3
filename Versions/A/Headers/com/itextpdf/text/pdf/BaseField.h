//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/BaseField.java
//

#ifndef _ComItextpdfTextPdfBaseField_H_
#define _ComItextpdfTextPdfBaseField_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextPdfBaseFont;
@class ComItextpdfTextPdfPdfAppearance;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfWriter;
@class ComItextpdfTextRectangle;
@class JavaLangStringBuffer;
@class JavaUtilArrayList;

#define ComItextpdfTextPdfBaseField_BORDER_WIDTH_THIN 1.0f
#define ComItextpdfTextPdfBaseField_BORDER_WIDTH_MEDIUM 2.0f
#define ComItextpdfTextPdfBaseField_BORDER_WIDTH_THICK 3.0f
#define ComItextpdfTextPdfBaseField_VISIBLE 0
#define ComItextpdfTextPdfBaseField_HIDDEN 1
#define ComItextpdfTextPdfBaseField_VISIBLE_BUT_DOES_NOT_PRINT 2
#define ComItextpdfTextPdfBaseField_HIDDEN_BUT_PRINTABLE 3
#define ComItextpdfTextPdfBaseField_READ_ONLY 1
#define ComItextpdfTextPdfBaseField_REQUIRED 2
#define ComItextpdfTextPdfBaseField_MULTILINE 4096
#define ComItextpdfTextPdfBaseField_DO_NOT_SCROLL 8388608
#define ComItextpdfTextPdfBaseField_PASSWORD 8192
#define ComItextpdfTextPdfBaseField_FILE_SELECTION 1048576
#define ComItextpdfTextPdfBaseField_DO_NOT_SPELL_CHECK 4194304
#define ComItextpdfTextPdfBaseField_EDIT 262144
#define ComItextpdfTextPdfBaseField_MULTISELECT 2097152
#define ComItextpdfTextPdfBaseField_COMB 16777216

@interface ComItextpdfTextPdfBaseField : NSObject {
 @public
  jfloat borderWidth_;
  jint borderStyle_;
  ComItextpdfTextBaseColor *borderColor_;
  ComItextpdfTextBaseColor *backgroundColor_;
  ComItextpdfTextBaseColor *textColor_;
  ComItextpdfTextPdfBaseFont *font_;
  jfloat fontSize_;
  jint alignment_;
  ComItextpdfTextPdfPdfWriter *writer_;
  NSString *text_;
  ComItextpdfTextRectangle *box_;
  jint rotation_;
  jint visibility_;
  NSString *fieldName_;
  jint options_;
  jint maxCharacterLength_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                       withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)box
                                       withNSString:(NSString *)fieldName;

- (jint)getAlignment;

- (ComItextpdfTextBaseColor *)getBackgroundColor;

- (ComItextpdfTextBaseColor *)getBorderColor;

- (jint)getBorderStyle;

- (jfloat)getBorderWidth;

- (ComItextpdfTextRectangle *)getBox;

- (NSString *)getFieldName;

- (ComItextpdfTextPdfBaseFont *)getFont;

- (jfloat)getFontSize;

- (jint)getMaxCharacterLength;

- (jint)getOptions;

- (jint)getRotation;

- (NSString *)getText;

- (ComItextpdfTextBaseColor *)getTextColor;

- (jint)getVisibility;

- (ComItextpdfTextPdfPdfWriter *)getWriter;

+ (void)moveFieldsWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)from
                  withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)to;

- (void)setAlignmentWithInt:(jint)alignment;

- (void)setBackgroundColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)backgroundColor;

- (void)setBorderColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColor;

- (void)setBorderStyleWithInt:(jint)borderStyle;

- (void)setBorderWidthWithFloat:(jfloat)borderWidth;

- (void)setBoxWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)box;

- (void)setFieldNameWithNSString:(NSString *)fieldName;

- (void)setFontWithComItextpdfTextPdfBaseFont:(ComItextpdfTextPdfBaseFont *)font;

- (void)setFontSizeWithFloat:(jfloat)fontSize;

- (void)setMaxCharacterLengthWithInt:(jint)maxCharacterLength;

- (void)setOptionsWithInt:(jint)options;

- (void)setRotationWithInt:(jint)rotation;

- (void)setRotationFromPageWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)page;

- (void)setTextWithNSString:(NSString *)text;

- (void)setTextColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)textColor;

- (void)setVisibilityWithInt:(jint)visibility;

- (void)setWriterWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

#pragma mark Protected

+ (JavaUtilArrayList *)breakLinesWithJavaUtilArrayList:(JavaUtilArrayList *)breaks
                        withComItextpdfTextPdfBaseFont:(ComItextpdfTextPdfBaseFont *)font
                                             withFloat:(jfloat)fontSize
                                             withFloat:(jfloat)width;

- (ComItextpdfTextPdfPdfAppearance *)getBorderAppearance;

+ (JavaUtilArrayList *)getHardBreaksWithNSString:(NSString *)text;

- (ComItextpdfTextPdfBaseFont *)getRealFont;

+ (void)trimRightWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfBaseField)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBaseField, borderColor_, ComItextpdfTextBaseColor *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBaseField, backgroundColor_, ComItextpdfTextBaseColor *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBaseField, textColor_, ComItextpdfTextBaseColor *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBaseField, font_, ComItextpdfTextPdfBaseFont *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBaseField, writer_, ComItextpdfTextPdfPdfWriter *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBaseField, text_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBaseField, box_, ComItextpdfTextRectangle *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBaseField, fieldName_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, BORDER_WIDTH_THIN, jfloat)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, BORDER_WIDTH_MEDIUM, jfloat)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, BORDER_WIDTH_THICK, jfloat)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, VISIBLE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, HIDDEN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, VISIBLE_BUT_DOES_NOT_PRINT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, HIDDEN_BUT_PRINTABLE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, READ_ONLY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, REQUIRED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, MULTILINE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, DO_NOT_SCROLL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, PASSWORD, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, FILE_SELECTION, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, DO_NOT_SPELL_CHECK, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, EDIT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, MULTISELECT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBaseField, COMB, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfBaseField_initWithComItextpdfTextPdfPdfWriter_withComItextpdfTextRectangle_withNSString_(ComItextpdfTextPdfBaseField *self, ComItextpdfTextPdfPdfWriter *writer, ComItextpdfTextRectangle *box, NSString *fieldName);

FOUNDATION_EXPORT JavaUtilArrayList *ComItextpdfTextPdfBaseField_getHardBreaksWithNSString_(NSString *text);

FOUNDATION_EXPORT void ComItextpdfTextPdfBaseField_trimRightWithJavaLangStringBuffer_(JavaLangStringBuffer *buf);

FOUNDATION_EXPORT JavaUtilArrayList *ComItextpdfTextPdfBaseField_breakLinesWithJavaUtilArrayList_withComItextpdfTextPdfBaseFont_withFloat_withFloat_(JavaUtilArrayList *breaks, ComItextpdfTextPdfBaseFont *font, jfloat fontSize, jfloat width);

FOUNDATION_EXPORT void ComItextpdfTextPdfBaseField_moveFieldsWithComItextpdfTextPdfPdfDictionary_withComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfPdfDictionary *from, ComItextpdfTextPdfPdfDictionary *to);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfBaseField)

#endif // _ComItextpdfTextPdfBaseField_H_
