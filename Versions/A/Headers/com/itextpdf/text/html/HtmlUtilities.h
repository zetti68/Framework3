//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/HtmlUtilities.java
//

#ifndef _ComItextpdfTextHtmlHtmlUtilities_H_
#define _ComItextpdfTextHtmlHtmlUtilities_H_

@class ComItextpdfTextBaseColor;
@class IOSIntArray;
@class JavaUtilHashMap;
@class JavaUtilProperties;

#import "JreEmulation.h"

#define ComItextpdfTextHtmlHtmlUtilities_DEFAULT_FONT_SIZE 12.0f

@interface ComItextpdfTextHtmlHtmlUtilities : NSObject {
}

+ (jfloat)parseLengthWithNSString:(NSString *)string;

+ (jfloat)parseLengthWithNSString:(NSString *)string
                        withFloat:(jfloat)actualFontSize;

+ (ComItextpdfTextBaseColor *)decodeColorWithNSString:(NSString *)s;

+ (JavaUtilProperties *)parseAttributesWithNSString:(NSString *)string;

+ (NSString *)removeCommentWithNSString:(NSString *)string
                           withNSString:(NSString *)startComment
                           withNSString:(NSString *)endComment;

+ (NSString *)eliminateWhiteSpaceWithNSString:(NSString *)content;

+ (jint)getIndexedFontSizeWithNSString:(NSString *)value
                          withNSString:(NSString *)previous;

+ (jint)alignmentValueWithNSString:(NSString *)alignment;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextHtmlHtmlUtilities_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextHtmlHtmlUtilities)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlHtmlUtilities, DEFAULT_FONT_SIZE, jfloat)

FOUNDATION_EXPORT JavaUtilHashMap *ComItextpdfTextHtmlHtmlUtilities_sizes_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlHtmlUtilities, sizes_, JavaUtilHashMap *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextHtmlHtmlUtilities, sizes_, JavaUtilHashMap *)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextHtmlHtmlUtilities_FONTSIZES_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlHtmlUtilities, FONTSIZES_, IOSIntArray *)

#endif // _ComItextpdfTextHtmlHtmlUtilities_H_