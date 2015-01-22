//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Point2D.java
//

#ifndef _ComItextpdfAwtGeomPoint2D_H_
#define _ComItextpdfAwtGeomPoint2D_H_

#import "JreEmulation.h"

@interface ComItextpdfAwtGeomPoint2D : NSObject < NSCopying > {
}

- (instancetype)init;

- (jdouble)getX;

- (jdouble)getY;

- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y;

- (void)setLocationWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

+ (jdouble)distanceSqWithDouble:(jdouble)x1
                     withDouble:(jdouble)y1
                     withDouble:(jdouble)x2
                     withDouble:(jdouble)y2;

- (jdouble)distanceSqWithDouble:(jdouble)px
                     withDouble:(jdouble)py;

- (jdouble)distanceSqWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

+ (jdouble)distanceWithDouble:(jdouble)x1
                   withDouble:(jdouble)y1
                   withDouble:(jdouble)x2
                   withDouble:(jdouble)y2;

- (jdouble)distanceWithDouble:(jdouble)px
                   withDouble:(jdouble)py;

- (jdouble)distanceWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

- (id)clone;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (id)copyWithZone:(NSZone *)zone;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomPoint2D_init() {}

@interface ComItextpdfAwtGeomPoint2D_Float : ComItextpdfAwtGeomPoint2D {
 @public
  jfloat x_;
  jfloat y_;
}

- (instancetype)init;

- (instancetype)initWithFloat:(jfloat)x
                    withFloat:(jfloat)y;

- (jdouble)getX;

- (jdouble)getY;

- (void)setLocationWithFloat:(jfloat)x
                   withFloat:(jfloat)y;

- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomPoint2D_Float *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomPoint2D_Float_init() {}

@interface ComItextpdfAwtGeomPoint2D_Double : ComItextpdfAwtGeomPoint2D {
 @public
  jdouble x_;
  jdouble y_;
}

- (instancetype)init;

- (instancetype)initWithDouble:(jdouble)x
                    withDouble:(jdouble)y;

- (jdouble)getX;

- (jdouble)getY;

- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomPoint2D_Double *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomPoint2D_Double_init() {}

#endif // _ComItextpdfAwtGeomPoint2D_H_