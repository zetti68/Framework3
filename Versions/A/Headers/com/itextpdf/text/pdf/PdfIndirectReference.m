//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfIndirectReference.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfIndirectReference.java"

#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "java/lang/StringBuffer.h"


#line 61
@implementation ComItextpdfTextPdfPdfIndirectReference


#line 73
- (instancetype)init {
  if (self =
#line 74
  [super initWithInt:0]) {
    generation_ =
#line 69
    0;
  }
  return self;
}


#line 85
- (instancetype)initComItextpdfTextPdfPdfIndirectReferenceWithInt:(jint)type
                                                          withInt:(jint)number
                                                          withInt:(jint)generation {
  if (self =
#line 86
  [super initWithInt:0 withNSString:[((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) [[JavaLangStringBuffer alloc] init]) appendWithInt:number])) appendWithNSString:@" "])) appendWithInt:generation])) appendWithNSString:@" R"])) description]]) {
    generation_ =
#line 69
    0;
    
#line 87
    self->number_ = number;
    
#line 88
    self->generation_ = generation;
  }
  return self;
}

- (instancetype)initWithInt:(jint)type
                    withInt:(jint)number
                    withInt:(jint)generation {
  return [self initComItextpdfTextPdfPdfIndirectReferenceWithInt:
#line 85
type withInt:number withInt:generation];
}


#line 98
- (instancetype)initWithInt:(jint)type
                    withInt:(jint)number {
  return
#line 99
  [self initComItextpdfTextPdfPdfIndirectReferenceWithInt:type withInt:number withInt:0];
}


#line 110
- (jint)getNumber {
  
#line 111
  return number_;
}


#line 120
- (jint)getGeneration {
  
#line 121
  return generation_;
}

- (NSString *)description {
  
#line 125
  return [((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) [[JavaLangStringBuffer alloc] init]) appendWithInt:number_])) appendWithNSString:@" "])) appendWithInt:generation_])) appendWithNSString:@" R"])) description];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfIndirectReference *)other {
  [super copyAllFieldsTo:other];
  other->generation_ = generation_;
  other->number_ = number_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PdfIndirectReference", NULL, 0x4, NULL },
    { "initWithInt:withInt:withInt:", "PdfIndirectReference", NULL, 0x0, NULL },
    { "initWithInt:withInt:", "PdfIndirectReference", NULL, 0x4, NULL },
    { "getNumber", NULL, "I", 0x1, NULL },
    { "getGeneration", NULL, "I", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "number_", NULL, 0x4, "I", NULL,  },
    { "generation_", NULL, 0x4, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfIndirectReference = { "PdfIndirectReference", "com.itextpdf.text.pdf", NULL, 0x1, 6, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfIndirectReference;
}

@end
