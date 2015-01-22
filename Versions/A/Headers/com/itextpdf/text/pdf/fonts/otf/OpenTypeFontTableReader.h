//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/otf/OpenTypeFontTableReader.java
//

#ifndef _ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_H_
#define _ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_H_

@class ComItextpdfTextPdfFontsOtfLanguageEnum;
@class ComItextpdfTextPdfFontsOtfTableHeader;
@class ComItextpdfTextPdfRandomAccessFileOrArray;
@protocol ComItextpdfTextLogLogger;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader : NSObject {
 @public
  ComItextpdfTextPdfRandomAccessFileOrArray *rf_;
  jint tableLocation_;
  id<JavaUtilList> supportedLanguages_;
}

- (instancetype)initWithNSString:(NSString *)fontFilePath
                         withInt:(jint)tableLocation;

- (ComItextpdfTextPdfFontsOtfLanguageEnum *)getSupportedLanguage;

- (void)startReadingTable;

- (void)readSubTableWithInt:(jint)lookupType
                    withInt:(jint)subTableLocation;

- (void)readLookupListTableWithInt:(jint)lookupListTableLocation;

- (void)readLookupTableWithInt:(jint)lookupTableLocation;

- (id<JavaUtilList>)readCoverageFormatWithInt:(jint)coverageLocation;

- (void)readRangeRecordWithJavaUtilList:(id<JavaUtilList>)glyphIds;

- (void)readScriptListTableWithInt:(jint)scriptListTableLocationOffset;

- (void)readScriptRecordWithInt:(jint)scriptListTableLocationOffset
                withJavaUtilMap:(id<JavaUtilMap>)scriptRecords;

- (void)readScriptTableWithInt:(jint)scriptTableLocationOffset;

- (void)readLangSysRecordWithJavaUtilMap:(id<JavaUtilMap>)langSysRecords;

- (void)readLangSysTableWithInt:(jint)langSysTableLocationOffset;

- (void)readFeatureListTableWithInt:(jint)featureListTableLocationOffset;

- (void)readFeatureTableWithInt:(jint)featureTableLocationOffset;

- (ComItextpdfTextPdfFontsOtfTableHeader *)readHeader;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader, rf_, ComItextpdfTextPdfRandomAccessFileOrArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader, supportedLanguages_, id<JavaUtilList>)

FOUNDATION_EXPORT id<ComItextpdfTextLogLogger> ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_LOG_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader, LOG_, id<ComItextpdfTextLogLogger>)

#endif // _ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_H_