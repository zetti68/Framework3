//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/GlyphList.java
//

#ifndef _ComItextpdfTextPdfGlyphList_H_
#define _ComItextpdfTextPdfGlyphList_H_

#include "J2ObjC_header.h"

@class IOSIntArray;

@interface ComItextpdfTextPdfGlyphList : NSObject

#pragma mark Public

- (instancetype)init;

+ (IOSIntArray *)nameToUnicodeWithNSString:(NSString *)name;

+ (NSString *)unicodeToNameWithInt:(jint)num;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfGlyphList)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextPdfGlyphList_nameToUnicodeWithNSString_(NSString *name);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfGlyphList_unicodeToNameWithInt_(jint num);

FOUNDATION_EXPORT void ComItextpdfTextPdfGlyphList_init(ComItextpdfTextPdfGlyphList *self);

FOUNDATION_EXPORT ComItextpdfTextPdfGlyphList *new_ComItextpdfTextPdfGlyphList_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfGlyphList)

#endif // _ComItextpdfTextPdfGlyphList_H_
