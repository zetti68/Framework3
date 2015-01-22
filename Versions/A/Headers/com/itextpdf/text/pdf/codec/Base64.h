//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/Base64.java
//

#ifndef _ComItextpdfTextPdfCodecBase64_H_
#define _ComItextpdfTextPdfCodecBase64_H_

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@protocol JavaIoSerializable;

#import "JreEmulation.h"
#include "java/io/FilterInputStream.h"
#include "java/io/FilterOutputStream.h"

#define ComItextpdfTextPdfCodecBase64_DECODE 0
#define ComItextpdfTextPdfCodecBase64_DONT_BREAK_LINES 8
#define ComItextpdfTextPdfCodecBase64_ENCODE 1
#define ComItextpdfTextPdfCodecBase64_EQUALS_SIGN 61
#define ComItextpdfTextPdfCodecBase64_EQUALS_SIGN_ENC -1
#define ComItextpdfTextPdfCodecBase64_GZIP 2
#define ComItextpdfTextPdfCodecBase64_MAX_LINE_LENGTH 76
#define ComItextpdfTextPdfCodecBase64_NEW_LINE 10
#define ComItextpdfTextPdfCodecBase64_NO_OPTIONS 0
#define ComItextpdfTextPdfCodecBase64_ORDERED 32
#define ComItextpdfTextPdfCodecBase64_URL_SAFE 16
#define ComItextpdfTextPdfCodecBase64_WHITE_SPACE_ENC -5

@interface ComItextpdfTextPdfCodecBase64 : NSObject {
}

+ (IOSByteArray *)getAlphabetWithInt:(jint)options;

+ (IOSByteArray *)getDecodabetWithInt:(jint)options;

- (instancetype)init;

+ (void)usageWithNSString:(NSString *)msg;

+ (IOSByteArray *)encode3to4WithByteArray:(IOSByteArray *)b4
                            withByteArray:(IOSByteArray *)threeBytes
                                  withInt:(jint)numSigBytes
                                  withInt:(jint)options;

+ (IOSByteArray *)encode3to4WithByteArray:(IOSByteArray *)source
                                  withInt:(jint)srcOffset
                                  withInt:(jint)numSigBytes
                            withByteArray:(IOSByteArray *)destination
                                  withInt:(jint)destOffset
                                  withInt:(jint)options;

+ (NSString *)encodeObjectWithJavaIoSerializable:(id<JavaIoSerializable>)serializableObject;

+ (NSString *)encodeObjectWithJavaIoSerializable:(id<JavaIoSerializable>)serializableObject
                                         withInt:(jint)options;

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

+ (jint)decode4to3WithByteArray:(IOSByteArray *)source
                        withInt:(jint)srcOffset
                  withByteArray:(IOSByteArray *)destination
                        withInt:(jint)destOffset
                        withInt:(jint)options;

+ (IOSByteArray *)decodeWithByteArray:(IOSByteArray *)source
                              withInt:(jint)off
                              withInt:(jint)len
                              withInt:(jint)options;

+ (IOSByteArray *)decodeWithNSString:(NSString *)s;

+ (IOSByteArray *)decodeWithNSString:(NSString *)s
                             withInt:(jint)options;

+ (id)decodeToObjectWithNSString:(NSString *)encodedObject;

+ (jboolean)encodeToFileWithByteArray:(IOSByteArray *)dataToEncode
                         withNSString:(NSString *)filename;

+ (jboolean)decodeToFileWithNSString:(NSString *)dataToDecode
                        withNSString:(NSString *)filename;

+ (IOSByteArray *)decodeFromFileWithNSString:(NSString *)filename;

+ (NSString *)encodeFromFileWithNSString:(NSString *)filename;

+ (void)encodeFileToFileWithNSString:(NSString *)infile
                        withNSString:(NSString *)outfile;

+ (void)decodeFileToFileWithNSString:(NSString *)infile
                        withNSString:(NSString *)outfile;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfCodecBase64_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfCodecBase64)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, NO_OPTIONS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, ENCODE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, DECODE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, GZIP, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, DONT_BREAK_LINES, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, URL_SAFE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, ORDERED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, MAX_LINE_LENGTH, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, EQUALS_SIGN, jbyte)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, NEW_LINE, jbyte)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCodecBase64_PREFERRED_ENCODING_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, PREFERRED_ENCODING_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, WHITE_SPACE_ENC, jbyte)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, EQUALS_SIGN_ENC, jbyte)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64__STANDARD_ALPHABET_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, _STANDARD_ALPHABET_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64__STANDARD_DECODABET_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, _STANDARD_DECODABET_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64__URL_SAFE_ALPHABET_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, _URL_SAFE_ALPHABET_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64__URL_SAFE_DECODABET_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, _URL_SAFE_DECODABET_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64__ORDERED_ALPHABET_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, _ORDERED_ALPHABET_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecBase64__ORDERED_DECODABET_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecBase64, _ORDERED_DECODABET_, IOSByteArray *)

@interface ComItextpdfTextPdfCodecBase64_InputStream : JavaIoFilterInputStream {
 @public
  jboolean encode_;
  jint position_;
  IOSByteArray *buffer_;
  jint bufferLength_;
  jint numSigBytes_;
  jint lineLength_;
  jboolean breakLines_;
  jint options_;
  IOSByteArray *alphabet_;
  IOSByteArray *decodabet_;
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                  withInt:(jint)options;

- (jint)read;

- (jint)readWithByteArray:(IOSByteArray *)dest
                  withInt:(jint)off
                  withInt:(jint)len;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecBase64_InputStream *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfCodecBase64_InputStream_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecBase64_InputStream, buffer_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecBase64_InputStream, alphabet_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecBase64_InputStream, decodabet_, IOSByteArray *)

@interface ComItextpdfTextPdfCodecBase64_OutputStream : JavaIoFilterOutputStream {
 @public
  jboolean encode_;
  jint position_;
  IOSByteArray *buffer_;
  jint bufferLength_;
  jint lineLength_;
  jboolean breakLines_;
  IOSByteArray *b4_;
  jboolean suspendEncoding__;
  jint options_;
  IOSByteArray *alphabet_;
  IOSByteArray *decodabet_;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                   withInt:(jint)options;

- (void)writeWithInt:(jint)theByte;

- (void)writeWithByteArray:(IOSByteArray *)theBytes
                   withInt:(jint)off
                   withInt:(jint)len;

- (void)flushBase64;

- (void)close;

- (void)suspendEncoding;

- (void)resumeEncoding;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecBase64_OutputStream *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfCodecBase64_OutputStream_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecBase64_OutputStream, buffer_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecBase64_OutputStream, b4_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecBase64_OutputStream, alphabet_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecBase64_OutputStream, decodabet_, IOSByteArray *)

#endif // _ComItextpdfTextPdfCodecBase64_H_
