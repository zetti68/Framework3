//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/JBIG2Image.java
//

#ifndef _ComItextpdfTextPdfCodecJBIG2Image_H_
#define _ComItextpdfTextPdfCodecJBIG2Image_H_

@class ComItextpdfTextImage;
@class ComItextpdfTextPdfRandomAccessFileOrArray;
@class IOSByteArray;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfCodecJBIG2Image : NSObject {
}

+ (IOSByteArray *)getGlobalSegmentWithComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)ra;

+ (ComItextpdfTextImage *)getJbig2ImageWithComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)ra
                                                                             withInt:(jint)page;

+ (jint)getNumberOfPagesWithComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)ra;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfCodecJBIG2Image_init() {}

#endif // _ComItextpdfTextPdfCodecJBIG2Image_H_