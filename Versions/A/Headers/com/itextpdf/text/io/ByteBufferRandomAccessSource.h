//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/ByteBufferRandomAccessSource.java
//

#ifndef _ComItextpdfTextIoByteBufferRandomAccessSource_H_
#define _ComItextpdfTextIoByteBufferRandomAccessSource_H_

@class IOSByteArray;
@class JavaLangBoolean;
@class JavaNioByteBuffer;

#import "JreEmulation.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"
#include "java/security/PrivilegedAction.h"

@interface ComItextpdfTextIoByteBufferRandomAccessSource : NSObject < ComItextpdfTextIoRandomAccessSource > {
 @public
  JavaNioByteBuffer *byteBuffer_;
}

- (instancetype)initWithJavaNioByteBuffer:(JavaNioByteBuffer *)byteBuffer;

- (jint)getWithLong:(jlong)position;

- (jint)getWithLong:(jlong)position
      withByteArray:(IOSByteArray *)bytes
            withInt:(jint)off
            withInt:(jint)len;

- (jlong)length;

- (void)close;

+ (jboolean)cleanWithJavaNioByteBuffer:(JavaNioByteBuffer *)buffer;

- (void)copyAllFieldsTo:(ComItextpdfTextIoByteBufferRandomAccessSource *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextIoByteBufferRandomAccessSource_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextIoByteBufferRandomAccessSource, byteBuffer_, JavaNioByteBuffer *)

@interface ComItextpdfTextIoByteBufferRandomAccessSource_$1 : NSObject < JavaSecurityPrivilegedAction > {
 @public
  JavaNioByteBuffer *val$buffer_;
}

- (JavaLangBoolean *)run;

- (instancetype)initWithJavaNioByteBuffer:(JavaNioByteBuffer *)capture$0;

@end

__attribute__((always_inline)) inline void ComItextpdfTextIoByteBufferRandomAccessSource_$1_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextIoByteBufferRandomAccessSource_$1, val$buffer_, JavaNioByteBuffer *)

#endif // _ComItextpdfTextIoByteBufferRandomAccessSource_H_
