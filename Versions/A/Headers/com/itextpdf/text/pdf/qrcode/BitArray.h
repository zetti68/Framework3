//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/BitArray.java
//

#ifndef _ComItextpdfTextPdfQrcodeBitArray_H_
#define _ComItextpdfTextPdfQrcodeBitArray_H_

#include "J2ObjC_header.h"

@class IOSIntArray;

@interface ComItextpdfTextPdfQrcodeBitArray : NSObject {
 @public
  IOSIntArray *bits_;
  jint size_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

- (void)clear;

- (void)flipWithInt:(jint)i;

- (jboolean)getWithInt:(jint)i;

- (IOSIntArray *)getBitArray;

- (jint)getSize;

- (jboolean)isRangeWithInt:(jint)start
                   withInt:(jint)end
               withBoolean:(jboolean)value;

- (void)reverse;

- (void)setWithInt:(jint)i;

- (void)setBulkWithInt:(jint)i
               withInt:(jint)newBits;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfQrcodeBitArray)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfQrcodeBitArray, bits_, IOSIntArray *)

FOUNDATION_EXPORT void ComItextpdfTextPdfQrcodeBitArray_initWithInt_(ComItextpdfTextPdfQrcodeBitArray *self, jint size);

FOUNDATION_EXPORT ComItextpdfTextPdfQrcodeBitArray *new_ComItextpdfTextPdfQrcodeBitArray_initWithInt_(jint size) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfQrcodeBitArray)

#endif // _ComItextpdfTextPdfQrcodeBitArray_H_
