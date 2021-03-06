//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Point2D.java
//

#ifndef _ComItextpdfAwtGeomPoint2D_H_
#define _ComItextpdfAwtGeomPoint2D_H_

#include "J2ObjC_header.h"

@interface ComItextpdfAwtGeomPoint2D : NSObject < NSCopying >

#pragma mark Public

- (id)clone;

- (jdouble)distanceWithDouble:(jdouble)px
                   withDouble:(jdouble)py;

+ (jdouble)distanceWithDouble:(jdouble)x1
                   withDouble:(jdouble)y1
                   withDouble:(jdouble)x2
                   withDouble:(jdouble)y2;

- (jdouble)distanceWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

- (jdouble)distanceSqWithDouble:(jdouble)px
                     withDouble:(jdouble)py;

+ (jdouble)distanceSqWithDouble:(jdouble)x1
                     withDouble:(jdouble)y1
                     withDouble:(jdouble)x2
                     withDouble:(jdouble)y2;

- (jdouble)distanceSqWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

- (jboolean)isEqual:(id)obj;

- (jdouble)getX;

- (jdouble)getY;

- (NSUInteger)hash;

- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y;

- (void)setLocationWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfAwtGeomPoint2D)

FOUNDATION_EXPORT void ComItextpdfAwtGeomPoint2D_init(ComItextpdfAwtGeomPoint2D *self);

FOUNDATION_EXPORT jdouble ComItextpdfAwtGeomPoint2D_distanceSqWithDouble_withDouble_withDouble_withDouble_(jdouble x1, jdouble y1, jdouble x2, jdouble y2);

FOUNDATION_EXPORT jdouble ComItextpdfAwtGeomPoint2D_distanceWithDouble_withDouble_withDouble_withDouble_(jdouble x1, jdouble y1, jdouble x2, jdouble y2);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfAwtGeomPoint2D)

@interface ComItextpdfAwtGeomPoint2D_Float : ComItextpdfAwtGeomPoint2D {
 @public
  jfloat x_;
  jfloat y_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithFloat:(jfloat)x
                    withFloat:(jfloat)y;

- (jdouble)getX;

- (jdouble)getY;

- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y;

- (void)setLocationWithFloat:(jfloat)x
                   withFloat:(jfloat)y;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfAwtGeomPoint2D_Float)

FOUNDATION_EXPORT void ComItextpdfAwtGeomPoint2D_Float_init(ComItextpdfAwtGeomPoint2D_Float *self);

FOUNDATION_EXPORT ComItextpdfAwtGeomPoint2D_Float *new_ComItextpdfAwtGeomPoint2D_Float_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfAwtGeomPoint2D_Float_initWithFloat_withFloat_(ComItextpdfAwtGeomPoint2D_Float *self, jfloat x, jfloat y);

FOUNDATION_EXPORT ComItextpdfAwtGeomPoint2D_Float *new_ComItextpdfAwtGeomPoint2D_Float_initWithFloat_withFloat_(jfloat x, jfloat y) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfAwtGeomPoint2D_Float)

@interface ComItextpdfAwtGeomPoint2D_Double : ComItextpdfAwtGeomPoint2D {
 @public
  jdouble x_;
  jdouble y_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithDouble:(jdouble)x
                    withDouble:(jdouble)y;

- (jdouble)getX;

- (jdouble)getY;

- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfAwtGeomPoint2D_Double)

FOUNDATION_EXPORT void ComItextpdfAwtGeomPoint2D_Double_init(ComItextpdfAwtGeomPoint2D_Double *self);

FOUNDATION_EXPORT ComItextpdfAwtGeomPoint2D_Double *new_ComItextpdfAwtGeomPoint2D_Double_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfAwtGeomPoint2D_Double_initWithDouble_withDouble_(ComItextpdfAwtGeomPoint2D_Double *self, jdouble x, jdouble y);

FOUNDATION_EXPORT ComItextpdfAwtGeomPoint2D_Double *new_ComItextpdfAwtGeomPoint2D_Double_initWithDouble_withDouble_(jdouble x, jdouble y) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfAwtGeomPoint2D_Double)

#endif // _ComItextpdfAwtGeomPoint2D_H_
