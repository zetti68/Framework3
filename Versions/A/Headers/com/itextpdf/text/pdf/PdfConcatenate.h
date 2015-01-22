//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfConcatenate.java
//

#ifndef _ComItextpdfTextPdfPdfConcatenate_H_
#define _ComItextpdfTextPdfPdfConcatenate_H_

@class ComItextpdfTextDocument;
@class ComItextpdfTextPdfPdfCopy;
@class ComItextpdfTextPdfPdfReader;
@class JavaIoOutputStream;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfPdfConcatenate : NSObject {
 @public
  ComItextpdfTextDocument *document_;
  ComItextpdfTextPdfPdfCopy *copy__;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os;

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os
                               withBoolean:(jboolean)smart;

- (jint)addPagesWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (ComItextpdfTextPdfPdfCopy *)getWriter;

- (void)open;

- (void)close;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfConcatenate *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfConcatenate_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfConcatenate, document_, ComItextpdfTextDocument *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfConcatenate, copy__, ComItextpdfTextPdfPdfCopy *)

#endif // _ComItextpdfTextPdfPdfConcatenate_H_
