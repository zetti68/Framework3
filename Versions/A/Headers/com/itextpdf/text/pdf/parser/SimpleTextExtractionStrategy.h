//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy.java
//

#ifndef _ComItextpdfTextPdfParserSimpleTextExtractionStrategy_H_
#define _ComItextpdfTextPdfParserSimpleTextExtractionStrategy_H_

@class ComItextpdfTextPdfParserImageRenderInfo;
@class ComItextpdfTextPdfParserTextRenderInfo;
@class ComItextpdfTextPdfParserVector;
@class JavaLangStringBuffer;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/parser/TextExtractionStrategy.h"

@interface ComItextpdfTextPdfParserSimpleTextExtractionStrategy : NSObject < ComItextpdfTextPdfParserTextExtractionStrategy > {
 @public
  ComItextpdfTextPdfParserVector *lastStart_;
  ComItextpdfTextPdfParserVector *lastEnd_;
  JavaLangStringBuffer *result_;
}

- (instancetype)init;

- (void)beginTextBlock;

- (void)endTextBlock;

- (NSString *)getResultantText;

- (void)appendTextChunkWithJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (void)renderTextWithComItextpdfTextPdfParserTextRenderInfo:(ComItextpdfTextPdfParserTextRenderInfo *)renderInfo;

- (void)renderImageWithComItextpdfTextPdfParserImageRenderInfo:(ComItextpdfTextPdfParserImageRenderInfo *)renderInfo;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserSimpleTextExtractionStrategy *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfParserSimpleTextExtractionStrategy_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserSimpleTextExtractionStrategy, lastStart_, ComItextpdfTextPdfParserVector *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserSimpleTextExtractionStrategy, lastEnd_, ComItextpdfTextPdfParserVector *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserSimpleTextExtractionStrategy, result_, JavaLangStringBuffer *)

#endif // _ComItextpdfTextPdfParserSimpleTextExtractionStrategy_H_
