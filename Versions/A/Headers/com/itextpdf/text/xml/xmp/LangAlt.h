//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/LangAlt.java
//

#ifndef _ComItextpdfTextXmlXmpLangAlt_H_
#define _ComItextpdfTextXmlXmpLangAlt_H_

#include "J2ObjC_header.h"
#include "java/util/Properties.h"

@class JavaLangStringBuffer;

@interface ComItextpdfTextXmlXmpLangAlt : JavaUtilProperties

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)defaultValue;

- (void)addLanguageWithNSString:(NSString *)language
                   withNSString:(NSString *)value;

- (NSString *)description;

#pragma mark Protected

- (void)processWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
                                 withId:(id)lang;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextXmlXmpLangAlt)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpLangAlt_DEFAULT_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpLangAlt, DEFAULT_, NSString *)

FOUNDATION_EXPORT void ComItextpdfTextXmlXmpLangAlt_initWithNSString_(ComItextpdfTextXmlXmpLangAlt *self, NSString *defaultValue);

FOUNDATION_EXPORT ComItextpdfTextXmlXmpLangAlt *new_ComItextpdfTextXmlXmpLangAlt_initWithNSString_(NSString *defaultValue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextXmlXmpLangAlt_init(ComItextpdfTextXmlXmpLangAlt *self);

FOUNDATION_EXPORT ComItextpdfTextXmlXmpLangAlt *new_ComItextpdfTextXmlXmpLangAlt_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextXmlXmpLangAlt)

#endif // _ComItextpdfTextXmlXmpLangAlt_H_
