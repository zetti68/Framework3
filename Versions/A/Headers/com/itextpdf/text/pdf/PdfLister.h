//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfLister.java
//

#ifndef _ComItextpdfTextPdfPdfLister_H_
#define _ComItextpdfTextPdfPdfLister_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfPRStream;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfImportedPage;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfReaderInstance;
@class JavaIoPrintStream;

@interface ComItextpdfTextPdfPdfLister : NSObject {
 @public
  JavaIoPrintStream *out_;
}

#pragma mark Public

- (instancetype)initWithJavaIoPrintStream:(JavaIoPrintStream *)outArg;

- (void)listAnyObjectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (void)listArrayWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)array;

- (void)listDictWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dictionary;

- (void)listPageWithComItextpdfTextPdfPdfImportedPage:(ComItextpdfTextPdfPdfImportedPage *)iPage;

- (void)listStreamWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream
         withComItextpdfTextPdfPdfReaderInstance:(ComItextpdfTextPdfPdfReaderInstance *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfLister)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfLister, out_, JavaIoPrintStream *)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfLister_initWithJavaIoPrintStream_(ComItextpdfTextPdfPdfLister *self, JavaIoPrintStream *outArg);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfLister *new_ComItextpdfTextPdfPdfLister_initWithJavaIoPrintStream_(JavaIoPrintStream *outArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfLister)

#endif // _ComItextpdfTextPdfPdfLister_H_
