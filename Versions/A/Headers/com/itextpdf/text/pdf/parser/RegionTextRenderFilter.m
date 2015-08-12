//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/RegionTextRenderFilter.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/RegionTextRenderFilter.java"

#include "com/itextpdf/awt/geom/Rectangle.h"
#include "com/itextpdf/awt/geom/Rectangle2D.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/pdf/parser/LineSegment.h"
#include "com/itextpdf/text/pdf/parser/RegionTextRenderFilter.h"
#include "com/itextpdf/text/pdf/parser/TextRenderInfo.h"
#include "com/itextpdf/text/pdf/parser/Vector.h"


#line 54
@implementation ComItextpdfTextPdfParserRegionTextRenderFilter


#line 63
- (instancetype)initWithComItextpdfAwtGeomRectangle2D:(ComItextpdfAwtGeomRectangle2D *)filterRect {
  if (self = [super init]) {
    
#line 64
    self->filterRect_ = filterRect;
  }
  return self;
}


#line 71
- (instancetype)initWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)filterRect {
  if (self = [super init]) {
    
#line 72
    self->filterRect_ = [[ComItextpdfAwtGeomRectangle alloc] initWithComItextpdfTextRectangle:filterRect];
  }
  return self;
}


#line 77
- (jboolean)allowTextWithComItextpdfTextPdfParserTextRenderInfo:(ComItextpdfTextPdfParserTextRenderInfo *)renderInfo {
  
#line 78
  ComItextpdfTextPdfParserLineSegment *segment = [((ComItextpdfTextPdfParserTextRenderInfo *) nil_chk(renderInfo)) getBaseline];
  ComItextpdfTextPdfParserVector *startPoint = [((ComItextpdfTextPdfParserLineSegment *) nil_chk(segment)) getStartPoint];
  ComItextpdfTextPdfParserVector *endPoint = [segment getEndPoint];
  
#line 82
  jfloat x1 = [((ComItextpdfTextPdfParserVector *) nil_chk(startPoint)) getWithInt:ComItextpdfTextPdfParserVector_I1];
  jfloat y1 = [startPoint getWithInt:ComItextpdfTextPdfParserVector_I2];
  jfloat x2 = [((ComItextpdfTextPdfParserVector *) nil_chk(endPoint)) getWithInt:ComItextpdfTextPdfParserVector_I1];
  jfloat y2 = [endPoint getWithInt:ComItextpdfTextPdfParserVector_I2];
  
#line 87
  return [((ComItextpdfAwtGeomRectangle2D *) nil_chk(filterRect_)) intersectsLineWithDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserRegionTextRenderFilter *)other {
  [super copyAllFieldsTo:other];
  other->filterRect_ = filterRect_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfAwtGeomRectangle2D:", "RegionTextRenderFilter", NULL, 0x1, NULL },
    { "initWithComItextpdfTextRectangle:", "RegionTextRenderFilter", NULL, 0x1, NULL },
    { "allowTextWithComItextpdfTextPdfParserTextRenderInfo:", "allowText", "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "filterRect_", NULL, 0x12, "Lcom.itextpdf.awt.geom.Rectangle2D;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserRegionTextRenderFilter = { "RegionTextRenderFilter", "com.itextpdf.text.pdf.parser", NULL, 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfParserRegionTextRenderFilter;
}

@end