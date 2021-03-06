//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/draw/LineSeparator.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/draw/LineSeparator.java"

#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/Font.h"
#include "com/itextpdf/text/pdf/PdfChunk.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "com/itextpdf/text/pdf/draw/LineSeparator.h"


#line 60
@implementation ComItextpdfTextPdfDrawLineSeparator


#line 79
- (instancetype)initWithFloat:(jfloat)lineWidth
                    withFloat:(jfloat)percentage
 withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)lineColor
                      withInt:(jint)align
                    withFloat:(jfloat)offset {
  if (self = [super init]) {
    lineWidth_ =
#line 63
    1;
    percentage_ =
#line 65
    100;
    alignment_ =
#line 69
    ComItextpdfTextElement_ALIGN_BOTTOM;
    
#line 80
    self->lineWidth_ = lineWidth;
    
#line 81
    self->percentage_ = percentage;
    
#line 82
    self->lineColor_ = lineColor;
    
#line 83
    self->alignment_ = align;
    
#line 84
    self->offset_ = offset;
  }
  return self;
}


#line 91
- (instancetype)initWithComItextpdfTextFont:(ComItextpdfTextFont *)font {
  if (self = [super init]) {
    lineWidth_ =
#line 63
    1;
    percentage_ =
#line 65
    100;
    alignment_ =
#line 69
    ComItextpdfTextElement_ALIGN_BOTTOM;
    
#line 92
    self->lineWidth_ = ComItextpdfTextPdfPdfChunk_UNDERLINE_THICKNESS * [((ComItextpdfTextFont *) nil_chk(font)) getSize];
    
#line 93
    self->offset_ = ComItextpdfTextPdfPdfChunk_UNDERLINE_OFFSET * [font getSize];
    
#line 94
    self->percentage_ = 100;
    
#line 95
    self->lineColor_ = [font getColor];
  }
  return self;
}


#line 102
- (instancetype)init {
  if (self = [super init]) {
    lineWidth_ =
#line 63
    1;
    percentage_ =
#line 65
    100;
    alignment_ =
#line 69
    ComItextpdfTextElement_ALIGN_BOTTOM;
  }
  return self;
}


#line 108
- (void)drawWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)canvas
                                       withFloat:(jfloat)llx
                                       withFloat:(jfloat)lly
                                       withFloat:(jfloat)urx
                                       withFloat:(jfloat)ury
                                       withFloat:(jfloat)y {
  
#line 109
  [((ComItextpdfTextPdfPdfContentByte *) nil_chk(canvas)) saveState];
  [self drawLineWithComItextpdfTextPdfPdfContentByte:canvas withFloat:llx withFloat:urx withFloat:y];
  [canvas restoreState];
}

- (void)drawLineWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)canvas
                                           withFloat:(jfloat)leftX
                                           withFloat:(jfloat)rightX
                                           withFloat:(jfloat)y {
  
#line 122
  jfloat w;
  if ([self getPercentage] < 0)
#line 124
  w = -[self getPercentage];
  else
#line 126
  w = (rightX - leftX) * [self getPercentage] / 100.0f;
  jfloat s;
  switch ([self getAlignment]) {
    case ComItextpdfTextElement_ALIGN_LEFT:
    s = 0;
    break;
    case ComItextpdfTextElement_ALIGN_RIGHT:
    s = rightX - leftX - w;
    break;
    default:
    s = (rightX - leftX - w) / 2;
    break;
  }
  [((ComItextpdfTextPdfPdfContentByte *) nil_chk(canvas)) setLineWidthWithFloat:[self getLineWidth]];
  if ([self getLineColor] != nil)
#line 141
  [canvas setColorStrokeWithComItextpdfTextBaseColor:[self getLineColor]];
  [canvas moveToWithFloat:s + leftX withFloat:y + offset_];
  [canvas lineToWithFloat:s + w + leftX withFloat:y + offset_];
  [canvas stroke];
}


#line 151
- (jfloat)getLineWidth {
  
#line 152
  return lineWidth_;
}


#line 159
- (void)setLineWidthWithFloat:(jfloat)lineWidth {
  
#line 160
  self->lineWidth_ = lineWidth;
}


#line 167
- (jfloat)getPercentage {
  
#line 168
  return percentage_;
}


#line 175
- (void)setPercentageWithFloat:(jfloat)percentage {
  
#line 176
  self->percentage_ = percentage;
}


#line 183
- (ComItextpdfTextBaseColor *)getLineColor {
  
#line 184
  return lineColor_;
}


#line 191
- (void)setLineColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color {
  
#line 192
  self->lineColor_ = color;
}


#line 199
- (jint)getAlignment {
  
#line 200
  return alignment_;
}


#line 207
- (void)setAlignmentWithInt:(jint)align {
  
#line 208
  self->alignment_ = align;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfDrawLineSeparator *)other {
  [super copyAllFieldsTo:other];
  other->alignment_ = alignment_;
  other->lineColor_ = lineColor_;
  other->lineWidth_ = lineWidth_;
  other->percentage_ = percentage_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:withFloat:withComItextpdfTextBaseColor:withInt:withFloat:", "LineSeparator", NULL, 0x1, NULL },
    { "initWithComItextpdfTextFont:", "LineSeparator", NULL, 0x1, NULL },
    { "init", "LineSeparator", NULL, 0x1, NULL },
    { "drawWithComItextpdfTextPdfPdfContentByte:withFloat:withFloat:withFloat:withFloat:withFloat:", "draw", "V", 0x1, NULL },
    { "drawLineWithComItextpdfTextPdfPdfContentByte:withFloat:withFloat:withFloat:", "drawLine", "V", 0x1, NULL },
    { "getLineWidth", NULL, "F", 0x1, NULL },
    { "setLineWidthWithFloat:", "setLineWidth", "V", 0x1, NULL },
    { "getPercentage", NULL, "F", 0x1, NULL },
    { "setPercentageWithFloat:", "setPercentage", "V", 0x1, NULL },
    { "getLineColor", NULL, "Lcom.itextpdf.text.BaseColor;", 0x1, NULL },
    { "setLineColorWithComItextpdfTextBaseColor:", "setLineColor", "V", 0x1, NULL },
    { "getAlignment", NULL, "I", 0x1, NULL },
    { "setAlignmentWithInt:", "setAlignment", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "lineWidth_", NULL, 0x4, "F", NULL,  },
    { "percentage_", NULL, 0x4, "F", NULL,  },
    { "lineColor_", NULL, 0x4, "Lcom.itextpdf.text.BaseColor;", NULL,  },
    { "alignment_", NULL, 0x4, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfDrawLineSeparator = { "LineSeparator", "com.itextpdf.text.pdf.draw", NULL, 0x1, 13, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfDrawLineSeparator;
}

@end
