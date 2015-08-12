//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/ArrayRandomAccessSource.java
//

#ifndef _ComItextpdfTextIoArrayRandomAccessSource_H_
#define _ComItextpdfTextIoArrayRandomAccessSource_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"

@class IOSByteArray;

@interface ComItextpdfTextIoArrayRandomAccessSource : NSObject < ComItextpdfTextIoRandomAccessSource >

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)array;

- (void)close;

- (jint)getWithLong:(jlong)offset;

- (jint)getWithLong:(jlong)offset
      withByteArray:(IOSByteArray *)bytes
            withInt:(jint)off
            withInt:(jint)len;

- (jlong)length;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextIoArrayRandomAccessSource)

FOUNDATION_EXPORT void ComItextpdfTextIoArrayRandomAccessSource_initWithByteArray_(ComItextpdfTextIoArrayRandomAccessSource *self, IOSByteArray *array);

FOUNDATION_EXPORT ComItextpdfTextIoArrayRandomAccessSource *new_ComItextpdfTextIoArrayRandomAccessSource_initWithByteArray_(IOSByteArray *array) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextIoArrayRandomAccessSource)

#endif // _ComItextpdfTextIoArrayRandomAccessSource_H_
