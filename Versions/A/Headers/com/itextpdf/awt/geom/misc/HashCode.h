//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/misc/HashCode.java
//

#ifndef _ComItextpdfAwtGeomMiscHashCode_H_
#define _ComItextpdfAwtGeomMiscHashCode_H_

#include "J2ObjC_header.h"

#define ComItextpdfAwtGeomMiscHashCode_EMPTY_HASH_CODE 1

@interface ComItextpdfAwtGeomMiscHashCode : NSObject

#pragma mark Public

- (instancetype)init;

- (ComItextpdfAwtGeomMiscHashCode *)appendWithBoolean:(jboolean)value;

- (ComItextpdfAwtGeomMiscHashCode *)appendWithDouble:(jdouble)value;

- (ComItextpdfAwtGeomMiscHashCode *)appendWithFloat:(jfloat)value;

- (ComItextpdfAwtGeomMiscHashCode *)appendWithInt:(jint)value;

- (ComItextpdfAwtGeomMiscHashCode *)appendWithLong:(jlong)value;

- (ComItextpdfAwtGeomMiscHashCode *)appendWithId:(id)value;

+ (jint)combineWithInt:(jint)hashCode
           withBoolean:(jboolean)value;

+ (jint)combineWithInt:(jint)hashCode
            withDouble:(jdouble)value;

+ (jint)combineWithInt:(jint)hashCode
             withFloat:(jfloat)value;

+ (jint)combineWithInt:(jint)hashCode
               withInt:(jint)value;

+ (jint)combineWithInt:(jint)hashCode
              withLong:(jlong)value;

+ (jint)combineWithInt:(jint)hashCode
                withId:(id)value;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfAwtGeomMiscHashCode)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomMiscHashCode, EMPTY_HASH_CODE, jint)

FOUNDATION_EXPORT jint ComItextpdfAwtGeomMiscHashCode_combineWithInt_withBoolean_(jint hashCode, jboolean value);

FOUNDATION_EXPORT jint ComItextpdfAwtGeomMiscHashCode_combineWithInt_withLong_(jint hashCode, jlong value);

FOUNDATION_EXPORT jint ComItextpdfAwtGeomMiscHashCode_combineWithInt_withFloat_(jint hashCode, jfloat value);

FOUNDATION_EXPORT jint ComItextpdfAwtGeomMiscHashCode_combineWithInt_withDouble_(jint hashCode, jdouble value);

FOUNDATION_EXPORT jint ComItextpdfAwtGeomMiscHashCode_combineWithInt_withId_(jint hashCode, id value);

FOUNDATION_EXPORT jint ComItextpdfAwtGeomMiscHashCode_combineWithInt_withInt_(jint hashCode, jint value);

FOUNDATION_EXPORT void ComItextpdfAwtGeomMiscHashCode_init(ComItextpdfAwtGeomMiscHashCode *self);

FOUNDATION_EXPORT ComItextpdfAwtGeomMiscHashCode *new_ComItextpdfAwtGeomMiscHashCode_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfAwtGeomMiscHashCode)

#endif // _ComItextpdfAwtGeomMiscHashCode_H_
