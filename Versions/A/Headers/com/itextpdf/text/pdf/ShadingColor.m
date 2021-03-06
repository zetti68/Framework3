//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ShadingColor.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ShadingColor.java"

#include "com/itextpdf/text/pdf/ExtendedColor.h"
#include "com/itextpdf/text/pdf/PdfShadingPattern.h"
#include "com/itextpdf/text/pdf/ShadingColor.h"


#line 51
@implementation ComItextpdfTextPdfShadingColor


#line 60
- (instancetype)initWithComItextpdfTextPdfPdfShadingPattern:(ComItextpdfTextPdfPdfShadingPattern *)shadingPattern {
  if (self =
#line 61
  [super initWithInt:ComItextpdfTextPdfExtendedColor_TYPE_SHADING withFloat:.5f withFloat:.5f withFloat:.5f]) {
    
#line 62
    self->shadingPattern_ = shadingPattern;
  }
  return self;
}


#line 69
- (ComItextpdfTextPdfPdfShadingPattern *)getPdfShadingPattern {
  
#line 70
  return shadingPattern_;
}

- (jboolean)isEqual:(id)obj {
  
#line 74
  return [obj isKindOfClass:[ComItextpdfTextPdfShadingColor class]] && [((ComItextpdfTextPdfPdfShadingPattern *) nil_chk((((ComItextpdfTextPdfShadingColor *) nil_chk(((ComItextpdfTextPdfShadingColor *) check_class_cast(obj, [ComItextpdfTextPdfShadingColor class]))))->shadingPattern_))) isEqual:self->shadingPattern_];
}

- (NSUInteger)hash {
  
#line 78
  return ((jint) [((ComItextpdfTextPdfPdfShadingPattern *) nil_chk(shadingPattern_)) hash]);
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfShadingColor *)other {
  [super copyAllFieldsTo:other];
  other->shadingPattern_ = shadingPattern_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPdfShadingPattern:", "ShadingColor", NULL, 0x1, NULL },
    { "getPdfShadingPattern", NULL, "Lcom.itextpdf.text.pdf.PdfShadingPattern;", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextPdfShadingColor_serialVersionUID },
    { "shadingPattern_", NULL, 0x0, "Lcom.itextpdf.text.pdf.PdfShadingPattern;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfShadingColor = { "ShadingColor", "com.itextpdf.text.pdf", NULL, 0x1, 4, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfShadingColor;
}

@end
