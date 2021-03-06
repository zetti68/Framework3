//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/otf/TableHeader.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/otf/TableHeader.java"

#include "com/itextpdf/text/pdf/fonts/otf/TableHeader.h"


#line 51
@implementation ComItextpdfTextPdfFontsOtfTableHeader


#line 58
- (instancetype)initWithInt:(jint)version_
                    withInt:(jint)scriptListOffset
                    withInt:(jint)featureListOffset
                    withInt:(jint)lookupListOffset {
  if (self = [super init]) {
    
#line 59
    self->version__ = version_;
    
#line 60
    self->scriptListOffset_ = scriptListOffset;
    
#line 61
    self->featureListOffset_ = featureListOffset;
    
#line 62
    self->lookupListOffset_ = lookupListOffset;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsOtfTableHeader *)other {
  [super copyAllFieldsTo:other];
  other->featureListOffset_ = featureListOffset_;
  other->lookupListOffset_ = lookupListOffset_;
  other->scriptListOffset_ = scriptListOffset_;
  other->version__ = version__;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withInt:withInt:", "TableHeader", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "version__", "version", 0x1, "I", NULL,  },
    { "scriptListOffset_", NULL, 0x1, "I", NULL,  },
    { "featureListOffset_", NULL, 0x1, "I", NULL,  },
    { "lookupListOffset_", NULL, 0x1, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsOtfTableHeader = { "TableHeader", "com.itextpdf.text.pdf.fonts.otf", NULL, 0x1, 1, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfFontsOtfTableHeader;
}

@end
