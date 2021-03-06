//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/options/IteratorOptions.java
//

#ifndef _ComItextpdfXmpOptionsIteratorOptions_H_
#define _ComItextpdfXmpOptionsIteratorOptions_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/xmp/options/Options.h"

#define ComItextpdfXmpOptionsIteratorOptions_JUST_CHILDREN 256
#define ComItextpdfXmpOptionsIteratorOptions_JUST_LEAFNODES 512
#define ComItextpdfXmpOptionsIteratorOptions_JUST_LEAFNAME 1024
#define ComItextpdfXmpOptionsIteratorOptions_OMIT_QUALIFIERS 4096

@interface ComItextpdfXmpOptionsIteratorOptions : ComItextpdfXmpOptionsOptions

#pragma mark Public

- (instancetype)init;

- (jboolean)isJustChildren;

- (jboolean)isJustLeafname;

- (jboolean)isJustLeafnodes;

- (jboolean)isOmitQualifiers;

- (ComItextpdfXmpOptionsIteratorOptions *)setJustChildrenWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsIteratorOptions *)setJustLeafnameWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsIteratorOptions *)setJustLeafnodesWithBoolean:(jboolean)value;

- (ComItextpdfXmpOptionsIteratorOptions *)setOmitQualifiersWithBoolean:(jboolean)value;

#pragma mark Protected

- (NSString *)defineOptionNameWithInt:(jint)option;

- (jint)getValidOptions;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfXmpOptionsIteratorOptions)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsIteratorOptions, JUST_CHILDREN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsIteratorOptions, JUST_LEAFNODES, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsIteratorOptions, JUST_LEAFNAME, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpOptionsIteratorOptions, OMIT_QUALIFIERS, jint)

FOUNDATION_EXPORT void ComItextpdfXmpOptionsIteratorOptions_init(ComItextpdfXmpOptionsIteratorOptions *self);

FOUNDATION_EXPORT ComItextpdfXmpOptionsIteratorOptions *new_ComItextpdfXmpOptionsIteratorOptions_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfXmpOptionsIteratorOptions)

#endif // _ComItextpdfXmpOptionsIteratorOptions_H_
