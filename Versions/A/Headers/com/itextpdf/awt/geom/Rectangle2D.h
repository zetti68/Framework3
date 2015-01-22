//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Rectangle2D.java
//

#ifndef _ComItextpdfAwtGeomRectangle2D_H_
#define _ComItextpdfAwtGeomRectangle2D_H_

@class ComItextpdfAwtGeomAffineTransform;
@class ComItextpdfAwtGeomLine2D;
@class ComItextpdfAwtGeomPoint2D;
@class IOSDoubleArray;
@class IOSFloatArray;

#import "JreEmulation.h"
#include "com/itextpdf/awt/geom/PathIterator.h"
#include "com/itextpdf/awt/geom/RectangularShape.h"

#define ComItextpdfAwtGeomRectangle2D_OUT_BOTTOM 8
#define ComItextpdfAwtGeomRectangle2D_OUT_LEFT 1
#define ComItextpdfAwtGeomRectangle2D_OUT_RIGHT 4
#define ComItextpdfAwtGeomRectangle2D_OUT_TOP 2

@interface ComItextpdfAwtGeomRectangle2D : ComItextpdfAwtGeomRectangularShape {
}

- (instancetype)init;

- (void)setRectWithDouble:(jdouble)x
               withDouble:(jdouble)y
               withDouble:(jdouble)width
               withDouble:(jdouble)height;

- (jint)outcodeWithDouble:(jdouble)x
               withDouble:(jdouble)y;

- (ComItextpdfAwtGeomRectangle2D *)createIntersectionWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (ComItextpdfAwtGeomRectangle2D *)createUnionWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (void)setRectWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (void)setFrameWithDouble:(jdouble)x
                withDouble:(jdouble)y
                withDouble:(jdouble)width
                withDouble:(jdouble)height;

- (ComItextpdfAwtGeomRectangle2D *)getBounds2D;

- (jboolean)intersectsLineWithDouble:(jdouble)x1
                          withDouble:(jdouble)y1
                          withDouble:(jdouble)x2
                          withDouble:(jdouble)y2;

- (jboolean)intersectsLineWithComItextpdfAwtGeomLine2D:(ComItextpdfAwtGeomLine2D *)l;

- (jint)outcodeWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

- (jboolean)containsWithDouble:(jdouble)x
                    withDouble:(jdouble)y;

- (jboolean)intersectsWithDouble:(jdouble)x
                      withDouble:(jdouble)y
                      withDouble:(jdouble)width
                      withDouble:(jdouble)height;

- (jboolean)containsWithDouble:(jdouble)x
                    withDouble:(jdouble)y
                    withDouble:(jdouble)width
                    withDouble:(jdouble)height;

+ (void)intersectWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)src1
                 withComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)src2
                 withComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)dst;

+ (void)union__WithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)src1
               withComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)src2
               withComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)dst;

- (void)addWithDouble:(jdouble)x
           withDouble:(jdouble)y;

- (void)addWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

- (void)addWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t;

- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t
                                                                                withDouble:(jdouble)flatness;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomRectangle2D_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomRectangle2D, OUT_LEFT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomRectangle2D, OUT_TOP, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomRectangle2D, OUT_RIGHT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfAwtGeomRectangle2D, OUT_BOTTOM, jint)

@interface ComItextpdfAwtGeomRectangle2D_Float : ComItextpdfAwtGeomRectangle2D {
 @public
  jfloat x_;
  jfloat y_;
  jfloat width_;
  jfloat height_;
}

- (instancetype)init;

- (instancetype)initWithFloat:(jfloat)x
                    withFloat:(jfloat)y
                    withFloat:(jfloat)width
                    withFloat:(jfloat)height;

- (jdouble)getX;

- (jdouble)getY;

- (jdouble)getWidth;

- (jdouble)getHeight;

- (jboolean)isEmpty;

- (void)setRectWithFloat:(jfloat)x
               withFloat:(jfloat)y
               withFloat:(jfloat)width
               withFloat:(jfloat)height;

- (void)setRectWithDouble:(jdouble)x
               withDouble:(jdouble)y
               withDouble:(jdouble)width
               withDouble:(jdouble)height;

- (void)setRectWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (jint)outcodeWithDouble:(jdouble)px
               withDouble:(jdouble)py;

- (ComItextpdfAwtGeomRectangle2D *)getBounds2D;

- (ComItextpdfAwtGeomRectangle2D *)createIntersectionWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (ComItextpdfAwtGeomRectangle2D *)createUnionWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomRectangle2D_Float *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomRectangle2D_Float_init() {}

@interface ComItextpdfAwtGeomRectangle2D_Double : ComItextpdfAwtGeomRectangle2D {
 @public
  jdouble x_;
  jdouble y_;
  jdouble width_;
  jdouble height_;
}

- (instancetype)init;

- (instancetype)initWithDouble:(jdouble)x
                    withDouble:(jdouble)y
                    withDouble:(jdouble)width
                    withDouble:(jdouble)height;

- (jdouble)getX;

- (jdouble)getY;

- (jdouble)getWidth;

- (jdouble)getHeight;

- (jboolean)isEmpty;

- (void)setRectWithDouble:(jdouble)x
               withDouble:(jdouble)y
               withDouble:(jdouble)width
               withDouble:(jdouble)height;

- (void)setRectWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (jint)outcodeWithDouble:(jdouble)px
               withDouble:(jdouble)py;

- (ComItextpdfAwtGeomRectangle2D *)getBounds2D;

- (ComItextpdfAwtGeomRectangle2D *)createIntersectionWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (ComItextpdfAwtGeomRectangle2D *)createUnionWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomRectangle2D_Double *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomRectangle2D_Double_init() {}

@interface ComItextpdfAwtGeomRectangle2D_Iterator : NSObject < ComItextpdfAwtGeomPathIterator > {
 @public
  jdouble x_;
  jdouble y_;
  jdouble width_;
  jdouble height_;
  ComItextpdfAwtGeomAffineTransform *t_;
  jint index_;
}

- (instancetype)initWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)outer$
                    withComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r
                withComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)at;

- (jint)getWindingRule;

- (jboolean)isDone;

- (void)next;

- (jint)currentSegmentWithDoubleArray:(IOSDoubleArray *)coords;

- (jint)currentSegmentWithFloatArray:(IOSFloatArray *)coords;

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomRectangle2D_Iterator *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomRectangle2D_Iterator_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfAwtGeomRectangle2D_Iterator, t_, ComItextpdfAwtGeomAffineTransform *)

#endif // _ComItextpdfAwtGeomRectangle2D_H_
