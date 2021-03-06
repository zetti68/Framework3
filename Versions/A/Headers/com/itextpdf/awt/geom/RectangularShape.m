//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/RectangularShape.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/RectangularShape.java"

#include "com/itextpdf/awt/geom/AffineTransform.h"
#include "com/itextpdf/awt/geom/Dimension2D.h"
#include "com/itextpdf/awt/geom/FlatteningPathIterator.h"
#include "com/itextpdf/awt/geom/PathIterator.h"
#include "com/itextpdf/awt/geom/Point2D.h"
#include "com/itextpdf/awt/geom/Rectangle.h"
#include "com/itextpdf/awt/geom/Rectangle2D.h"
#include "com/itextpdf/awt/geom/RectangularShape.h"
#include "com/itextpdf/awt/geom/Shape.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/InternalError.h"
#include "java/lang/Math.h"

#pragma clang diagnostic ignored "-Wprotocol"


#line 26
@implementation ComItextpdfAwtGeomRectangularShape

- (instancetype)init {
  return [super init];
}


#line 31
- (jdouble)getX {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 33
- (jdouble)getY {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 35
- (jdouble)getWidth {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 37
- (jdouble)getHeight {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 39
- (jboolean)isEmpty {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 41
- (void)setFrameWithDouble:(jdouble)x
                withDouble:(jdouble)y
                withDouble:(jdouble)w
                withDouble:(jdouble)h {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 43
- (jdouble)getMinX {
  
#line 44
  return [self getX];
}


#line 47
- (jdouble)getMinY {
  
#line 48
  return [self getY];
}


#line 51
- (jdouble)getMaxX {
  
#line 52
  return [self getX] + [self getWidth];
}


#line 55
- (jdouble)getMaxY {
  
#line 56
  return [self getY] + [self getHeight];
}


#line 59
- (jdouble)getCenterX {
  
#line 60
  return [self getX] + [self getWidth] / 2.0;
}


#line 63
- (jdouble)getCenterY {
  
#line 64
  return [self getY] + [self getHeight] / 2.0;
}


#line 67
- (ComItextpdfAwtGeomRectangle2D *)getFrame {
  
#line 68
  return [[ComItextpdfAwtGeomRectangle2D_Double alloc] initWithDouble:[self getX] withDouble:[self getY] withDouble:[self getWidth] withDouble:[self getHeight]];
}


#line 71
- (void)setFrameWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)loc
            withComItextpdfAwtGeomDimension2D:(ComItextpdfAwtGeomDimension2D *)size {
  
#line 72
  [self setFrameWithDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(loc)) getX] withDouble:[loc getY] withDouble:[((ComItextpdfAwtGeomDimension2D *) nil_chk(size)) getWidth] withDouble:[size getHeight]];
}


#line 75
- (void)setFrameWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r {
  
#line 76
  [self setFrameWithDouble:[((ComItextpdfAwtGeomRectangle2D *) nil_chk(r)) getX] withDouble:[r getY] withDouble:[r getWidth] withDouble:[r getHeight]];
}


#line 79
- (void)setFrameFromDiagonalWithDouble:(jdouble)x1
                            withDouble:(jdouble)y1
                            withDouble:(jdouble)x2
                            withDouble:(jdouble)y2 {
  
#line 80
  jdouble rx, ry, rw, rh;
  if (x1 < x2) {
    rx = x1;
    rw = x2 - x1;
  }
  else {
    
#line 85
    rx = x2;
    rw = x1 - x2;
  }
  if (y1 < y2) {
    ry = y1;
    rh = y2 - y1;
  }
  else {
    
#line 92
    ry = y2;
    rh = y1 - y2;
  }
  [self setFrameWithDouble:rx withDouble:ry withDouble:rw withDouble:rh];
}


#line 98
- (void)setFrameFromDiagonalWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p1
                            withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p2 {
  
#line 99
  [self setFrameFromDiagonalWithDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p1)) getX] withDouble:[p1 getY] withDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p2)) getX] withDouble:[p2 getY]];
}


#line 102
- (void)setFrameFromCenterWithDouble:(jdouble)centerX
                          withDouble:(jdouble)centerY
                          withDouble:(jdouble)cornerX
                          withDouble:(jdouble)cornerY {
  
#line 103
  jdouble width = [JavaLangMath absWithDouble:cornerX - centerX];
  jdouble height = [JavaLangMath absWithDouble:cornerY - centerY];
  [self setFrameWithDouble:centerX - width withDouble:centerY - height withDouble:width * 2.0 withDouble:height * 2.0];
}


#line 108
- (void)setFrameFromCenterWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)center
                          withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)corner {
  
#line 109
  [self setFrameFromCenterWithDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(center)) getX] withDouble:[center getY] withDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(corner)) getX] withDouble:[corner getY]];
}


