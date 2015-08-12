//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Point.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/Point.java"

#include "IOSClass.h"
#include "com/itextpdf/awt/geom/Point.h"


#line 28
@implementation ComItextpdfAwtGeomPoint


#line 35
- (instancetype)init {
  if (self = [super init]) {
    
#line 36
    [self setLocationWithInt:0 withInt:0];
  }
  return self;
}


#line 39
- (instancetype)initWithInt:(jint)x
                    withInt:(jint)y {
  if (self = [super init]) {
    
#line 40
    [self setLocationWithInt:x withInt:y];
  }
  return self;
}


#line 43
- (instancetype)initWithDouble:(jdouble)x
                    withDouble:(jdouble)y {
  if (self = [super init]) {
    
#line 44
    [self setLocationWithDouble:x withDouble:y];
  }
  return self;
}


#line 47
- (instancetype)initWithComItextpdfAwtGeomPoint:(ComItextpdfAwtGeomPoint *)p {
  if (self = [super init]) {
    
#line 48
    [self setLocationWithDouble:((ComItextpdfAwtGeomPoint *) nil_chk(p))->x_ withDouble:p->y_];
  }
  return self;
}

- (jboolean)isEqual:(id)obj {
  
#line 53
  if (obj == self) {
    return YES;
  }
  if ([obj isKindOfClass:[ComItextpdfAwtGeomPoint class]]) {
    ComItextpdfAwtGeomPoint *p = (ComItextpdfAwtGeomPoint *) check_class_cast(obj, [ComItextpdfAwtGeomPoint class]);
    return x_ == ((ComItextpdfAwtGeomPoint *) nil_chk(p))->x_ && y_ == p->y_;
  }
  return NO;
}

- (NSString *)description {
  
#line 65
  return JreStrcat("$$D$DC", [[self getClass] getName], @"[x=", x_, @",y=", y_, ']');
}


#line 69
- (jdouble)getX {
  
#line 70
  return x_;
}


#line 74
- (jdouble)getY {
  return y_;
}

- (ComItextpdfAwtGeomPoint *)getLocation {
  
#line 79
  return [[ComItextpdfAwtGeomPoint alloc] initWithDouble:x_ withDouble:y_];
}


#line 82
- (void)setLocationWithComItextpdfAwtGeomPoint:(ComItextpdfAwtGeomPoint *)p {
  
#line 83
  [self setLocationWithDouble:((ComItextpdfAwtGeomPoint *) nil_chk(p))->x_ withDouble:p->y_];
}


#line 86
- (void)setLocationWithInt:(jint)x
                   withInt:(jint)y {
  
#line 87
  [self setLocationWithDouble:(jdouble) x withDouble:(jdouble) y];
}


#line 91
- (void)setLocationWithDouble:(jdouble)x
                   withDouble:(jdouble)y {
  
#line 92
  self->x_ = x;
  self->y_ = y;
}


#line 96
- (void)moveWithInt:(jint)x
            withInt:(jint)y {
  
#line 97
  [self moveWithDouble:(jdouble) x withDouble:(jdouble) y];
}


#line 99
- (void)moveWithDouble:(jdouble)x
            withDouble:(jdouble)y {
  
#line 100
  [self setLocationWithDouble:x withDouble:y];
}


#line 103
- (void)translateWithInt:(jint)dx
                 withInt:(jint)dy {
  
#line 104
  [self translateWithDouble:(jdouble) dx withDouble:(jdouble) dy];
}


#line 106
- (void)translateWithDouble:(jdouble)dx
                 withDouble:(jdouble)dy {
  
#line 107
  x_ += dx;
  y_ += dy;
}

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomPoint *)other {
  [super copyAllFieldsTo:other];
  other->x_ = x_;
  other->y_ = y_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Point", NULL, 0x1, NULL },
    { "initWithInt:withInt:", "Point", NULL, 0x1, NULL },
    { "initWithDouble:withDouble:", "Point", NULL, 0x1, NULL },
    { "initWithComItextpdfAwtGeomPoint:", "Point", NULL, 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getX", NULL, "D", 0x1, NULL },
    { "getY", NULL, "D", 0x1, NULL },
    { "getLocation", NULL, "Lcom.itextpdf.awt.geom.Point;", 0x1, NULL },
    { "setLocationWithComItextpdfAwtGeomPoint:", "setLocation", "V", 0x1, NULL },
    { "setLocationWithInt:withInt:", "setLocation", "V", 0x1, NULL },
    { "setLocationWithDouble:withDouble:", "setLocation", "V", 0x1, NULL },
    { "moveWithInt:withInt:", "move", "V", 0x1, NULL },
    { "moveWithDouble:withDouble:", "move", "V", 0x1, NULL },
    { "translateWithInt:withInt:", "translate", "V", 0x1, NULL },
    { "translateWithDouble:withDouble:", "translate", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfAwtGeomPoint_serialVersionUID },
    { "x_", NULL, 0x1, "D", NULL,  },
    { "y_", NULL, 0x1, "D", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomPoint = { "Point", "com.itextpdf.awt.geom", NULL, 0x1, 16, methods, 3, fields, 0, NULL};
  return &_ComItextpdfAwtGeomPoint;
}

@end
