//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfIndirectObject.java
//

#ifndef _ComItextpdfTextPdfPdfIndirectObject_H_
#define _ComItextpdfTextPdfPdfIndirectObject_H_

@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfWriter;
@class IOSByteArray;
@class JavaIoOutputStream;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfPdfIndirectObject : NSObject {
 @public
  jint number_;
  jint generation_;
  ComItextpdfTextPdfPdfObject *object_;
  ComItextpdfTextPdfPdfWriter *writer_;
}

- (instancetype)initWithInt:(jint)number
withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object
withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (instancetype)initWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                               withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object
                               withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (instancetype)initWithInt:(jint)number
                    withInt:(jint)generation
withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object
withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (ComItextpdfTextPdfPdfIndirectReference *)getIndirectReference;

- (void)writeToWithJavaIoOutputStream:(JavaIoOutputStream *)os;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfIndirectObject *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfPdfIndirectObject_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfPdfIndirectObject)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfIndirectObject, object_, ComItextpdfTextPdfPdfObject *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfIndirectObject, writer_, ComItextpdfTextPdfPdfWriter *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfIndirectObject_STARTOBJ_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfIndirectObject, STARTOBJ_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfIndirectObject_ENDOBJ_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfIndirectObject, ENDOBJ_, IOSByteArray *)

FOUNDATION_EXPORT jint ComItextpdfTextPdfPdfIndirectObject_SIZEOBJ_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfIndirectObject, SIZEOBJ_, jint)

#endif // _ComItextpdfTextPdfPdfIndirectObject_H_
