//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/Type3Font.java
//

#ifndef _ComItextpdfTextPdfType3Font_H_
#define _ComItextpdfTextPdfType3Font_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/BaseFont.h"

@class ComItextpdfTextPdfPdfContentByte;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfStream;
@class ComItextpdfTextPdfPdfWriter;
@class IOSByteArray;
@class IOSCharArray;
@class IOSIntArray;
@class IOSObjectArray;

@interface ComItextpdfTextPdfType3Font : ComItextpdfTextPdfBaseFont

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                        withBoolean:(jboolean)colorized;

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                      withCharArray:(IOSCharArray *)chars
                                        withBoolean:(jboolean)colorized;

- (jboolean)charExistsWithInt:(jint)c;

- (IOSByteArray *)convertToBytesWithNSString:(NSString *)text;

- (ComItextpdfTextPdfPdfContentByte *)defineGlyphWithChar:(jchar)c
                                                withFloat:(jfloat)wx
                                                withFloat:(jfloat)llx
                                                withFloat:(jfloat)lly
                                                withFloat:(jfloat)urx
                                                withFloat:(jfloat)ury;

- (IOSObjectArray *)getAllNameEntries;

- (IOSIntArray *)getCharBBoxWithInt:(jint)c;

- (IOSObjectArray *)getFamilyFontName;

- (jfloat)getFontDescriptorWithInt:(jint)key
                         withFloat:(jfloat)fontSize;

- (IOSObjectArray *)getFullFontName;

- (ComItextpdfTextPdfPdfStream *)getFullFontStream;

- (jint)getKerningWithInt:(jint)char1
                  withInt:(jint)char2;

- (NSString *)getPostscriptFontName;

- (jint)getWidthWithInt:(jint)char1;

- (jint)getWidthWithNSString:(NSString *)text;

- (jboolean)hasKernPairs;

- (jboolean)setCharAdvanceWithInt:(jint)c
                          withInt:(jint)advance;

- (jboolean)setKerningWithInt:(jint)char1
                      withInt:(jint)char2
                      withInt:(jint)kern;

- (void)setPostscriptFontNameWithNSString:(NSString *)name;

#pragma mark Protected

- (IOSIntArray *)getRawCharBBoxWithInt:(jint)c
                          withNSString:(NSString *)name;

#pragma mark Package-Private

- (IOSByteArray *)convertToBytesWithInt:(jint)char1;

- (jint)getRawWidthWithInt:(jint)c
              withNSString:(NSString *)name;

- (void)writeFontWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
      withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                               withNSObjectArray:(IOSObjectArray *)params;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfType3Font)

FOUNDATION_EXPORT void ComItextpdfTextPdfType3Font_initWithComItextpdfTextPdfPdfWriter_withCharArray_withBoolean_(ComItextpdfTextPdfType3Font *self, ComItextpdfTextPdfPdfWriter *writer, IOSCharArray *chars, jboolean colorized);

FOUNDATION_EXPORT ComItextpdfTextPdfType3Font *new_ComItextpdfTextPdfType3Font_initWithComItextpdfTextPdfPdfWriter_withCharArray_withBoolean_(ComItextpdfTextPdfPdfWriter *writer, IOSCharArray *chars, jboolean colorized) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfType3Font_initWithComItextpdfTextPdfPdfWriter_withBoolean_(ComItextpdfTextPdfType3Font *self, ComItextpdfTextPdfPdfWriter *writer, jboolean colorized);

FOUNDATION_EXPORT ComItextpdfTextPdfType3Font *new_ComItextpdfTextPdfType3Font_initWithComItextpdfTextPdfPdfWriter_withBoolean_(ComItextpdfTextPdfPdfWriter *writer, jboolean colorized) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfType3Font)

#endif // _ComItextpdfTextPdfType3Font_H_
