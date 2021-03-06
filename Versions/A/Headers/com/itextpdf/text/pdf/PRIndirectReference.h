//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PRIndirectReference.java
//

#ifndef _ComItextpdfTextPdfPRIndirectReference_H_
#define _ComItextpdfTextPdfPRIndirectReference_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"

@class ComItextpdfTextPdfPdfReader;
@class ComItextpdfTextPdfPdfWriter;
@class JavaIoOutputStream;

@interface ComItextpdfTextPdfPRIndirectReference : ComItextpdfTextPdfPdfIndirectReference {
 @public
  ComItextpdfTextPdfPdfReader *reader_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                            withInt:(jint)number;

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                            withInt:(jint)number
                                            withInt:(jint)generation;

- (ComItextpdfTextPdfPdfReader *)getReader;

- (void)setNumberWithInt:(jint)number
                 withInt:(jint)generation;

- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPRIndirectReference)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRIndirectReference, reader_, ComItextpdfTextPdfPdfReader *)

FOUNDATION_EXPORT void ComItextpdfTextPdfPRIndirectReference_initWithComItextpdfTextPdfPdfReader_withInt_withInt_(ComItextpdfTextPdfPRIndirectReference *self, ComItextpdfTextPdfPdfReader *reader, jint number, jint generation);

FOUNDATION_EXPORT ComItextpdfTextPdfPRIndirectReference *new_ComItextpdfTextPdfPRIndirectReference_initWithComItextpdfTextPdfPdfReader_withInt_withInt_(ComItextpdfTextPdfPdfReader *reader, jint number, jint generation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPRIndirectReference_initWithComItextpdfTextPdfPdfReader_withInt_(ComItextpdfTextPdfPRIndirectReference *self, ComItextpdfTextPdfPdfReader *reader, jint number);

FOUNDATION_EXPORT ComItextpdfTextPdfPRIndirectReference *new_ComItextpdfTextPdfPRIndirectReference_initWithComItextpdfTextPdfPdfReader_withInt_(ComItextpdfTextPdfPdfReader *reader, jint number) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPRIndirectReference)

#endif // _ComItextpdfTextPdfPRIndirectReference_H_
