//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/GeneralPath.java
//

#ifndef _ComItextpdfAwtGeomGeneralPath_H_
#define _ComItextpdfAwtGeomGeneralPath_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/awt/geom/PathIterator.h"
#include "com/itextpdf/awt/geom/Shape.h"

@class ComItextpdfAwtGeomAffineTransform;
@class ComItextpdfAwtGeomPoint2D;
@class ComItextpdfAwtGeomRectangle2D;
@class ComItextpdfAwtGeomRectangle;
@class IOSByteArray;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSIntArray;

#define ComItextpdfAwtGeomGeneralPath_WIND_EVEN_ODD 0
#define ComItextpdfAwtGeomGeneralPath_WIND_NON_ZERO 1

@interface ComItextpdfAwtGeomGeneralPath : NSObject < ComItextpdfAwtGeomShape, NSCopying > {
 @public
  IOSByteArray *types_;
  IOSFloatArray *points_;
  jint typeSize_;
  jint pointSize_;
  jint rule_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)rule;

- (instancetype)initWithInt:(jint)rule
                    withInt:(jint)initialCapacity;

- (instancetype)initWithComItextpdfAwtGeomShape:(id<ComItextpdfAwtGeomShape>)shape;

- (void)appendWithComItextpdfAwtGeomPathIterator:(id<ComItextpdfAwtGeomPathIterator>)path
                                     withBoolean:(jboolean)connect;

- (void)appendWithComItextpdfAwtGeomShape:(id<ComItextpdfAwtGeomShape>)shape
                              withBoolean:(jboolean)connect;

- (id)clone;

- (void)closePath;

- (jboolean)containsWithDouble:(jdouble)px
                    withDouble:(jdouble)py;

- (jboolean)containsWithDouble:(jdouble)rx
                    withDouble:(jdouble)ry
                    withDouble:(jdouble)rw
                    withDouble:(jdouble)rh;

- (jboolean)containsWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

- (jboolean)containsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (id<ComItextpdfAwtGeomShape>)createTransformedShapeWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t;

- (void)curveToWithFloat:(jfloat)x1
               withFloat:(jfloat)y1
               withFloat:(jfloat)x2
               withFloat:(jfloat)y2
               withFloat:(jfloat)x3
               withFloat:(jfloat)y3;

- (ComItextpdfAwtGeomRectangle *)getBounds;

- (ComItextpdfAwtGeomRectangle2D *)getBounds2D;

- (ComItextpdfAwtGeomPoint2D *)getCurrentPoint;

- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t;

- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t
                                                                                withDouble:(jdouble)flatness;

- (jint)getWindingRule;

- (jboolean)intersectsWithDouble:(jdouble)rx
                      withDouble:(jdouble)ry
                      withDouble:(jdouble)rw
                      withDouble:(jdouble)rh;

- (jboolean)intersectsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (void)lineToWithFloat:(jfloat)x
              withFloat:(jfloat)y;

- (void)moveToWithFloat:(jfloat)x
              withFloat:(jfloat)y;

- (void)quadToWithFloat:(jfloat)x1
              withFloat:(jfloat)y1
              withFloat:(jfloat)x2
              withFloat:(jfloat)y2;

- (void)reset;

- (void)setWindingRuleWithInt:(jint)rule;

- (void)transformWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t;

#pragma mark Package-Private

- (void)checkBufWithInt:(jint)pointCount
            withBoolean:(jboolean)checkMove;

- (jboolean)isInsideWithInt:(jint)cross;

@end

J2OBJC_STATIC_INIT(ComItextpdfAwtGeomGeneralPath)

J2OBJC_FIELD_SETTER(ComItextpdfAwtGeomGeneralPath, types_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfAwtGeomGeneralPath, points_, IOSFloatArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomGeneralPath, WIND_EVEN_ODD, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomGeneralPath, WIND_NON_ZERO, jint)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfAwtGeomGeneralPath_pointShift_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomGeneralPath, pointShift_, IOSIntArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfAwtGeomGeneralPath, pointShift_, IOSIntArray *)

FOUNDATION_EXPORT void ComItextpdfAwtGeomGeneralPath_init(ComItextpdfAwtGeomGeneralPath *self);

FOUNDATION_EXPORT ComItextpdfAwtGeomGeneralPath *new_ComItextpdfAwtGeomGeneralPath_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfAwtGeomGeneralPath_initWithInt_(ComItextpdfAwtGeomGeneralPath *self, jint rule);

