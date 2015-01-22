//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Phrase.java
//

#ifndef _ComItextpdfTextPhrase_H_
#define _ComItextpdfTextPhrase_H_

@class ComItextpdfTextChunk;
@class ComItextpdfTextFont;
@class ComItextpdfTextTabSettings;
@protocol ComItextpdfTextElement;
@protocol ComItextpdfTextElementListener;
@protocol ComItextpdfTextPdfHyphenationEvent;
@protocol JavaUtilCollection;
@protocol JavaUtilList;

#import "JreEmulation.h"
#include "com/itextpdf/text/TextElementArray.h"
#include "java/util/ArrayList.h"

#define ComItextpdfTextPhrase_serialVersionUID 2643594602455068231LL

@interface ComItextpdfTextPhrase : JavaUtilArrayList < ComItextpdfTextTextElementArray > {
 @public
  jfloat leading_;
  jfloat multipliedLeading_;
  ComItextpdfTextFont *font_;
  id<ComItextpdfTextPdfHyphenationEvent> hyphenation_;
  ComItextpdfTextTabSettings *tabSettings_;
}

- (instancetype)init;

- (instancetype)initWithComItextpdfTextPhrase:(ComItextpdfTextPhrase *)phrase;

- (instancetype)initWithFloat:(jfloat)leading;

- (instancetype)initWithComItextpdfTextChunk:(ComItextpdfTextChunk *)chunk;

- (instancetype)initWithFloat:(jfloat)leading
     withComItextpdfTextChunk:(ComItextpdfTextChunk *)chunk;

- (instancetype)initWithNSString:(NSString *)string;

- (instancetype)initWithNSString:(NSString *)string
         withComItextpdfTextFont:(ComItextpdfTextFont *)font;

- (instancetype)initWithFloat:(jfloat)leading
                 withNSString:(NSString *)string;

- (instancetype)initWithFloat:(jfloat)leading
                 withNSString:(NSString *)string
      withComItextpdfTextFont:(ComItextpdfTextFont *)font;

- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener;

- (jint)type;

- (id<JavaUtilList>)getChunks;

- (jboolean)isContent;

- (jboolean)isNestable;

- (void)addWithInt:(jint)index
            withId:(id<ComItextpdfTextElement>)element;

- (jboolean)addWithNSString:(NSString *)s;

- (jboolean)addWithId:(id<ComItextpdfTextElement>)element;

- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

- (jboolean)addChunkWithComItextpdfTextChunk:(ComItextpdfTextChunk *)chunk;

- (void)addSpecialWithComItextpdfTextElement:(id<ComItextpdfTextElement>)object;

- (void)setLeadingWithFloat:(jfloat)fixedLeading
                  withFloat:(jfloat)multipliedLeading;

- (void)setLeadingWithFloat:(jfloat)fixedLeading;

- (void)setMultipliedLeadingWithFloat:(jfloat)multipliedLeading;

- (void)setFontWithComItextpdfTextFont:(ComItextpdfTextFont *)font;

- (jfloat)getLeading;

- (jfloat)getMultipliedLeading;

- (jfloat)getTotalLeading;

- (jboolean)hasLeading;

- (ComItextpdfTextFont *)getFont;

- (NSString *)getContent;

- (jboolean)isEmpty;

- (id<ComItextpdfTextPdfHyphenationEvent>)getHyphenation;

- (void)setHyphenationWithComItextpdfTextPdfHyphenationEvent:(id<ComItextpdfTextPdfHyphenationEvent>)hyphenation;

- (ComItextpdfTextTabSettings *)getTabSettings;

- (void)setTabSettingsWithComItextpdfTextTabSettings:(ComItextpdfTextTabSettings *)tabSettings;

- (instancetype)initWithBoolean:(jboolean)dummy;

+ (ComItextpdfTextPhrase *)getInstanceWithNSString:(NSString *)string;

+ (ComItextpdfTextPhrase *)getInstanceWithInt:(jint)leading
                                 withNSString:(NSString *)string;

+ (ComItextpdfTextPhrase *)getInstanceWithInt:(jint)leading
                                 withNSString:(NSString *)string
                      withComItextpdfTextFont:(ComItextpdfTextFont *)font;

- (jboolean)trim;

- (void)copyAllFieldsTo:(ComItextpdfTextPhrase *)other;


@end

__attribute__((always_inline)) inline void ComItextpdfTextPhrase_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPhrase, font_, ComItextpdfTextFont *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPhrase, hyphenation_, id<ComItextpdfTextPdfHyphenationEvent>)
J2OBJC_FIELD_SETTER(ComItextpdfTextPhrase, tabSettings_, ComItextpdfTextTabSettings *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPhrase, serialVersionUID, jlong)

#endif // _ComItextpdfTextPhrase_H_
