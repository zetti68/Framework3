//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfRendition.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfRendition.java"

#include "IOSClass.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfFileSpecification.h"
#include "com/itextpdf/text/pdf/PdfMediaClipData.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfRendition.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "java/io/IOException.h"


#line 52
@implementation ComItextpdfTextPdfPdfRendition


#line 53
- (instancetype)initWithNSString:(NSString *)file
withComItextpdfTextPdfPdfFileSpecification:(ComItextpdfTextPdfPdfFileSpecification *)fs
                    withNSString:(NSString *)mimeType {
  if (self = [super init]) {
    
#line 54
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"MR"]];
    
#line 55
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_N_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:JreStrcat("$$", @"Rendition for ", file)]];
    
#line 56
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_C_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfMediaClipData alloc] initWithNSString:file withComItextpdfTextPdfPdfFileSpecification:fs withNSString:mimeType]];
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withComItextpdfTextPdfPdfFileSpecification:withNSString:", "PdfRendition", NULL, 0x0, "Ljava.io.IOException;" },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfRendition = { "PdfRendition", "com.itextpdf.text.pdf", NULL, 0x1, 1, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfPdfRendition;
}

@end