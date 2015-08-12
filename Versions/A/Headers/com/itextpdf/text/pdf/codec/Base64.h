//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/Base64.java
//

#ifndef _ComItextpdfTextPdfCodecBase64_H_
#define _ComItextpdfTextPdfCodecBase64_H_

#include "J2ObjC_header.h"
#include "java/io/FilterInputStream.h"
#include "java/io/FilterOutputStream.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@protocol JavaIoSerializable;

#define ComItextpdfTextPdfCodecBase64_NO_OPTIONS 0
#define ComItextpdfTextPdfCodecBase64_ENCODE 1
#define ComItextpdfTextPdfCodecBase64_DECODE 0
#define ComItextpdfTextPdfCodecBase64_GZIP 2
#define ComItextpdfTextPdfCodecBase64_DONT_BREAK_LINES 8
#define ComItextpdfTextPdfCodecBase64_URL_SAFE 16
#define ComItextpdfTextPdfCodecBase64_ORDERED 32

@interface ComItextpdfTextPdfCodecBase64 : NSObject

#pragma mark Public

+ (IOSByteArray *)decodeWithByteArray:(IOSByteArray *)source
                              withInt:(jint)off
                              withInt:(jint)len
                              withInt:(jint)options;

+ (IOSByteArray *)decodeWithNSString:(NSString *)s;

+ (IOSByteArray *)decodeWithNSString:(NSString *)s
                             withInt:(jint)options;

+ (void)decodeFileToFileWithNSString:(NSString *)infile
                        withNSString:(NSString *)outfile;

+ (IOSByteArray *)decodeFromFileWithNSString:(NSString *)filename;

+ (jboolean)decodeToFileWithNSString:(NSString *)dataToDecode
                        withNSString:(NSString *)filename;

+ (id)decodeToObjectWithNSString:(NSString *)encodedObject;

+ (NSString *)encodeBytesWithByteArray:(IOSByteArray *)source;

+ (NSString *)encodeBytesWithByteArray:(IOSByteArray *)source
                               withInt:(jint)options;

+ (NSString *)encodeBytesWithByteArray:(IOSByteArray *)source
                               withInt:(jint)off
                               withInt:(jint)len;

+ (NSString *)encodeBytesWithByteArray:(IOSByteArray *)source
                               withInt:(jint)off
                               withInt:(jint)len
                               withInt:(jint)options;

+ (void)encodeFileToFileWithNSString:(NSString *)infile
                        withNSString:(NSString *)outfile;

+ (NSString *)encodeFromFileWithNSString:(NSString *)filename;

+ (NSString *)encodeObjectWithJavaIoSerializable:(id<JavaIoSerializable>)serializableObject;

+ (NSString *)encodeObjectWithJavaIoSerializable:(id<JavaIoSerializable>)serializableObject
                                         withInt:(jint)options;

+ (jboolean)encodeToFileWithByteArray:(IOSByteArray *)dataToEncode
                         withNSString:(NSString *)filename;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfCodecBase64)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, NO_OPTIONS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, ENCODE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, DECODE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, GZIP, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, DONT_BREAK_LINES, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, URL_SAFE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, ORDERED, jint)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCodecBase64_encodeObjectWithJavaIoSerializable_(id<JavaIoSerializable> serializableObject);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCodecBase64_encodeObjectWithJavaIoSerializable_withInt_(id<JavaIoSerializable> serializableObject, jint options);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCodecBase64_encodeBytesWithByteArray_(IOSByteArray *source);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCodecBase64_encodeBytesWithByteArray_withInt_(IOSByteArray *source, jint options);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCodecBase64_encodeBytesWithByteArray_withInt_withInt_(IOSByteArray *source, jint off, jint len);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCodecBase64_encodeBytesWithByteArray_withInt_withInt_withInt_(IOSByteArray *source, jint off, jint len, jint options);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64_decodeWithByteArray_withInt_withInt_withInt_(IOSByteArray *source, jint off, jint len, jint options);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64_decodeWithNSString_(NSString *s);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64_decodeWithNSString_withInt_(NSString *s, jint options);

FOUNDATION_EXPORT id ComItextpdfTextPdfCodecBase64_decodeToObjectWithNSString_(NSString *encodedObject);

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfCodecBase64_encodeToFileWithByteArray_withNSString_(IOSByteArray *dataToEncode, NSString *filename);

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfCodecBase64_decodeToFileWithNSString_withNSString_(NSString *dataToDecode, NSString *filename);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64_decodeFromFileWithNSString_(NSString *filename);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCodecBase64_encodeFromFileWithNSString_(NSString *filename);

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecBase64_encodeFileToFileWithNSString_withNSString_(NSString *infile, NSString *outfile);

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecBase64_decodeFileToFileWithNSString_withNSString_(NSString *infile, NSString *outfile);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecBase64)

@interface ComItextpdfTextPdfCodecBase64_InputStream : JavaIoFilterInputStream

#pragma mark Public

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                  withInt:(jint)options;

- (jint)read;

- (jint)readWithByteArray:(IOSByteArray *)dest
                  withInt:(jint)off
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecBase64_InputStream)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecBase64_InputStream_initWithJavaIoInputStream_(ComItextpdfTextPdfCodecBase64_InputStream *self, JavaIoInputStream *inArg);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecBase64_InputStream *new_ComItextpdfTextPdfCodecBase64_InputStream_initWithJavaIoInputStream_(JavaIoInputStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecBase64_InputStream_initWithJavaIoInputStream_withInt_(ComItextpdfTextPdfCodecBase64_InputStream *self, JavaIoInputStream *inArg, jint options);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecBase64_InputStream *new_ComItextpdfTextPdfCodecBase64_InputStream_initWithJavaIoInputStream_withInt_(JavaIoInputStream *inArg, jint options) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecBase64_InputStream)

@interface ComItextpdfTextPdfCodecBase64_OutputStream : JavaIoFilterOutputStream

#pragma mark Public

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                   withInt:(jint)options;

- (void)close;

- (void)flushBase64;

- (void)resumeEncoding;

- (void)suspendEncoding;

- (void)writeWithByteArray:(IOSByteArray *)theBytes
                   withInt:(jint)off
                   withInt:(jint)len;

- (void)writeWithInt:(jint)theByte;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecBase64_OutputStream)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecBase64_OutputStream_initWithJavaIoOutputStream_(ComItextpdfTextPdfCodecBase64_OutputStream *self, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecBase64_OutputStream *new_ComItextpdfTextPdfCodecBase64_OutputStream_initWithJavaIoOutputStream_(JavaIoOutputStream *outArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecBase64_OutputStream_initWithJavaIoOutputStream_withInt_(ComItextpdfTextPdfCodecBase64_OutputStream *self, JavaIoOutputStream *outArg, jint options);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecBase64_OutputStream *new_ComItextpdfTextPdfCodecBase64_OutputStream_initWithJavaIoOutputStream_withInt_(JavaIoOutputStream *outArg, jint options) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecBase64_OutputStream)

#endif // _ComItextpdfTextPdfCodecBase64_H_
