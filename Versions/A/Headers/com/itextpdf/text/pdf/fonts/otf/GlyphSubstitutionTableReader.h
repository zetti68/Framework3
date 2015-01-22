//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/otf/GlyphSubstitutionTableReader.java
//

#ifndef _ComItextpdfTextPdfFontsOtfGlyphSubstitutionTableReader_H_
#define _ComItextpdfTextPdfFontsOtfGlyphSubstitutionTableReader_H_

@class IOSIntArray;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/fonts/otf/OpenTypeFontTableReader.h"

@interface ComItextpdfTextPdfFontsOtfGlyphSubstitutionTableReader : ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader {
 @public
  IOSIntArray *glyphWidthsByIndex_;
  id<JavaUtilMap> glyphToCharacterMap_;
  id<JavaUtilMap> rawLigatureSubstitutionMap_;
}

- (instancetype)initWithNSString:(NSString *)fontFilePath
                         withInt:(jint)gsubTableLocation
                 withJavaUtilMap:(id<JavaUtilMap>)glyphToCharacterMap
                    withIntArray:(IOSIntArray *)glyphWidthsByIndex;

- (void)read;

- (id<JavaUtilMap>)getGlyphSubstitutionMap;

- (NSString *)getTextFromGlyphWithInt:(jint)glyphId
                      withJavaUtilMap:(id<JavaUtilMap>)glyphToCharacterMap;

- (void)readSubTableWithInt:(jint)lookupType
                    withInt:(jint)subTableLocation;

- (void)readSingleSubstitutionSubtableWithInt:(jint)subTableLocation;

- (void)readLigatureSubstitutionSubtableWithInt:(jint)ligatureSubstitutionSubtableLocation;

- (void)readLigatureSetTableWithInt:(jint)ligatureSetTableLocation
                            withInt:(jint)coverageGlyphId;

- (void)readLigatureTableWithInt:(jint)ligatureTableLocation
                         withInt:(jint)coverageGlyphId;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsOtfGlyphSubstitutionTableReader *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfFontsOtfGlyphSubstitutionTableReader_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFontsOtfGlyphSubstitutionTableReader, glyphWidthsByIndex_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFontsOtfGlyphSubstitutionTableReader, glyphToCharacterMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFontsOtfGlyphSubstitutionTableReader, rawLigatureSubstitutionMap_, id<JavaUtilMap>)

#endif // _ComItextpdfTextPdfFontsOtfGlyphSubstitutionTableReader_H_
