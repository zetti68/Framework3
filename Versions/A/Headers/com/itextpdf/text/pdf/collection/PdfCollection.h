//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfCollection.java
//

#ifndef _ComItextpdfTextPdfCollectionPdfCollection_H_
#define _ComItextpdfTextPdfCollectionPdfCollection_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"

@class ComItextpdfTextPdfCollectionPdfCollectionSchema;
@class ComItextpdfTextPdfCollectionPdfCollectionSort;

#define ComItextpdfTextPdfCollectionPdfCollection_DETAILS 0
#define ComItextpdfTextPdfCollectionPdfCollection_TILE 1
#define ComItextpdfTextPdfCollectionPdfCollection_HIDDEN 2
#define ComItextpdfTextPdfCollectionPdfCollection_CUSTOM 3

@interface ComItextpdfTextPdfCollectionPdfCollection : ComItextpdfTextPdfPdfDictionary

#pragma mark Public

- (instancetype)initWithInt:(jint)type;

- (ComItextpdfTextPdfCollectionPdfCollectionSchema *)getSchema;

- (void)setInitialDocumentWithNSString:(NSString *)description_;

- (void)setSchemaWithComItextpdfTextPdfCollectionPdfCollectionSchema:(ComItextpdfTextPdfCollectionPdfCollectionSchema *)schema;

- (void)setSortWithComItextpdfTextPdfCollectionPdfCollectionSort:(ComItextpdfTextPdfCollectionPdfCollectionSort *)sort;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCollectionPdfCollection)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCollectionPdfCollection, DETAILS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCollectionPdfCollection, TILE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCollectionPdfCollection, HIDDEN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCollectionPdfCollection, CUSTOM, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfCollectionPdfCollection_initWithInt_(ComItextpdfTextPdfCollectionPdfCollection *self, jint type);

FOUNDATION_EXPORT ComItextpdfTextPdfCollectionPdfCollection *new_ComItextpdfTextPdfCollectionPdfCollection_initWithInt_(jint type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCollectionPdfCollection)

#endif // _ComItextpdfTextPdfCollectionPdfCollection_H_
