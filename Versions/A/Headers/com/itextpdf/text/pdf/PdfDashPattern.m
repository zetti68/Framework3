//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfDashPattern.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfDashPattern.java"

#include "IOSClass.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfDashPattern.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"


#line 57
@implementation ComItextpdfTextPdfPdfDashPattern


#line 76
- (instancetype)init {
  if (self =
#line 77
  [super init]) {
    dash_ =
#line 62
    -1;
    gap_ =
#line 65
    -1;
    phase_ =
#line 68
    -1;
  }
  return self;
}


#line 84
- (instancetype)initWithFloat:(jfloat)dash {
  if (self =
#line 85
  [super initWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:dash]]) {
    dash_ =
#line 62
    -1;
    gap_ =
#line 65
    -1;
    phase_ =
#line 68
    -1;
    
#line 86
    self->dash_ = dash;
  }
  return self;
}


#line 93
- (instancetype)initWithFloat:(jfloat)dash
                    withFloat:(jfloat)gap {
  if (self =
#line 94
  [super initWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:dash]]) {
    dash_ =
#line 62
    -1;
    gap_ =
#line 65
    -1;
    phase_ =
#line 68
    -1;
    
#line 95
    [self addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:gap]];
    
#line 96
    self->dash_ = dash;
    
#line 97
    self->gap_ = gap;
  }
  return self;
}


#line 104
- (instancetype)initWithFloat:(jfloat)dash
                    withFloat:(jfloat)gap
                    withFloat:(jfloat)phase {
  if (self =
#line 105
  [super initWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:dash]]) {
    dash_ =
#line 62
    -1;
    gap_ =
#line 65
    -1;
    phase_ =
#line 68
    -1;
    
#line 106
    [self addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:gap]];
    
#line 107
    self->dash_ = dash;
    
#line 108
    self->gap_ = gap;
    
#line 109
    self->phase_ = phase;
  }
  return self;
}


#line 112
- (void)addWithFloat:(jfloat)n {
  
#line 113
  [self addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:n]];
}


#line 120
- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os {
  
#line 121
  [((JavaIoOutputStream *) nil_chk(os)) writeWithInt:'['];
  
#line 123
  if (dash_ >= 0) {
    [((ComItextpdfTextPdfPdfNumber *) [[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:dash_]) toPdfWithComItextpdfTextPdfPdfWriter:writer withJavaIoOutputStream:os];
    if (gap_ >= 0) {
      [os writeWithInt:' '];
      [((ComItextpdfTextPdfPdfNumber *) [[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:gap_]) toPdfWithComItextpdfTextPdfPdfWriter:writer withJavaIoOutputStream:os];
    }
  }
  [os writeWithInt:']'];
  if (phase_ >= 0) {
    [os writeWithInt:' '];
    [((ComItextpdfTextPdfPdfNumber *) [[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:phase_]) toPdfWithComItextpdfTextPdfPdfWriter:writer withJavaIoOutputStream:os];
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfDashPattern *)other {
  [super copyAllFieldsTo:other];
  other->dash_ = dash_;
  other->gap_ = gap_;
  other->phase_ = phase_;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PdfDashPattern", NULL, 0x1, NULL },
    { "initWithFloat:", "PdfDashPattern", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:", "PdfDashPattern", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:withFloat:", "PdfDashPattern", NULL, 0x1, NULL },
    { "addWithFloat:", "add", "V", 0x1, NULL },
    { "toPdfWithComItextpdfTextPdfPdfWriter:withJavaIoOutputStream:", "toPdf", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "dash_", NULL, 0x2, "F", NULL,  },
    { "gap_", NULL, 0x2, "F", NULL,  },
    { "phase_", NULL, 0x2, "F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfDashPattern = { "PdfDashPattern", "com.itextpdf.text.pdf", NULL, 0x1, 6, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfDashPattern;
}

@end
