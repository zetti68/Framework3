//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/RAFRandomAccessSource.java
//

#ifndef _ComItextpdfTextIoRAFRandomAccessSource_H_
#define _ComItextpdfTextIoRAFRandomAccessSource_H_

@class IOSByteArray;
@class JavaIoRandomAccessFile;

#import "JreEmulation.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"

@interface ComItextpdfTextIoRAFRandomAccessSource : NSObject < ComItextpdfTextIoRandomAccessSource > {
 @public
  JavaIoRandomAccessFile *raf_;
  jlong length__;
}

- (instancetype)initWithJavaIoRandomAccessFile:(JavaIoRandomAccessFile *)raf;

- (jint)getWithLong:(jlong)position;

- (jint)getWithLong:(jlong)position
      withByteArray:(IOSByteArray *)bytes
            withInt:(jint)off
            withInt:(jint)len;

- (jlong)length;

- (void)close;

- (void)copyAllFieldsTo:(ComItextpdfTextIoRAFRandomAccessSource *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextIoRAFRandomAccessSource_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextIoRAFRandomAccessSource, raf_, JavaIoRandomAccessFile *)

#endif // _ComItextpdfTextIoRAFRandomAccessSource_H_
