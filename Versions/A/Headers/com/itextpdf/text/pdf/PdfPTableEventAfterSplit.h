//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPTableEventAfterSplit.java
//

#ifndef _ComItextpdfTextPdfPdfPTableEventAfterSplit_H_
#define _ComItextpdfTextPdfPdfPTableEventAfterSplit_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfPTableEventSplit.h"

@class ComItextpdfTextPdfPdfPRow;
@class ComItextpdfTextPdfPdfPTable;

@protocol ComItextpdfTextPdfPdfPTableEventAfterSplit < ComItextpdfTextPdfPdfPTableEventSplit, NSObject, JavaObject >

- (void)afterSplitTableWithComItextpdfTextPdfPdfPTable:(ComItextpdfTextPdfPdfPTable *)table
                         withComItextpdfTextPdfPdfPRow:(ComItextpdfTextPdfPdfPRow *)startRow
                                               withInt:(jint)startIdx;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfPTableEventAfterSplit)

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfPTableEventAfterSplit)

#endif // _ComItextpdfTextPdfPdfPTableEventAfterSplit_H_
