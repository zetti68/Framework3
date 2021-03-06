//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Point2D.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Point2D.java"

#include "IOSClass.h"
#include "com/itextpdf/awt/geom/Point2D.h"
#include "com/itextpdf/awt/geom/misc/HashCode.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/InternalError.h"
#include "java/lang/Math.h"


#line 28
@implementation ComItextpdfAwtGeomPoint2D


#line 105
- (instancetype)init {
  return [super init];
}


#line 108
- (jdouble)getX {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 110
- (jdouble)getY {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 112
- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 114
- (void)setLocationWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p {
  
#line 115
  [self setLocationWithDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p)) getX] withDouble:[p getY]];
}


#line 118
+ (jdouble)distanceSqWithDouble:(jdouble)x1
                     withDouble:(jdouble)y1
                     withDouble:(jdouble)x2
                     withDouble:(jdouble)y2 {
  
#line 119
  x2 -= x1;
  y2 -= y1;
  return x2 * x2 + y2 * y2;
}


#line 124
- (jdouble)distanceSqWithDouble:(jdouble)px
                     withDouble:(jdouble)py {
  
#line 125
  return [ComItextpdfAwtGeomPoint2D distanceSqWithDouble:[self getX] withDouble:[self getY] withDouble:px withDouble:py];
}


#line 128
- (jdouble)distanceSqWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p {
  
#line 129
  return [ComItextpdfAwtGeomPoint2D distanceSqWithDouble:[self getX] withDouble:[self getY] withDouble:[((ComItextpdfAwtGeomPoint2D *) nil_chk(p)) getX] withDouble:[p getY]];
}


#line 132
+ (jdouble)distanceWithDouble:(jdouble)x1
                   withDouble:(jdouble)y1
                   withDouble:(jdouble)x2
                   withDouble:(jdouble)y2 {
  
#line 133
  return [JavaLangMath sqrtWithDouble:[ComItextpdfAwtGeomPoint2D distanceSqWithDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2]];
}


#line 136
- (jdouble)distanceWithDouble:(jdouble)px
                   withDouble:(jdouble)py {
  
#line 137
  return [JavaLangMath sqrtWithDouble:[self distanceSqWithDouble:px withDouble:py]];
}


#line 140
- (jdouble)distanceWithComItextpdfAwtGeomPoint2D:(ComItextpdfAwtGeomPoint2D *)p {
  
#line 141
  return [JavaLangMath sqrtWithDouble:[self distanceSqWithComItextpdfAwtGeomPoint2D:p]];
}


#line 145
- (id)clone {
  @try {
    return [super clone];
  }
  @catch (
#line 148
  JavaLangCloneNotSupportedException *e) {
    @throw [[JavaLangInternalError alloc] init];
  }
}

- (NSUInteger)hash {
  
#line 155
  ComItextpdfAwtGeomMiscHashCode *hash_ = [[ComItextpdfAwtGeomMiscHashCode alloc] init];
  (void) [hash_ appendWithDouble:[self getX]];
  (void) [hash_ appendWithDouble:[self getY]];
  return ((jint) [hash_ hash]);
}

