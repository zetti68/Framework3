//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/CJKFont.java
//

#ifndef _ComItextpdfTextPdfCJKFont_H_
#define _ComItextpdfTextPdfCJKFont_H_

@class ComItextpdfTextPdfFontsCmapsCMapCidByte;
@class ComItextpdfTextPdfFontsCmapsCMapCidUni;
@class ComItextpdfTextPdfFontsCmapsCMapUniCid;
@class ComItextpdfTextPdfIntHashtable;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfStream;
@class ComItextpdfTextPdfPdfWriter;
@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilHashMap;
@class JavaUtilProperties;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/BaseFont.h"

#define ComItextpdfTextPdfCJKFont_BRACKET 1
#define ComItextpdfTextPdfCJKFont_FIRST 0
#define ComItextpdfTextPdfCJKFont_SERIAL 2
#define ComItextpdfTextPdfCJKFont_V1Y 880

@interface ComItextpdfTextPdfCJKFont : ComItextpdfTextPdfBaseFont {
 @public
  ComItextpdfTextPdfFontsCmapsCMapCidByte *cidByte_;
  ComItextpdfTextPdfFontsCmapsCMapUniCid *uniCid_;
  ComItextpdfTextPdfFontsCmapsCMapCidUni *cidUni_;
  NSString *uniMap_;
  NSString *fontName_;
  NSString *style_;
  NSString *CMap_;
  jboolean cidDirect_;
  ComItextpdfTextPdfIntHashtable *vMetrics_;
  ComItextpdfTextPdfIntHashtable *hMetrics_;
  JavaUtilHashMap *fontDesc_;
}

+ (void)loadProperties;

+ (void)loadRegistry;

- (instancetype)initWithNSString:(NSString *)fontName
                    withNSString:(NSString *)enc
                     withBoolean:(jboolean)emb;

- (NSString *)getUniMap;

- (void)loadCMaps;

+ (NSString *)GetCompatibleFontWithNSString:(NSString *)enc;

+ (jboolean)isCJKFontWithNSString:(NSString *)fontName
                     withNSString:(NSString *)enc;

- (jint)getWidthWithInt:(jint)char1;

- (jint)getWidthWithNSString:(NSString *)text;

- (jint)getRawWidthWithInt:(jint)c
              withNSString:(NSString *)name;

- (jint)getKerningWithInt:(jint)char1
                  withInt:(jint)char2;

- (ComItextpdfTextPdfPdfDictionary *)getFontDescriptor;

- (ComItextpdfTextPdfPdfDictionary *)getCIDFontWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)fontDescriptor
                                                       withComItextpdfTextPdfIntHashtable:(ComItextpdfTextPdfIntHashtable *)cjkTag;

- (ComItextpdfTextPdfPdfDictionary *)getFontBaseTypeWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)CIDFont;

- (void)writeFontWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
      withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                               withNSObjectArray:(IOSObjectArray *)params;

- (ComItextpdfTextPdfPdfStream *)getFullFontStream;

- (jfloat)getDescNumberWithNSString:(NSString *)name;

- (jfloat)getBBoxWithInt:(jint)idx;

- (jfloat)getFontDescriptorWithInt:(jint)key
                         withFloat:(jfloat)fontSize;

- (NSString *)getPostscriptFontName;

- (IOSObjectArray *)getFullFontName;

- (IOSObjectArray *)getAllNameEntries;

- (IOSObjectArray *)getFamilyFontName;

+ (ComItextpdfTextPdfIntHashtable *)createMetricWithNSString:(NSString *)s;

+ (NSString *)convertToHCIDMetricsWithIntArray:(IOSIntArray *)keys
            withComItextpdfTextPdfIntHashtable:(ComItextpdfTextPdfIntHashtable *)h;

+ (NSString *)convertToVCIDMetricsWithIntArray:(IOSIntArray *)keys
            withComItextpdfTextPdfIntHashtable:(ComItextpdfTextPdfIntHashtable *)v
            withComItextpdfTextPdfIntHashtable:(ComItextpdfTextPdfIntHashtable *)h;

+ (JavaUtilHashMap *)readFontPropertiesWithNSString:(NSString *)name;

- (jint)getUnicodeEquivalentWithInt:(jint)c;

- (jint)getCidCodeWithInt:(jint)c;

- (jboolean)hasKernPairs;

- (jboolean)charExistsWithInt:(jint)c;

- (jboolean)setCharAdvanceWithInt:(jint)c
                          withInt:(jint)advance;

- (void)setPostscriptFontNameWithNSString:(NSString *)name;

- (jboolean)setKerningWithInt:(jint)char1
                      withInt:(jint)char2
                      withInt:(jint)kern;

- (IOSIntArray *)getCharBBoxWithInt:(jint)c;

- (IOSIntArray *)getRawCharBBoxWithInt:(jint)c
                          withNSString:(NSString *)name;

- (IOSByteArray *)convertToBytesWithNSString:(NSString *)text;

- (IOSByteArray *)convertToBytesWithInt:(jint)char1;

- (jboolean)isIdentity;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCJKFont *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfCJKFont_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfCJKFont)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, cidByte_, ComItextpdfTextPdfFontsCmapsCMapCidByte *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, uniCid_, ComItextpdfTextPdfFontsCmapsCMapUniCid *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, cidUni_, ComItextpdfTextPdfFontsCmapsCMapCidUni *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, uniMap_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, fontName_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, style_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, CMap_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, vMetrics_, ComItextpdfTextPdfIntHashtable *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, hMetrics_, ComItextpdfTextPdfIntHashtable *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, fontDesc_, JavaUtilHashMap *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCJKFont_CJK_ENCODING_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, CJK_ENCODING_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, FIRST, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, BRACKET, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, SERIAL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, V1Y, jint)

FOUNDATION_EXPORT JavaUtilProperties *ComItextpdfTextPdfCJKFont_cjkFonts_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, cjkFonts_, JavaUtilProperties *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, cjkFonts_, JavaUtilProperties *)

FOUNDATION_EXPORT JavaUtilProperties *ComItextpdfTextPdfCJKFont_cjkEncodings_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, cjkEncodings_, JavaUtilProperties *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCJKFont, cjkEncodings_, JavaUtilProperties *)

FOUNDATION_EXPORT JavaUtilHashMap *ComItextpdfTextPdfCJKFont_allFonts_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, allFonts_, JavaUtilHashMap *)

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfCJKFont_propertiesLoaded_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, propertiesLoaded_, jboolean)
J2OBJC_STATIC_FIELD_REF_GETTER(ComItextpdfTextPdfCJKFont, propertiesLoaded_, jboolean)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfCJKFont_RESOURCE_PATH_CMAP_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, RESOURCE_PATH_CMAP_, NSString *)

FOUNDATION_EXPORT JavaUtilHashMap *ComItextpdfTextPdfCJKFont_registryNames_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCJKFont, registryNames_, JavaUtilHashMap *)

#endif // _ComItextpdfTextPdfCJKFont_H_