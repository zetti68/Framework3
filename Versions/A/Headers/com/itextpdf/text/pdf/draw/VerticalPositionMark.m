//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/draw/VerticalPositionMark.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/draw/VerticalPositionMark.java"

#include "com/itextpdf/text/Chunk.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ElementListener.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "com/itextpdf/text/pdf/draw/DrawInterface.h"
#include "com/itextpdf/text/pdf/draw/VerticalPositionMark.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"


#line 63
@implementation ComItextpdfTextPdfDrawVerticalPositionMark


#line 75
- (instancetype)init {
  if (self = [super init]) {
    drawInterface_ =
#line 66
    nil;
    offset_ =
#line 69
    0;
  }
  return self;
}


#line 84
- (instancetype)initWithComItextpdfTextPdfDrawDrawInterface:(id<ComItextpdfTextPdfDrawDrawInterface>)drawInterface
                                                  withFloat:(jfloat)offset {
  if (self = [super init]) {
    drawInterface_ =
#line 66
    nil;
    offset_ =
#line 69
    0;
    
#line 85
    self->drawInterface_ = drawInterface;
    self->offset_ = offset;
  }
  return self;
}


#line 92
- (void)drawWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)canvas
                                       withFloat:(jfloat)llx
                                       withFloat:(jfloat)lly
                                       withFloat:(jfloat)urx
                                       withFloat:(jfloat)ury
                                       withFloat:(jfloat)y {
  
#line 93
  if (drawInterface_ != nil) {
    [drawInterface_ drawWithComItextpdfTextPdfPdfContentByte:canvas withFloat:llx withFloat:lly withFloat:urx withFloat:ury withFloat:y + offset_];
  }
}


#line 101
- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener {
  
#line 102
  @try {
    return [((id<ComItextpdfTextElementListener>) nil_chk(listener)) addWithComItextpdfTextElement:self];
  }
  @catch (
#line 104
  ComItextpdfTextDocumentException *e) {
    return NO;
  }
}


#line 112
- (jint)type {
  
#line 113
  return ComItextpdfTextElement_YMARK;
}


#line 119
- (jboolean)isContent {
  
#line 120
  return YES;
}


#line 126
- (jboolean)isNestable {
  
#line 127
  return NO;
}


#line 133
- (id<JavaUtilList>)getChunks {
  
#line 134
  id<JavaUtilList> list = [[JavaUtilArrayList alloc] init];
  [list addWithId:[[ComItextpdfTextChunk alloc] initWithComItextpdfTextPdfDrawDrawInterface:self withBoolean:YES]];
  return list;
}


#line 143
- (id<ComItextpdfTextPdfDrawDrawInterface>)getDrawInterface {
  
#line 144
  return drawInterface_;
}


#line 151
- (void)setDrawInterfaceWithComItextpdfTextPdfDrawDrawInterface:(id<ComItextpdfTextPdfDrawDrawInterface>)drawInterface {
  
#line 152
  self->drawInterface_ = drawInterface;
}


#line 159
- (jfloat)getOffset {
  
#line 160
  return offset_;
}


#line 169
- (void)setOffsetWithFloat:(jfloat)offset {
  
#line 170
  self->offset_ = offset;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfDrawVerticalPositionMark *)other {
  [super copyAllFieldsTo:other];
  other->drawInterface_ = drawInterface_;
  other->offset_ = offset_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "VerticalPositionMark", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfDrawDrawInterface:withFloat:", "VerticalPositionMark", NULL, 0x1, NULL },
    { "drawWithComItextpdfTextPdfPdfContentByte:withFloat:withFloat:withFloat:withFloat:withFloat:", "draw", "V", 0x1, NULL },
    { "processWithComItextpdfTextElementListener:", "process", "Z", 0x1, NULL },
    { "type", NULL, "I", 0x1, NULL },
    { "isContent", NULL, "Z", 0x1, NULL },
    { "isNestable", NULL, "Z", 0x1, NULL },
    { "getChunks", NULL, "Ljava.util.List;", 0x1, NULL },
    { "getDrawInterface", NULL, "Lcom.itextpdf.text.pdf.draw.DrawInterface;", 0x1, NULL },
    { "setDrawInterfaceWithComItextpdfTextPdfDrawDrawInterface:", "setDrawInterface", "V", 0x1, NULL },
    { "getOffset", NULL, "F", 0x1, NULL },
    { "setOffsetWithFloat:", "setOffset", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "drawInterface_", NULL, 0x4, "Lcom.itextpdf.text.pdf.draw.DrawInterface;", NULL,  },
    { "offset_", NULL, 0x4, "F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfDrawVerticalPositionMark = { "VerticalPositionMark", "com.itextpdf.text.pdf.draw", NULL, 0x1, 12, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfDrawVerticalPositionMark;
}

@end
