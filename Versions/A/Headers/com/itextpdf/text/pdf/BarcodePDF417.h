//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/BarcodePDF417.java
//

#ifndef _ComItextpdfTextPdfBarcodePDF417_H_
#define _ComItextpdfTextPdfBarcodePDF417_H_

@class ComItextpdfTextImage;
@class ComItextpdfTextPdfBarcodePDF417_Segment;
@class ComItextpdfTextPdfBarcodePDF417_SegmentList;
@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilArrayList;

#import "JreEmulation.h"

#define ComItextpdfTextPdfBarcodePDF417_ABSOLUTE_MAX_TEXT_SIZE 5420
#define ComItextpdfTextPdfBarcodePDF417_AL 28
#define ComItextpdfTextPdfBarcodePDF417_ALPHA 65536
#define ComItextpdfTextPdfBarcodePDF417_AS 27
#define ComItextpdfTextPdfBarcodePDF417_BYTESHIFT 913
#define ComItextpdfTextPdfBarcodePDF417_BYTE_MODE 901
#define ComItextpdfTextPdfBarcodePDF417_BYTE_MODE_6 924
#define ComItextpdfTextPdfBarcodePDF417_ISBYTE 1048576
#define ComItextpdfTextPdfBarcodePDF417_LL 27
#define ComItextpdfTextPdfBarcodePDF417_LOWER 131072
#define ComItextpdfTextPdfBarcodePDF417_MACRO_LAST_SEGMENT 922
#define ComItextpdfTextPdfBarcodePDF417_MACRO_SEGMENT_ID 928
#define ComItextpdfTextPdfBarcodePDF417_MAX_DATA_CODEWORDS 926
#define ComItextpdfTextPdfBarcodePDF417_MIXED 262144
#define ComItextpdfTextPdfBarcodePDF417_ML 28
#define ComItextpdfTextPdfBarcodePDF417_MOD 929
#define ComItextpdfTextPdfBarcodePDF417_NUMERIC_MODE 902
#define ComItextpdfTextPdfBarcodePDF417_PAL 29
#define ComItextpdfTextPdfBarcodePDF417_PDF417_AUTO_ERROR_LEVEL 0
#define ComItextpdfTextPdfBarcodePDF417_PDF417_FIXED_COLUMNS 2
#define ComItextpdfTextPdfBarcodePDF417_PDF417_FIXED_RECTANGLE 1
#define ComItextpdfTextPdfBarcodePDF417_PDF417_FIXED_ROWS 4
#define ComItextpdfTextPdfBarcodePDF417_PDF417_FORCE_BINARY 32
#define ComItextpdfTextPdfBarcodePDF417_PDF417_INVERT_BITMAP 128
#define ComItextpdfTextPdfBarcodePDF417_PDF417_USE_ASPECT_RATIO 0
#define ComItextpdfTextPdfBarcodePDF417_PDF417_USE_ERROR_LEVEL 16
#define ComItextpdfTextPdfBarcodePDF417_PDF417_USE_MACRO 256
#define ComItextpdfTextPdfBarcodePDF417_PDF417_USE_RAW_CODEWORDS 64
#define ComItextpdfTextPdfBarcodePDF417_PL 25
#define ComItextpdfTextPdfBarcodePDF417_PS 29
#define ComItextpdfTextPdfBarcodePDF417_PUNCTUATION 524288
#define ComItextpdfTextPdfBarcodePDF417_SPACE 26
#define ComItextpdfTextPdfBarcodePDF417_START_CODE_SIZE 17
#define ComItextpdfTextPdfBarcodePDF417_START_PATTERN 130728
#define ComItextpdfTextPdfBarcodePDF417_STOP_PATTERN 260649
#define ComItextpdfTextPdfBarcodePDF417_STOP_SIZE 18
#define ComItextpdfTextPdfBarcodePDF417_TEXT_MODE 900

@interface ComItextpdfTextPdfBarcodePDF417 : NSObject {
 @public
  jint macroSegmentCount_;
  jint macroSegmentId_;
  NSString *macroFileId_;
  jint macroIndex_;
  jint bitPtr_;
  jint cwPtr_;
  ComItextpdfTextPdfBarcodePDF417_SegmentList *segmentList_;
  IOSByteArray *outBits_;
  jint bitColumns_;
  jint codeRows_;
  jint codeColumns_;
  IOSIntArray *codewords_;
  jint lenCodewords_;
  jint errorLevel_;
  IOSByteArray *text_;
  jint options_;
  jfloat aspectRatio_;
  jfloat yHeight_;
}

- (instancetype)init;

- (void)setMacroSegmentIdWithInt:(jint)id_;

- (void)setMacroSegmentCountWithInt:(jint)cnt;

- (void)setMacroFileIdWithNSString:(NSString *)id_;

- (jboolean)checkSegmentTypeWithComItextpdfTextPdfBarcodePDF417_Segment:(ComItextpdfTextPdfBarcodePDF417_Segment *)segment
                                                               withChar:(jchar)type;

- (jint)getSegmentLengthWithComItextpdfTextPdfBarcodePDF417_Segment:(ComItextpdfTextPdfBarcodePDF417_Segment *)segment;

- (void)setDefaultParameters;

- (void)outCodeword17WithInt:(jint)codeword;

- (void)outCodeword18WithInt:(jint)codeword;

- (void)outCodewordWithInt:(jint)codeword;

