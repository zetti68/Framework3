//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/languages/ArabicLigaturizer.java
//

#ifndef _ComItextpdfTextPdfLanguagesArabicLigaturizer_H_
#define _ComItextpdfTextPdfLanguagesArabicLigaturizer_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/languages/LanguageProcessor.h"

@class ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct;
@class IOSCharArray;
@class JavaLangStringBuffer;

#define ComItextpdfTextPdfLanguagesArabicLigaturizer_ar_nothing 0
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_ar_novowel 1
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_ar_composedtashkeel 4
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_ar_lig 8
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_DIGITS_EN2AN 32
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_DIGITS_AN2EN 64
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_DIGITS_EN2AN_INIT_LR 96
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_DIGITS_EN2AN_INIT_AL 128
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_DIGITS_MASK 224
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_DIGIT_TYPE_AN 0
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_DIGIT_TYPE_AN_EXTENDED 256
#define ComItextpdfTextPdfLanguagesArabicLigaturizer_DIGIT_TYPE_MASK 256

@interface ComItextpdfTextPdfLanguagesArabicLigaturizer : NSObject < ComItextpdfTextPdfLanguagesLanguageProcessor > {
 @public
  jint options_;
  jint runDirection_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)runDirection
                    withInt:(jint)options;

+ (jint)arabic_shapeWithCharArray:(IOSCharArray *)src
                          withInt:(jint)srcoffset
                          withInt:(jint)srclength
                    withCharArray:(IOSCharArray *)dest
                          withInt:(jint)destoffset
                          withInt:(jint)destlength
                          withInt:(jint)level;

- (jboolean)isRTL;

- (NSString *)processWithNSString:(NSString *)s;

+ (void)processNumbersWithCharArray:(IOSCharArray *)text
                            withInt:(jint)offset
                            withInt:(jint)length
                            withInt:(jint)options;

#pragma mark Package-Private

+ (jchar)charshapeWithChar:(jchar)s
                   withInt:(jint)which;

+ (jboolean)connects_to_leftWithComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct:(ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct *)a;

+ (void)copycstostringWithJavaLangStringBuffer:(JavaLangStringBuffer *)string
withComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct:(ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct *)s
                                       withInt:(jint)level OBJC_METHOD_FAMILY_NONE;

+ (void)doubleligWithJavaLangStringBuffer:(JavaLangStringBuffer *)string
                                  withInt:(jint)level;

+ (jboolean)isVowelWithChar:(jchar)s;

+ (jint)ligatureWithChar:(jchar)newchar
withComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct:(ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct *)oldchar;

+ (void)shapeWithCharArray:(IOSCharArray *)text
  withJavaLangStringBuffer:(JavaLangStringBuffer *)string
                   withInt:(jint)level;

+ (jint)shapecountWithChar:(jchar)s;

+ (void)shapeToArabicDigitsWithContextWithCharArray:(IOSCharArray *)dest
                                            withInt:(jint)start
                                            withInt:(jint)length
                                           withChar:(jchar)digitBase
                                        withBoolean:(jboolean)lastStrongWasAL;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfLanguagesArabicLigaturizer)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, ar_nothing, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, ar_novowel, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, ar_composedtashkeel, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, ar_lig, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, DIGITS_EN2AN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, DIGITS_AN2EN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, DIGITS_EN2AN_INIT_LR, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, DIGITS_EN2AN_INIT_AL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, DIGITS_MASK, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, DIGIT_TYPE_AN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, DIGIT_TYPE_AN_EXTENDED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfLanguagesArabicLigaturizer, DIGIT_TYPE_MASK, jint)

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfLanguagesArabicLigaturizer_isVowelWithChar_(jchar s);

FOUNDATION_EXPORT jchar ComItextpdfTextPdfLanguagesArabicLigaturizer_charshapeWithChar_withInt_(jchar s, jint which);

FOUNDATION_EXPORT jint ComItextpdfTextPdfLanguagesArabicLigaturizer_shapecountWithChar_(jchar s);

FOUNDATION_EXPORT jint ComItextpdfTextPdfLanguagesArabicLigaturizer_ligatureWithChar_withComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct_(jchar newchar, ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct *oldchar);

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesArabicLigaturizer_copycstostringWithJavaLangStringBuffer_withComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct_withInt_(JavaLangStringBuffer *string, ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct *s, jint level);

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesArabicLigaturizer_doubleligWithJavaLangStringBuffer_withInt_(JavaLangStringBuffer *string, jint level);

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfLanguagesArabicLigaturizer_connects_to_leftWithComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct_(ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct *a);

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesArabicLigaturizer_shapeWithCharArray_withJavaLangStringBuffer_withInt_(IOSCharArray *text, JavaLangStringBuffer *string, jint level);

FOUNDATION_EXPORT jint ComItextpdfTextPdfLanguagesArabicLigaturizer_arabic_shapeWithCharArray_withInt_withInt_withCharArray_withInt_withInt_withInt_(IOSCharArray *src, jint srcoffset, jint srclength, IOSCharArray *dest, jint destoffset, jint destlength, jint level);

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesArabicLigaturizer_processNumbersWithCharArray_withInt_withInt_withInt_(IOSCharArray *text, jint offset, jint length, jint options);

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesArabicLigaturizer_shapeToArabicDigitsWithContextWithCharArray_withInt_withInt_withChar_withBoolean_(IOSCharArray *dest, jint start, jint length, jchar digitBase, jboolean lastStrongWasAL);

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesArabicLigaturizer_init(ComItextpdfTextPdfLanguagesArabicLigaturizer *self);

FOUNDATION_EXPORT ComItextpdfTextPdfLanguagesArabicLigaturizer *new_ComItextpdfTextPdfLanguagesArabicLigaturizer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesArabicLigaturizer_initWithInt_withInt_(ComItextpdfTextPdfLanguagesArabicLigaturizer *self, jint runDirection, jint options);

FOUNDATION_EXPORT ComItextpdfTextPdfLanguagesArabicLigaturizer *new_ComItextpdfTextPdfLanguagesArabicLigaturizer_initWithInt_withInt_(jint runDirection, jint options) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfLanguagesArabicLigaturizer)

@interface ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct : NSObject {
 @public
  jchar basechar_;
  jchar mark1_;
  jchar vowel_;
  jint lignum_;
  jint numshapes_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct)

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct_init(ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct *self);

FOUNDATION_EXPORT ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct *new_ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfLanguagesArabicLigaturizer_charstruct)

#endif // _ComItextpdfTextPdfLanguagesArabicLigaturizer_H_
