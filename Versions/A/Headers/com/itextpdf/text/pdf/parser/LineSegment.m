//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/LineSegment.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/LineSegment.java"

#include "com/itextpdf/awt/geom/Rectangle2D.h"
#include "com/itextpdf/text/pdf/parser/LineSegment.h"
#include "com/itextpdf/text/pdf/parser/Matrix.h"
#include "com/itextpdf/text/pdf/parser/Vector.h"
#include "java/lang/Math.h"


#line 53
@implementation ComItextpdfTextPdfParserLineSegment


#line 65
- (instancetype)initWithComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)startPoint
                    withComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)endPoint {
  if (self = [super init]) {
    
#line 66
    self->startPoint_ = startPoint;
    
#line 67
    self->endPoint_ = endPoint;
  }
  return self;
}


#line 73
- (ComItextpdfTextPdfParserVector *)getStartPoint {
  
#line 74
  return startPoint_;
}


#line 80
- (ComItextpdfTextPdfParserVector *)getEndPoint {
  
#line 81
  return endPoint_;
}


#line 88
- (jfloat)getLength {
  
#line 89
  return [((ComItextpdfTextPdfParserVector *) nil_chk([((ComItextpdfTextPdfParserVector *) nil_chk(endPoint_)) subtractWithComItextpdfTextPdfParserVector:startPoint_])) length];
}


#line 100
- (ComItextpdfAwtGeomRectangle2D_Float *)getBoundingRectange {
  
#line 101
  jfloat x1 = [((ComItextpdfTextPdfParserVector *) nil_chk([self getStartPoint])) getWithInt:ComItextpdfTextPdfParserVector_I1];
  jfloat y1 = [((ComItextpdfTextPdfParserVector *) nil_chk([self getStartPoint])) getWithInt:ComItextpdfTextPdfParserVector_I2];
  jfloat x2 = [((ComItextpdfTextPdfParserVector *) nil_chk([self getEndPoint])) getWithInt:ComItextpdfTextPdfParserVector_I1];
  jfloat y2 = [((ComItextpdfTextPdfParserVector *) nil_chk([self getEndPoint])) getWithInt:ComItextpdfTextPdfParserVector_I2];
  return [[ComItextpdfAwtGeomRectangle2D_Float alloc] initWithFloat:[JavaLangMath minWithFloat:x1 withFloat:x2] withFloat:[JavaLangMath minWithFloat:y1 withFloat:y2] withFloat:[JavaLangMath absWithFloat:x2 - x1] withFloat:[JavaLangMath absWithFloat:y2 - y1]];
}


#line 114
- (ComItextpdfTextPdfParserLineSegment *)transformByWithComItextpdfTextPdfParserMatrix:(ComItextpdfTextPdfParserMatrix *)m {
  
#line 115
  ComItextpdfTextPdfParserVector *newStart = [((ComItextpdfTextPdfParserVector *) nil_chk(startPoint_)) crossWithComItextpdfTextPdfParserMatrix:m];
  ComItextpdfTextPdfParserVector *newEnd = [((ComItextpdfTextPdfParserVector *) nil_chk(endPoint_)) crossWithComItextpdfTextPdfParserMatrix:m];
  return [[ComItextpdfTextPdfParserLineSegment alloc] initWithComItextpdfTextPdfParserVector:newStart withComItextpdfTextPdfParserVector:newEnd];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserLineSegment *)other {
  [super copyAllFieldsTo:other];
  other->endPoint_ = endPoint_;
  other->startPoint_ = startPoint_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfParserVector:withComItextpdfTextPdfParserVector:", "LineSegment", NULL, 0x1, NULL },
    { "getStartPoint", NULL, "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "getEndPoint", NULL, "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "getLength", NULL, "F", 0x1, NULL },
    { "getBoundingRectange", NULL, "Lcom.itextpdf.awt.geom.Rectangle2D$Float;", 0x1, NULL },
    { "transformByWithComItextpdfTextPdfParserMatrix:", "transformBy", "Lcom.itextpdf.text.pdf.parser.LineSegment;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "startPoint_", NULL, 0x12, "Lcom.itextpdf.text.pdf.parser.Vector;", NULL,  },
    { "endPoint_", NULL, 0x12, "Lcom.itextpdf.text.pdf.parser.Vector;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserLineSegment = { "LineSegment", "com.itextpdf.text.pdf.parser", NULL, 0x1, 6, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfParserLineSegment;
}

@end