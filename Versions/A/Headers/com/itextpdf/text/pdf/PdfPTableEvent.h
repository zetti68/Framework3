//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPTableEvent.java
//

#ifndef _ComItextpdfTextPdfPdfPTableEvent_H_
#define _ComItextpdfTextPdfPdfPTableEvent_H_

@class ComItextpdfTextPdfPdfPTable;
@class IOSFloatArray;
@class IOSObjectArray;

#import "JreEmulation.h"

@protocol ComItextpdfTextPdfPdfPTableEvent < NSObject, JavaObject >

- (void)tableLayoutWithComItextpdfTextPdfPdfPTable:(ComItextpdfTextPdfPdfPTable *)table
                                   withFloatArray2:(IOSObjectArray *)widths
                                    withFloatArray:(IOSFloatArray *)heights
                                           withInt:(jint)headerRows
                                           withInt:(jint)rowStart
         withComItextpdfTextPdfPdfContentByteArray:(IOSObjectArray *)canvases;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfPTableEvent_init() {}

#endif // _ComItextpdfTextPdfPdfPTableEvent_H_
