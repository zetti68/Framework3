//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/HyphenationEvent.java
//

#ifndef _ComItextpdfTextPdfHyphenationEvent_H_
#define _ComItextpdfTextPdfHyphenationEvent_H_

@class ComItextpdfTextPdfBaseFont;

#import "JreEmulation.h"

@protocol ComItextpdfTextPdfHyphenationEvent < NSObject, JavaObject >

- (NSString *)getHyphenSymbol;

- (NSString *)getHyphenatedWordPreWithNSString:(NSString *)word
                withComItextpdfTextPdfBaseFont:(ComItextpdfTextPdfBaseFont *)font
                                     withFloat:(jfloat)fontSize
                                     withFloat:(jfloat)remainingWidth;

- (NSString *)getHyphenatedWordPost;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfHyphenationEvent_init() {}

#endif // _ComItextpdfTextPdfHyphenationEvent_H_