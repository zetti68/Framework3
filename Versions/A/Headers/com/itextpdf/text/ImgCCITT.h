//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ImgCCITT.java
//

#ifndef _ComItextpdfTextImgCCITT_H_
#define _ComItextpdfTextImgCCITT_H_

@class IOSByteArray;

#import "JreEmulation.h"
#include "com/itextpdf/text/Image.h"

@interface ComItextpdfTextImgCCITT : ComItextpdfTextImage {
}

- (instancetype)initWithComItextpdfTextImage:(ComItextpdfTextImage *)image;

- (instancetype)initWithInt:(jint)width
                    withInt:(jint)height
                withBoolean:(jboolean)reverseBits
                    withInt:(jint)typeCCITT
                    withInt:(jint)parameters
              withByteArray:(IOSByteArray *)data;

@end

__attribute__((always_inline)) inline void ComItextpdfTextImgCCITT_init() {}

#endif // _ComItextpdfTextImgCCITT_H_
