//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/MarkedContentRenderFilter.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/MarkedContentRenderFilter.java"

#include "com/itextpdf/text/pdf/parser/MarkedContentRenderFilter.h"
#include "com/itextpdf/text/pdf/parser/TextRenderInfo.h"


#line 51
@implementation ComItextpdfTextPdfParserMarkedContentRenderFilter


#line 60
- (instancetype)initWithInt:(jint)mcid {
  if (self = [super init]) {
    
#line 61
    self->mcid_ = mcid;
  }
  return self;
}


#line 67
- (jboolean)allowTextWithComItextpdfTextPdfParserTextRenderInfo:(ComItextpdfTextPdfParserTextRenderInfo *)renderInfo {
  
#line 68
  return [((ComItextpdfTextPdfParserTextRenderInfo *) nil_chk(renderInfo)) hasMcidWithInt:mcid_];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserMarkedContentRenderFilter *)other {
  [super copyAllFieldsTo:other];
  other->mcid_ = mcid_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "MarkedContentRenderFilter", NULL, 0x1, NULL },
    { "allowTextWithComItextpdfTextPdfParserTextRenderInfo:", "allowText", "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mcid_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserMarkedContentRenderFilter = { "MarkedContentRenderFilter", "com.itextpdf.text.pdf.parser", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfParserMarkedContentRenderFilter;
}

@end
