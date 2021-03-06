//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PushbuttonField.java
//

#ifndef _ComItextpdfTextPdfPushbuttonField_H_
#define _ComItextpdfTextPdfPushbuttonField_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/BaseField.h"

@class ComItextpdfTextImage;
@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPdfAppearance;
@class ComItextpdfTextPdfPdfFormField;
@class ComItextpdfTextPdfPdfTemplate;
@class ComItextpdfTextPdfPdfWriter;
@class ComItextpdfTextRectangle;

#define ComItextpdfTextPdfPushbuttonField_LAYOUT_LABEL_ONLY 1
#define ComItextpdfTextPdfPushbuttonField_LAYOUT_ICON_ONLY 2
#define ComItextpdfTextPdfPushbuttonField_LAYOUT_ICON_TOP_LABEL_BOTTOM 3
#define ComItextpdfTextPdfPushbuttonField_LAYOUT_LABEL_TOP_ICON_BOTTOM 4
#define ComItextpdfTextPdfPushbuttonField_LAYOUT_ICON_LEFT_LABEL_RIGHT 5
#define ComItextpdfTextPdfPushbuttonField_LAYOUT_LABEL_LEFT_ICON_RIGHT 6
#define ComItextpdfTextPdfPushbuttonField_LAYOUT_LABEL_OVER_ICON 7
#define ComItextpdfTextPdfPushbuttonField_SCALE_ICON_ALWAYS 1
#define ComItextpdfTextPdfPushbuttonField_SCALE_ICON_NEVER 2
#define ComItextpdfTextPdfPushbuttonField_SCALE_ICON_IS_TOO_BIG 3
#define ComItextpdfTextPdfPushbuttonField_SCALE_ICON_IS_TOO_SMALL 4

@interface ComItextpdfTextPdfPushbuttonField : ComItextpdfTextPdfBaseField

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                       withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)box
                                       withNSString:(NSString *)fieldName;

- (ComItextpdfTextPdfPdfAppearance *)getAppearance;

- (ComItextpdfTextPdfPdfFormField *)getField;

- (jfloat)getIconHorizontalAdjustment;

- (ComItextpdfTextPdfPRIndirectReference *)getIconReference;

- (jfloat)getIconVerticalAdjustment;

- (ComItextpdfTextImage *)getImage;

- (jint)getLayout;

- (jint)getScaleIcon;

- (ComItextpdfTextPdfPdfTemplate *)getTemplate;

- (jboolean)isIconFitToBounds;

- (jboolean)isProportionalIcon;

- (void)setIconFitToBoundsWithBoolean:(jboolean)iconFitToBounds;

- (void)setIconHorizontalAdjustmentWithFloat:(jfloat)iconHorizontalAdjustment;

- (void)setIconReferenceWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)iconReference;

- (void)setIconVerticalAdjustmentWithFloat:(jfloat)iconVerticalAdjustment;

- (void)setImageWithComItextpdfTextImage:(ComItextpdfTextImage *)image;

- (void)setLayoutWithInt:(jint)layout;

- (void)setProportionalIconWithBoolean:(jboolean)proportionalIcon;

- (void)setScaleIconWithInt:(jint)scaleIcon;

- (void)setTemplateWithComItextpdfTextPdfPdfTemplate:(ComItextpdfTextPdfPdfTemplate *)template_;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPushbuttonField)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, LAYOUT_LABEL_ONLY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, LAYOUT_ICON_ONLY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, LAYOUT_ICON_TOP_LABEL_BOTTOM, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, LAYOUT_LABEL_TOP_ICON_BOTTOM, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, LAYOUT_ICON_LEFT_LABEL_RIGHT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, LAYOUT_LABEL_LEFT_ICON_RIGHT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, LAYOUT_LABEL_OVER_ICON, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, SCALE_ICON_ALWAYS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, SCALE_ICON_NEVER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, SCALE_ICON_IS_TOO_BIG, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPushbuttonField, SCALE_ICON_IS_TOO_SMALL, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfPushbuttonField_initWithComItextpdfTextPdfPdfWriter_withComItextpdfTextRectangle_withNSString_(ComItextpdfTextPdfPushbuttonField *self, ComItextpdfTextPdfPdfWriter *writer, ComItextpdfTextRectangle *box, NSString *fieldName);

FOUNDATION_EXPORT ComItextpdfTextPdfPushbuttonField *new_ComItextpdfTextPdfPushbuttonField_initWithComItextpdfTextPdfPdfWriter_withComItextpdfTextRectangle_withNSString_(ComItextpdfTextPdfPdfWriter *writer, ComItextpdfTextRectangle *box, NSString *fieldName) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPushbuttonField)

#endif // _ComItextpdfTextPdfPushbuttonField_H_
