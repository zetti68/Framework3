//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfContentParser.java
//

#ifndef _ComItextpdfTextPdfPdfContentParser_H_
#define _ComItextpdfTextPdfPdfContentParser_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfPRTokeniser;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfObject;
@class JavaUtilArrayList;

#define ComItextpdfTextPdfPdfContentParser_COMMAND_TYPE 200

@interface ComItextpdfTextPdfPdfContentParser : NSObject

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPRTokeniser:(ComItextpdfTextPdfPRTokeniser *)tokeniser;

- (ComItextpdfTextPdfPRTokeniser *)getTokeniser;

- (jboolean)nextValidToken;

- (JavaUtilArrayList *)parseWithJavaUtilArrayList:(JavaUtilArrayList *)ls;

- (ComItextpdfTextPdfPdfArray *)readArray;

- (ComItextpdfTextPdfPdfDictionary *)readDictionary;

- (ComItextpdfTextPdfPdfObject *)readPRObject;

- (void)setTokeniserWithComItextpdfTextPdfPRTokeniser:(ComItextpdfTextPdfPRTokeniser *)tokeniser;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfContentParser)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfContentParser, COMMAND_TYPE, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfContentParser_initWithComItextpdfTextPdfPRTokeniser_(ComItextpdfTextPdfPdfContentParser *self, ComItextpdfTextPdfPRTokeniser *tokeniser);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfContentParser *new_ComItextpdfTextPdfPdfContentParser_initWithComItextpdfTextPdfPRTokeniser_(ComItextpdfTextPdfPRTokeniser *tokeniser) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfContentParser)

#endif // _ComItextpdfTextPdfPdfContentParser_H_
