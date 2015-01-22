//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/MappedChannelRandomAccessSource.java
//

#ifndef _ComItextpdfTextIoMappedChannelRandomAccessSource_H_
#define _ComItextpdfTextIoMappedChannelRandomAccessSource_H_

@class ComItextpdfTextIoByteBufferRandomAccessSource;
@class IOSByteArray;
@class JavaIoIOException;
@class JavaNioChannelsFileChannel;

#import "JreEmulation.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"

@interface ComItextpdfTextIoMappedChannelRandomAccessSource : NSObject < ComItextpdfTextIoRandomAccessSource > {
 @public
  JavaNioChannelsFileChannel *channel_;
  jlong offset_;
  jlong length__;
  ComItextpdfTextIoByteBufferRandomAccessSource *source_;
}

- (instancetype)initWithJavaNioChannelsFileChannel:(JavaNioChannelsFileChannel *)channel
                                          withLong:(jlong)offset
                                          withLong:(jlong)length;

- (void)open;

+ (jboolean)exceptionIsMapFailureExceptionWithJavaIoIOException:(JavaIoIOException *)e;

- (jint)getWithLong:(jlong)position;

- (jint)getWithLong:(jlong)position
      withByteArray:(IOSByteArray *)bytes
            withInt:(jint)off
            withInt:(jint)len;

- (jlong)length;

- (void)close;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfTextIoMappedChannelRandomAccessSource *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextIoMappedChannelRandomAccessSource_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextIoMappedChannelRandomAccessSource, channel_, JavaNioChannelsFileChannel *)
J2OBJC_FIELD_SETTER(ComItextpdfTextIoMappedChannelRandomAccessSource, source_, ComItextpdfTextIoByteBufferRandomAccessSource *)

#endif // _ComItextpdfTextIoMappedChannelRandomAccessSource_H_