//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfCollectionSchema.java
//

#ifndef _ComItextpdfTextPdfCollectionPdfCollectionSchema_H_
#define _ComItextpdfTextPdfCollectionPdfCollectionSchema_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"

@class ComItextpdfTextPdfCollectionPdfCollectionField;

@interface ComItextpdfTextPdfCollectionPdfCollectionSchema : ComItextpdfTextPdfPdfDictionary

#pragma mark Public

- (instancetype)init;

- (void)addFieldWithNSString:(NSString *)name
withComItextpdfTextPdfCollectionPdfCollectionField:(ComItextpdfTextPdfCollectionPdfCollectionField *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCollectionPdfCollectionSchema)

FOUNDATION_EXPORT void ComItextpdfTextPdfCollectionPdfCollectionSchema_init(ComItextpdfTextPdfCollectionPdfCollectionSchema *self);

FOUNDATION_EXPORT ComItextpdfTextPdfCollectionPdfCollectionSchema *new_ComItextpdfTextPdfCollectionPdfCollectionSchema_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCollectionPdfCollectionSchema)

#endif // _ComItextpdfTextPdfCollectionPdfCollectionSchema_H_
