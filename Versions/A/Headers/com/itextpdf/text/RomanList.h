//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/RomanList.java
//

#ifndef _ComItextpdfTextRomanList_H_
#define _ComItextpdfTextRomanList_H_

@protocol ComItextpdfTextElement;

#import "JreEmulation.h"
#include "com/itextpdf/text/List.h"

@interface ComItextpdfTextRomanList : ComItextpdfTextList {
}

- (instancetype)init;

- (instancetype)initWithInt:(jint)symbolIndent;

- (instancetype)initWithBoolean:(jboolean)lowercase
                        withInt:(jint)symbolIndent;

- (jboolean)addWithComItextpdfTextElement:(id<ComItextpdfTextElement>)o;

@end

__attribute__((always_inline)) inline void ComItextpdfTextRomanList_init() {}

#endif // _ComItextpdfTextRomanList_H_
