//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/CubicCurve2D.java
//

#ifndef _ComItextpdfAwtGeomCubicCurve2D_H_
#define _ComItextpdfAwtGeomCubicCurve2D_H_

@class ComItextpdfAwtGeomAffineTransform;
@class ComItextpdfAwtGeomPoint2D;
@class ComItextpdfAwtGeomRectangle2D;
@class ComItextpdfAwtGeomRectangle;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSObjectArray;

#import "JreEmulation.h"
#include "com/itextpdf/awt/geom/PathIterator.h"
#include "com/itextpdf/awt/geom/Shape.h"

@interface ComItextpdfAwtGeomCubicCurve2D : NSObject < ComItextpdfAwtGeomShape, NSCopying > {
}

- (instancetype)init;

- (jdouble)getX1;

- (jdouble)getY1;

- (ComItextpdfAwtGeomPoint2D *)getP1;

- (jdouble)getCtrlX1;

- (jdouble)getCtrlY1;

- (ComItextpdfAwtGeomPoint2D *)getCtrlP1;

- (jdouble)getCtrlX2;

- (jdouble)getCtrlY2;

- (ComItextpdfAwtGeomPoint2D *)getCtrlP2;

- (jdouble)getX2;

- (jdouble)getY2;

- (ComItextpdfAwtGeomPoint2D *)getP2;

- (void)setCurveWithDouble:(jdouble)x1
                withDouble:(jdouble)y1
                withDouble:(jdouble)ctrlx1
                withDouble:(jdouble)ctrly1
                withDouble:(jdouble)ctrlx2
                withDouble:(jdouble)ctrly2
                withDouble:(jdouble)x2
                withDouble:(jdouble)y2;

- (void)setCurveWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p1
                withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)cp1
                withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)cp2
                withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p2;

- (void)setCurveWithDoubleArray:(IOSDoubleArray *)coords
                        withInt:(jint)offset;

- (void)setCurveWithComItextpdfAwtGeomPoint2DArray:(IOSObjectArray *)points
                                           withInt:(jint)offset;

- (void)setCurveWithComItextpdfAwtGeomCubicCurve2D:(ComItextpdfAwtGeomCubicCurve2D *)curve;

- (jdouble)getFlatnessSq;

+ (jdouble)getFlatnessSqWithDouble:(jdouble)x1
                        withDouble:(jdouble)y1
                        withDouble:(jdouble)ctrlx1
                        withDouble:(jdouble)ctrly1
                        withDouble:(jdouble)ctrlx2
                        withDouble:(jdouble)ctrly2
                        withDouble:(jdouble)x2
                        withDouble:(jdouble)y2;

+ (jdouble)getFlatnessSqWithDoubleArray:(IOSDoubleArray *)coords
                                withInt:(jint)offset;

- (jdouble)getFlatness;

+ (jdouble)getFlatnessWithDouble:(jdouble)x1
                      withDouble:(jdouble)y1
                      withDouble:(jdouble)ctrlx1
                      withDouble:(jdouble)ctrly1
                      withDouble:(jdouble)ctrlx2
                      withDouble:(jdouble)ctrly2
                      withDouble:(jdouble)x2
                      withDouble:(jdouble)y2;

+ (jdouble)getFlatnessWithDoubleArray:(IOSDoubleArray *)coords
                              withInt:(jint)offset;

- (void)subdivideWithComItextpdfAwtGeomCubicCurve2D:(ComItextpdfAwtGeomCubicCurve2D *)left
                 withComItextpdfAwtGeomCubicCurve2D:(ComItextpdfAwtGeomCubicCurve2D *)right;

+ (void)subdivideWithComItextpdfAwtGeomCubicCurve2D:(ComItextpdfAwtGeomCubicCurve2D *)src
                 withComItextpdfAwtGeomCubicCurve2D:(ComItextpdfAwtGeomCubicCurve2D *)left
                 withComItextpdfAwtGeomCubicCurve2D:(ComItextpdfAwtGeomCubicCurve2D *)right;

+ (void)subdivideWithDoubleArray:(IOSDoubleArray *)src
                         withInt:(jint)srcOff
                 withDoubleArray:(IOSDoubleArray *)left
                         withInt:(jint)leftOff
                 withDoubleArray:(IOSDoubleArray *)right
                         withInt:(jint)rightOff;

+ (jint)solveCubicWithDoubleArray:(IOSDoubleArray *)eqn;

+ (jint)solveCubicWithDoubleArray:(IOSDoubleArray *)eqn
                  withDoubleArray:(IOSDoubleArray *)res;

- (jboolean)containsWithDouble:(jdouble)px
                    withDouble:(jdouble)py;

- (jboolean)containsWithDouble:(jdouble)rx
                    withDouble:(jdouble)ry
                    withDouble:(jdouble)rw
                    withDouble:(jdouble)rh;

- (jboolean)intersectsWithDouble:(jdouble)rx
                      withDouble:(jdouble)ry
                      withDouble:(jdouble)rw
                      withDouble:(jdouble)rh;

- (jboolean)containsWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

- (jboolean)intersectsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (jboolean)containsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r;

- (ComItextpdfAwtGeomRectangle *)getBounds;

- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t;

- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)at
                                                                                withDouble:(jdouble)flatness;

- (id)clone;

- (id)copyWithZone:(NSZone *)zone;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomCubicCurve2D_init() {}

