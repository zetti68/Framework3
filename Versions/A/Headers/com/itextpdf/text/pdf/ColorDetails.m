//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ColorDetails.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ColorDetails.java"

#include "com/itextpdf/text/pdf/ColorDetails.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfSpotColor.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"


#line 51
@implementation ComItextpdfTextPdfColorDetails


#line 68
- (instancetype)initWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)colorName
       withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)indirectReference
               withComItextpdfTextPdfPdfSpotColor:(ComItextpdfTextPdfPdfSpotColor *)scolor {
  if (self = [super init]) {
    
#line 69
    self->colorName_ = colorName;
    
#line 70
    self->indirectReference_ = indirectReference;
    
#line 71
    self->spotcolor_ = scolor;
  }
  return self;
}


#line 77
- (ComItextpdfTextPdfPdfIndirectReference *)getIndirectReference {
  
#line 78
  return indirectReference_;
}


#line 84
- (ComItextpdfTextPdfPdfName *)getColorName {
  
#line 85
  return colorName_;
}


#line 91
- (ComItextpdfTextPdfPdfObject *)getSpotColorWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer {
  
#line 92
  return [((ComItextpdfTextPdfPdfSpotColor *) nil_chk(spotcolor_)) getSpotObjectWithComItextpdfTextPdfPdfWriter:writer];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfColorDetails *)other {
  [super copyAllFieldsTo:other];
  other->colorName_ = colorName_;
  other->indirectReference_ = indirectReference_;
  other->spotcolor_ = spotcolor_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfIndirectReference:withComItextpdfTextPdfPdfSpotColor:", "ColorDetails", NULL, 0x0, NULL },
    { "getIndirectReference", NULL, "Lcom.itextpdf.text.pdf.PdfIndirectReference;", 0x1, NULL },
    { "getColorName", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "getSpotColorWithComItextpdfTextPdfPdfWriter:", "getSpotColor", "Lcom.itextpdf.text.pdf.PdfObject;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "indirectReference_", NULL, 0x0, "Lcom.itextpdf.text.pdf.PdfIndirectReference;", NULL,  },
    { "colorName_", NULL, 0x0, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "spotcolor_", NULL, 0x0, "Lcom.itextpdf.text.pdf.PdfSpotColor;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfColorDetails = { "ColorDetails", "com.itextpdf.text.pdf", NULL, 0x0, 4, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfColorDetails;
}

@end