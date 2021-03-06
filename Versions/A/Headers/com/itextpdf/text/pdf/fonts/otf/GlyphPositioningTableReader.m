//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/otf/GlyphPositioningTableReader.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/otf/GlyphPositioningTableReader.java"

#include "IOSClass.h"
#include "com/itextpdf/text/log/Logger.h"
#include "com/itextpdf/text/pdf/RandomAccessFileOrArray.h"
#include "com/itextpdf/text/pdf/fonts/otf/FontReadingException.h"
#include "com/itextpdf/text/pdf/fonts/otf/GlyphPositioningTableReader.h"
#include "com/itextpdf/text/pdf/fonts/otf/OpenTypeFontTableReader.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"


#line 58
@implementation ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader

- (instancetype)initWithNSString:(NSString *)fontFilePath
                         withInt:(jint)gposTableLocation {
  return
#line 61
  [super initWithNSString:fontFilePath withInt:gposTableLocation];
}


#line 64
- (void)read {
  
#line 65
  [self startReadingTable];
}


#line 69
- (void)readSubTableWithInt:(jint)lookupType
                    withInt:(jint)subTableLocation {
  
#line 71
  if (lookupType == 1) {
    [self readLookUpType_1WithInt:subTableLocation];
  }
  else
#line 73
  if (lookupType == 4) {
    [self readLookUpType_4WithInt:subTableLocation];
  }
  else
#line 75
  if (lookupType == 8) {
    [self readLookUpType_8WithInt:subTableLocation];
  }
  else {
    
#line 78
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:JreStrcat("$I$$", @"The lookupType ", lookupType, @" is not yet supported by ", [[IOSClass classWithClass:[ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader class]] getSimpleName])];
  }
}


#line 83
- (void)readLookUpType_1WithInt:(jint)lookupTableLocation {
  
#line 84
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf_)) seekWithLong:lookupTableLocation];
  jint posFormat = [rf_ readShort];
  
#line 87
  if (posFormat == 1) {
    [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_())) debugWithNSString:@"Reading `Look Up Type 1, Format 1` ...."];
    jint coverageOffset = [rf_ readShort];
    jint valueFormat = [rf_ readShort];
    
#line 94
    if ((valueFormat & 1) == 1) {
      jint xPlacement = [rf_ readShort];
      [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$I", @"xPlacement=", xPlacement)];
    }
    
#line 100
    if ((valueFormat & 2) == 2) {
      jint yPlacement = [rf_ readShort];
      [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$I", @"yPlacement=", yPlacement)];
    }
    
#line 105
    id<JavaUtilList> glyphCodes = [self readCoverageFormatWithInt:lookupTableLocation + coverageOffset];
    
#line 107
    [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$@", @"glyphCodes=", glyphCodes)];
  }
  else {
    
#line 109
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:JreStrcat("$I$$", @"The PosFormat ", posFormat, @" for `LookupType 1` is not yet supported by ", [[IOSClass classWithClass:[ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader class]] getSimpleName])];
  }
}


#line 114
- (void)readLookUpType_4WithInt:(jint)lookupTableLocation {
  
#line 115
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf_)) seekWithLong:lookupTableLocation];
  
#line 117
  jint posFormat = [rf_ readShort];
  
#line 119
  if (posFormat == 1) {
    
#line 121
    [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_())) debugWithNSString:@"Reading `Look Up Type 4, Format 1` ...."];
    
#line 123
    jint markCoverageOffset = [rf_ readShort];
    jint baseCoverageOffset = [rf_ readShort];
    jint classCount = [rf_ readShort];
    jint markArrayOffset = [rf_ readShort];
    jint baseArrayOffset = [rf_ readShort];
    
#line 129
    id<JavaUtilList> markCoverages = [self readCoverageFormatWithInt:lookupTableLocation + markCoverageOffset];
    [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$@", @"markCoverages=", markCoverages)];
    
#line 132
    id<JavaUtilList> baseCoverages = [self readCoverageFormatWithInt:lookupTableLocation + baseCoverageOffset];
    [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$@", @"baseCoverages=", baseCoverages)];
    
#line 135
    [self readMarkArrayTableWithInt:lookupTableLocation + markArrayOffset];
    
#line 137
    [self readBaseArrayTableWithInt:lookupTableLocation + baseArrayOffset withInt:classCount];
  }
  else {
    
#line 139
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:JreStrcat("$I$$", @"The posFormat ", posFormat, @" is not supported by ", [[IOSClass classWithClass:[ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader class]] getSimpleName])];
  }
}


#line 143
- (void)readLookUpType_8WithInt:(jint)lookupTableLocation {
  
#line 144
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf_)) seekWithLong:lookupTableLocation];
  
#line 146
  jint posFormat = [rf_ readShort];
  
