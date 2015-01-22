//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/FileChannelRandomAccessSource.java
//

#ifndef _ComItextpdfTextIoFileChannelRandomAccessSource_H_
#define _ComItextpdfTextIoFileChannelRandomAccessSource_H_

@class ComItextpdfTextIoMappedChannelRandomAccessSource;
@class IOSByteArray;
@class JavaNioChannelsFileChannel;

#import "JreEmulation.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"

@interface ComItextpdfTextIoFileChannelRandomAccessSource : NSObject < ComItextpdfTextIoRandomAccessSource > {
 @public
  JavaNioChannelsFileChannel *channel_;
  ComItextpdfTextIoMappedChannelRandomAccessSource *source_;
}

- (instancetype)initWithJavaNioChannelsFileChannel:(JavaNioChannelsFileChannel *)channel;

- (void)close;

- (jint)getWithLong:(jlong)position;

- (jint)getWithLong:(jlong)position
      withByteArray:(IOSByteArray *)bytes
            withInt:(jint)off
            withInt:(jint)len;

- (jlong)length;

- (void)copyAllFieldsTo:(ComItextpdfTextIoFileChannelRandomAccessSource *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextIoFileChannelRandomAccessSource_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextIoFileChannelRandomAccessSource, channel_, JavaNioChannelsFileChannel *)
J2OBJC_FIELD_SETTER(ComItextpdfTextIoFileChannelRandomAccessSource, source_, ComItextpdfTextIoMappedChannelRandomAccessSource *)

#endif // _ComItextpdfTextIoFileChannelRandomAccessSource_H_
