//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPTableHeader.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPTableHeader.java"

#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfPTableHeader.h"


#line 47
@implementation ComItextpdfTextPdfPdfPTableHeader


#line 51
- (instancetype)init {
  if (self =
#line 52
  [super init]) {
    role_PdfPTableHeader_ = ComItextpdfTextPdfPdfName_get_THEAD_();
  }
  return self;
}


#line 55
- (ComItextpdfTextPdfPdfName *)getRole {
  
#line 56
  return role_PdfPTableHeader_;
}


#line 59
- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role {
  
#line 60
  self->role_PdfPTableHeader_ = role;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfPTableHeader *)other {
  [super copyAllFieldsTo:other];
  other->role_PdfPTableHeader_ = role_PdfPTableHeader_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PdfPTableHeader", NULL, 0x1, NULL },
    { "getRole", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x1, NULL },
    { "setRoleWithComItextpdfTextPdfPdfName:", "setRole", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "role_PdfPTableHeader_", "role", 0x4, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfPTableHeader = { "PdfPTableHeader", "com.itextpdf.text.pdf", NULL, 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfPTableHeader;
}

@end
