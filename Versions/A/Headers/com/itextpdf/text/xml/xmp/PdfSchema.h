//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/PdfSchema.java
//

#ifndef _ComItextpdfTextXmlXmpPdfSchema_H_
#define _ComItextpdfTextXmlXmpPdfSchema_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/xml/xmp/XmpSchema.h"

@interface ComItextpdfTextXmlXmpPdfSchema : ComItextpdfTextXmlXmpXmpSchema

#pragma mark Public

- (instancetype)init;

- (void)addKeywordsWithNSString:(NSString *)keywords;

- (void)addProducerWithNSString:(NSString *)producer;

- (void)addVersionWithNSString:(NSString *)version_;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextXmlXmpPdfSchema)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpPdfSchema_DEFAULT_XPATH_ID_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpPdfSchema, DEFAULT_XPATH_ID_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpPdfSchema_DEFAULT_XPATH_URI_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpPdfSchema, DEFAULT_XPATH_URI_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpPdfSchema_KEYWORDS_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpPdfSchema, KEYWORDS_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpPdfSchema_VERSION_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpPdfSchema, VERSION_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpPdfSchema_PRODUCER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpPdfSchema, PRODUCER_, NSString *)

FOUNDATION_EXPORT void ComItextpdfTextXmlXmpPdfSchema_init(ComItextpdfTextXmlXmpPdfSchema *self);

FOUNDATION_EXPORT ComItextpdfTextXmlXmpPdfSchema *new_ComItextpdfTextXmlXmpPdfSchema_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextXmlXmpPdfSchema)

#endif // _ComItextpdfTextXmlXmpPdfSchema_H_
