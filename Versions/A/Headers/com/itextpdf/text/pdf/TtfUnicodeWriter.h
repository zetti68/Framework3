//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/TtfUnicodeWriter.java
//

#ifndef _ComItextpdfTextPdfTtfUnicodeWriter_H_
#define _ComItextpdfTextPdfTtfUnicodeWriter_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfWriter;
@class ComItextpdfTextPdfTrueTypeFontUnicode;
@class IOSByteArray;
@class IOSObjectArray;

@interface ComItextpdfTextPdfTtfUnicodeWriter : NSObject {
 @public
  ComItextpdfTextPdfPdfWriter *writer_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)writeFontWithComItextpdfTextPdfTrueTypeFontUnicode:(ComItextpdfTextPdfTrueTypeFontUnicode *)font
                withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                                         withNSObjectArray:(IOSObjectArray *)params
                                             withByteArray:(IOSByteArray *)rotbits;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfTtfUnicodeWriter)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTtfUnicodeWriter, writer_, ComItextpdfTextPdfPdfWriter *)

FOUNDATION_EXPORT void ComItextpdfTextPdfTtfUnicodeWriter_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfTtfUnicodeWriter *self, ComItextpdfTextPdfPdfWriter *writer);

FOUNDATION_EXPORT ComItextpdfTextPdfTtfUnicodeWriter *new_ComItextpdfTextPdfTtfUnicodeWriter_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfWriter *writer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfTtfUnicodeWriter)

#endif // _ComItextpdfTextPdfTtfUnicodeWriter_H_
