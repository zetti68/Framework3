//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfRectangle.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfRectangle.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/awt/geom/AffineTransform.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfRectangle.h"


#line 64
@implementation ComItextpdfTextPdfPdfRectangle


#line 93
- (instancetype)initComItextpdfTextPdfPdfRectangleWithFloat:(jfloat)llx
                                                  withFloat:(jfloat)lly
                                                  withFloat:(jfloat)urx
                                                  withFloat:(jfloat)ury
                                                    withInt:(jint)rotation {
  if (self =
#line 94
  [super initWithFloatArray:[IOSFloatArray arrayWithLength:0]]) {
    llx_ =
#line 69
    0;
    lly_ =
#line 72
    0;
    urx_ =
#line 75
    0;
    ury_ =
#line 78
    0;
    
#line 95
    if (rotation == 90 || rotation == 270) {
      self->llx_ = lly;
      self->lly_ = llx;
      self->urx_ = ury;
      self->ury_ = urx;
    }
    else {
      self->llx_ = llx;
      self->lly_ = lly;
      self->urx_ = urx;
      self->ury_ = ury;
    }
    
#line 107
    [super addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:self->llx_]];
    
#line 108
    [super addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:self->lly_]];
    
#line 109
    [super addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:self->urx_]];
    
#line 110
    [super addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:self->ury_]];
  }
  return self;
}

- (instancetype)initWithFloat:(jfloat)llx
                    withFloat:(jfloat)lly
                    withFloat:(jfloat)urx
                    withFloat:(jfloat)ury
                      withInt:(jint)rotation {
  return [self initComItextpdfTextPdfPdfRectangleWithFloat:
#line 93
llx withFloat:lly withFloat:urx withFloat:ury withInt:rotation];
}


#line 113
- (instancetype)initWithFloat:(jfloat)llx
                    withFloat:(jfloat)lly
                    withFloat:(jfloat)urx
                    withFloat:(jfloat)ury {
  return
#line 114
  [self initComItextpdfTextPdfPdfRectangleWithFloat:llx withFloat:lly withFloat:urx withFloat:ury withInt:0];
}


#line 124
- (instancetype)initWithFloat:(jfloat)urx
                    withFloat:(jfloat)ury
                      withInt:(jint)rotation {
  return
#line 125
  [self initComItextpdfTextPdfPdfRectangleWithFloat:0 withFloat:0 withFloat:urx withFloat:ury withInt:rotation];
}


#line 128
- (instancetype)initWithFloat:(jfloat)urx
                    withFloat:(jfloat)ury {
  return
#line 129
  [self initComItextpdfTextPdfPdfRectangleWithFloat:0 withFloat:0 withFloat:urx withFloat:ury withInt:0];
}


#line 138
- (instancetype)initWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rectangle
                                         withInt:(jint)rotation {
  return
#line 139
  [self initComItextpdfTextPdfPdfRectangleWithFloat:[((ComItextpdfTextRectangle *) nil_chk(rectangle)) getLeft] withFloat:[rectangle getBottom] withFloat:[rectangle getRight] withFloat:[rectangle getTop] withInt:rotation];
}


#line 142
- (instancetype)initWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rectangle {
  return
#line 143
  [self initComItextpdfTextPdfPdfRectangleWithFloat:[((ComItextpdfTextRectangle *) nil_chk(rectangle)) getLeft] withFloat:[rectangle getBottom] withFloat:[rectangle getRight] withFloat:[rectangle getTop] withInt:0];
}


#line 151
- (ComItextpdfTextRectangle *)getRectangle {
  
#line 152
  return [[ComItextpdfTextRectangle alloc] initWithFloat:[self left] withFloat:[self bottom] withFloat:[self right] withFloat:[self top]];
}


#line 162
- (jboolean)addWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object {
  
#line 163
  return NO;
}


#line 173
- (jboolean)addWithFloatArray:(IOSFloatArray *)values {
  
#line 174
  return NO;
}


#line 184
- (jboolean)addWithIntArray:(IOSIntArray *)values {
  
#line 185
  return NO;
}


#line 194
- (void)addFirstWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object {
}


#line 202
- (jfloat)left {
  
#line 203
  return llx_;
}


#line 212
- (jfloat)right {
  
#line 213
  return urx_;
}


#line 222
- (jfloat)top {
  
#line 223
  return ury_;
}


#line 232
- (jfloat)bottom {
  
#line 233
  return lly_;
}


#line 243
- (jfloat)leftWithInt:(jint)margin {
  
#line 244
  return llx_ + margin;
}


#line 254
- (jfloat)rightWithInt:(jint)margin {
  
#line 255
  return urx_ - margin;
}


#line 265
- (jfloat)topWithInt:(jint)margin {
  
#line 266
  return ury_ - margin;
}


