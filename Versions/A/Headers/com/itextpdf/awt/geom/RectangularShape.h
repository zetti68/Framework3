//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/RectangularShape.java
//

#ifndef _ComItextpdfAwtGeomRectangularShape_H_
#define _ComItextpdfAwtGeomRectangularShape_H_

@class ComItextpdfAwtGeomAffineTransform;
@class ComItextpdfAwtGeomDimension2D;
@class ComItextpdfAwtGeomPoint2D;
@class ComItextpdfAwtGeomRectangle2D;
@class ComItextpdfAwtGeomRectangle;
@protocol ComItextpdfAwtGeomPathIterator;

#import "JreEmulation.h"
#include "com/itextpdf/awt/geom/Shape.h"

@interface ComItextpdfAwtGeomRectangularShape : NSObject < ComItextpdfAwtGeomShape, NSCopying > {
}

- (instancetype)init;

- (jdouble)getX;

- (jdouble)getY;

- (jdouble)getWidth;

- (jdouble)getHeight;

- (jboolean)isEmpty;

- (void)setFrameWithDouble:(jdouble)x
                withDouble:(jdouble)y
                withDouble:(jdouble)w
                withDouble:(jdouble)h;

- (jdouble)getMinX;

- (jdouble)getMinY;

- (jdouble)getMaxX;

- (jdouble)getMaxY;

- (jdouble)getCenterX;

- (jdouble)getCenterY;

- (ComItextpdfAwtGeomRectangle2D *)getFrame;

- (void)setFrameWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)loc
            withComItextpdfAwtGeomDimension2D:(ComItextpdfAwtGeomDimension2D *)size;

- (void)setFrameWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (void)setFrameFromDiagonalWithDouble:(jdouble)x1
                            withDouble:(jdouble)y1
                            withDouble:(jdouble)x2
                            withDouble:(jdouble)y2;

- (void)setFrameFromDiagonalWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p1
                            withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p2;

- (void)setFrameFromCenterWithDouble:(jdouble)centerX
                          withDouble:(jdouble)centerY
                          withDouble:(jdouble)cornerX
                          withDouble:(jdouble)cornerY;

- (void)setFrameFromCenterWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)center
                          withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)corner;

- (jboolean)containsWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)point;

- (jboolean)intersectsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)rect;

- (jboolean)containsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)rect;

- (ComItextpdfAwtGeomRectangle *)getBounds;

- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t
                                                                                withDouble:(jdouble)flatness;

- (id)clone;

- (id)copyWithZone:(NSZone *)zone;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomRectangularShape_init() {}

#endif // _ComItextpdfAwtGeomRectangularShape_H_