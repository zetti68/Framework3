//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfDeveloperExtension.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfDeveloperExtension.java"

#include "com/itextpdf/text/pdf/PdfDeveloperExtension.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"

BOOL ComItextpdfTextPdfPdfDeveloperExtension_initialized = NO;


#line 61
@implementation ComItextpdfTextPdfPdfDeveloperExtension

ComItextpdfTextPdfPdfDeveloperExtension * ComItextpdfTextPdfPdfDeveloperExtension_ADOBE_1_7_EXTENSIONLEVEL3_;
ComItextpdfTextPdfPdfDeveloperExtension * ComItextpdfTextPdfPdfDeveloperExtension_ESIC_1_7_EXTENSIONLEVEL2_;
ComItextpdfTextPdfPdfDeveloperExtension * ComItextpdfTextPdfPdfDeveloperExtension_ESIC_1_7_EXTENSIONLEVEL5_;


#line 86
- (instancetype)initWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)prefix
                    withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)baseversion
                                          withInt:(jint)extensionLevel {
  if (self = [super init]) {
    
#line 87
    self->prefix_ = prefix;
    
#line 88
    self->baseversion_ = baseversion;
    
#line 89
    self->extensionLevel_ = extensionLevel;
  }
  return self;
}


#line 96
- (ComItextpdfTextPdfPdfName *)getPrefix {
  
#line 97
  return prefix_;
}


#line 104
- (ComItextpdfTextPdfPdfName *)getBaseversion {
  
#line 105
  return baseversion_;
}


#line 112
- (jint)getExtensionLevel {
  
#line 113
  return extensionLevel_;
}


#line 121
- (ComItextpdfTextPdfPdfDictionary *)getDeveloperExtensions {
  
#line 122
  ComItextpdfTextPdfPdfDictionary *developerextensions = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [developerextensions putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_BASEVERSION_() withComItextpdfTextPdfPdfObject:baseversion_];
  [developerextensions putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_EXTENSIONLEVEL_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:extensionLevel_]];
  return developerextensions;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfDeveloperExtension *)other {
  [super copyAllFieldsTo:other];
  other->baseversion_ = baseversion_;
  other->extensionLevel_ = extensionLevel_;
  other->prefix_ = prefix_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfPdfDeveloperExtension class]) {
    ComItextpdfTextPdfPdfDeveloperExtension_ADOBE_1_7_EXTENSIONLEVEL3_ =
#line 65
    [[ComItextpdfTextPdfPdfDeveloperExtension alloc] initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ADBE_() withComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfWriter_get_PDF_VERSION_1_7_() withInt:3];
    ComItextpdfTextPdfPdfDeveloperExtension_ESIC_1_7_EXTENSIONLEVEL2_ =
#line 68
    [[ComItextpdfTextPdfPdfDeveloperExtension alloc] initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ESIC_() withComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfWriter_get_PDF_VERSION_1_7_() withInt:2];
    ComItextpdfTextPdfPdfDeveloperExtension_ESIC_1_7_EXTENSIONLEVEL5_ =
#line 71
    [[ComItextpdfTextPdfPdfDeveloperExtension alloc] initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ESIC_() withComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfWriter_get_PDF_VERSION_1_7_() withInt:5];
    ComItextpdfTextPdfPdfDeveloperExtension_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfName:withInt:", "PdfDeveloperExtension", NULL, 0x1, NULL },
    { "getPrefix", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x1, NULL },
    { "getBaseversion", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x1, NULL },
    { "getExtensionLevel", NULL, "I", 0x1, NULL },
    { "getDeveloperExtensions", NULL, "Lcom.itextpdf.text.pdf.PdfDictionary;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ADOBE_1_7_EXTENSIONLEVEL3_", NULL, 0x19, "Lcom.itextpdf.text.pdf.PdfDeveloperExtension;", &ComItextpdfTextPdfPdfDeveloperExtension_ADOBE_1_7_EXTENSIONLEVEL3_,  },
    { "ESIC_1_7_EXTENSIONLEVEL2_", NULL, 0x19, "Lcom.itextpdf.text.pdf.PdfDeveloperExtension;", &ComItextpdfTextPdfPdfDeveloperExtension_ESIC_1_7_EXTENSIONLEVEL2_,  },
    { "ESIC_1_7_EXTENSIONLEVEL5_", NULL, 0x19, "Lcom.itextpdf.text.pdf.PdfDeveloperExtension;", &ComItextpdfTextPdfPdfDeveloperExtension_ESIC_1_7_EXTENSIONLEVEL5_,  },
    { "prefix_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "baseversion_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "extensionLevel_", NULL, 0x4, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfDeveloperExtension = { "PdfDeveloperExtension", "com.itextpdf.text.pdf", NULL, 0x1, 5, methods, 6, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfDeveloperExtension;
}

@end
