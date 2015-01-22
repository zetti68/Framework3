//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/OutputStreamCounter.java
//

#ifndef _ComItextpdfTextPdfOutputStreamCounter_H_
#define _ComItextpdfTextPdfOutputStreamCounter_H_

@class IOSByteArray;

#import "JreEmulation.h"
#include "java/io/OutputStream.h"

@interface ComItextpdfTextPdfOutputStreamCounter : JavaIoOutputStream {
 @public
  JavaIoOutputStream *out_;
  jlong counter_;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (void)close;

- (void)flush;

- (void)writeWithByteArray:(IOSByteArray *)b;

- (void)writeWithInt:(jint)b;

- (void)writeWithByteArray:(IOSByteArray *)b
                   withInt:(jint)off
                   withInt:(jint)len;

- (jlong)getCounter;

- (void)resetCounter;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfOutputStreamCounter *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfOutputStreamCounter_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfOutputStreamCounter, out_, JavaIoOutputStream *)

#endif // _ComItextpdfTextPdfOutputStreamCounter_H_
