//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CMapSequence.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CMapSequence.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/CMapSequence.h"


#line 47
@implementation ComItextpdfTextPdfFontsCmapsCMapSequence


#line 52
- (instancetype)init {
  return [super init];
}


#line 55
- (instancetype)initWithByteArray:(IOSByteArray *)seq
                          withInt:(jint)off
                          withInt:(jint)len {
  if (self = [super init]) {
    
#line 56
    self->seq_ = seq;
    
#line 57
    self->off_ = off;
    
#line 58
    self->len_ = len;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsCmapsCMapSequence *)other {
  [super copyAllFieldsTo:other];
  other->len_ = len_;
  other->off_ = off_;
  other->seq_ = seq_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CMapSequence", NULL, 0x1, NULL },
    { "initWithByteArray:withInt:withInt:", "CMapSequence", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "seq_", NULL, 0x1, "[B", NULL,  },
    { "off_", NULL, 0x1, "I", NULL,  },
    { "len_", NULL, 0x1, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsCmapsCMapSequence = { "CMapSequence", "com.itextpdf.text.pdf.fonts.cmaps", NULL, 0x1, 2, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfFontsCmapsCMapSequence;
}

@end
