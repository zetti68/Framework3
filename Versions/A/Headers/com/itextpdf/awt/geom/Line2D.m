//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Line2D.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Line2D.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/awt/geom/AffineTransform.h"
#include "com/itextpdf/awt/geom/Line2D.h"
#include "com/itextpdf/awt/geom/PathIterator.h"
#include "com/itextpdf/awt/geom/Point2D.h"
#include "com/itextpdf/awt/geom/Rectangle.h"
#include "com/itextpdf/awt/geom/Rectangle2D.h"
#include "com/itextpdf/awt/geom/Shape.h"
#include "com/itextpdf/awt/geom/misc/Messages.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/InternalError.h"
#include "java/lang/Math.h"
#include "java/util/NoSuchElementException.h"

#pragma clang diagnostic ignored "-Wprotocol"


#line 30
@implementation ComItextpdfAwtGeomLine2D


#line 295
- (instancetype)init {
  return [super init];
}


#line 298
- (jdouble)getX1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 300
- (jdouble)getY1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 302
- (jdouble)getX2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 304
- (jdouble)getY2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 306
- (ComItextpdfAwtGeomPoint2D *)getP1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 308
- (ComItextpdfAwtGeomPoint2D *)getP2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 310
- (void)setLineWithDouble:(jdouble)x1
               withDouble:(jdouble)y1
               withDouble:(jdouble)x2
               withDouble:(jdouble)y2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 312
- (void)setLineWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p1
               withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p2 {
  
#line 313
  [self setLineWithDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p1)) getX] withDouble:[p1 getY] withDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p2)) getX] withDouble:[p2 getY]];
}


#line 316
- (void)setLineWithComItextpdfAwtGeomLine2D:(ComItextpdfAwtGeomLine2D *)line {
  
#line 317
  [self setLineWithDouble:[((ComItextpdfAwtGeomLine2D *) nil_chk(line)) getX1] withDouble:[line getY1] withDouble:[line getX2] withDouble:[line getY2]];
}


#line 320
- (ComItextpdfAwtGeomRectangle *)getBounds {
  
#line 321
  return [((ComItextpdfAwtGeomRectangle2D *) nil_chk([self getBounds2D])) getBounds];
}


#line 324
+ (jint)relativeCCWWithDouble:(jdouble)x1
                   withDouble:(jdouble)y1
                   withDouble:(jdouble)x2
                   withDouble:(jdouble)y2
                   withDouble:(jdouble)px
                   withDouble:(jdouble)py {
  
#line 328
  x2 -= x1;
  y2 -= y1;
  px -= x1;
  py -= y1;
  jdouble t = px * y2 - py * x2;
  if (t == 0.0) {
    t = px * x2 + py * y2;
    if (t > 0.0) {
      px -= x2;
      py -= y2;
      t = px * x2 + py * y2;
      if (t < 0.0) {
        t = 0.0;
      }
    }
  }
  
#line 345
  return t < 0.0 ? -1 : (t > 0.0 ? 1 : 0);
}


#line 348
- (jint)relativeCCWWithDouble:(jdouble)px
                   withDouble:(jdouble)py {
  
#line 349
  return [ComItextpdfAwtGeomLine2D relativeCCWWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:px withDouble:py];
}


#line 352
- (jint)relativeCCWWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p {
  
#line 353
  return [ComItextpdfAwtGeomLine2D relativeCCWWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p)) getX] withDouble:[p getY]];
}


#line 356
+ (jboolean)linesIntersectWithDouble:(jdouble)x1
                          withDouble:(jdouble)y1
                          withDouble:(jdouble)x2
                          withDouble:(jdouble)y2
                          withDouble:(jdouble)x3
                          withDouble:(jdouble)y3
                          withDouble:(jdouble)x4
                          withDouble:(jdouble)y4 {
  
#line 369
  x2 -= x1;
  y2 -= y1;
  x3 -= x1;
  y3 -= y1;
  x4 -= x1;
  y4 -= y1;
  
#line 376
  jdouble AvB = x2 * y3 - x3 * y2;
  jdouble AvC = x2 * y4 - x4 * y2;
  
#line 380
  if (AvB == 0.0 && AvC == 0.0) {
    if (x2 != 0.0) {
      return
#line 383
      (x4 * x3 <= 0.0) ||
#line 384
      ((x3 * x2 >= 0.0) &&
#line 385
      (x2 > 0.0 ? x3 <= x2 || x4 <= x2 : x3 >= x2 || x4 >= x2));
    }
    if (y2 != 0.0) {
      return
#line 389
      (y4 * y3 <= 0.0) ||
#line 390
      ((y3 * y2 >= 0.0) &&
#line 391
      (y2 > 0.0 ? y3 <= y2 || y4 <= y2 : y3 >= y2 || y4 >= y2));
    }
    return NO;
  }
  
#line 396
  jdouble BvC = x3 * y4 - x4 * y3;
  
#line 398
  return (AvB * AvC <= 0.0) && (BvC * (AvB + BvC - AvC) <= 0.0);
}


