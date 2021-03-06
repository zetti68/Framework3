//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/internal/PdfAnnotationsImp.java
//

#ifndef _ComItextpdfTextPdfInternalPdfAnnotationsImp_H_
#define _ComItextpdfTextPdfInternalPdfAnnotationsImp_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextAnnotation;
@class ComItextpdfTextPdfPdfAcroForm;
@class ComItextpdfTextPdfPdfAnnotation;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfFormField;
@class ComItextpdfTextPdfPdfWriter;
@class ComItextpdfTextRectangle;
@class JavaUtilArrayList;

@interface ComItextpdfTextPdfInternalPdfAnnotationsImp : NSObject {
 @public
  ComItextpdfTextPdfPdfAcroForm *acroForm_;
  JavaUtilArrayList *annotations_;
  JavaUtilArrayList *delayedAnnotations_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)addAnnotationWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)annot;

- (void)addCalculationOrderWithComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)formField;

- (void)addPlainAnnotationWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)annot;

+ (ComItextpdfTextPdfPdfAnnotation *)convertAnnotationWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                        withComItextpdfTextAnnotation:(ComItextpdfTextAnnotation *)annot
                                                         withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)defaultRect;

- (ComItextpdfTextPdfPdfAcroForm *)getAcroForm;

- (jboolean)hasUnusedAnnotations;

- (jboolean)hasValidAcroForm;

- (void)resetAnnotations;

- (ComItextpdfTextPdfPdfArray *)rotateAnnotationsWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                    withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)pageSize;

- (void)setSigFlagsWithInt:(jint)f;

#pragma mark Package-Private

- (void)addFormFieldRawWithComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfInternalPdfAnnotationsImp)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfInternalPdfAnnotationsImp, acroForm_, ComItextpdfTextPdfPdfAcroForm *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfInternalPdfAnnotationsImp, annotations_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfInternalPdfAnnotationsImp, delayedAnnotations_, JavaUtilArrayList *)

FOUNDATION_EXPORT void ComItextpdfTextPdfInternalPdfAnnotationsImp_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfInternalPdfAnnotationsImp *self, ComItextpdfTextPdfPdfWriter *writer);

FOUNDATION_EXPORT ComItextpdfTextPdfInternalPdfAnnotationsImp *new_ComItextpdfTextPdfInternalPdfAnnotationsImp_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfWriter *writer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAnnotation *ComItextpdfTextPdfInternalPdfAnnotationsImp_convertAnnotationWithComItextpdfTextPdfPdfWriter_withComItextpdfTextAnnotation_withComItextpdfTextRectangle_(ComItextpdfTextPdfPdfWriter *writer, ComItextpdfTextAnnotation *annot, ComItextpdfTextRectangle *defaultRect);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfInternalPdfAnnotationsImp)

#endif // _ComItextpdfTextPdfInternalPdfAnnotationsImp_H_
