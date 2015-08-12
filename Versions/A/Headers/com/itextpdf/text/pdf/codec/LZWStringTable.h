//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/LZWStringTable.java
//

#ifndef _ComItextpdfTextPdfCodecLZWStringTable_H_
#define _ComItextpdfTextPdfCodecLZWStringTable_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class IOSIntArray;
@class IOSShortArray;
@class JavaIoPrintStream;

@interface ComItextpdfTextPdfCodecLZWStringTable : NSObject {
 @public
  IOSByteArray *strChr__;
  IOSShortArray *strNxt__;
  IOSShortArray *strHsh__;
  jshort numStrings__;
  IOSIntArray *strLen__;
}

#pragma mark Public

- (instancetype)init;

- (jint)AddCharStringWithShort:(jshort)index
                      withByte:(jbyte)b;

- (void)ClearTableWithInt:(jint)codesize;

- (void)dumpWithJavaIoPrintStream:(JavaIoPrintStream *)outArg;

- (jint)expandCodeWithByteArray:(IOSByteArray *)buf
                        withInt:(jint)offset
                      withShort:(jshort)code
                        withInt:(jint)skipHead;

- (jshort)FindCharStringWithShort:(jshort)index
                         withByte:(jbyte)b;

+ (jint)HashWithShort:(jshort)index
             withByte:(jbyte)lastbyte;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecLZWStringTable)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecLZWStringTable, strChr__, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecLZWStringTable, strNxt__, IOSShortArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecLZWStringTable, strHsh__, IOSShortArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecLZWStringTable, strLen__, IOSIntArray *)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecLZWStringTable_init(ComItextpdfTextPdfCodecLZWStringTable *self);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecLZWStringTable *new_ComItextpdfTextPdfCodecLZWStringTable_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jint ComItextpdfTextPdfCodecLZWStringTable_HashWithShort_withByte_(jshort index, jbyte lastbyte);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecLZWStringTable)

#endif // _ComItextpdfTextPdfCodecLZWStringTable_H_
