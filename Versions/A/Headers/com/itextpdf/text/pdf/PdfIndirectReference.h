//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfIndirectReference.java
//

#ifndef _ComItextpdfTextPdfPdfIndirectReference_H_
#define _ComItextpdfTextPdfPdfIndirectReference_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfObject.h"

@interface ComItextpdfTextPdfPdfIndirectReference : ComItextpdfTextPdfPdfObject {
 @public
  jint number_;
  jint generation_;
}

#pragma mark Public

- (jint)getGeneration;

- (jint)getNumber;

- (NSString *)description;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithInt:(jint)type
                    withInt:(jint)number;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)type
                    withInt:(jint)number
                    withInt:(jint)generation;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfIndirectReference)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfIndirectReference_init(ComItextpdfTextPdfPdfIndirectReference *self);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfIndirectReference *new_ComItextpdfTextPdfPdfIndirectReference_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfIndirectReference_initWithInt_withInt_withInt_(ComItextpdfTextPdfPdfIndirectReference *self, jint type, jint number, jint generation);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfIndirectReference *new_ComItextpdfTextPdfPdfIndirectReference_initWithInt_withInt_withInt_(jint type, jint number, jint generation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfIndirectReference_initWithInt_withInt_(ComItextpdfTextPdfPdfIndirectReference *self, jint type, jint number);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfIndirectReference *new_ComItextpdfTextPdfPdfIndirectReference_initWithInt_withInt_(jint type, jint number) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfIndirectReference)

#endif // _ComItextpdfTextPdfPdfIndirectReference_H_