#line 276
- (jfloat)bottomWithInt:(jint)margin {
  
#line 277
  return lly_ + margin;
}


#line 286
- (jfloat)width {
  
#line 287
  return urx_ - llx_;
}


#line 296
- (jfloat)height {
  
#line 297
  return ury_ - lly_;
}


#line 306
- (ComItextpdfTextPdfPdfRectangle *)rotate {
  
#line 307
  return [[ComItextpdfTextPdfPdfRectangle alloc] initWithFloat:lly_ withFloat:llx_ withFloat:ury_ withFloat:urx_ withInt:0];
}


#line 310
- (ComItextpdfTextPdfPdfRectangle *)transformWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)transform {
  
#line 311
  IOSFloatArray *pts = [IOSFloatArray arrayWithFloats:(jfloat[]){ llx_, lly_, urx_, ury_ } count:4];
  [((ComItextpdfAwtGeomAffineTransform *) nil_chk(transform)) transformWithFloatArray:pts withInt:0 withFloatArray:pts withInt:0 withInt:2];
  IOSFloatArray *dstPts = [IOSFloatArray arrayWithFloats:(jfloat[]){ IOSFloatArray_Get(pts, 0), IOSFloatArray_Get(pts, 1), IOSFloatArray_Get(pts, 2), IOSFloatArray_Get(pts, 3) } count:4];
  if (IOSFloatArray_Get(pts, 0) > IOSFloatArray_Get(pts, 2)) {
    *IOSFloatArray_GetRef(dstPts, 0) = IOSFloatArray_Get(pts, 2);
    *IOSFloatArray_GetRef(dstPts, 2) = IOSFloatArray_Get(pts, 0);
  }
  if (IOSFloatArray_Get(pts, 1) > IOSFloatArray_Get(pts, 3)) {
    *IOSFloatArray_GetRef(dstPts, 1) = IOSFloatArray_Get(pts, 3);
    *IOSFloatArray_GetRef(dstPts, 3) = IOSFloatArray_Get(pts, 1);
  }
  return [[ComItextpdfTextPdfPdfRectangle alloc] initWithFloat:IOSFloatArray_Get(dstPts, 0) withFloat:IOSFloatArray_Get(dstPts, 1) withFloat:IOSFloatArray_Get(dstPts, 2) withFloat:IOSFloatArray_Get(dstPts, 3)];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfRectangle *)other {
  [super copyAllFieldsTo:other];
  other->llx_ = llx_;
  other->lly_ = lly_;
  other->urx_ = urx_;
  other->ury_ = ury_;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:withFloat:withFloat:withFloat:withInt:", "PdfRectangle", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:withFloat:withFloat:", "PdfRectangle", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:withInt:", "PdfRectangle", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:", "PdfRectangle", NULL, 0x1, NULL },
    { "initWithComItextpdfTextRectangle:withInt:", "PdfRectangle", NULL, 0x1, NULL },
    { "initWithComItextpdfTextRectangle:", "PdfRectangle", NULL, 0x1, NULL },
    { "getRectangle", NULL, "Lcom.itextpdf.text.Rectangle;", 0x1, NULL },
    { "addWithComItextpdfTextPdfPdfObject:", "add", "Z", 0x1, NULL },
    { "addWithFloatArray:", "add", "Z", 0x1, NULL },
    { "addWithIntArray:", "add", "Z", 0x1, NULL },
    { "addFirstWithComItextpdfTextPdfPdfObject:", "addFirst", "V", 0x1, NULL },
    { "left", NULL, "F", 0x1, NULL },
    { "right", NULL, "F", 0x1, NULL },
    { "top", NULL, "F", 0x1, NULL },
    { "bottom", NULL, "F", 0x1, NULL },
    { "leftWithInt:", "left", "F", 0x1, NULL },
    { "rightWithInt:", "right", "F", 0x1, NULL },
    { "topWithInt:", "top", "F", 0x1, NULL },
    { "bottomWithInt:", "bottom", "F", 0x1, NULL },
    { "width", NULL, "F", 0x1, NULL },
    { "height", NULL, "F", 0x1, NULL },
    { "rotate", NULL, "Lcom.itextpdf.text.pdf.PdfRectangle;", 0x1, NULL },
    { "transformWithComItextpdfAwtGeomAffineTransform:", "transform", "Lcom.itextpdf.text.pdf.PdfRectangle;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "llx_", NULL, 0x2, "F", NULL,  },
    { "lly_", NULL, 0x2, "F", NULL,  },
    { "urx_", NULL, 0x2, "F", NULL,  },
    { "ury_", NULL, 0x2, "F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfRectangle = { "PdfRectangle", "com.itextpdf.text.pdf", NULL, 0x1, 23, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfRectangle;
}

@end
