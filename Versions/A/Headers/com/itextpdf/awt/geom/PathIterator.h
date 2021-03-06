//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/PathIterator.java
//

#ifndef _ComItextpdfAwtGeomPathIterator_H_
#define _ComItextpdfAwtGeomPathIterator_H_

#include "J2ObjC_header.h"

@class IOSDoubleArray;
@class IOSFloatArray;

#define ComItextpdfAwtGeomPathIterator_WIND_EVEN_ODD 0
#define ComItextpdfAwtGeomPathIterator_WIND_NON_ZERO 1
#define ComItextpdfAwtGeomPathIterator_SEG_MOVETO 0
#define ComItextpdfAwtGeomPathIterator_SEG_LINETO 1
#define ComItextpdfAwtGeomPathIterator_SEG_QUADTO 2
#define ComItextpdfAwtGeomPathIterator_SEG_CUBICTO 3
#define ComItextpdfAwtGeomPathIterator_SEG_CLOSE 4

@protocol ComItextpdfAwtGeomPathIterator < NSObject, JavaObject >

- (jint)getWindingRule;

- (jboolean)isDone;

- (void)next;

- (jint)currentSegmentWithFloatArray:(IOSFloatArray *)coords;

- (jint)currentSegmentWithDoubleArray:(IOSDoubleArray *)coords;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfAwtGeomPathIterator)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomPathIterator, WIND_EVEN_ODD, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomPathIterator, WIND_NON_ZERO, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomPathIterator, SEG_MOVETO, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomPathIterator, SEG_LINETO, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomPathIterator, SEG_QUADTO, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomPathIterator, SEG_CUBICTO, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomPathIterator, SEG_CLOSE, jint)

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfAwtGeomPathIterator)

#endif // _ComItextpdfAwtGeomPathIterator_H_
