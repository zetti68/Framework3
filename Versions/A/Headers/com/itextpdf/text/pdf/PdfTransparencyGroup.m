//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfTransparencyGroup.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfTransparencyGroup.java"

#include "com/itextpdf/text/pdf/PdfBoolean.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfTransparencyGroup.h"


#line 51
@implementation ComItextpdfTextPdfPdfTransparencyGroup


#line 56
- (instancetype)init {
  if (self =
#line 57
  [super init]) {
    
#line 58
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_TRANSPARENCY_()];
  }
  return self;
}


#line 65
- (void)setIsolatedWithBoolean:(jboolean)isolated {
  
#line 66
  if (isolated)
#line 67
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_I_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_()];
  else
#line 69
  [self removeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_I_()];
}

- (void)setKnockoutWithBoolean:(jboolean)knockout {
  
#line 77
  if (knockout)
#line 78
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_K_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_()];
  else
#line 80
  [self removeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_K_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PdfTransparencyGroup", NULL, 0x1, NULL },
    { "setIsolatedWithBoolean:", "setIsolated", "V", 0x1, NULL },
    { "setKnockoutWithBoolean:", "setKnockout", "V", 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfTransparencyGroup = { "PdfTransparencyGroup", "com.itextpdf.text.pdf", NULL, 0x1, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfPdfTransparencyGroup;
}

@end