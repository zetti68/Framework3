//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Dimension2D.java
//

#ifndef _ComItextpdfAwtGeomDimension2D_H_
#define _ComItextpdfAwtGeomDimension2D_H_

#import "JreEmulation.h"

@interface ComItextpdfAwtGeomDimension2D : NSObject < NSCopying > {
}

- (instancetype)init;

- (jdouble)getWidth;

- (jdouble)getHeight;

- (void)setSizeWithDouble:(jdouble)width
               withDouble:(jdouble)height;

- (void)setSizeWithComItextpdfAwtGeomDimension2D:(ComItextpdfAwtGeomDimension2D *)d;

- (id)clone;

- (id)copyWithZone:(NSZone *)zone;

@end

__attribute__((always_inline)) inline void ComItextpdfAwtGeomDimension2D_init() {}

#endif // _ComItextpdfAwtGeomDimension2D_H_