- (void)outStopPattern;

- (void)outStartPattern;

- (void)outPaintCode;

- (void)calculateErrorCorrectionWithInt:(jint)dest;

+ (jint)getTextTypeAndValueWithByteArray:(IOSByteArray *)input
                                 withInt:(jint)maxLength
                                 withInt:(jint)idx;

- (jint)getTextTypeAndValueWithInt:(jint)maxLength
                           withInt:(jint)idx;

- (void)textCompactionWithByteArray:(IOSByteArray *)input
                            withInt:(jint)start
                            withInt:(jint)length;

- (void)textCompactionWithInt:(jint)start
                      withInt:(jint)length;

- (void)basicNumberCompactionWithInt:(jint)start
                             withInt:(jint)length;

- (void)basicNumberCompactionWithByteArray:(IOSByteArray *)input
                                   withInt:(jint)start
                                   withInt:(jint)length;

- (void)numberCompactionWithByteArray:(IOSByteArray *)input
                              withInt:(jint)start
                              withInt:(jint)length;

- (void)numberCompactionWithInt:(jint)start
                        withInt:(jint)length;

- (void)byteCompaction6WithInt:(jint)start;

- (void)byteCompactionWithInt:(jint)start
                      withInt:(jint)length;

- (void)breakString;

- (void)assemble;

- (void)macroCodes;

- (void)appendWithInt:(jint)inArg
              withInt:(jint)len;

- (void)appendWithNSString:(NSString *)s;

+ (jint)maxPossibleErrorLevelWithInt:(jint)remain;

- (void)dumpList;

- (jint)getMaxSquare;

- (void)paintCode;

- (ComItextpdfTextImage *)getImage;

- (IOSByteArray *)getOutBits;

- (jint)getBitColumns;

- (jint)getCodeRows;

- (void)setCodeRowsWithInt:(jint)codeRows;

- (jint)getCodeColumns;

- (void)setCodeColumnsWithInt:(jint)codeColumns;

- (IOSIntArray *)getCodewords;

- (jint)getLenCodewords;

- (void)setLenCodewordsWithInt:(jint)lenCodewords;

- (jint)getErrorLevel;

- (void)setErrorLevelWithInt:(jint)errorLevel;

- (IOSByteArray *)getText;

- (void)setTextWithByteArray:(IOSByteArray *)text;

- (void)setTextWithNSString:(NSString *)s;

- (jint)getOptions;

- (void)setOptionsWithInt:(jint)options;

- (jfloat)getAspectRatio;

- (void)setAspectRatioWithFloat:(jfloat)aspectRatio;

- (jfloat)getYHeight;

- (void)setYHeightWithFloat:(jfloat)yHeight;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfBarcodePDF417 *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfBarcodePDF417_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfBarcodePDF417)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBarcodePDF417, macroFileId_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBarcodePDF417, segmentList_, ComItextpdfTextPdfBarcodePDF417_SegmentList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBarcodePDF417, outBits_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBarcodePDF417, codewords_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBarcodePDF417, text_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_USE_ASPECT_RATIO, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_FIXED_RECTANGLE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_FIXED_COLUMNS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_FIXED_ROWS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_AUTO_ERROR_LEVEL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_USE_ERROR_LEVEL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_FORCE_BINARY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_USE_RAW_CODEWORDS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_INVERT_BITMAP, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PDF417_USE_MACRO, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, START_PATTERN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, STOP_PATTERN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, START_CODE_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, STOP_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, MOD, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, ALPHA, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, LOWER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, MIXED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PUNCTUATION, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, ISBYTE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, BYTESHIFT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, LL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, AS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, ML, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, AL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PAL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, SPACE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, TEXT_MODE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, BYTE_MODE_6, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, BYTE_MODE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, NUMERIC_MODE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, ABSOLUTE_MAX_TEXT_SIZE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, MAX_DATA_CODEWORDS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, MACRO_SEGMENT_ID, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, MACRO_LAST_SEGMENT, jint)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfBarcodePDF417_MIXED_SET_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, MIXED_SET_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfBarcodePDF417_PUNCTUATION_SET_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, PUNCTUATION_SET_, NSString *)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfBarcodePDF417_CLUSTERS_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, CLUSTERS_, IOSObjectArray *)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfBarcodePDF417_ERROR_LEVEL_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcodePDF417, ERROR_LEVEL_, IOSObjectArray *)

@interface ComItextpdfTextPdfBarcodePDF417_Segment : NSObject {
 @public
  jchar type_;
  jint start_;
  jint end_;
}

- (instancetype)initWithChar:(jchar)type
                     withInt:(jint)start
                     withInt:(jint)end;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfBarcodePDF417_Segment *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfBarcodePDF417_Segment_init() {}

@interface ComItextpdfTextPdfBarcodePDF417_SegmentList : NSObject {
 @public
  JavaUtilArrayList *list_;
}

- (void)addWithChar:(jchar)type
            withInt:(jint)start
            withInt:(jint)end;

- (ComItextpdfTextPdfBarcodePDF417_Segment *)getWithInt:(jint)idx;

- (void)removeWithInt:(jint)idx;

- (jint)size;

- (instancetype)init;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfBarcodePDF417_SegmentList *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfBarcodePDF417_SegmentList_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBarcodePDF417_SegmentList, list_, JavaUtilArrayList *)

#endif // _ComItextpdfTextPdfBarcodePDF417_H_
