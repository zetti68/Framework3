//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/languages/HebrewProcessor.java
//

#ifndef _ComItextpdfTextPdfLanguagesHebrewProcessor_H_
#define _ComItextpdfTextPdfLanguagesHebrewProcessor_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/languages/LanguageProcessor.h"

@interface ComItextpdfTextPdfLanguagesHebrewProcessor : NSObject < ComItextpdfTextPdfLanguagesLanguageProcessor > {
 @public
  jint runDirection_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)runDirection;

- (jboolean)isRTL;

- (NSString *)processWithNSString:(NSString *)s;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfLanguagesHebrewProcessor)

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesHebrewProcessor_init(ComItextpdfTextPdfLanguagesHebrewProcessor *self);

FOUNDATION_EXPORT ComItextpdfTextPdfLanguagesHebrewProcessor *new_ComItextpdfTextPdfLanguagesHebrewProcessor_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfLanguagesHebrewProcessor_initWithInt_(ComItextpdfTextPdfLanguagesHebrewProcessor *self, jint runDirection);

FOUNDATION_EXPORT ComItextpdfTextPdfLanguagesHebrewProcessor *new_ComItextpdfTextPdfLanguagesHebrewProcessor_initWithInt_(jint runDirection) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfLanguagesHebrewProcessor)

#endif // _ComItextpdfTextPdfLanguagesHebrewProcessor_H_
