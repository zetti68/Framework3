//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/Barcode128.java
//

#ifndef _ComItextpdfTextPdfBarcode128_H_
#define _ComItextpdfTextPdfBarcode128_H_

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextPdfIntHashtable;
@class ComItextpdfTextPdfPdfContentByte;
@class ComItextpdfTextRectangle;
@class IOSByteArray;
@class IOSObjectArray;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/Barcode.h"

#define ComItextpdfTextPdfBarcode128_CODE_A 0x00c8
#define ComItextpdfTextPdfBarcode128_CODE_AB_TO_C 'c'
#define ComItextpdfTextPdfBarcode128_CODE_AC_TO_B 'd'
#define ComItextpdfTextPdfBarcode128_CODE_BC_TO_A 'e'
#define ComItextpdfTextPdfBarcode128_CODE_C 0x00c7
#define ComItextpdfTextPdfBarcode128_DEL 0x00c3
#define ComItextpdfTextPdfBarcode128_FNC1 0x00ca
#define ComItextpdfTextPdfBarcode128_FNC1_INDEX 'f'
#define ComItextpdfTextPdfBarcode128_FNC2 0x00c5
#define ComItextpdfTextPdfBarcode128_FNC3 0x00c4
#define ComItextpdfTextPdfBarcode128_FNC4 0x00c8
#define ComItextpdfTextPdfBarcode128_SHIFT 0x00c6
#define ComItextpdfTextPdfBarcode128_STARTA 0x00cb
#define ComItextpdfTextPdfBarcode128_STARTB 0x00cc
#define ComItextpdfTextPdfBarcode128_STARTC 0x00cd
#define ComItextpdfTextPdfBarcode128_START_A 'g'
#define ComItextpdfTextPdfBarcode128_START_B 'h'
#define ComItextpdfTextPdfBarcode128_START_C 'i'

@interface ComItextpdfTextPdfBarcode128 : ComItextpdfTextPdfBarcode {
}

- (instancetype)init;

+ (NSString *)removeFNC1WithNSString:(NSString *)code;

+ (NSString *)getHumanReadableUCCEANWithNSString:(NSString *)code;

+ (jboolean)isNextDigitsWithNSString:(NSString *)text
                             withInt:(jint)textIndex
                             withInt:(jint)numDigits;

+ (NSString *)getPackedRawDigitsWithNSString:(NSString *)text
                                     withInt:(jint)textIndex
                                     withInt:(jint)numDigits;

+ (NSString *)getRawTextWithNSString:(NSString *)text
                         withBoolean:(jboolean)ucc;

+ (IOSByteArray *)getBarsCode128RawWithNSString:(NSString *)text;

- (ComItextpdfTextRectangle *)getBarcodeSize;

- (ComItextpdfTextRectangle *)placeBarcodeWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)cb
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)barColor
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)textColor;

- (void)setCodeWithNSString:(NSString *)code;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfBarcode128_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfBarcode128)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfBarcode128_BARS_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, BARS_, IOSObjectArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfBarcode128_BARS_STOP_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, BARS_STOP_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, CODE_AB_TO_C, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, CODE_AC_TO_B, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, CODE_BC_TO_A, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, FNC1_INDEX, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, START_A, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, START_B, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, START_C, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, FNC1, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, DEL, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, FNC3, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, FNC2, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, SHIFT, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, CODE_C, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, CODE_A, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, FNC4, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, STARTA, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, STARTB, jchar)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, STARTC, jchar)

FOUNDATION_EXPORT ComItextpdfTextPdfIntHashtable *ComItextpdfTextPdfBarcode128_ais_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfBarcode128, ais_, ComItextpdfTextPdfIntHashtable *)

#endif // _ComItextpdfTextPdfBarcode128_H_
