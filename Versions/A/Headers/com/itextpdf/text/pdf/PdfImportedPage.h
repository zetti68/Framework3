//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfImportedPage.java
//

#ifndef _ComItextpdfTextPdfPdfImportedPage_H_
#define _ComItextpdfTextPdfPdfImportedPage_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfTemplate.h"

@class ComItextpdfTextImage;
@class ComItextpdfTextPdfBaseFont;
@class ComItextpdfTextPdfPdfContentByte;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfReaderInstance;
@class ComItextpdfTextPdfPdfSpotColor;
@class ComItextpdfTextPdfPdfStream;
@class ComItextpdfTextPdfPdfTransparencyGroup;
@class ComItextpdfTextPdfPdfWriter;

@interface ComItextpdfTextPdfPdfImportedPage : ComItextpdfTextPdfPdfTemplate {
 @public
  ComItextpdfTextPdfPdfReaderInstance *readerInstance_;
  jint pageNumber_;
  jint rotation_;
  jboolean toCopy_;
}

#pragma mark Public

- (void)addImageWithComItextpdfTextImage:(ComItextpdfTextImage *)image
                               withFloat:(jfloat)a
                               withFloat:(jfloat)b
                               withFloat:(jfloat)c
                               withFloat:(jfloat)d
                               withFloat:(jfloat)e
                               withFloat:(jfloat)f;

- (void)addTemplateWithComItextpdfTextPdfPdfTemplate:(ComItextpdfTextPdfPdfTemplate *)template_
                                           withFloat:(jfloat)a
                                           withFloat:(jfloat)b
                                           withFloat:(jfloat)c
                                           withFloat:(jfloat)d
                                           withFloat:(jfloat)e
                                           withFloat:(jfloat)f;

- (ComItextpdfTextPdfPdfContentByte *)getDuplicate;

- (ComItextpdfTextPdfPdfStream *)getFormXObjectWithInt:(jint)compressionLevel;

- (ComItextpdfTextPdfPdfImportedPage *)getFromReader;

- (jint)getPageNumber;

- (jint)getRotation;

- (jboolean)isToCopy;

- (void)setColorFillWithComItextpdfTextPdfPdfSpotColor:(ComItextpdfTextPdfPdfSpotColor *)sp
                                             withFloat:(jfloat)tint;

- (void)setColorStrokeWithComItextpdfTextPdfPdfSpotColor:(ComItextpdfTextPdfPdfSpotColor *)sp
                                               withFloat:(jfloat)tint;

- (void)setCopied;

- (void)setFontAndSizeWithComItextpdfTextPdfBaseFont:(ComItextpdfTextPdfBaseFont *)bf
                                           withFloat:(jfloat)size;

- (void)setGroupWithComItextpdfTextPdfPdfTransparencyGroup:(ComItextpdfTextPdfPdfTransparencyGroup *)group;

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextPdfPdfReaderInstance:(ComItextpdfTextPdfPdfReaderInstance *)readerInstance
                            withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                    withInt:(jint)pageNumber;

- (ComItextpdfTextPdfPdfReaderInstance *)getPdfReaderInstance;

- (ComItextpdfTextPdfPdfObject *)getResources;

- (void)throwError;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfImportedPage)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfImportedPage, readerInstance_, ComItextpdfTextPdfPdfReaderInstance *)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfImportedPage_initWithComItextpdfTextPdfPdfReaderInstance_withComItextpdfTextPdfPdfWriter_withInt_(ComItextpdfTextPdfPdfImportedPage *self, ComItextpdfTextPdfPdfReaderInstance *readerInstance, ComItextpdfTextPdfPdfWriter *writer, jint pageNumber);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfImportedPage *new_ComItextpdfTextPdfPdfImportedPage_initWithComItextpdfTextPdfPdfReaderInstance_withComItextpdfTextPdfPdfWriter_withInt_(ComItextpdfTextPdfPdfReaderInstance *readerInstance, ComItextpdfTextPdfPdfWriter *writer, jint pageNumber) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfImportedPage)

#endif // _ComItextpdfTextPdfPdfImportedPage_H_