#line 148
  if (posFormat == 3) {
    [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_())) debugWithNSString:@"Reading `Look Up Type 8, Format 3` ...."];
    [self readChainingContextPositioningFormat_3WithInt:lookupTableLocation];
  }
  else {
    
#line 152
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:JreStrcat("$I$$", @"The posFormat ", posFormat, @" for `Look Up Type 8` is not supported by ", [[IOSClass classWithClass:[ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader class]] getSimpleName])];
  }
}


#line 156
- (void)readChainingContextPositioningFormat_3WithInt:(jint)lookupTableLocation {
  
#line 157
  jint backtrackGlyphCount = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf_)) readShort];
  [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_())) debugWithNSString:JreStrcat("$I", @"backtrackGlyphCount=", backtrackGlyphCount)];
  id<JavaUtilList> backtrackGlyphOffsets = [[JavaUtilArrayList alloc] initWithInt:backtrackGlyphCount];
  
#line 161
  for (jint i = 0; i < backtrackGlyphCount; i++) {
    jint backtrackGlyphOffset = [rf_ readShort];
    [backtrackGlyphOffsets addWithId:[JavaLangInteger valueOfWithInt:backtrackGlyphOffset]];
  }
  
#line 166
  jint inputGlyphCount = [rf_ readShort];
  [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$I", @"inputGlyphCount=", inputGlyphCount)];
  id<JavaUtilList> inputGlyphOffsets = [[JavaUtilArrayList alloc] initWithInt:inputGlyphCount];
  
#line 170
  for (jint i = 0; i < inputGlyphCount; i++) {
    jint inputGlyphOffset = [rf_ readShort];
    [inputGlyphOffsets addWithId:[JavaLangInteger valueOfWithInt:inputGlyphOffset]];
  }
  
#line 175
  jint lookaheadGlyphCount = [rf_ readShort];
  [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$I", @"lookaheadGlyphCount=", lookaheadGlyphCount)];
  id<JavaUtilList> lookaheadGlyphOffsets = [[JavaUtilArrayList alloc] initWithInt:lookaheadGlyphCount];
  
#line 179
  for (jint i = 0; i < lookaheadGlyphCount; i++) {
    jint lookaheadGlyphOffset = [rf_ readShort];
    [lookaheadGlyphOffsets addWithId:[JavaLangInteger valueOfWithInt:lookaheadGlyphOffset]];
  }
  
#line 184
  jint posCount = [rf_ readShort];
  [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$I", @"posCount=", posCount)];
  
#line 187
  id<JavaUtilList> posLookupRecords = [[JavaUtilArrayList alloc] initWithInt:posCount];
  
#line 189
  for (jint i = 0; i < posCount; i++) {
    jint sequenceIndex = [rf_ readShort];
    jint lookupListIndex = [rf_ readShort];
    [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$I$I", @"sequenceIndex=", sequenceIndex, @", lookupListIndex=", lookupListIndex)];
    [posLookupRecords addWithId:[[ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_PosLookupRecord alloc] initWithInt:sequenceIndex withInt:lookupListIndex]];
  }
  
#line 196
  for (JavaLangInteger *boxed__ in backtrackGlyphOffsets) {
    jint backtrackGlyphOffset = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    
#line 197
    id<JavaUtilList> backtrackGlyphs = [self readCoverageFormatWithInt:lookupTableLocation + backtrackGlyphOffset];
    [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$@", @"backtrackGlyphs=", backtrackGlyphs)];
  }
  
#line 201
  for (JavaLangInteger *boxed__ in inputGlyphOffsets) {
    jint inputGlyphOffset = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    
#line 202
    id<JavaUtilList> inputGlyphs = [self readCoverageFormatWithInt:lookupTableLocation + inputGlyphOffset];
    [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$@", @"inputGlyphs=", inputGlyphs)];
  }
  
#line 206
  for (JavaLangInteger *boxed__ in lookaheadGlyphOffsets) {
    jint lookaheadGlyphOffset = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    
#line 207
    id<JavaUtilList> lookaheadGlyphs = [self readCoverageFormatWithInt:lookupTableLocation + lookaheadGlyphOffset];
    [ComItextpdfTextPdfFontsOtfOpenTypeFontTableReader_get_LOG_() debugWithNSString:JreStrcat("$@", @"lookaheadGlyphs=", lookaheadGlyphs)];
  }
}


#line 213
- (void)readMarkArrayTableWithInt:(jint)markArrayLocation {
  
#line 214
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf_)) seekWithLong:markArrayLocation];
  jint markCount = [rf_ readShort];
  id<JavaUtilList> markRecords = [[JavaUtilArrayList alloc] init];
  
#line 218
  for (jint i = 0; i < markCount; i++) {
    [markRecords addWithId:[self readMarkRecord]];
  }
  
#line 222
  for (ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_MarkRecord * __strong markRecord in markRecords) {
    [self readAnchorTableWithInt:markArrayLocation + ((ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_MarkRecord *) nil_chk(markRecord))->markAnchorOffset_];
  }
}


#line 227
- (ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_MarkRecord *)readMarkRecord {
  
#line 228
  jint markClass = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf_)) readShort];
  jint markAnchorOffset = [rf_ readShort];
  return [[ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_MarkRecord alloc] initWithInt:markClass withInt:markAnchorOffset];
}