FOUNDATION_EXPORT ComItextpdfAwtGeomGeneralPath *new_ComItextpdfAwtGeomGeneralPath_initWithInt_(jint rule) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfAwtGeomGeneralPath_initWithInt_withInt_(ComItextpdfAwtGeomGeneralPath *self, jint rule, jint initialCapacity);

FOUNDATION_EXPORT ComItextpdfAwtGeomGeneralPath *new_ComItextpdfAwtGeomGeneralPath_initWithInt_withInt_(jint rule, jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfAwtGeomGeneralPath_initWithComItextpdfAwtGeomShape_(ComItextpdfAwtGeomGeneralPath *self, id<ComItextpdfAwtGeomShape> shape);

FOUNDATION_EXPORT ComItextpdfAwtGeomGeneralPath *new_ComItextpdfAwtGeomGeneralPath_initWithComItextpdfAwtGeomShape_(id<ComItextpdfAwtGeomShape> shape) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfAwtGeomGeneralPath)

@interface ComItextpdfAwtGeomGeneralPath_Iterator : NSObject < ComItextpdfAwtGeomPathIterator > {
 @public
  jint typeIndex_;
  jint pointIndex_;
  ComItextpdfAwtGeomGeneralPath *p_;
  ComItextpdfAwtGeomAffineTransform *t_;
}

#pragma mark Public

- (jint)currentSegmentWithDoubleArray:(IOSDoubleArray *)coords;

- (jint)currentSegmentWithFloatArray:(IOSFloatArray *)coords;

- (jint)getWindingRule;

- (jboolean)isDone;

- (void)next;

#pragma mark Package-Private

- (instancetype)initWithComItextpdfAwtGeomGeneralPath:(ComItextpdfAwtGeomGeneralPath *)outer$
                    withComItextpdfAwtGeomGeneralPath:(ComItextpdfAwtGeomGeneralPath *)path;

- (instancetype)initWithComItextpdfAwtGeomGeneralPath:(ComItextpdfAwtGeomGeneralPath *)outer$
                    withComItextpdfAwtGeomGeneralPath:(ComItextpdfAwtGeomGeneralPath *)path
                withComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)at;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfAwtGeomGeneralPath_Iterator)

J2OBJC_FIELD_SETTER(ComItextpdfAwtGeomGeneralPath_Iterator, p_, ComItextpdfAwtGeomGeneralPath *)
J2OBJC_FIELD_SETTER(ComItextpdfAwtGeomGeneralPath_Iterator, t_, ComItextpdfAwtGeomAffineTransform *)

FOUNDATION_EXPORT void ComItextpdfAwtGeomGeneralPath_Iterator_initWithComItextpdfAwtGeomGeneralPath_withComItextpdfAwtGeomGeneralPath_(ComItextpdfAwtGeomGeneralPath_Iterator *self, ComItextpdfAwtGeomGeneralPath *outer$, ComItextpdfAwtGeomGeneralPath *path);

FOUNDATION_EXPORT ComItextpdfAwtGeomGeneralPath_Iterator *new_ComItextpdfAwtGeomGeneralPath_Iterator_initWithComItextpdfAwtGeomGeneralPath_withComItextpdfAwtGeomGeneralPath_(ComItextpdfAwtGeomGeneralPath *outer$, ComItextpdfAwtGeomGeneralPath *path) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfAwtGeomGeneralPath_Iterator_initWithComItextpdfAwtGeomGeneralPath_withComItextpdfAwtGeomGeneralPath_withComItextpdfAwtGeomAffineTransform_(ComItextpdfAwtGeomGeneralPath_Iterator *self, ComItextpdfAwtGeomGeneralPath *outer$, ComItextpdfAwtGeomGeneralPath *path, ComItextpdfAwtGeomAffineTransform *at);

FOUNDATION_EXPORT ComItextpdfAwtGeomGeneralPath_Iterator *new_ComItextpdfAwtGeomGeneralPath_Iterator_initWithComItextpdfAwtGeomGeneralPath_withComItextpdfAwtGeomGeneralPath_withComItextpdfAwtGeomAffineTransform_(ComItextpdfAwtGeomGeneralPath *outer$, ComItextpdfAwtGeomGeneralPath *path, ComItextpdfAwtGeomAffineTransform *at) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfAwtGeomGeneralPath_Iterator)

#endif // _ComItextpdfAwtGeomGeneralPath_H_
