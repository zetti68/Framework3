//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ByteBuffer.java
//

#ifndef _ComItextpdfTextPdfByteBuffer_H_
#define _ComItextpdfTextPdfByteBuffer_H_

@class IOSByteArray;
@class IOSCharArray;
@class IOSObjectArray;
@class JavaTextDecimalFormatSymbols;

#import "JreEmulation.h"
#include "java/io/OutputStream.h"

#define ComItextpdfTextPdfByteBuffer_ZERO 48

@interface ComItextpdfTextPdfByteBuffer : JavaIoOutputStream {
 @public
  jint count_;
  IOSByteArray *buf_;
}

- (instancetype)init;

- (instancetype)initWithInt:(jint)size;

+ (void)setCacheSizeWithInt:(jint)size;

+ (void)fillCacheWithInt:(jint)decimals;

+ (IOSByteArray *)convertToBytesWithInt:(jint)i;

- (ComItextpdfTextPdfByteBuffer *)append_iWithInt:(jint)b;

- (ComItextpdfTextPdfByteBuffer *)appendWithByteArray:(IOSByteArray *)b
                                              withInt:(jint)off
                                              withInt:(jint)len;

- (ComItextpdfTextPdfByteBuffer *)appendWithByteArray:(IOSByteArray *)b;

- (ComItextpdfTextPdfByteBuffer *)appendWithNSString:(NSString *)str;

- (ComItextpdfTextPdfByteBuffer *)appendWithChar:(jchar)c;

- (ComItextpdfTextPdfByteBuffer *)appendWithComItextpdfTextPdfByteBuffer:(ComItextpdfTextPdfByteBuffer *)buf;

- (ComItextpdfTextPdfByteBuffer *)appendWithInt:(jint)i;

- (ComItextpdfTextPdfByteBuffer *)appendWithLong:(jlong)i;

- (ComItextpdfTextPdfByteBuffer *)appendWithByte:(jbyte)b;

- (ComItextpdfTextPdfByteBuffer *)appendHexWithByte:(jbyte)b;

- (ComItextpdfTextPdfByteBuffer *)appendWithFloat:(jfloat)i;

- (ComItextpdfTextPdfByteBuffer *)appendWithDouble:(jdouble)d;

+ (NSString *)formatDoubleWithDouble:(jdouble)d;

+ (NSString *)formatDoubleWithDouble:(jdouble)d
    withComItextpdfTextPdfByteBuffer:(ComItextpdfTextPdfByteBuffer *)buf;

- (void)reset;

- (IOSByteArray *)toByteArray;

- (jint)size;

- (void)setSizeWithInt:(jint)size;

- (NSString *)description;

- (NSString *)toStringWithNSString:(NSString *)enc;

- (void)writeToWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (void)writeWithInt:(jint)b;

- (void)writeWithByteArray:(IOSByteArray *)b
                   withInt:(jint)off
                   withInt:(jint)len;

- (IOSByteArray *)getBuffer;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfByteBuffer *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfByteBuffer_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfByteBuffer)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfByteBuffer, buf_, IOSByteArray *)

FOUNDATION_EXPORT jint ComItextpdfTextPdfByteBuffer_byteCacheSize_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfByteBuffer, byteCacheSize_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(ComItextpdfTextPdfByteBuffer, byteCacheSize_, jint)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfByteBuffer_byteCache_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfByteBuffer, byteCache_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfByteBuffer, byteCache_, IOSObjectArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfByteBuffer, ZERO, jbyte)

FOUNDATION_EXPORT IOSCharArray *ComItextpdfTextPdfByteBuffer_chars_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfByteBuffer, chars_, IOSCharArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfByteBuffer_bytes_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfByteBuffer, bytes_, IOSByteArray *)

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfByteBuffer_HIGH_PRECISION_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfByteBuffer, HIGH_PRECISION_, jboolean)
J2OBJC_STATIC_FIELD_REF_GETTER(ComItextpdfTextPdfByteBuffer, HIGH_PRECISION_, jboolean)

FOUNDATION_EXPORT JavaTextDecimalFormatSymbols *ComItextpdfTextPdfByteBuffer_dfs_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfByteBuffer, dfs_, JavaTextDecimalFormatSymbols *)

#endif // _ComItextpdfTextPdfByteBuffer_H_
