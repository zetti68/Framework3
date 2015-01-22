//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ZapfDingbatsList.java
//

#ifndef _ComItextpdfTextZapfDingbatsList_H_
#define _ComItextpdfTextZapfDingbatsList_H_

@class ComItextpdfTextBaseColor;
@protocol ComItextpdfTextElement;

#import "JreEmulation.h"
#include "com/itextpdf/text/List.h"

@interface ComItextpdfTextZapfDingbatsList : ComItextpdfTextList {
 @public
  jint zn_;
}

- (instancetype)initWithInt:(jint)zn;

- (instancetype)initWithInt:(jint)zn
                    withInt:(jint)symbolIndent;

- (instancetype)initWithInt:(jint)zn
                    withInt:(jint)symbolIndent
withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)zapfDingbatColor;

- (void)setDingbatColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)zapfDingbatColor;

- (void)setCharNumberWithInt:(jint)zn;

- (jint)getCharNumber;

- (jboolean)addWithComItextpdfTextElement:(id<ComItextpdfTextElement>)o;

- (void)copyAllFieldsTo:(ComItextpdfTextZapfDingbatsList *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextZapfDingbatsList_init() {}

#endif // _ComItextpdfTextZapfDingbatsList_H_