#line 401
- (jboolean)intersectsLineWithDouble:(jdouble)x1
                          withDouble:(jdouble)y1
                          withDouble:(jdouble)x2
                          withDouble:(jdouble)y2 {
  
#line 402
  return [ComItextpdfAwtGeomLine2D linesIntersectWithDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2 withDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2]];
}


#line 405
- (jboolean)intersectsLineWithComItextpdfAwtGeomLine2D:(ComItextpdfAwtGeomLine2D *)l {
  
#line 406
  return [ComItextpdfAwtGeomLine2D linesIntersectWithDouble:[((ComItextpdfAwtGeomLine2D *) nil_chk(l)) getX1] withDouble:[l getY1] withDouble:[l getX2] withDouble:[l getY2] withDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2]];
}


#line 409
+ (jdouble)ptSegDistSqWithDouble:(jdouble)x1
                      withDouble:(jdouble)y1
                      withDouble:(jdouble)x2
                      withDouble:(jdouble)y2
                      withDouble:(jdouble)px
                      withDouble:(jdouble)py {
  
#line 413
  x2 -= x1;
  y2 -= y1;
  px -= x1;
  py -= y1;
  jdouble dist;
  if (px * x2 + py * y2 <= 0.0) {
    dist = px * px + py * py;
  }
  else {
    
#line 421
    px = x2 - px;
    py = y2 - py;
    if (px * x2 + py * y2 <= 0.0) {
      dist = px * px + py * py;
    }
    else {
      
#line 426
      dist = px * y2 - py * x2;
      dist = dist * dist / (x2 * x2 + y2 * y2);
    }
  }
  if (dist < 0) {
    dist = 0;
  }
  return dist;
}


#line 436
+ (jdouble)ptSegDistWithDouble:(jdouble)x1
                    withDouble:(jdouble)y1
                    withDouble:(jdouble)x2
                    withDouble:(jdouble)y2
                    withDouble:(jdouble)px
                    withDouble:(jdouble)py {
  
#line 437
  return [JavaLangMath sqrtWithDouble:[ComItextpdfAwtGeomLine2D ptSegDistSqWithDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2 withDouble:px withDouble:py]];
}


#line 440
- (jdouble)ptSegDistSqWithDouble:(jdouble)px
                      withDouble:(jdouble)py {
  
#line 441
  return [ComItextpdfAwtGeomLine2D ptSegDistSqWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:px withDouble:py];
}


#line 444
- (jdouble)ptSegDistSqWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p {
  
#line 445
  return [ComItextpdfAwtGeomLine2D ptSegDistSqWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p)) getX] withDouble:[p getY]];
}


#line 448
- (jdouble)ptSegDistWithDouble:(jdouble)px
                    withDouble:(jdouble)py {
  
#line 449
  return [ComItextpdfAwtGeomLine2D ptSegDistWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:px withDouble:py];
}


#line 452
- (jdouble)ptSegDistWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p {
  
#line 453
  return [ComItextpdfAwtGeomLine2D ptSegDistWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p)) getX] withDouble:[p getY]];
}


#line 456
+ (jdouble)ptLineDistSqWithDouble:(jdouble)x1
                       withDouble:(jdouble)y1
                       withDouble:(jdouble)x2
                       withDouble:(jdouble)y2
                       withDouble:(jdouble)px
                       withDouble:(jdouble)py {
  
#line 457
  x2 -= x1;
  y2 -= y1;
  px -= x1;
  py -= y1;
  jdouble s = px * y2 - py * x2;
  return s * s / (x2 * x2 + y2 * y2);
}