#line 233
- (void)readAnchorTableWithInt:(jint)anchorTableLocation {
  
#line 234
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf_)) seekWithLong:anchorTableLocation];
  jint anchorFormat = [rf_ readShort];
  
#line 237
  if (anchorFormat != 1) {
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:JreStrcat("$I$", @"The extra features of the AnchorFormat ", anchorFormat, @" will not be used")];
  }
  
#line 241
  [rf_ readShort];
  [rf_ readShort];
}


#line 246
- (void)readBaseArrayTableWithInt:(jint)baseArrayTableLocation
                          withInt:(jint)classCount {
  
#line 247
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf_)) seekWithLong:baseArrayTableLocation];
  jint baseCount = [rf_ readShort];
  id<JavaUtilSet> baseAnchors = [[JavaUtilHashSet alloc] init];
  
#line 251
  for (jint i = 0; i < baseCount; i++) {
    
#line 253
    for (jint k = 0; k < classCount; k++) {
      jint baseAnchor = [rf_ readShort];
      [baseAnchors addWithId:[JavaLangInteger valueOfWithInt:baseAnchor]];
    }
  }
  
#line 261
  for (JavaLangInteger *boxed__ in baseAnchors) {
    jint baseAnchor = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    
#line 262
    [self readAnchorTableWithInt:baseArrayTableLocation + baseAnchor];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:", "GlyphPositioningTableReader", NULL, 0x1, "Ljava.io.IOException;" },
    { "read", NULL, "V", 0x1, "Lcom.itextpdf.text.pdf.fonts.otf.FontReadingException;" },
    { "readSubTableWithInt:withInt:", "readSubTable", "V", 0x4, "Ljava.io.IOException;" },
    { "readLookUpType_1WithInt:", "readLookUpType_1", "V", 0x2, "Ljava.io.IOException;" },
    { "readLookUpType_4WithInt:", "readLookUpType_4", "V", 0x2, "Ljava.io.IOException;" },
    { "readLookUpType_8WithInt:", "readLookUpType_8", "V", 0x2, "Ljava.io.IOException;" },
    { "readChainingContextPositioningFormat_3WithInt:", "readChainingContextPositioningFormat_3", "V", 0x2, "Ljava.io.IOException;" },
    { "readMarkArrayTableWithInt:", "readMarkArrayTable", "V", 0x2, "Ljava.io.IOException;" },
    { "readMarkRecord", NULL, "Lcom.itextpdf.text.pdf.fonts.otf.GlyphPositioningTableReader$MarkRecord;", 0x2, "Ljava.io.IOException;" },
    { "readAnchorTableWithInt:", "readAnchorTable", "V", 0x2, "Ljava.io.IOException;" },
    { "readBaseArrayTableWithInt:withInt:", "readBaseArrayTable", "V", 0x2, "Ljava.io.IOException;" },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader = { "GlyphPositioningTableReader", "com.itextpdf.text.pdf.fonts.otf", NULL, 0x1, 11, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader;
}

@end


#line 267
@implementation ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_MarkRecord


#line 271
- (instancetype)initWithInt:(jint)markClass
                    withInt:(jint)markAnchorOffset {
  if (self = [super init]) {
    
#line 272
    self->markClass_ = markClass;
    
#line 273
    self->markAnchorOffset_ = markAnchorOffset;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_MarkRecord *)other {
  [super copyAllFieldsTo:other];
  other->markAnchorOffset_ = markAnchorOffset_;
  other->markClass_ = markClass_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "MarkRecord", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "markClass_", NULL, 0x10, "I", NULL,  },
    { "markAnchorOffset_", NULL, 0x10, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_MarkRecord = { "MarkRecord", "com.itextpdf.text.pdf.fonts.otf", "GlyphPositioningTableReader", 0x8, 1, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_MarkRecord;
}

@end


#line 278
@implementation ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_PosLookupRecord


#line 282
- (instancetype)initWithInt:(jint)sequenceIndex
                    withInt:(jint)lookupListIndex {
  if (self = [super init]) {
    
#line 283
    self->sequenceIndex_ = sequenceIndex;
    
#line 284
    self->lookupListIndex_ = lookupListIndex;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_PosLookupRecord *)other {
  [super copyAllFieldsTo:other];
  other->lookupListIndex_ = lookupListIndex_;
  other->sequenceIndex_ = sequenceIndex_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "PosLookupRecord", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sequenceIndex_", NULL, 0x10, "I", NULL,  },
    { "lookupListIndex_", NULL, 0x10, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_PosLookupRecord = { "PosLookupRecord", "com.itextpdf.text.pdf.fonts.otf", "GlyphPositioningTableReader", 0x8, 1, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfFontsOtfGlyphPositioningTableReader_PosLookupRecord;
}

@end
