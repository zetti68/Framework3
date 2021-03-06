//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfLiteral.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfLiteral.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/OutputStreamCounter.h"
#include "com/itextpdf/text/pdf/PdfLiteral.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/util/Arrays.h"


#line 51
@implementation ComItextpdfTextPdfPdfLiteral


#line 58
- (instancetype)initWithNSString:(NSString *)text {
  return
#line 59
  [super initWithInt:0 withNSString:text];
}


#line 62
- (instancetype)initWithByteArray:(IOSByteArray *)b {
  return [super initWithInt:0 withByteArray:b];
}

- (instancetype)initWithInt:(jint)size {
  if (self =
#line 67
  [super initWithInt:0 withByteArray:(IOSByteArray *) check_class_cast(nil, [IOSByteArray class])]) {
    
#line 68
    bytes_ = [IOSByteArray arrayWithLength:size];
    
#line 69
    [JavaUtilArrays fillWithByteArray:bytes_ withByte:(jbyte) 32];
  }
  return self;
}


#line 72
- (instancetype)initWithInt:(jint)type
               withNSString:(NSString *)text {
  return
#line 73
  [super initWithInt:type withNSString:text];
}


#line 76
- (instancetype)initWithInt:(jint)type
              withByteArray:(IOSByteArray *)b {
  return
#line 77
  [super initWithInt:type withByteArray:b];
}


#line 80
- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os {
  
#line 81
  if ([os isKindOfClass:[ComItextpdfTextPdfOutputStreamCounter class]])
#line 82
  position_ = [((ComItextpdfTextPdfOutputStreamCounter *) nil_chk(((ComItextpdfTextPdfOutputStreamCounter *) check_class_cast(os, [ComItextpdfTextPdfOutputStreamCounter class])))) getCounter];
  [super toPdfWithComItextpdfTextPdfPdfWriter:writer withJavaIoOutputStream:os];
}

- (jlong)getPosition {
  
#line 91
  return self->position_;
}


#line 98
- (jint)getPosLength {
  
#line 99
  if (bytes_ != nil)
#line 100
  return bytes_->size_;
  else
#line 102
  return 0;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfLiteral *)other {
  [super copyAllFieldsTo:other];
  other->position_ = position_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "PdfLiteral", NULL, 0x1, NULL },
    { "initWithByteArray:", "PdfLiteral", NULL, 0x1, NULL },
    { "initWithInt:", "PdfLiteral", NULL, 0x1, NULL },
    { "initWithInt:withNSString:", "PdfLiteral", NULL, 0x1, NULL },
    { "initWithInt:withByteArray:", "PdfLiteral", NULL, 0x1, NULL },
    { "toPdfWithComItextpdfTextPdfPdfWriter:withJavaIoOutputStream:", "toPdf", "V", 0x1, "Ljava.io.IOException;" },
    { "getPosition", NULL, "J", 0x1, NULL },
    { "getPosLength", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "position_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfLiteral = { "PdfLiteral", "com.itextpdf.text.pdf", NULL, 0x1, 8, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfLiteral;
}

@end
