//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/ByteArray.java
//

#ifndef _ComItextpdfTextPdfQrcodeByteArray_H_
#define _ComItextpdfTextPdfQrcodeByteArray_H_

@class IOSByteArray;

#import "JreEmulation.h"

#define ComItextpdfTextPdfQrcodeByteArray_INITIAL_SIZE 32

@interface ComItextpdfTextPdfQrcodeByteArray : NSObject {
 @public
  IOSByteArray *bytes_;
  jint size__;
}

- (instancetype)init;

- (instancetype)initWithInt:(jint)size;

- (instancetype)initWithByteArray:(IOSByteArray *)byteArray;

- (jint)atWithInt:(jint)index;

- (void)setWithInt:(jint)index
           withInt:(jint)value;

- (jint)size;

- (jboolean)isEmpty;

- (void)appendByteWithInt:(jint)value;

- (void)reserveWithInt:(jint)capacity;

- (void)setWithByteArray:(IOSByteArray *)source
                 withInt:(jint)offset
                 withInt:(jint)count;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfQrcodeByteArray *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfQrcodeByteArray_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfQrcodeByteArray, bytes_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfQrcodeByteArray, INITIAL_SIZE, jint)

#endif // _ComItextpdfTextPdfQrcodeByteArray_H_
