//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ExtraEncoding.java
//

#ifndef _ComItextpdfTextPdfExtraEncoding_H_
#define _ComItextpdfTextPdfExtraEncoding_H_

@class IOSByteArray;

#import "JreEmulation.h"

@protocol ComItextpdfTextPdfExtraEncoding < NSObject, JavaObject >

- (IOSByteArray *)charToByteWithNSString:(NSString *)text
                            withNSString:(NSString *)encoding;

- (IOSByteArray *)charToByteWithChar:(jchar)char1
                        withNSString:(NSString *)encoding;

- (NSString *)byteToCharWithByteArray:(IOSByteArray *)b
                         withNSString:(NSString *)encoding;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfExtraEncoding_init() {}

#endif // _ComItextpdfTextPdfExtraEncoding_H_