//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ByteBuffer.java
//

#ifndef _ComItextpdfTextPdfByteBuffer_H_
#define _ComItextpdfTextPdfByteBuffer_H_

#include "J2ObjC_header.h"
#include "java/io/OutputStream.h"

@class IOSByteArray;

#define ComItextpdfTextPdfByteBuffer_ZERO 48

@interface ComItextpdfTextPdfByteBuffer : JavaIoOutputStream {
 @public
  jint count_;
  IOSByteArray *buf_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)size;

- (ComItextpdfTextPdfByteBuffer *)appendWithByte:(jbyte)b;

- (ComItextpdfTextPdfByteBuffer *)appendWithByteArray:(IOSByteArray *)b;

- (ComItextpdfTextPdfByteBuffer *)appendWithByteArray:(IOSByteArray *)b
                                              withInt:(jint)off
                                              withInt:(jint)len;

- (ComItextpdfTextPdfByteBuffer *)appendWithComItextpdfTextPdfByteBuffer:(ComItextpdfTextPdfByteBuffer *)buf;

- (ComItextpdfTextPdfByteBuffer *)appendWithChar:(jchar)c;

- (ComItextpdfTextPdfByteBuffer *)appendWithDouble:(jdouble)d;

- (ComItextpdfTextPdfByteBuffer *)appendWithFloat:(jfloat)i;

- (ComItextpdfTextPdfByteBuffer *)appendWithInt:(jint)i;

- (ComItextpdfTextPdfByteBuffer *)appendWithLong:(jlong)i;

- (ComItextpdfTextPdfByteBuffer *)appendWithNSString:(NSString *)str;

- (ComItextpdfTextPdfByteBuffer *)append_iWithInt:(jint)b;

- (ComItextpdfTextPdfByteBuffer *)appendHexWithByte:(jbyte)b;

+ (void)fillCacheWithInt:(jint)decimals;

+ (NSString *)formatDoubleWithDouble:(jdouble)d;

+ (NSString *)formatDoubleWithDouble:(jdouble)d
    withComItextpdfTextPdfByteBuffer:(ComItextpdfTextPdfByteBuffer *)buf;

- (IOSByteArray *)getBuffer;

- (void)reset;

+ (void)setCacheSizeWithInt:(jint)size;

- (void)setSizeWithInt:(jint)size;

- (jint)size;

- (IOSByteArray *)toByteArray;

- (NSString *)description;

- (NSString *)toStringWithNSString:(NSString *)enc;

- (void)writeWithByteArray:(IOSByteArray *)b
                   withInt:(jint)off
                   withInt:(jint)len;

- (void)writeWithInt:(jint)b;

- (void)writeToWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfByteBuffer)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfByteBuffer, buf_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfByteBuffer, ZERO, jbyte)

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfByteBuffer_HIGH_PRECISION_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfByteBuffer, HIGH_PRECISION_, jboolean)
J2OBJC_STATIC_FIELD_REF_GETTER(ComItextpdfTextPdfByteBuffer, HIGH_PRECISION_, jboolean)

FOUNDATION_EXPORT void ComItextpdfTextPdfByteBuffer_init(ComItextpdfTextPdfByteBuffer *self);

FOUNDATION_EXPORT ComItextpdfTextPdfByteBuffer *new_ComItextpdfTextPdfByteBuffer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfByteBuffer_initWithInt_(ComItextpdfTextPdfByteBuffer *self, jint size);

FOUNDATION_EXPORT ComItextpdfTextPdfByteBuffer *new_ComItextpdfTextPdfByteBuffer_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfByteBuffer_setCacheSizeWithInt_(jint size);

FOUNDATION_EXPORT void ComItextpdfTextPdfByteBuffer_fillCacheWithInt_(jint decimals);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfByteBuffer_formatDoubleWithDouble_(jdouble d);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfByteBuffer_formatDoubleWithDouble_withComItextpdfTextPdfByteBuffer_(jdouble d, ComItextpdfTextPdfByteBuffer *buf);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfByteBuffer)

#endif // _ComItextpdfTextPdfByteBuffer_H_
