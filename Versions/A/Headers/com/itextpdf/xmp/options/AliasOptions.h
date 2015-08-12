//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/options/AliasOptions.java
//

#ifndef _ComItextpdfXmpOptionsAliasOptions_H_
#define _ComItextpdfXmpOptionsAliasOptions_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/xmp/options/Options.h"

@class ComItextpdfXmpOptionsPropertyOptions;

#define ComItextpdfXmpOptionsAliasOptions_PROP_DIRECT 0
#define ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY 512
#define ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ORDERED 1024
#define ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALTERNATE 2048
#define ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALT_TEXT 4096

@interface ComItextpdfXmpOptionsAliasOptions : ComItextpdfXmpOptionsOptions

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)options;

- (jboolean)isArray;

- (jboolean)isArrayAlternate;

- (jboolean)isArrayAltText;

- (jboolean)isArrayOrdered;

- (jboolean)isSimple;

- (ComItextpdfXmpOptionsAliasOptions *)setArrayWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsAliasOptions *)setArrayAlternateWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsAliasOptions *)setArrayAltTextWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsAliasOptions *)setArrayOrderedWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)toPropertyOptions;

#pragma mark Protected

- (NSString *)defineOptionNameWithInt:(jint)option;

- (jint)getValidOptions;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfXmpOptionsAliasOptions)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_DIRECT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_ARRAY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_ARRAY_ORDERED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_ARRAY_ALTERNATE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_ARRAY_ALT_TEXT, jint)

FOUNDATION_EXPORT void ComItextpdfXmpOptionsAliasOptions_init(ComItextpdfXmpOptionsAliasOptions *self);

FOUNDATION_EXPORT ComItextpdfXmpOptionsAliasOptions *new_ComItextpdfXmpOptionsAliasOptions_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfXmpOptionsAliasOptions_initWithInt_(ComItextpdfXmpOptionsAliasOptions *self, jint options);

FOUNDATION_EXPORT ComItextpdfXmpOptionsAliasOptions *new_ComItextpdfXmpOptionsAliasOptions_initWithInt_(jint options) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfXmpOptionsAliasOptions)

#endif // _ComItextpdfXmpOptionsAliasOptions_H_