@interface ComItextpdfAwtGeomCubicCurve2D_Float : ComItextpdfAwtGeomCubicCurve2D {
 @public
  jfloat x1_;
  jfloat y1_;
  jfloat ctrlx1_;
  jfloat ctrly1_;
  jfloat ctrlx2_;
  jfloat ctrly2_;
  jfloat x2_;
  jfloat y2_;
}

- (instancetype)init;

- (instancetype)initWithFloat:(jfloat)x1
                    withFloat:(jfloat)y1
                    withFloat:(jfloat)ctrlx1
                    withFloat:(jfloat)ctrly1
                    withFloat:(jfloat)ctrlx2
                    withFloat:(jfloat)ctrly2
                    withFloat:(jfloat)x2
                    withFloat:(jfloat)y2;

- (jdouble)getX1;

- (jdouble)getY1;

- (jdouble)getCtrlX1;

- (jdouble)getCtrlY1;

- (jdouble)getCtrlX2;

- (jdouble)getCtrlY2;

- (jdouble)getX2;

- (jdouble)getY2;

- (ComItextpdfAwtGeomPoint2D *)getP1;

- (ComItextpdfAwtGeomPoint2D *)getCtrlP1;

- (ComItextpdfAwtGeomPoint2D *)getCtrlP2;

- (ComItextpdfAwtGeomPoint2D *)getP2;

- (void)setCurveWithDouble:(jdouble)x1
                withDouble:(jdouble)y1
                withDouble:(jdouble)ctrlx1
                withDouble:(jdouble)ctrly1
                withDouble:(jdouble)ctrlx2
                withDouble:(jdouble)ctrly2
                withDouble:(jdouble)x2
                withDouble:(jdouble)y2;

- (void)setCurveWithFloat:(jfloat)x1
                withFloat:(jfloat)y1
                withFloat:(jfloat)ctrlx1
                withFloat:(jfloat)ctrly1
                withFloat:(jfloat)ctrlx2
                withFloat:(jfloat)ctrly2
                withFloat:(jfloat)x2
                withFloat:(jfloat)y2;

- (ComItextpdfAwtGeomRectangle2D *)getBounds2D;

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomCubicCurve2D_Float *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomCubicCurve2D_Float_init() {}

@interface ComItextpdfAwtGeomCubicCurve2D_Double : ComItextpdfAwtGeomCubicCurve2D {
 @public
  jdouble x1_;
  jdouble y1_;
  jdouble ctrlx1_;
  jdouble ctrly1_;
  jdouble ctrlx2_;
  jdouble ctrly2_;
  jdouble x2_;
  jdouble y2_;
}

- (instancetype)init;

- (instancetype)initWithDouble:(jdouble)x1
                    withDouble:(jdouble)y1
                    withDouble:(jdouble)ctrlx1
                    withDouble:(jdouble)ctrly1
                    withDouble:(jdouble)ctrlx2
                    withDouble:(jdouble)ctrly2
                    withDouble:(jdouble)x2
                    withDouble:(jdouble)y2;

- (jdouble)getX1;

- (jdouble)getY1;

- (jdouble)getCtrlX1;

- (jdouble)getCtrlY1;

- (jdouble)getCtrlX2;

- (jdouble)getCtrlY2;

- (jdouble)getX2;

- (jdouble)getY2;

- (ComItextpdfAwtGeomPoint2D *)getP1;

- (ComItextpdfAwtGeomPoint2D *)getCtrlP1;

- (ComItextpdfAwtGeomPoint2D *)getCtrlP2;

- (ComItextpdfAwtGeomPoint2D *)getP2;

- (void)setCurveWithDouble:(jdouble)x1
                withDouble:(jdouble)y1
                withDouble:(jdouble)ctrlx1
                withDouble:(jdouble)ctrly1
                withDouble:(jdouble)ctrlx2
                withDouble:(jdouble)ctrly2
                withDouble:(jdouble)x2
                withDouble:(jdouble)y2;

- (ComItextpdfAwtGeomRectangle2D *)getBounds2D;

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomCubicCurve2D_Double *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomCubicCurve2D_Double_init() {}

@interface ComItextpdfAwtGeomCubicCurve2D_Iterator : NSObject < ComItextpdfAwtGeomPathIterator > {
 @public
  ComItextpdfAwtGeomCubicCurve2D *c_;
  ComItextpdfAwtGeomAffineTransform *t_;
  jint index_;
}

- (instancetype)initWithComItextpdfAwtGeomCubicCurve2D:(ComItextpdfAwtGeomCubicCurve2D *)outer$
                    withComItextpdfAwtGeomCubicCurve2D:(ComItextpdfAwtGeomCubicCurve2D *)c
                 withComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t;

- (jint)getWindingRule;

- (jboolean)isDone;

- (void)next;

- (jint)currentSegmentWithDoubleArray:(IOSDoubleArray *)coords;

- (jint)currentSegmentWithFloatArray:(IOSFloatArray *)coords;

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomCubicCurve2D_Iterator *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomCubicCurve2D_Iterator_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfAwtGeomCubicCurve2D_Iterator, c_, ComItextpdfAwtGeomCubicCurve2D *)
J2OBJC_FIELD_SETTER(ComItextpdfAwtGeomCubicCurve2D_Iterator, t_, ComItextpdfAwtGeomAffineTransform *)

#endif // _ComItextpdfAwtGeomCubicCurve2D_H_
