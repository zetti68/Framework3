//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/PdfReaderContentParser.java
//

#ifndef _ComItextpdfTextPdfParserPdfReaderContentParser_H_
#define _ComItextpdfTextPdfParserPdfReaderContentParser_H_

@class ComItextpdfTextPdfPdfReader;
@protocol ComItextpdfTextPdfParserRenderListener;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfParserPdfReaderContentParser : NSObject {
 @public
  ComItextpdfTextPdfPdfReader *reader_;
}

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (id)processContentWithInt:(jint)pageNumber
withComItextpdfTextPdfParserRenderListener:(id<ComItextpdfTextPdfParserRenderListener>)renderListener;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserPdfReaderContentParser *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfParserPdfReaderContentParser_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserPdfReaderContentParser, reader_, ComItextpdfTextPdfPdfReader *)

#endif // _ComItextpdfTextPdfParserPdfReaderContentParser_H_