#line 465
+ (jdouble)ptLineDistWithDouble:(jdouble)x1
                     withDouble:(jdouble)y1
                     withDouble:(jdouble)x2
                     withDouble:(jdouble)y2
                     withDouble:(jdouble)px
                     withDouble:(jdouble)py {
  
#line 466
  return [JavaLangMath sqrtWithDouble:[ComItextpdfAwtGeomLine2D ptLineDistSqWithDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2 withDouble:px withDouble:py]];
}


#line 469
- (jdouble)ptLineDistSqWithDouble:(jdouble)px
                       withDouble:(jdouble)py {
  
#line 470
  return [ComItextpdfAwtGeomLine2D ptLineDistSqWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:px withDouble:py];
}


#line 473
- (jdouble)ptLineDistSqWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p {
  
#line 474
  return [ComItextpdfAwtGeomLine2D ptLineDistSqWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p)) getX] withDouble:[p getY]];
}


#line 477
- (jdouble)ptLineDistWithDouble:(jdouble)px
                     withDouble:(jdouble)py {
  
#line 478
  return [ComItextpdfAwtGeomLine2D ptLineDistWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:px withDouble:py];
}


#line 481
- (jdouble)ptLineDistWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p {
  
#line 482
  return [ComItextpdfAwtGeomLine2D ptLineDistWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2] withDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p)) getX] withDouble:[p getY]];
}


#line 485
- (jboolean)containsWithDouble:(jdouble)px
                    withDouble:(jdouble)py {
  
#line 486
  return NO;
}


#line 489
- (jboolean)containsWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p {
  
#line 490
  return NO;
}


#line 493
- (jboolean)containsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r {
  
#line 494
  return NO;
}


#line 497
- (jboolean)containsWithDouble:(jdouble)rx
                    withDouble:(jdouble)ry
                    withDouble:(jdouble)rw
                    withDouble:(jdouble)rh {
  
#line 498
  return NO;
}


#line 501
- (jboolean)intersectsWithDouble:(jdouble)rx
                      withDouble:(jdouble)ry
                      withDouble:(jdouble)rw
                      withDouble:(jdouble)rh {
  
#line 502
  return [self intersectsWithComItextpdfAwtGeomRectangle2D:[[ComItextpdfAwtGeomRectangle2D_Double alloc] initWithDouble:rx withDouble:ry withDouble:rw withDouble:rh]];
}


#line 505
- (jboolean)intersectsWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)r {
  
#line 506
  return [((ComItextpdfAwtGeomRectangle2D *) nil_chk(r)) intersectsLineWithDouble:[self getX1] withDouble:[self getY1] withDouble:[self getX2] withDouble:[self getY2]];
}


#line 509
- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)at {
  
#line 510
  return [[ComItextpdfAwtGeomLine2D_Iterator alloc] initWithComItextpdfAwtGeomLine2D:self withComItextpdfAwtGeomLine2D:self withComItextpdfAwtGeomAffineTransform:at];
}


#line 513
- (id<ComItextpdfAwtGeomPathIterator>)getPathIteratorWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)at
                                                                                withDouble:(jdouble)flatness {
  
#line 514
  return [[ComItextpdfAwtGeomLine2D_Iterator alloc] initWithComItextpdfAwtGeomLine2D:self withComItextpdfAwtGeomLine2D:self withComItextpdfAwtGeomAffineTransform:at];
}


