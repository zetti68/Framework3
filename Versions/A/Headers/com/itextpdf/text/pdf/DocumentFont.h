//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/DocumentFont.java
//

#ifndef _ComItextpdfTextPdfDocumentFont_H_
#define _ComItextpdfTextPdfDocumentFont_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/BaseFont.h"

@class ComItextpdfTextPdfIntHashtable;
@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfStream;
@class ComItextpdfTextPdfPdfWriter;
@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;

@interface ComItextpdfTextPdfDocumentFont : ComItextpdfTextPdfBaseFont {
 @public
  jboolean isType0_;
  jint defaultWidth_;
  NSString *cjkEncoding_;
  NSString *uniMap_;
}

#pragma mark Public

- (jboolean)charExistsWithInt:(jint)c;

- (IOSByteArray *)convertToBytesWithNSString:(NSString *)text;

- (IOSObjectArray *)getAllNameEntries;

- (IOSIntArray *)getCharBBoxWithInt:(jint)c;

- (IOSObjectArray *)getFamilyFontName;

- (jfloat)getFontDescriptorWithInt:(jint)key
                         withFloat:(jfloat)fontSize;

- (ComItextpdfTextPdfPdfDictionary *)getFontDictionary;

- (IOSObjectArray *)getFullFontName;

- (ComItextpdfTextPdfPdfStream *)getFullFontStream;

- (jint)getKerningWithInt:(jint)char1
                  withInt:(jint)char2;

- (NSString *)getPostscriptFontName;

- (jint)getWidthWithInt:(jint)char1;

- (jint)getWidthWithNSString:(NSString *)text;

- (jboolean)hasKernPairs;

- (jboolean)isVertical;

- (jboolean)setKerningWithInt:(jint)char1
                      withInt:(jint)char2
                      withInt:(jint)kern;

- (void)setPostscriptFontNameWithNSString:(NSString *)name;

#pragma mark Protected

- (IOSIntArray *)getRawCharBBoxWithInt:(jint)c
                          withNSString:(NSString *)name;

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)font;

- (instancetype)initWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)refFont;

- (IOSByteArray *)convertToBytesWithInt:(jint)char1;

- (ComItextpdfTextPdfIntHashtable *)getByte2Uni;

- (ComItextpdfTextPdfIntHashtable *)getDiffmap;

- (ComItextpdfTextPdfPdfIndirectReference *)getIndirectReference;

- (jint)getRawWidthWithInt:(jint)c
              withNSString:(NSString *)name;

- (ComItextpdfTextPdfIntHashtable *)getUni2Byte;

- (jboolean)isSymbolic;

- (void)writeFontWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
      withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                               withNSObjectArray:(IOSObjectArray *)params;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfDocumentFont)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfDocumentFont, cjkEncoding_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfDocumentFont, uniMap_, NSString *)

FOUNDATION_EXPORT void ComItextpdfTextPdfDocumentFont_initWithComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfDocumentFont *self, ComItextpdfTextPdfPdfDictionary *font);

FOUNDATION_EXPORT ComItextpdfTextPdfDocumentFont *new_ComItextpdfTextPdfDocumentFont_initWithComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfPdfDictionary *font) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfDocumentFont_initWithComItextpdfTextPdfPRIndirectReference_(ComItextpdfTextPdfDocumentFont *self, ComItextpdfTextPdfPRIndirectReference *refFont);

FOUNDATION_EXPORT ComItextpdfTextPdfDocumentFont *new_ComItextpdfTextPdfDocumentFont_initWithComItextpdfTextPdfPRIndirectReference_(ComItextpdfTextPdfPRIndirectReference *refFont) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfDocumentFont)

#endif // _ComItextpdfTextPdfDocumentFont_H_
