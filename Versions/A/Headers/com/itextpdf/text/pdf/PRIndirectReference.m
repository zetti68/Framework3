//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PRIndirectReference.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PRIndirectReference.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/PRIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfEncodings.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/lang/StringBuffer.h"


#line 49
@implementation ComItextpdfTextPdfPRIndirectReference


#line 64
- (instancetype)initComItextpdfTextPdfPRIndirectReferenceWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                                                                 withInt:(jint)number
                                                                                 withInt:(jint)generation {
  if (self = [super init]) {
    
#line 65
    type__ = ComItextpdfTextPdfPdfObject_INDIRECT;
    
#line 66
    self->number_ = number;
    
#line 67
    self->generation_ = generation;
    
#line 68
    self->reader_ = reader;
  }
  return self;
}

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                            withInt:(jint)number
                                            withInt:(jint)generation {
  return [self initComItextpdfTextPdfPRIndirectReferenceWithComItextpdfTextPdfPdfReader:
#line 64
reader withInt:number withInt:generation];
}


#line 78
- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                            withInt:(jint)number {
  return
#line 79
  [self initComItextpdfTextPdfPRIndirectReferenceWithComItextpdfTextPdfPdfReader:reader withInt:number withInt:0];
}


#line 84
- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os {
  jint n = [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) getNewObjectNumberWithComItextpdfTextPdfPdfReader:reader_ withInt:number_ withInt:generation_];
  [((JavaIoOutputStream *) nil_chk(os)) writeWithByteArray:[ComItextpdfTextPdfPdfEncodings convertToBytesWithNSString:[((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) [[JavaLangStringBuffer alloc] init]) appendWithInt:n])) appendWithNSString:@" "])) appendWithInt:[((ComItextpdfTextPdfPdfReader *) nil_chk(reader_)) isAppendable] ? generation_ : 0])) appendWithNSString:@" R"])) description] withNSString:nil]];
}


#line 89
- (ComItextpdfTextPdfPdfReader *)getReader {
  return reader_;
}

- (void)setNumberWithInt:(jint)number
                 withInt:(jint)generation {
  
#line 94
  self->number_ = number;
  self->generation_ = generation;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPRIndirectReference *)other {
  [super copyAllFieldsTo:other];
  other->reader_ = reader_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPdfReader:withInt:withInt:", "PRIndirectReference", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfPdfReader:withInt:", "PRIndirectReference", NULL, 0x1, NULL },
    { "toPdfWithComItextpdfTextPdfPdfWriter:withJavaIoOutputStream:", "toPdf", "V", 0x1, "Ljava.io.IOException;" },
    { "getReader", NULL, "Lcom.itextpdf.text.pdf.PdfReader;", 0x1, NULL },
    { "setNumberWithInt:withInt:", "setNumber", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfReader;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPRIndirectReference = { "PRIndirectReference", "com.itextpdf.text.pdf", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfPRIndirectReference;
}

@end
