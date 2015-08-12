//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/FdfReader.java
//

#ifndef _ComItextpdfTextPdfFdfReader_H_
#define _ComItextpdfTextPdfFdfReader_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfReader.h"

@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfName;
@class IOSByteArray;
@class JavaIoInputStream;
@class JavaNetURL;
@class JavaUtilHashMap;
@protocol ComItextpdfTextLogCounter;

@interface ComItextpdfTextPdfFdfReader : ComItextpdfTextPdfPdfReader {
 @public
  JavaUtilHashMap *fields_;
  NSString *fileSpec_;
  ComItextpdfTextPdfPdfName *encoding_;
}

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)pdfIn;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)is;

- (instancetype)initWithNSString:(NSString *)filename;

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url;

- (IOSByteArray *)getAttachedFileWithNSString:(NSString *)name;

- (ComItextpdfTextPdfPdfDictionary *)getFieldWithNSString:(NSString *)name;

- (JavaUtilHashMap *)getFields;

- (NSString *)getFieldValueWithNSString:(NSString *)name;

- (NSString *)getFileSpec;

#pragma mark Protected

- (id<ComItextpdfTextLogCounter>)getCounter;

- (void)kidNodeWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)merged
                                      withNSString:(NSString *)name;

- (void)readFields;

- (void)readPdf;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfFdfReader)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFdfReader, fields_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFdfReader, fileSpec_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFdfReader, encoding_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT id<ComItextpdfTextLogCounter> ComItextpdfTextPdfFdfReader_COUNTER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfFdfReader, COUNTER_, id<ComItextpdfTextLogCounter>)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfFdfReader, COUNTER_, id<ComItextpdfTextLogCounter>)

FOUNDATION_EXPORT void ComItextpdfTextPdfFdfReader_initWithNSString_(ComItextpdfTextPdfFdfReader *self, NSString *filename);

FOUNDATION_EXPORT ComItextpdfTextPdfFdfReader *new_ComItextpdfTextPdfFdfReader_initWithNSString_(NSString *filename) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfFdfReader_initWithByteArray_(ComItextpdfTextPdfFdfReader *self, IOSByteArray *pdfIn);

FOUNDATION_EXPORT ComItextpdfTextPdfFdfReader *new_ComItextpdfTextPdfFdfReader_initWithByteArray_(IOSByteArray *pdfIn) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfFdfReader_initWithJavaNetURL_(ComItextpdfTextPdfFdfReader *self, JavaNetURL *url);

FOUNDATION_EXPORT ComItextpdfTextPdfFdfReader *new_ComItextpdfTextPdfFdfReader_initWithJavaNetURL_(JavaNetURL *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfFdfReader_initWithJavaIoInputStream_(ComItextpdfTextPdfFdfReader *self, JavaIoInputStream *is);

FOUNDATION_EXPORT ComItextpdfTextPdfFdfReader *new_ComItextpdfTextPdfFdfReader_initWithJavaIoInputStream_(JavaIoInputStream *is) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfFdfReader)

#endif // _ComItextpdfTextPdfFdfReader_H_
