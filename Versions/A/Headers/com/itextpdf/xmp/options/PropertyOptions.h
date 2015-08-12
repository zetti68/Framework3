//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/options/PropertyOptions.java
//

#ifndef _ComItextpdfXmpOptionsPropertyOptions_H_
#define _ComItextpdfXmpOptionsPropertyOptions_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/xmp/options/Options.h"

#define ComItextpdfXmpOptionsPropertyOptions_NO_OPTIONS 0
#define ComItextpdfXmpOptionsPropertyOptions_URI 2
#define ComItextpdfXmpOptionsPropertyOptions_HAS_QUALIFIERS 16
#define ComItextpdfXmpOptionsPropertyOptions_QUALIFIER 32
#define ComItextpdfXmpOptionsPropertyOptions_HAS_LANGUAGE 64
#define ComItextpdfXmpOptionsPropertyOptions_HAS_TYPE 128
#define ComItextpdfXmpOptionsPropertyOptions_STRUCT 256
#define ComItextpdfXmpOptionsPropertyOptions_ARRAY 512
#define ComItextpdfXmpOptionsPropertyOptions_ARRAY_ORDERED 1024
#define ComItextpdfXmpOptionsPropertyOptions_ARRAY_ALTERNATE 2048
#define ComItextpdfXmpOptionsPropertyOptions_ARRAY_ALT_TEXT 4096
#define ComItextpdfXmpOptionsPropertyOptions_SCHEMA_NODE ((jint) 0x80000000)
#define ComItextpdfXmpOptionsPropertyOptions_DELETE_EXISTING 536870912
#define ComItextpdfXmpOptionsPropertyOptions_SEPARATE_NODE 1073741824

@interface ComItextpdfXmpOptionsPropertyOptions : ComItextpdfXmpOptionsOptions

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)options;

- (void)assertConsistencyWithInt:(jint)options;

- (jboolean)equalArrayTypesWithComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (jboolean)getHasLanguage;

- (jboolean)getHasQualifiers;

- (jboolean)getHasType;

- (jboolean)isArray;

- (jboolean)isArrayAlternate;

- (jboolean)isArrayAltText;

- (jboolean)isArrayOrdered;

- (jboolean)isCompositeProperty;

- (jboolean)isOnlyArrayOptions;

- (jboolean)isQualifier;

- (jboolean)isSchemaNode;

- (jboolean)isSimple;

- (jboolean)isStruct;

- (jboolean)isURI;

- (void)mergeWithWithComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (ComItextpdfXmpOptionsPropertyOptions *)setArrayWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setArrayAlternateWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setArrayAltTextWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setArrayOrderedWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setHasLanguageWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setHasQualifiersWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setHasTypeWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setQualifierWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setSchemaNodeWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setStructWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsPropertyOptions *)setURIWithBoolean:(jboolean)value;

#pragma mark Protected

- (NSString *)defineOptionNameWithInt:(jint)option;

- (jint)getValidOptions;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfXmpOptionsPropertyOptions)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, NO_OPTIONS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, URI, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, HAS_QUALIFIERS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, QUALIFIER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, HAS_LANGUAGE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, HAS_TYPE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, STRUCT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, ARRAY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, ARRAY_ORDERED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, ARRAY_ALTERNATE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, ARRAY_ALT_TEXT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, SCHEMA_NODE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, DELETE_EXISTING, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsPropertyOptions, SEPARATE_NODE, jint)

FOUNDATION_EXPORT void ComItextpdfXmpOptionsPropertyOptions_init(ComItextpdfXmpOptionsPropertyOptions *self);

FOUNDATION_EXPORT ComItextpdfXmpOptionsPropertyOptions *new_ComItextpdfXmpOptionsPropertyOptions_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfXmpOptionsPropertyOptions_initWithInt_(ComItextpdfXmpOptionsPropertyOptions *self, jint options);

FOUNDATION_EXPORT ComItextpdfXmpOptionsPropertyOptions *new_ComItextpdfXmpOptionsPropertyOptions_initWithInt_(jint options) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfXmpOptionsPropertyOptions)

#endif // _ComItextpdfXmpOptionsPropertyOptions_H_
