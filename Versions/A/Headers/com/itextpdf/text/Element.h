//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Element.java
//

#ifndef _ComItextpdfTextElement_H_
#define _ComItextpdfTextElement_H_

@protocol ComItextpdfTextElementListener;
@protocol JavaUtilList;

#import "JreEmulation.h"

#define ComItextpdfTextElement_ALIGN_BASELINE 7
#define ComItextpdfTextElement_ALIGN_BOTTOM 6
#define ComItextpdfTextElement_ALIGN_CENTER 1
#define ComItextpdfTextElement_ALIGN_JUSTIFIED 3
#define ComItextpdfTextElement_ALIGN_JUSTIFIED_ALL 8
#define ComItextpdfTextElement_ALIGN_LEFT 0
#define ComItextpdfTextElement_ALIGN_MIDDLE 5
#define ComItextpdfTextElement_ALIGN_RIGHT 2
#define ComItextpdfTextElement_ALIGN_TOP 4
#define ComItextpdfTextElement_ALIGN_UNDEFINED -1
#define ComItextpdfTextElement_ANCHOR 17
#define ComItextpdfTextElement_ANNOTATION 29
#define ComItextpdfTextElement_AUTHOR 4
#define ComItextpdfTextElement_CCITTG3_1D 257
#define ComItextpdfTextElement_CCITTG3_2D 258
#define ComItextpdfTextElement_CCITTG4 256
#define ComItextpdfTextElement_CCITT_BLACKIS1 1
#define ComItextpdfTextElement_CCITT_ENCODEDBYTEALIGN 2
#define ComItextpdfTextElement_CCITT_ENDOFBLOCK 8
#define ComItextpdfTextElement_CCITT_ENDOFLINE 4
#define ComItextpdfTextElement_CHAPTER 16
#define ComItextpdfTextElement_CHUNK 10
#define ComItextpdfTextElement_CREATIONDATE 6
#define ComItextpdfTextElement_CREATOR 7
#define ComItextpdfTextElement_DIV 37
#define ComItextpdfTextElement_HEADER 0
#define ComItextpdfTextElement_IMGRAW 34
#define ComItextpdfTextElement_IMGTEMPLATE 35
#define ComItextpdfTextElement_JBIG2 36
#define ComItextpdfTextElement_JPEG 32
#define ComItextpdfTextElement_JPEG2000 33
#define ComItextpdfTextElement_KEYWORDS 3
#define ComItextpdfTextElement_LANGUAGE 8
#define ComItextpdfTextElement_LIST 14
#define ComItextpdfTextElement_LISTITEM 15
#define ComItextpdfTextElement_MARKED 50
#define ComItextpdfTextElement_PARAGRAPH 12
#define ComItextpdfTextElement_PHRASE 11
#define ComItextpdfTextElement_PRODUCER 5
#define ComItextpdfTextElement_PTABLE 23
#define ComItextpdfTextElement_RECTANGLE 30
#define ComItextpdfTextElement_SECTION 13
#define ComItextpdfTextElement_SUBJECT 2
#define ComItextpdfTextElement_TITLE 1
#define ComItextpdfTextElement_WRITABLE_DIRECT 666
#define ComItextpdfTextElement_YMARK 55

@protocol ComItextpdfTextElement < NSObject, JavaObject >

- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener;

- (jint)type;

- (jboolean)isContent;

- (jboolean)isNestable;

- (id<JavaUtilList>)getChunks;

- (NSString *)description;

@end

__attribute__((always_inline)) inline void ComItextpdfTextElement_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, HEADER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, TITLE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, SUBJECT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, KEYWORDS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, AUTHOR, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, PRODUCER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CREATIONDATE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CREATOR, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, LANGUAGE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CHUNK, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, PHRASE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, PARAGRAPH, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, SECTION, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, LIST, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, LISTITEM, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CHAPTER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ANCHOR, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, PTABLE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ANNOTATION, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, RECTANGLE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, JPEG, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, JPEG2000, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, IMGRAW, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, IMGTEMPLATE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, JBIG2, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, DIV, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, MARKED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, YMARK, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, WRITABLE_DIRECT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_UNDEFINED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_LEFT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_CENTER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_RIGHT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_JUSTIFIED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_TOP, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_MIDDLE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_BOTTOM, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_BASELINE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, ALIGN_JUSTIFIED_ALL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CCITTG4, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CCITTG3_1D, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CCITTG3_2D, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CCITT_BLACKIS1, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CCITT_ENCODEDBYTEALIGN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CCITT_ENDOFLINE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextElement, CCITT_ENDOFBLOCK, jint)

#endif // _ComItextpdfTextElement_H_