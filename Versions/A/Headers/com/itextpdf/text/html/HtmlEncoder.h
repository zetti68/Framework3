//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/HtmlEncoder.java
//

#ifndef _ComItextpdfTextHtmlHtmlEncoder_H_
#define _ComItextpdfTextHtmlHtmlEncoder_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextBaseColor;

@interface ComItextpdfTextHtmlHtmlEncoder : NSObject

#pragma mark Public

+ (NSString *)encodeWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

+ (NSString *)encodeWithNSString:(NSString *)string;

+ (NSString *)getAlignmentWithInt:(jint)alignment;

+ (jboolean)isNewLineTagWithNSString:(NSString *)tag;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextHtmlHtmlEncoder)

FOUNDATION_EXPORT NSString *ComItextpdfTextHtmlHtmlEncoder_encodeWithNSString_(NSString *string);

FOUNDATION_EXPORT NSString *ComItextpdfTextHtmlHtmlEncoder_encodeWithComItextpdfTextBaseColor_(ComItextpdfTextBaseColor *color);

FOUNDATION_EXPORT NSString *ComItextpdfTextHtmlHtmlEncoder_getAlignmentWithInt_(jint alignment);

FOUNDATION_EXPORT jboolean ComItextpdfTextHtmlHtmlEncoder_isNewLineTagWithNSString_(NSString *tag);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextHtmlHtmlEncoder)

#endif // _ComItextpdfTextHtmlHtmlEncoder_H_
