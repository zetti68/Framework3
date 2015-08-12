//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/languages/HebrewProcessor.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/languages/HebrewProcessor.java"

#include "com/itextpdf/text/pdf/BidiLine.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/languages/HebrewProcessor.h"


#line 50
@implementation ComItextpdfTextPdfLanguagesHebrewProcessor


#line 53
- (instancetype)init {
  if (self = [super init]) {
    runDirection_ = ComItextpdfTextPdfPdfWriter_RUN_DIRECTION_RTL;
  }
  return self;
}


#line 56
- (instancetype)initWithInt:(jint)runDirection {
  if (self = [super init]) {
    runDirection_ =
#line 51
    ComItextpdfTextPdfPdfWriter_RUN_DIRECTION_RTL;
    
#line 57
    self->runDirection_ = runDirection;
  }
  return self;
}


#line 60
- (NSString *)processWithNSString:(NSString *)s {
  
#line 61
  return [ComItextpdfTextPdfBidiLine processLTRWithNSString:s withInt:runDirection_ withInt:0];
}


#line 69
- (jboolean)isRTL {
  
#line 70
  return YES;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfLanguagesHebrewProcessor *)other {
  [super copyAllFieldsTo:other];
  other->runDirection_ = runDirection_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "HebrewProcessor", NULL, 0x1, NULL },
    { "initWithInt:", "HebrewProcessor", NULL, 0x1, NULL },
    { "processWithNSString:", "process", "Ljava.lang.String;", 0x1, NULL },
    { "isRTL", NULL, "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "runDirection_", NULL, 0x4, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfLanguagesHebrewProcessor = { "HebrewProcessor", "com.itextpdf.text.pdf.languages", NULL, 0x1, 4, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfLanguagesHebrewProcessor;
}

@end