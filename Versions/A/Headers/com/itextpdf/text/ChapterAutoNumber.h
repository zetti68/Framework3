//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ChapterAutoNumber.java
//

#ifndef _ComItextpdfTextChapterAutoNumber_H_
#define _ComItextpdfTextChapterAutoNumber_H_

@class ComItextpdfTextParagraph;
@class ComItextpdfTextSection;

#import "JreEmulation.h"
#include "com/itextpdf/text/Chapter.h"

#define ComItextpdfTextChapterAutoNumber_serialVersionUID -9217457637987854167LL

@interface ComItextpdfTextChapterAutoNumber : ComItextpdfTextChapter {
 @public
  jboolean numberSet_;
}

- (instancetype)initWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)para;

- (instancetype)initWithNSString:(NSString *)title;

- (ComItextpdfTextSection *)addSectionWithNSString:(NSString *)title;

- (ComItextpdfTextSection *)addSectionWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title;

- (jint)setAutomaticNumberWithInt:(jint)number;

- (void)copyAllFieldsTo:(ComItextpdfTextChapterAutoNumber *)other;


@end

__attribute__((always_inline)) inline void ComItextpdfTextChapterAutoNumber_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextChapterAutoNumber, serialVersionUID, jlong)

#endif // _ComItextpdfTextChapterAutoNumber_H_