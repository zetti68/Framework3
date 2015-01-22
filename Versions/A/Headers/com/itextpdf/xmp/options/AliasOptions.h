//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/options/AliasOptions.java
//

#ifndef _ComItextpdfXmpOptionsAliasOptions_H_
#define _ComItextpdfXmpOptionsAliasOptions_H_

@class ComItextpdfXmpOptionsPropertyOptions;

#import "JreEmulation.h"
#include "com/itextpdf/xmp/options/Options.h"

#define ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY 512
#define ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALTERNATE 2048
#define ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALT_TEXT 4096
#define ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ORDERED 1024
#define ComItextpdfXmpOptionsAliasOptions_PROP_DIRECT 0

@interface ComItextpdfXmpOptionsAliasOptions : ComItextpdfXmpOptionsOptions {
}

- (instancetype)init;

- (instancetype)initWithInt:(jint)options;

- (jboolean)isSimple;

- (jboolean)isArray;

- (ComItextpdfXmpOptionsAliasOptions *)setArrayWithBoolean:(jboolean)value;

- (jboolean)isArrayOrdered;

- (ComItextpdfXmpOptionsAliasOptions *)setArrayOrderedWithBoolean:(jboolean)value;

- (jboolean)isArrayAlternate;

- (ComItextpdfXmpOptionsAliasOptions *)setArrayAlternateWithBoolean:(jboolean)value;

- (jboolean)isArrayAltText;

- (ComItextpdfXmpOptionsAliasOptions *)setArrayAltTextWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)toPropertyOptions;

- (NSString *)defineOptionNameWithInt:(jint)option;

- (jint)getValidOptions;

@end

__attribute__((always_inline)) inline void ComItextpdfXmpOptionsAliasOptions_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_DIRECT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_ARRAY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_ARRAY_ORDERED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_ARRAY_ALTERNATE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsAliasOptions, PROP_ARRAY_ALT_TEXT, jint)

#endif // _ComItextpdfXmpOptionsAliasOptions_H_