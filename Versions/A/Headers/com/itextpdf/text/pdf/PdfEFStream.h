//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfEFStream.java
//

#ifndef _ComItextpdfTextPdfPdfEFStream_H_
#define _ComItextpdfTextPdfPdfEFStream_H_

@class ComItextpdfTextPdfPdfWriter;
@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfStream.h"

@interface ComItextpdfTextPdfPdfEFStream : ComItextpdfTextPdfPdfStream {
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
          withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (instancetype)initWithByteArray:(IOSByteArray *)fileStore;

- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfEFStream_init() {}

#endif // _ComItextpdfTextPdfPdfEFStream_H_