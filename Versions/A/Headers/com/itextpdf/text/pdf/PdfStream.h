//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfStream.java
//

#ifndef _ComItextpdfTextPdfPdfStream_H_
#define _ComItextpdfTextPdfPdfStream_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"

@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfWriter;
@class IOSByteArray;
@class JavaIoByteArrayOutputStream;
@class JavaIoInputStream;
@class JavaIoOutputStream;

#define ComItextpdfTextPdfPdfStream_DEFAULT_COMPRESSION -1
#define ComItextpdfTextPdfPdfStream_NO_COMPRESSION 0
#define ComItextpdfTextPdfPdfStream_BEST_SPEED 1
#define ComItextpdfTextPdfPdfStream_BEST_COMPRESSION 9

@interface ComItextpdfTextPdfPdfStream : ComItextpdfTextPdfPdfDictionary {
 @public
  jboolean compressed_;
  jint compressionLevel_;
  JavaIoByteArrayOutputStream *streamBytes_;
  JavaIoInputStream *inputStream_;
  ComItextpdfTextPdfPdfIndirectReference *ref_;
  jint inputStreamLength_;
  ComItextpdfTextPdfPdfWriter *writer_;
  jint rawLength_;
}

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)bytes;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inputStream
          withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)flateCompress;

- (void)flateCompressWithInt:(jint)compressionLevel;

- (jint)getRawLength;

- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os;

- (NSString *)description;

- (void)writeContentWithJavaIoOutputStream:(JavaIoOutputStream *)os;

- (void)writeLength;

#pragma mark Protected

- (instancetype)init;

- (void)superToPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                           withJavaIoOutputStream:(JavaIoOutputStream *)os;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfPdfStream)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStream, streamBytes_, JavaIoByteArrayOutputStream *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStream, inputStream_, JavaIoInputStream *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStream, ref_, ComItextpdfTextPdfPdfIndirectReference *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStream, writer_, ComItextpdfTextPdfPdfWriter *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfStream, DEFAULT_COMPRESSION, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfStream, NO_COMPRESSION, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfStream, BEST_SPEED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfStream, BEST_COMPRESSION, jint)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfStream_STARTSTREAM_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfStream, STARTSTREAM_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfStream_ENDSTREAM_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfStream, ENDSTREAM_, IOSByteArray *)

FOUNDATION_EXPORT jint ComItextpdfTextPdfPdfStream_SIZESTREAM_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfStream, SIZESTREAM_, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfStream_initWithByteArray_(ComItextpdfTextPdfPdfStream *self, IOSByteArray *bytes);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfStream *new_ComItextpdfTextPdfPdfStream_initWithByteArray_(IOSByteArray *bytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfStream_initWithJavaIoInputStream_withComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfStream *self, JavaIoInputStream *inputStream, ComItextpdfTextPdfPdfWriter *writer);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfStream *new_ComItextpdfTextPdfPdfStream_initWithJavaIoInputStream_withComItextpdfTextPdfPdfWriter_(JavaIoInputStream *inputStream, ComItextpdfTextPdfPdfWriter *writer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfStream_init(ComItextpdfTextPdfPdfStream *self);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfStream *new_ComItextpdfTextPdfPdfStream_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfStream)

#endif // _ComItextpdfTextPdfPdfStream_H_