- (jboolean)isEqual:(id)obj {
  
#line 163
  if (obj == self) {
    return YES;
  }
  if ([obj isKindOfClass:[ComItextpdfAwtGeomPoint2D class]]) {
    ComItextpdfAwtGeomPoint2D *p = (ComItextpdfAwtGeomPoint2D *) check_class_cast(obj, [ComItextpdfAwtGeomPoint2D class]);
    return [self getX] == [((ComItextpdfAwtGeomPoint2D *) nil_chk(p)) getX] && [self getY] == [p getY];
  }
  return NO;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Point2D", NULL, 0x4, NULL },
    { "getX", NULL, "D", 0x401, NULL },
    { "getY", NULL, "D", 0x401, NULL },
    { "setLocationWithDouble:withDouble:", "setLocation", "V", 0x401, NULL },
    { "setLocationWithComItextpdfAwtGeomPoint2D:", "setLocation", "V", 0x1, NULL },
    { "distanceSqWithDouble:withDouble:withDouble:withDouble:", "distanceSq", "D", 0x9, NULL },
    { "distanceSqWithDouble:withDouble:", "distanceSq", "D", 0x1, NULL },
    { "distanceSqWithComItextpdfAwtGeomPoint2D:", "distanceSq", "D", 0x1, NULL },
    { "distanceWithDouble:withDouble:withDouble:withDouble:", "distance", "D", 0x9, NULL },
    { "distanceWithDouble:withDouble:", "distance", "D", 0x1, NULL },
    { "distanceWithComItextpdfAwtGeomPoint2D:", "distance", "D", 0x1, NULL },
    { "clone", NULL, "Ljava.lang.Object;", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomPoint2D = { "Point2D", "com.itextpdf.awt.geom", NULL, 0x401, 14, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfAwtGeomPoint2D;
}

@end


#line 30
@implementation ComItextpdfAwtGeomPoint2D_Float


#line 35
- (instancetype)init {
  return [super init];
}


#line 38
- (instancetype)initWithFloat:(jfloat)x
                    withFloat:(jfloat)y {
  if (self = [super init]) {
    
#line 39
    self->x_ = x;
    
#line 40
    self->y_ = y;
  }
  return self;
}


#line 44
- (jdouble)getX {
  
#line 45
  return x_;
}


#line 49
- (jdouble)getY {
  return y_;
}

- (void)setLocationWithFloat:(jfloat)x
                   withFloat:(jfloat)y {
  
#line 54
  self->x_ = x;
  self->y_ = y;
}


#line 59
- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y {
  
#line 60
  self->x_ = (jfloat) x;
  self->y_ = (jfloat) y;
}

- (NSString *)description {
  
#line 66
  return JreStrcat("$$F$FC", [[self getClass] getName], @"[x=", x_, @",y=", y_, ']');
}

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomPoint2D_Float *)other {
  [super copyAllFieldsTo:other];
  other->x_ = x_;
  other->y_ = y_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Float", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:", "Float", NULL, 0x1, NULL },
    { "getX", NULL, "D", 0x1, NULL },
    { "getY", NULL, "D", 0x1, NULL },
    { "setLocationWithFloat:withFloat:", "setLocation", "V", 0x1, NULL },
    { "setLocationWithDouble:withDouble:", "setLocation", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "x_", NULL, 0x1, "F", NULL,  },
    { "y_", NULL, 0x1, "F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomPoint2D_Float = { "Float", "com.itextpdf.awt.geom", "Point2D", 0x9, 7, methods, 2, fields, 0, NULL};
  return &_ComItextpdfAwtGeomPoint2D_Float;
}

@end


#line 70
@implementation ComItextpdfAwtGeomPoint2D_Double


#line 75
- (instancetype)init {
  return [super init];
}


#line 78
- (instancetype)initWithDouble:(jdouble)x
                    withDouble:(jdouble)y {
  if (self = [super init]) {
    
#line 79
    self->x_ = x;
    
#line 80
    self->y_ = y;
  }
  return self;
}


#line 84
- (jdouble)getX {
  
#line 85
  return x_;
}


#line 89
- (jdouble)getY {
  return y_;
}


#line 94
- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y {
  
#line 95
  self->x_ = x;
  self->y_ = y;
}

- (NSString *)description {
  
#line 101
  return JreStrcat("$$D$DC", [[self getClass] getName], @"[x=", x_, @",y=", y_, ']');
}

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomPoint2D_Double *)other {
  [super copyAllFieldsTo:other];
  other->x_ = x_;
  other->y_ = y_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Double", NULL, 0x1, NULL },
    { "initWithDouble:withDouble:", "Double", NULL, 0x1, NULL },
    { "getX", NULL, "D", 0x1, NULL },
    { "getY", NULL, "D", 0x1, NULL },
    { "setLocationWithDouble:withDouble:", "setLocation", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "x_", NULL, 0x1, "D", NULL,  },
    { "y_", NULL, 0x1, "D", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomPoint2D_Double = { "Double", "com.itextpdf.awt.geom", "Point2D", 0x9, 6, methods, 2, fields, 0, NULL};
  return &_ComItextpdfAwtGeomPoint2D_Double;
}

@end
