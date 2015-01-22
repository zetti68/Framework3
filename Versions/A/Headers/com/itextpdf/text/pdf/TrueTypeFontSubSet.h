//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/TrueTypeFontSubSet.java
//

#ifndef _ComItextpdfTextPdfTrueTypeFontSubSet_H_
#define _ComItextpdfTextPdfTrueTypeFontSubSet_H_

@class ComItextpdfTextPdfRandomAccessFileOrArray;
@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilArrayList;
@class JavaUtilHashMap;
@class JavaUtilHashSet;

#import "JreEmulation.h"

#define ComItextpdfTextPdfTrueTypeFontSubSet_ARG_1_AND_2_ARE_WORDS 1
#define ComItextpdfTextPdfTrueTypeFontSubSet_HEAD_LOCA_FORMAT_OFFSET 51
#define ComItextpdfTextPdfTrueTypeFontSubSet_MORE_COMPONENTS 32
#define ComItextpdfTextPdfTrueTypeFontSubSet_TABLE_CHECKSUM 0
#define ComItextpdfTextPdfTrueTypeFontSubSet_TABLE_LENGTH 2
#define ComItextpdfTextPdfTrueTypeFontSubSet_TABLE_OFFSET 1
#define ComItextpdfTextPdfTrueTypeFontSubSet_WE_HAVE_AN_X_AND_Y_SCALE 64
#define ComItextpdfTextPdfTrueTypeFontSubSet_WE_HAVE_A_SCALE 8
#define ComItextpdfTextPdfTrueTypeFontSubSet_WE_HAVE_A_TWO_BY_TWO 128

@interface ComItextpdfTextPdfTrueTypeFontSubSet : NSObject {
 @public
  JavaUtilHashMap *tableDirectory_;
  ComItextpdfTextPdfRandomAccessFileOrArray *rf_;
  NSString *fileName_;
  jboolean includeCmap_;
  jboolean includeExtras_;
  jboolean locaShortTable_;
  IOSIntArray *locaTable_;
  JavaUtilHashSet *glyphsUsed_;
  JavaUtilArrayList *glyphsInList_;
  jint tableGlyphOffset_;
  IOSIntArray *newLocaTable_;
  IOSByteArray *newLocaTableOut_;
  IOSByteArray *newGlyfTable_;
  jint glyfTableRealSize_;
  jint locaTableRealSize_;
  IOSByteArray *outFont_;
  jint fontPtr_;
  jint directoryOffset_;
}

- (instancetype)initWithNSString:(NSString *)fileName
withComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)rf
             withJavaUtilHashSet:(JavaUtilHashSet *)glyphsUsed
                         withInt:(jint)directoryOffset
                     withBoolean:(jboolean)includeCmap
                     withBoolean:(jboolean)includeExtras;

- (IOSByteArray *)process;

- (void)assembleFont;

- (void)createTableDirectory;

- (void)readLoca;

- (void)createNewGlyphTables;

- (void)locaTobytes;

- (void)flatGlyphs;

- (void)checkGlyphCompositeWithInt:(jint)glyph;

- (NSString *)readStandardStringWithInt:(jint)length;

- (void)writeFontShortWithInt:(jint)n;

- (void)writeFontIntWithInt:(jint)n;

- (void)writeFontStringWithNSString:(NSString *)s;

- (jint)calculateChecksumWithByteArray:(IOSByteArray *)b;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfTrueTypeFontSubSet *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfTrueTypeFontSubSet_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfTrueTypeFontSubSet)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, tableDirectory_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, rf_, ComItextpdfTextPdfRandomAccessFileOrArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, fileName_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, locaTable_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, glyphsUsed_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, glyphsInList_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, newLocaTable_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, newLocaTableOut_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, newGlyfTable_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfTrueTypeFontSubSet, outFont_, IOSByteArray *)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfTrueTypeFontSubSet_tableNamesSimple_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, tableNamesSimple_, IOSObjectArray *)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfTrueTypeFontSubSet_tableNamesCmap_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, tableNamesCmap_, IOSObjectArray *)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfTrueTypeFontSubSet_tableNamesExtra_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, tableNamesExtra_, IOSObjectArray *)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextPdfTrueTypeFontSubSet_entrySelectors_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, entrySelectors_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, TABLE_CHECKSUM, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, TABLE_OFFSET, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, TABLE_LENGTH, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, HEAD_LOCA_FORMAT_OFFSET, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, ARG_1_AND_2_ARE_WORDS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, WE_HAVE_A_SCALE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, MORE_COMPONENTS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, WE_HAVE_AN_X_AND_Y_SCALE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfTrueTypeFontSubSet, WE_HAVE_A_TWO_BY_TWO, jint)

#endif // _ComItextpdfTextPdfTrueTypeFontSubSet_H_