#line 112
- (jboolean)containsWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)point {
  
#line 113
  return [self containsWithDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(point)) getX] withDouble:[point getY]];
}


#line 116
- (jboolean)intersectsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)rect {
  
#line 117
  return [self intersectsWithDouble:[((ComItextpdfAwtGeomRectangle2D *) nil_chk(rect)) getX] withDouble:[rect getY] withDouble:[rect getWidth] withDouble:[rect getHeight]];
}


#line 120
- (jboolean)containsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)rect {
  
#line 121
  return [self containsWithDouble:[((ComItextpdfAwtGeomRectangle2D *) nil_chk(rect)) getX] withDouble:[rect getY] withDouble:[rect getWidth] withDouble:[rect getHeight]];
}


#line 124
- (ComItextpdfAwtGeomRectangle *)getBounds {
  
#line 125
  jint x1 = J2ObjCFpToInt([JavaLangMath floorWithDouble:[self getMinX]]);
  jint y1 = J2ObjCFpToInt([JavaLangMath floorWithDouble:[self getMinY]]);
  jint x2 = J2ObjCFpToInt([JavaLangMath ceilWithDouble:[self getMaxX]]);
  jint y2 = J2ObjCFpToInt([JavaLangMath ceilWithDouble:[self getMaxY]]);
  return [[ComItextpdfAwtGeomRectangle alloc] initWithDouble:x1 withDouble:y1 withDouble:x2 - x1 withDouble:y2 - y1];
}


#line 132
- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)t
                                                                                withDouble:(jdouble)flatness {
  
#line 133
  return [[ComItextpdfAwtGeomFlatteningPathIterator alloc] initWithComItextpdfAwtGeomPathIterator:[self getPathIteratorWithComItextpdfAwtGeomAffineTransform:t] withDouble:flatness];
}


#line 137
- (id)clone {
  
#line 138
  @try {
    return [super clone];
  }
  @catch (
#line 140
  JavaLangCloneNotSupportedException *e) {
    @throw [[JavaLangInternalError alloc] init];
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RectangularShape", NULL, 0x4, NULL },
    { "getX", NULL, "D", 0x401, NULL },
    { "getY", NULL, "D", 0x401, NULL },
    { "getWidth", NULL, "D", 0x401, NULL },
    { "getHeight", NULL, "D", 0x401, NULL },
    { "isEmpty", NULL, "Z", 0x401, NULL },
    { "setFrameWithDouble:withDouble:withDouble:withDouble:", "setFrame", "V", 0x401, NULL },
    { "getMinX", NULL, "D", 0x1, NULL },
    { "getMinY", NULL, "D", 0x1, NULL },
    { "getMaxX", NULL, "D", 0x1, NULL },
    { "getMaxY", NULL, "D", 0x1, NULL },
    { "getCenterX", NULL, "D", 0x1, NULL },
    { "getCenterY", NULL, "D", 0x1, NULL },
    { "getFrame", NULL, "Lcom.itextpdf.awt.geom.Rectangle2D;", 0x1, NULL },
    { "setFrameWithComItextpdfAwtGeomPoint2D:withComItextpdfAwtGeomDimension2D:", "setFrame", "V", 0x1, NULL },
    { "setFrameWithComItextpdfAwtGeomRectangle2D:", "setFrame", "V", 0x1, NULL },
    { "setFrameFromDiagonalWithDouble:withDouble:withDouble:withDouble:", "setFrameFromDiagonal", "V", 0x1, NULL },
    { "setFrameFromDiagonalWithComItextpdfAwtGeomPoint2D:withComItextpdfAwtGeomPoint2D:", "setFrameFromDiagonal", "V", 0x1, NULL },
    { "setFrameFromCenterWithDouble:withDouble:withDouble:withDouble:", "setFrameFromCenter", "V", 0x1, NULL },
    { "setFrameFromCenterWithComItextpdfAwtGeomPoint2D:withComItextpdfAwtGeomPoint2D:", "setFrameFromCenter", "V", 0x1, NULL },
    { "containsWithComItextpdfAwtGeomPoint2D:", "contains", "Z", 0x1, NULL },
    { "intersectsWithComItextpdfAwtGeomRectangle2D:", "intersects", "Z", 0x1, NULL },
    { "containsWithComItextpdfAwtGeomRectangle2D:", "contains", "Z", 0x1, NULL },
    { "getBounds", NULL, "Lcom.itextpdf.awt.geom.Rectangle;", 0x1, NULL },
    { "getPathIteratorWithComItextpdfAwtGeomAffineTransform:withDouble:", "getPathIterator", "Lcom.itextpdf.awt.geom.PathIterator;", 0x1, NULL },
    { "clone", NULL, "Ljava.lang.Object;", 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomRectangularShape = { "RectangularShape", "com.itextpdf.awt.geom", NULL, 0x401, 26, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfAwtGeomRectangularShape;
}

@end
