//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/wmf/Point.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/wmf/Point.java"

#include "com/itextpdf/text/pdf/codec/wmf/Point.h"


#line 47
@implementation ComItextpdfTextPdfCodecWmfPoint


#line 51
- (instancetype)init {
  return [super init];
}


#line 54
- (instancetype)initWithInt:(jint)x
                    withInt:(jint)y {
  if (self = [super init]) {
    
#line 55
    self->x_ = x;
    
#line 56
    self->y_ = y;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecWmfPoint *)other {
  [super copyAllFieldsTo:other];
  other->x_ = x_;
  other->y_ = y_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Point", NULL, 0x1, NULL },
    { "initWithInt:withInt:", "Point", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "x_", NULL, 0x1, "I", NULL,  },
    { "y_", NULL, 0x1, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecWmfPoint = { "Point", "com.itextpdf.text.pdf.codec.wmf", NULL, 0x1, 2, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfCodecWmfPoint;
}

@end