#line 518
- (id)clone {
  
#line 519
  @try {
    return [super clone];
  }
  @catch (
#line 521
  JavaLangCloneNotSupportedException *e) {
    @throw [[JavaLangInternalError alloc] init];
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Line2D", NULL, 0x4, NULL },
    { "getX1", NULL, "D", 0x401, NULL },
    { "getY1", NULL, "D", 0x401, NULL },
    { "getX2", NULL, "D", 0x401, NULL },
    { "getY2", NULL, "D", 0x401, NULL },
    { "getP1", NULL, "Lcom.itextpdf.awt.geom.Point2D;", 0x401, NULL },
    { "getP2", NULL, "Lcom.itextpdf.awt.geom.Point2D;", 0x401, NULL },
    { "setLineWithDouble:withDouble:withDouble:withDouble:", "setLine", "V", 0x401, NULL },
    { "setLineWithComItextpdfAwtGeomPoint2D:withComItextpdfAwtGeomPoint2D:", "setLine", "V", 0x1, NULL },
    { "setLineWithComItextpdfAwtGeomLine2D:", "setLine", "V", 0x1, NULL },
    { "getBounds", NULL, "Lcom.itextpdf.awt.geom.Rectangle;", 0x1, NULL },
    { "relativeCCWWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:", "relativeCCW", "I", 0x9, NULL },
    { "relativeCCWWithDouble:withDouble:", "relativeCCW", "I", 0x1, NULL },
    { "relativeCCWWithComItextpdfAwtGeomPoint2D:", "relativeCCW", "I", 0x1, NULL },
    { "linesIntersectWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:withDouble:withDouble:", "linesIntersect", "Z", 0x9, NULL },
    { "intersectsLineWithDouble:withDouble:withDouble:withDouble:", "intersectsLine", "Z", 0x1, NULL },
    { "intersectsLineWithComItextpdfAwtGeomLine2D:", "intersectsLine", "Z", 0x1, NULL },
    { "ptSegDistSqWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:", "ptSegDistSq", "D", 0x9, NULL },
    { "ptSegDistWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:", "ptSegDist", "D", 0x9, NULL },
    { "ptSegDistSqWithDouble:withDouble:", "ptSegDistSq", "D", 0x1, NULL },
    { "ptSegDistSqWithComItextpdfAwtGeomPoint2D:", "ptSegDistSq", "D", 0x1, NULL },
    { "ptSegDistWithDouble:withDouble:", "ptSegDist", "D", 0x1, NULL },
    { "ptSegDistWithComItextpdfAwtGeomPoint2D:", "ptSegDist", "D", 0x1, NULL },
    { "ptLineDistSqWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:", "ptLineDistSq", "D", 0x9, NULL },
    { "ptLineDistWithDouble:withDouble:withDouble:withDouble:withDouble:withDouble:", "ptLineDist", "D", 0x9, NULL },
    { "ptLineDistSqWithDouble:withDouble:", "ptLineDistSq", "D", 0x1, NULL },
    { "ptLineDistSqWithComItextpdfAwtGeomPoint2D:", "ptLineDistSq", "D", 0x1, NULL },
    { "ptLineDistWithDouble:withDouble:", "ptLineDist", "D", 0x1, NULL },
    { "ptLineDistWithComItextpdfAwtGeomPoint2D:", "ptLineDist", "D", 0x1, NULL },
    { "containsWithDouble:withDouble:", "contains", "Z", 0x1, NULL },
    { "containsWithComItextpdfAwtGeomPoint2D:", "contains", "Z", 0x1, NULL },
    { "containsWithComItextpdfAwtGeomRectangle2D:", "contains", "Z", 0x1, NULL },
    { "containsWithDouble:withDouble:withDouble:withDouble:", "contains", "Z", 0x1, NULL },
    { "intersectsWithDouble:withDouble:withDouble:withDouble:", "intersects", "Z", 0x1, NULL },
    { "intersectsWithComItextpdfAwtGeomRectangle2D:", "intersects", "Z", 0x1, NULL },
    { "getPathIteratorWithComItextpdfAwtGeomAffineTransform:", "getPathIterator", "Lcom.itextpdf.awt.geom.PathIterator;", 0x1, NULL },
    { "getPathIteratorWithComItextpdfAwtGeomAffineTransform:withDouble:", "getPathIterator", "Lcom.itextpdf.awt.geom.PathIterator;", 0x1, NULL },
    { "clone", NULL, "Ljava.lang.Object;", 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomLine2D = { "Line2D", "com.itextpdf.awt.geom", NULL, 0x401, 38, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfAwtGeomLine2D;
}

@end


#line 32
@implementation ComItextpdfAwtGeomLine2D_Float


#line 39
- (instancetype)init {
  return [super init];
}


#line 42
- (instancetype)initWithFloat:(jfloat)x1
                    withFloat:(jfloat)y1
                    withFloat:(jfloat)x2
                    withFloat:(jfloat)y2 {
  if (self = [super init]) {
    
#line 43
    [self setLineWithFloat:x1 withFloat:y1 withFloat:x2 withFloat:y2];
  }
  return self;
}


#line 46
- (instancetype)initWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p1
                    withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p2 {
  if (self = [super init]) {
    
#line 47
    [self setLineWithComItextpdfAwtGeomPoint2D:p1 withComItextpdfAwtGeomPoint2D:p2];
  }
  return self;
}


#line 51
- (jdouble)getX1 {
  
#line 52
  return x1_;
}


#line 56
- (jdouble)getY1 {
  return y1_;
}


#line 61
- (jdouble)getX2 {
  
#line 62
  return x2_;
}


#line 66
- (jdouble)getY2 {
  return y2_;
}


#line 71
- (ComItextpdfAwtGeomPoint2D *)getP1 {
  
#line 72
  return [[ComItextpdfAwtGeomPoint2D_Float alloc] initWithFloat:x1_ withFloat:y1_];
}


#line 76
- (ComItextpdfAwtGeomPoint2D *)getP2 {
  return [[ComItextpdfAwtGeomPoint2D_Float alloc] initWithFloat:x2_ withFloat:y2_];
}


#line 81
- (void)setLineWithDouble:(jdouble)x1
               withDouble:(jdouble)y1
               withDouble:(jdouble)x2
               withDouble:(jdouble)y2 {
  
#line 82
  self->x1_ = (jfloat) x1;
  self->y1_ = (jfloat) y1;
  self->x2_ = (jfloat) x2;
  self->y2_ = (jfloat) y2;
}


#line 88
- (void)setLineWithFloat:(jfloat)x1
               withFloat:(jfloat)y1
               withFloat:(jfloat)x2
               withFloat:(jfloat)y2 {
  
#line 89
  self->x1_ = x1;
  self->y1_ = y1;
  self->x2_ = x2;
  self->y2_ = y2;
}


#line 95
- (ComItextpdfAwtGeomRectangle2D *)getBounds2D {
  
#line 96
  jfloat rx, ry, rw, rh;
  if (x1_ < x2_) {
    rx = x1_;
    rw = x2_ - x1_;
  }
  else {
    
#line 101
    rx = x2_;
    rw = x1_ - x2_;
  }
  if (y1_ < y2_) {
    ry = y1_;
    rh = y2_ - y1_;
  }
  else {
    
#line 108
    ry = y2_;
    rh = y1_ - y2_;
  }
  return [[ComItextpdfAwtGeomRectangle2D_Float alloc] initWithFloat:rx withFloat:ry withFloat:rw withFloat:rh];
}

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomLine2D_Float *)other {
  [super copyAllFieldsTo:other];
  other->x1_ = x1_;
  other->x2_ = x2_;
  other->y1_ = y1_;
  other->y2_ = y2_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Float", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:withFloat:withFloat:", "Float", NULL, 0x1, NULL },
    { "initWithComItextpdfAwtGeomPoint2D:withComItextpdfAwtGeomPoint2D:", "Float", NULL, 0x1, NULL },
    { "getX1", NULL, "D", 0x1, NULL },
    { "getY1", NULL, "D", 0x1, NULL },
    { "getX2", NULL, "D", 0x1, NULL },
    { "getY2", NULL, "D", 0x1, NULL },
    { "getP1", NULL, "Lcom.itextpdf.awt.geom.Point2D;", 0x1, NULL },
    { "getP2", NULL, "Lcom.itextpdf.awt.geom.Point2D;", 0x1, NULL },
    { "setLineWithDouble:withDouble:withDouble:withDouble:", "setLine", "V", 0x1, NULL },
    { "setLineWithFloat:withFloat:withFloat:withFloat:", "setLine", "V", 0x1, NULL },
    { "getBounds2D", NULL, "Lcom.itextpdf.awt.geom.Rectangle2D;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "x1_", NULL, 0x1, "F", NULL,  },
    { "y1_", NULL, 0x1, "F", NULL,  },
    { "x2_", NULL, 0x1, "F", NULL,  },
    { "y2_", NULL, 0x1, "F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomLine2D_Float = { "Float", "com.itextpdf.awt.geom", "Line2D", 0x9, 12, methods, 4, fields, 0, NULL};
  return &_ComItextpdfAwtGeomLine2D_Float;
}

@end


#line 115
@implementation ComItextpdfAwtGeomLine2D_Double


#line 122
- (instancetype)init {
  return [super init];
}


#line 125
- (instancetype)initWithDouble:(jdouble)x1
                    withDouble:(jdouble)y1
                    withDouble:(jdouble)x2
                    withDouble:(jdouble)y2 {
  if (self = [super init]) {
    
#line 126
    [self setLineWithDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2];
  }
  return self;
}


#line 129
- (instancetype)initWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p1
                    withComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p2 {
  if (self = [super init]) {
    
#line 130
    [self setLineWithComItextpdfAwtGeomPoint2D:p1 withComItextpdfAwtGeomPoint2D:p2];
  }
  return self;
}


#line 134
- (jdouble)getX1 {
  
#line 135
  return x1_;
}


#line 139
- (jdouble)getY1 {
  return y1_;
}


#line 144
- (jdouble)getX2 {
  
#line 145
  return x2_;
}


#line 149
- (jdouble)getY2 {
  return y2_;
}


#line 154
- (ComItextpdfAwtGeomPoint2D *)getP1 {
  
#line 155
  return [[ComItextpdfAwtGeomPoint2D_Double alloc] initWithDouble:x1_ withDouble:y1_];
}


#line 159
- (ComItextpdfAwtGeomPoint2D *)getP2 {
  return [[ComItextpdfAwtGeomPoint2D_Double alloc] initWithDouble:x2_ withDouble:y2_];
}


#line 164
- (void)setLineWithDouble:(jdouble)x1
               withDouble:(jdouble)y1
               withDouble:(jdouble)x2
               withDouble:(jdouble)y2 {
  
#line 165
  self->x1_ = x1;
  self->y1_ = y1;
  self->x2_ = x2;
  self->y2_ = y2;
}


#line 171
- (ComItextpdfAwtGeomRectangle2D *)getBounds2D {
  
#line 172
  jdouble rx, ry, rw, rh;
  if (x1_ < x2_) {
    rx = x1_;
    rw = x2_ - x1_;
  }
  else {
    
#line 177
    rx = x2_;
    rw = x1_ - x2_;
  }
  if (y1_ < y2_) {
    ry = y1_;
    rh = y2_ - y1_;
  }
  else {
    
#line 184
    ry = y2_;
    rh = y1_ - y2_;
  }
  return [[ComItextpdfAwtGeomRectangle2D_Double alloc] initWithDouble:rx withDouble:ry withDouble:rw withDouble:rh];
}

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomLine2D_Double *)other {
  [super copyAllFieldsTo:other];
  other->x1_ = x1_;
  other->x2_ = x2_;
  other->y1_ = y1_;
  other->y2_ = y2_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Double", NULL, 0x1, NULL },
    { "initWithDouble:withDouble:withDouble:withDouble:", "Double", NULL, 0x1, NULL },
    { "initWithComItextpdfAwtGeomPoint2D:withComItextpdfAwtGeomPoint2D:", "Double", NULL, 0x1, NULL },
    { "getX1", NULL, "D", 0x1, NULL },
    { "getY1", NULL, "D", 0x1, NULL },
    { "getX2", NULL, "D", 0x1, NULL },
    { "getY2", NULL, "D", 0x1, NULL },
    { "getP1", NULL, "Lcom.itextpdf.awt.geom.Point2D;", 0x1, NULL },
    { "getP2", NULL, "Lcom.itextpdf.awt.geom.Point2D;", 0x1, NULL },
    { "setLineWithDouble:withDouble:withDouble:withDouble:", "setLine", "V", 0x1, NULL },
    { "getBounds2D", NULL, "Lcom.itextpdf.awt.geom.Rectangle2D;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "x1_", NULL, 0x1, "D", NULL,  },
    { "y1_", NULL, 0x1, "D", NULL,  },
    { "x2_", NULL, 0x1, "D", NULL,  },
    { "y2_", NULL, 0x1, "D", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomLine2D_Double = { "Double", "com.itextpdf.awt.geom", "Line2D", 0x9, 11, methods, 4, fields, 0, NULL};
  return &_ComItextpdfAwtGeomLine2D_Double;
}

@end


#line 194
@implementation ComItextpdfAwtGeomLine2D_Iterator


#line 231
- (instancetype)initWithComItextpdfAwtGeomLine2D:(ComItextpdfAwtGeomLine2D *)outer$
                    withComItextpdfAwtGeomLine2D:(ComItextpdfAwtGeomLine2D *)l
           withComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)at {
  if (self = [super init]) {
    
#line 232
    self->x1_ = [((ComItextpdfAwtGeomLine2D *) nil_chk(l)) getX1];
    
#line 233
    self->y1_ = [l getY1];
    
#line 234
    self->x2_ = [l getX2];
    
#line 235
    self->y2_ = [l getY2];
    
#line 236
    self->t_ = at;
  }
  return self;
}


#line 239
- (jint)getWindingRule {
  
#line 240
  return ComItextpdfAwtGeomPathIterator_WIND_NON_ZERO;
}


#line 243
- (jboolean)isDone {
  
#line 244
  return index_ > 1;
}


#line 247
- (void)next {
  
#line 248
  index_++;
}


#line 251
- (jint)currentSegmentWithDoubleArray:(IOSDoubleArray *)coords {
  
#line 252
  if ([self isDone]) {
    
#line 254
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:[ComItextpdfAwtGeomMiscMessages getStringWithNSString:@"awt.4B"]];
  }
  jint type;
  if (index_ == 0) {
    type = ComItextpdfAwtGeomPathIterator_SEG_MOVETO;
    *IOSDoubleArray_GetRef(nil_chk(coords), 0) = x1_;
    *IOSDoubleArray_GetRef(coords, 1) = y1_;
  }
  else {
    
#line 262
    type = ComItextpdfAwtGeomPathIterator_SEG_LINETO;
    *IOSDoubleArray_GetRef(nil_chk(coords), 0) = x2_;
    *IOSDoubleArray_GetRef(coords, 1) = y2_;
  }
  if (t_ != nil) {
    [t_ transformWithDoubleArray:coords withInt:0 withDoubleArray:coords withInt:0 withInt:1];
  }
  return type;
}


#line 272
- (jint)currentSegmentWithFloatArray:(IOSFloatArray *)coords {
  
#line 273
  if ([self isDone]) {
    
#line 275
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:[ComItextpdfAwtGeomMiscMessages getStringWithNSString:@"awt.4B"]];
  }
  jint type;
  if (index_ == 0) {
    type = ComItextpdfAwtGeomPathIterator_SEG_MOVETO;
    *IOSFloatArray_GetRef(nil_chk(coords), 0) = (jfloat) x1_;
    *IOSFloatArray_GetRef(coords, 1) = (jfloat) y1_;
  }
  else {
    
#line 283
    type = ComItextpdfAwtGeomPathIterator_SEG_LINETO;
    *IOSFloatArray_GetRef(nil_chk(coords), 0) = (jfloat) x2_;
    *IOSFloatArray_GetRef(coords, 1) = (jfloat) y2_;
  }
  if (t_ != nil) {
    [t_ transformWithFloatArray:coords withInt:0 withFloatArray:coords withInt:0 withInt:1];
  }
  return type;
}

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomLine2D_Iterator *)other {
  [super copyAllFieldsTo:other];
  other->index_ = index_;
  other->t_ = t_;
  other->x1_ = x1_;
  other->x2_ = x2_;
  other->y1_ = y1_;
  other->y2_ = y2_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfAwtGeomLine2D:withComItextpdfAwtGeomLine2D:withComItextpdfAwtGeomAffineTransform:", "Iterator", NULL, 0x0, NULL },
    { "getWindingRule", NULL, "I", 0x1, NULL },
    { "isDone", NULL, "Z", 0x1, NULL },
    { "next", NULL, "V", 0x1, NULL },
    { "currentSegmentWithDoubleArray:", "currentSegment", "I", 0x1, NULL },
    { "currentSegmentWithFloatArray:", "currentSegment", "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "x1_", NULL, 0x0, "D", NULL,  },
    { "y1_", NULL, 0x0, "D", NULL,  },
    { "x2_", NULL, 0x0, "D", NULL,  },
    { "y2_", NULL, 0x0, "D", NULL,  },
    { "t_", NULL, 0x0, "Lcom.itextpdf.awt.geom.AffineTransform;", NULL,  },
    { "index_", NULL, 0x0, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomLine2D_Iterator = { "Iterator", "com.itextpdf.awt.geom", "Line2D", 0x0, 6, methods, 6, fields, 0, NULL};
  return &_ComItextpdfAwtGeomLine2D_Iterator;
}

@end
