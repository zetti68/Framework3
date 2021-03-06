//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/Hyphenation.java
//

#ifndef _ComItextpdfTextPdfHyphenationHyphenation_H_
#define _ComItextpdfTextPdfHyphenationHyphenation_H_

#include "J2ObjC_header.h"

@class IOSIntArray;

@interface ComItextpdfTextPdfHyphenationHyphenation : NSObject

#pragma mark Public

- (IOSIntArray *)getHyphenationPoints;

- (NSString *)getPostHyphenTextWithInt:(jint)index;

- (NSString *)getPreHyphenTextWithInt:(jint)index;

- (jint)length;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)word
                    withIntArray:(IOSIntArray *)points;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfHyphenationHyphenation)

FOUNDATION_EXPORT void ComItextpdfTextPdfHyphenationHyphenation_initWithNSString_withIntArray_(ComItextpdfTextPdfHyphenationHyphenation *self, NSString *word, IOSIntArray *points);

FOUNDATION_EXPORT ComItextpdfTextPdfHyphenationHyphenation *new_ComItextpdfTextPdfHyphenationHyphenation_initWithNSString_withIntArray_(NSString *word, IOSIntArray *points) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfHyphenationHyphenation)

#endif // _ComItextpdfTextPdfHyphenationHyphenation_H_
