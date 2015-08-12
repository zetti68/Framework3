//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/FileChannelRandomAccessSource.java
//

#ifndef _ComItextpdfTextIoFileChannelRandomAccessSource_H_
#define _ComItextpdfTextIoFileChannelRandomAccessSource_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"

@class IOSByteArray;
@class JavaNioChannelsFileChannel;

@interface ComItextpdfTextIoFileChannelRandomAccessSource : NSObject < ComItextpdfTextIoRandomAccessSource >

#pragma mark Public

- (instancetype)initWithJavaNioChannelsFileChannel:(JavaNioChannelsFileChannel *)channel;

- (void)close;

- (jint)getWithLong:(jlong)position;

- (jint)getWithLong:(jlong)position
      withByteArray:(IOSByteArray *)bytes
            withInt:(jint)off
            withInt:(jint)len;

- (jlong)length;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextIoFileChannelRandomAccessSource)

FOUNDATION_EXPORT void ComItextpdfTextIoFileChannelRandomAccessSource_initWithJavaNioChannelsFileChannel_(ComItextpdfTextIoFileChannelRandomAccessSource *self, JavaNioChannelsFileChannel *channel);

FOUNDATION_EXPORT ComItextpdfTextIoFileChannelRandomAccessSource *new_ComItextpdfTextIoFileChannelRandomAccessSource_initWithJavaNioChannelsFileChannel_(JavaNioChannelsFileChannel *channel) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextIoFileChannelRandomAccessSource)

#endif // _ComItextpdfTextIoFileChannelRandomAccessSource_H_
