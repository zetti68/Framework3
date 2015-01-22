//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PRTokeniser.java
//

#ifndef _ComItextpdfTextPdfPRTokeniser_H_
#define _ComItextpdfTextPdfPRTokeniser_H_

@class ComItextpdfTextPdfPRTokeniser_TokenTypeEnum;
@class ComItextpdfTextPdfRandomAccessFileOrArray;
@class IOSBooleanArray;
@class IOSByteArray;
@class IOSLongArray;

#import "JreEmulation.h"
#include "java/lang/Enum.h"

@interface ComItextpdfTextPdfPRTokeniser : NSObject {
 @public
  ComItextpdfTextPdfRandomAccessFileOrArray *file_;
  ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *type_;
  NSString *stringValue_;
  jint reference_;
  jint generation_;
  jboolean hexString_;
}

- (instancetype)initWithComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)file;

- (void)seekWithLong:(jlong)pos;

- (jlong)getFilePointer;

- (void)close;

- (jlong)length;

- (jint)read;

- (ComItextpdfTextPdfRandomAccessFileOrArray *)getSafeFile;

- (ComItextpdfTextPdfRandomAccessFileOrArray *)getFile;

- (NSString *)readStringWithInt:(jint)size;

+ (jboolean)isWhitespaceWithInt:(jint)ch;

+ (jboolean)isDelimiterWithInt:(jint)ch;

+ (jboolean)isDelimiterWhitespaceWithInt:(jint)ch;

- (ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)getTokenType;

- (NSString *)getStringValue;

- (jint)getReference;

- (jint)getGeneration;

- (void)backOnePositionWithInt:(jint)ch;

- (void)throwErrorWithNSString:(NSString *)error;

- (jint)getHeaderOffset;

- (jchar)checkPdfHeader;

- (void)checkFdfHeader;

- (jlong)getStartxref;

+ (jint)getHexWithInt:(jint)v;

- (void)nextValidToken;

- (jboolean)nextToken;

- (jlong)longValue;

- (jint)intValue;

- (jboolean)readLineSegmentWithByteArray:(IOSByteArray *)input;

+ (IOSLongArray *)checkObjectStartWithByteArray:(IOSByteArray *)line;

- (jboolean)isHexString;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPRTokeniser *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfPRTokeniser_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfPRTokeniser)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRTokeniser, file_, ComItextpdfTextPdfRandomAccessFileOrArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRTokeniser, type_, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRTokeniser, stringValue_, NSString *)

FOUNDATION_EXPORT IOSBooleanArray *ComItextpdfTextPdfPRTokeniser_delims_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser, delims_, IOSBooleanArray *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfPRTokeniser_EMPTY_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser, EMPTY_, NSString *)

typedef enum {
  ComItextpdfTextPdfPRTokeniser_TokenType_NUMBER = 0,
  ComItextpdfTextPdfPRTokeniser_TokenType_STRING = 1,
  ComItextpdfTextPdfPRTokeniser_TokenType_NAME = 2,
  ComItextpdfTextPdfPRTokeniser_TokenType_COMMENT = 3,
  ComItextpdfTextPdfPRTokeniser_TokenType_START_ARRAY = 4,
  ComItextpdfTextPdfPRTokeniser_TokenType_END_ARRAY = 5,
  ComItextpdfTextPdfPRTokeniser_TokenType_START_DIC = 6,
  ComItextpdfTextPdfPRTokeniser_TokenType_END_DIC = 7,
  ComItextpdfTextPdfPRTokeniser_TokenType_REF = 8,
  ComItextpdfTextPdfPRTokeniser_TokenType_OTHER = 9,
  ComItextpdfTextPdfPRTokeniser_TokenType_ENDOFFILE = 10,
} ComItextpdfTextPdfPRTokeniser_TokenType;

@interface ComItextpdfTextPdfPRTokeniser_TokenTypeEnum : JavaLangEnum < NSCopying > {
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values();

+ (ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_valueOfWithNSString_(NSString *name);- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum)

FOUNDATION_EXPORT ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[];

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_NUMBER ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_NUMBER]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, NUMBER, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_STRING ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_STRING]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, STRING, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_NAME ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_NAME]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, NAME, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_COMMENT ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_COMMENT]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, COMMENT, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_START_ARRAY ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_START_ARRAY]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, START_ARRAY, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_END_ARRAY ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_END_ARRAY]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, END_ARRAY, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_START_DIC ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_START_DIC]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, START_DIC, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_END_DIC ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_END_DIC]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, END_DIC, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_REF ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_REF]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, REF, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_OTHER ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_OTHER]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, OTHER, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#define ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_ENDOFFILE ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[ComItextpdfTextPdfPRTokeniser_TokenType_ENDOFFILE]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum, ENDOFFILE, ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)

#endif // _ComItextpdfTextPdfPRTokeniser_H_
