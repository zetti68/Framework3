//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/RASInputStream.java
//

#ifndef _ComItextpdfTextIoRASInputStream_H_
#define _ComItextpdfTextIoRASInputStream_H_

#include "J2ObjC_header.h"
#include "java/io/InputStream.h"

@class IOSByteArray;
@protocol ComItextpdfTextIoRandomAccessSource;

@interface ComItextpdfTextIoRASInputStream : JavaIoInputStream

#pragma mark Public

- (instancetype)initWithComItextpdfTextIoRandomAccessSource:(id<ComItextpdfTextIoRandomAccessSource>)source;

- (jint)read;

- (jint)readWithByteArray:(IOSByteArray *)b
                  withInt:(jint)off
                  withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextIoRASInputStream)

FOUNDATION_EXPORT void ComItextpdfTextIoRASInputStream_initWithComItextpdfTextIoRandomAccessSource_(ComItextpdfTextIoRASInputStream *self, id<ComItextpdfTextIoRandomAccessSource> source);

FOUNDATION_EXPORT ComItextpdfTextIoRASInputStream *new_ComItextpdfTextIoRASInputStream_initWithComItextpdfTextIoRandomAccessSource_(id<ComItextpdfTextIoRandomAccessSource> source) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextIoRASInputStream)

#endif // _ComItextpdfTextIoRASInputStream_H_
