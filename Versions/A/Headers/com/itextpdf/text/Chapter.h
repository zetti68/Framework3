//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Chapter.java
//

#ifndef _ComItextpdfTextChapter_H_
#define _ComItextpdfTextChapter_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/Section.h"

@class ComItextpdfTextParagraph;

@interface ComItextpdfTextChapter : ComItextpdfTextSection

#pragma mark Public

- (instancetype)initWithInt:(jint)number;

- (instancetype)initWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title
                                         withInt:(jint)number;

- (instancetype)initWithNSString:(NSString *)title
                         withInt:(jint)number;

- (jboolean)isNestable;

- (jint)type;

#pragma mark Package-Private


@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextChapter)

FOUNDATION_EXPORT void ComItextpdfTextChapter_initWithInt_(ComItextpdfTextChapter *self, jint number);

FOUNDATION_EXPORT ComItextpdfTextChapter *new_ComItextpdfTextChapter_initWithInt_(jint number) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextChapter_initWithComItextpdfTextParagraph_withInt_(ComItextpdfTextChapter *self, ComItextpdfTextParagraph *title, jint number);

FOUNDATION_EXPORT ComItextpdfTextChapter *new_ComItextpdfTextChapter_initWithComItextpdfTextParagraph_withInt_(ComItextpdfTextParagraph *title, jint number) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextChapter_initWithNSString_withInt_(ComItextpdfTextChapter *self, NSString *title, jint number);

FOUNDATION_EXPORT ComItextpdfTextChapter *new_ComItextpdfTextChapter_initWithNSString_withInt_(NSString *title, jint number) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextChapter)

#endif // _ComItextpdfTextChapter_H_
