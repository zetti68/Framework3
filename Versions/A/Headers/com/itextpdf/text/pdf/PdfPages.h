//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPages.java
//

#ifndef _ComItextpdfTextPdfPdfPages_H_
#define _ComItextpdfTextPdfPdfPages_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfWriter;
@class IOSIntArray;

@interface ComItextpdfTextPdfPdfPages : NSObject

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)addPageWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)page;

- (void)addPageWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)page;

- (ComItextpdfTextPdfPdfIndirectReference *)addPageRefWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)pageRef;

- (ComItextpdfTextPdfPdfIndirectReference *)getTopParent;

- (jint)reorderPagesWithIntArray:(IOSIntArray *)order;

- (void)setLinearModeWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)topParent;

- (ComItextpdfTextPdfPdfIndirectReference *)writePageTree;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfPages)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfPages_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfPages *self, ComItextpdfTextPdfPdfWriter *writer);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfPages *new_ComItextpdfTextPdfPdfPages_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfWriter *writer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfPages)

#endif // _ComItextpdfTextPdfPdfPages_H_
