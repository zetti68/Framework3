//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/options/ParseOptions.java
//

#ifndef _ComItextpdfXmpOptionsParseOptions_H_
#define _ComItextpdfXmpOptionsParseOptions_H_

#import "JreEmulation.h"
#include "com/itextpdf/xmp/options/Options.h"

#define ComItextpdfXmpOptionsParseOptions_ACCEPT_LATIN_1 16
#define ComItextpdfXmpOptionsParseOptions_FIX_CONTROL_CHARS 8
#define ComItextpdfXmpOptionsParseOptions_OMIT_NORMALIZATION 32
#define ComItextpdfXmpOptionsParseOptions_REQUIRE_XMP_META 1
#define ComItextpdfXmpOptionsParseOptions_STRICT_ALIASING 4

@interface ComItextpdfXmpOptionsParseOptions : ComItextpdfXmpOptionsOptions {
}

- (instancetype)init;

- (jboolean)getRequireXMPMeta;

- (ComItextpdfXmpOptionsParseOptions *)setRequireXMPMetaWithBoolean:(jboolean)value;

- (jboolean)getStrictAliasing;

- (ComItextpdfXmpOptionsParseOptions *)setStrictAliasingWithBoolean:(jboolean)value;

- (jboolean)getFixControlChars;

- (ComItextpdfXmpOptionsParseOptions *)setFixControlCharsWithBoolean:(jboolean)value;

- (jboolean)getAcceptLatin1;

- (ComItextpdfXmpOptionsParseOptions *)setOmitNormalizationWithBoolean:(jboolean)value;

- (jboolean)getOmitNormalization;

- (ComItextpdfXmpOptionsParseOptions *)setAcceptLatin1WithBoolean:(jboolean)value;

- (NSString *)defineOptionNameWithInt:(jint)option;

- (jint)getValidOptions;

@end

__attribute__((always_inline)) inline void ComItextpdfXmpOptionsParseOptions_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsParseOptions, REQUIRE_XMP_META, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsParseOptions, STRICT_ALIASING, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsParseOptions, FIX_CONTROL_CHARS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsParseOptions, ACCEPT_LATIN_1, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsParseOptions, OMIT_NORMALIZATION, jint)

#endif // _ComItextpdfXmpOptionsParseOptions_H_