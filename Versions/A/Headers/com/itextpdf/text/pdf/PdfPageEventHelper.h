//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPageEventHelper.java
//

#ifndef _ComItextpdfTextPdfPdfPageEventHelper_H_
#define _ComItextpdfTextPdfPdfPageEventHelper_H_

@class ComItextpdfTextDocument;
@class ComItextpdfTextParagraph;
@class ComItextpdfTextPdfPdfWriter;
@class ComItextpdfTextRectangle;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfPageEvent.h"

@interface ComItextpdfTextPdfPdfPageEventHelper : NSObject < ComItextpdfTextPdfPdfPageEvent > {
}

- (void)onOpenDocumentWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                          withComItextpdfTextDocument:(ComItextpdfTextDocument *)document;

- (void)onStartPageWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                       withComItextpdfTextDocument:(ComItextpdfTextDocument *)document;

- (void)onEndPageWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                     withComItextpdfTextDocument:(ComItextpdfTextDocument *)document;

- (void)onCloseDocumentWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                           withComItextpdfTextDocument:(ComItextpdfTextDocument *)document;

- (void)onParagraphWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                       withComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                                         withFloat:(jfloat)paragraphPosition;

- (void)onParagraphEndWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                          withComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                                            withFloat:(jfloat)paragraphPosition;

- (void)onChapterWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                     withComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                                       withFloat:(jfloat)paragraphPosition
                    withComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title;

- (void)onChapterEndWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                        withComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                                          withFloat:(jfloat)position;

- (void)onSectionWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                     withComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                                       withFloat:(jfloat)paragraphPosition
                                         withInt:(jint)depth
                    withComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title;

- (void)onSectionEndWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                        withComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                                          withFloat:(jfloat)position;

- (void)onGenericTagWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                        withComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                       withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                       withNSString:(NSString *)text;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfPageEventHelper_init() {}

#endif // _ComItextpdfTextPdfPdfPageEventHelper_H_
