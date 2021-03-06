//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/GlyphRenderListener.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/GlyphRenderListener.java"

#include "com/itextpdf/text/pdf/parser/GlyphRenderListener.h"
#include "com/itextpdf/text/pdf/parser/ImageRenderInfo.h"
#include "com/itextpdf/text/pdf/parser/RenderListener.h"
#include "com/itextpdf/text/pdf/parser/TextRenderInfo.h"
#include "java/util/List.h"


#line 48
@implementation ComItextpdfTextPdfParserGlyphRenderListener


#line 52
- (instancetype)initWithComItextpdfTextPdfParserRenderListener:(id<ComItextpdfTextPdfParserRenderListener>)delegate {
  if (self = [super init]) {
    
#line 53
    self->delegate_ = delegate;
  }
  return self;
}


#line 56
- (void)beginTextBlock {
  
#line 57
  [((id<ComItextpdfTextPdfParserRenderListener>) nil_chk(delegate_)) beginTextBlock];
}


#line 60
- (void)renderTextWithComItextpdfTextPdfParserTextRenderInfo:(ComItextpdfTextPdfParserTextRenderInfo *)renderInfo {
  
#line 61
  for (ComItextpdfTextPdfParserTextRenderInfo * __strong glyphInfo in nil_chk([((ComItextpdfTextPdfParserTextRenderInfo *) nil_chk(renderInfo)) getCharacterRenderInfos]))
#line 62
  [((id<ComItextpdfTextPdfParserRenderListener>) nil_chk(delegate_)) renderTextWithComItextpdfTextPdfParserTextRenderInfo:glyphInfo];
}


#line 65
- (void)endTextBlock {
  
#line 66
  [((id<ComItextpdfTextPdfParserRenderListener>) nil_chk(delegate_)) endTextBlock];
}


#line 69
- (void)renderImageWithComItextpdfTextPdfParserImageRenderInfo:(ComItextpdfTextPdfParserImageRenderInfo *)renderInfo {
  
#line 70
  [((id<ComItextpdfTextPdfParserRenderListener>) nil_chk(delegate_)) renderImageWithComItextpdfTextPdfParserImageRenderInfo:renderInfo];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserGlyphRenderListener *)other {
  [super copyAllFieldsTo:other];
  other->delegate_ = delegate_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfParserRenderListener:", "GlyphRenderListener", NULL, 0x1, NULL },
    { "beginTextBlock", NULL, "V", 0x1, NULL },
    { "renderTextWithComItextpdfTextPdfParserTextRenderInfo:", "renderText", "V", 0x1, NULL },
    { "endTextBlock", NULL, "V", 0x1, NULL },
    { "renderImageWithComItextpdfTextPdfParserImageRenderInfo:", "renderImage", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", NULL, 0x12, "Lcom.itextpdf.text.pdf.parser.RenderListener;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserGlyphRenderListener = { "GlyphRenderListener", "com.itextpdf.text.pdf.parser", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfParserGlyphRenderListener;
}

@end
