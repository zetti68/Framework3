//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfVisibilityExpression.java
//

#ifndef _ComItextpdfTextPdfPdfVisibilityExpression_H_
#define _ComItextpdfTextPdfPdfVisibilityExpression_H_

@class ComItextpdfTextPdfPdfObject;
@class IOSFloatArray;
@class IOSIntArray;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfArray.h"

#define ComItextpdfTextPdfPdfVisibilityExpression_AND 1
#define ComItextpdfTextPdfPdfVisibilityExpression_NOT -1
#define ComItextpdfTextPdfPdfVisibilityExpression_OR 0

@interface ComItextpdfTextPdfPdfVisibilityExpression : ComItextpdfTextPdfPdfArray {
}

- (instancetype)initWithInt:(jint)type;

- (void)addWithInt:(jint)index
withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)element;

- (jboolean)addWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (void)addFirstWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (jboolean)addWithFloatArray:(IOSFloatArray *)values;

- (jboolean)addWithIntArray:(IOSIntArray *)values;


@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfVisibilityExpression_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfVisibilityExpression, OR, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfVisibilityExpression, AND, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfVisibilityExpression, NOT, jint)

#endif // _ComItextpdfTextPdfPdfVisibilityExpression_H_