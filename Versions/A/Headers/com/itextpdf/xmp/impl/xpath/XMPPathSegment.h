//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/xpath/XMPPathSegment.java
//

#ifndef _ComItextpdfXmpImplXpathXMPPathSegment_H_
#define _ComItextpdfXmpImplXpathXMPPathSegment_H_

#include "J2ObjC_header.h"

@interface ComItextpdfXmpImplXpathXMPPathSegment : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name;

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)kind;

- (jint)getAliasForm;

- (jint)getKind;

- (NSString *)getName;

- (jboolean)isAlias;

- (void)setAliasWithBoolean:(jboolean)alias;

- (void)setAliasFormWithInt:(jint)aliasForm;

- (void)setKindWithInt:(jint)kind;

- (void)setNameWithNSString:(NSString *)name;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfXmpImplXpathXMPPathSegment)

FOUNDATION_EXPORT void ComItextpdfXmpImplXpathXMPPathSegment_initWithNSString_(ComItextpdfXmpImplXpathXMPPathSegment *self, NSString *name);

FOUNDATION_EXPORT ComItextpdfXmpImplXpathXMPPathSegment *new_ComItextpdfXmpImplXpathXMPPathSegment_initWithNSString_(NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfXmpImplXpathXMPPathSegment_initWithNSString_withInt_(ComItextpdfXmpImplXpathXMPPathSegment *self, NSString *name, jint kind);

FOUNDATION_EXPORT ComItextpdfXmpImplXpathXMPPathSegment *new_ComItextpdfXmpImplXpathXMPPathSegment_initWithNSString_withInt_(NSString *name, jint kind) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfXmpImplXpathXMPPathSegment)

#endif // _ComItextpdfXmpImplXpathXMPPathSegment_H_
