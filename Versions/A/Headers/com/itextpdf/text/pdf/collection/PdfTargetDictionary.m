//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfTargetDictionary.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfTargetDictionary.java"

#include "IOSClass.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/collection/PdfTargetDictionary.h"


#line 53
@implementation ComItextpdfTextPdfCollectionPdfTargetDictionary


#line 59
- (instancetype)initWithComItextpdfTextPdfCollectionPdfTargetDictionary:(ComItextpdfTextPdfCollectionPdfTargetDictionary *)nested {
  if (self =
#line 60
  [super init]) {
    
#line 61
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_R_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_P_()];
    
#line 62
    if (nested != nil)
#line 63
    [self setAdditionalPathWithComItextpdfTextPdfCollectionPdfTargetDictionary:nested];
  }
  return self;
}


#line 70
- (instancetype)initWithBoolean:(jboolean)child {
  if (self =
#line 71
  [super init]) {
    
#line 72
    if (child) {
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_R_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_C_()];
    }
    else {
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_R_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_P_()];
    }
  }
  return self;
}


#line 85
- (void)setEmbeddedFileNameWithNSString:(NSString *)target {
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_N_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:target withNSString:nil]];
}


#line 95
- (void)setFileAttachmentPagenameWithNSString:(NSString *)name {
  
#line 96
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_P_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:name withNSString:nil]];
}


#line 105
- (void)setFileAttachmentPageWithInt:(jint)page {
  
#line 106
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_P_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:page]];
}


#line 115
- (void)setFileAttachmentNameWithNSString:(NSString *)name {
  
#line 116
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_A_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:name withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
}


#line 125
- (void)setFileAttachmentIndexWithInt:(jint)annotation {
  
#line 126
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_A_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:annotation]];
}


#line 134
- (void)setAdditionalPathWithComItextpdfTextPdfCollectionPdfTargetDictionary:(ComItextpdfTextPdfCollectionPdfTargetDictionary *)nested {
  
#line 135
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_T_() withComItextpdfTextPdfPdfObject:nested];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfCollectionPdfTargetDictionary:", "PdfTargetDictionary", NULL, 0x1, NULL },
    { "initWithBoolean:", "PdfTargetDictionary", NULL, 0x1, NULL },
    { "setEmbeddedFileNameWithNSString:", "setEmbeddedFileName", "V", 0x1, NULL },
    { "setFileAttachmentPagenameWithNSString:", "setFileAttachmentPagename", "V", 0x1, NULL },
    { "setFileAttachmentPageWithInt:", "setFileAttachmentPage", "V", 0x1, NULL },
    { "setFileAttachmentNameWithNSString:", "setFileAttachmentName", "V", 0x1, NULL },
    { "setFileAttachmentIndexWithInt:", "setFileAttachmentIndex", "V", 0x1, NULL },
    { "setAdditionalPathWithComItextpdfTextPdfCollectionPdfTargetDictionary:", "setAdditionalPath", "V", 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCollectionPdfTargetDictionary = { "PdfTargetDictionary", "com.itextpdf.text.pdf.collection", NULL, 0x1, 8, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfCollectionPdfTargetDictionary;
}

@end
