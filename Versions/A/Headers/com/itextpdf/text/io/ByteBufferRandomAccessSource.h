//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/ByteBufferRandomAccessSource.java
//

#ifndef _ComItextpdfTextIoByteBufferRandomAccessSource_H_
#define _ComItextpdfTextIoByteBufferRandomAccessSource_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"

@class IOSByteArray;
@class JavaNioByteBuffer;

@interface ComItextpdfTextIoByteBufferRandomAccessSource : NSObject < ComItextpdfTextIoRandomAccessSource >

#pragma mark Public

- (instancetype)initWithJavaNioByteBuffer:(JavaNioByteBuffer *)byteBuffer;

- (void)close;

- (jint)getWithLong:(jlong)position;

- (jint)getWithLong:(jlong)position
      withByteArray:(IOSByteArray *)bytes
            withInt:(jint)off
            withInt:(jint)len;

- (jlong)length;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextIoByteBufferRandomAccessSource)

FOUNDATION_EXPORT void ComItextpdfTextIoByteBufferRandomAccessSource_initWithJavaNioByteBuffer_(ComItextpdfTextIoByteBufferRandomAccessSource *self, JavaNioByteBuffer *byteBuffer);

FOUNDATION_EXPORT ComItextpdfTextIoByteBufferRandomAccessSource *new_ComItextpdfTextIoByteBufferRandomAccessSource_initWithJavaNioByteBuffer_(JavaNioByteBuffer *byteBuffer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextIoByteBufferRandomAccessSource)

#endif // _ComItextpdfTextIoByteBufferRandomAccessSource_H_
