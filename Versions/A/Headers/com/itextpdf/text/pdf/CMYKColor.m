//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/CMYKColor.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/CMYKColor.java"

#include "com/itextpdf/text/pdf/CMYKColor.h"
#include "com/itextpdf/text/pdf/ExtendedColor.h"
#include "java/lang/Float.h"


#line 51
@implementation ComItextpdfTextPdfCMYKColor


#line 66
- (instancetype)initWithInt:(jint)intCyan
                    withInt:(jint)intMagenta
                    withInt:(jint)intYellow
                    withInt:(jint)intBlack {
  return
#line 67
  [self initComItextpdfTextPdfCMYKColorWithFloat:intCyan / 255.0f withFloat:intMagenta / 255.0f withFloat:intYellow / 255.0f withFloat:intBlack / 255.0f];
}


#line 77
- (instancetype)initComItextpdfTextPdfCMYKColorWithFloat:(jfloat)floatCyan
                                               withFloat:(jfloat)floatMagenta
                                               withFloat:(jfloat)floatYellow
                                               withFloat:(jfloat)floatBlack {
  if (self =
#line 78
  [super initWithInt:ComItextpdfTextPdfExtendedColor_TYPE_CMYK withFloat:1.0f - floatCyan - floatBlack withFloat:1.0f - floatMagenta - floatBlack withFloat:1.0f - floatYellow - floatBlack]) {
    
#line 79
    cyan_ = [ComItextpdfTextPdfExtendedColor normalizeWithFloat:floatCyan];
    
#line 80
    magenta_ = [ComItextpdfTextPdfExtendedColor normalizeWithFloat:floatMagenta];
    
#line 81
    yellow_ = [ComItextpdfTextPdfExtendedColor normalizeWithFloat:floatYellow];
    
#line 82
    black_ = [ComItextpdfTextPdfExtendedColor normalizeWithFloat:floatBlack];
  }
  return self;
}

- (instancetype)initWithFloat:(jfloat)floatCyan
                    withFloat:(jfloat)floatMagenta
                    withFloat:(jfloat)floatYellow
                    withFloat:(jfloat)floatBlack {
  return [self initComItextpdfTextPdfCMYKColorWithFloat:
#line 77
floatCyan withFloat:floatMagenta withFloat:floatYellow withFloat:floatBlack];
}


#line 88
- (jfloat)getCyan {
  
#line 89
  return cyan_;
}


#line 95
- (jfloat)getMagenta {
  
#line 96
  return magenta_;
}


#line 102
- (jfloat)getYellow {
  
#line 103
  return yellow_;
}


#line 109
- (jfloat)getBlack {
  
#line 110
  return black_;
}

- (jboolean)isEqual:(id)obj {
  
#line 114
  if (!([obj isKindOfClass:[ComItextpdfTextPdfCMYKColor class]]))
#line 115
  return NO;
  ComItextpdfTextPdfCMYKColor *c2 = (ComItextpdfTextPdfCMYKColor *) check_class_cast(obj, [ComItextpdfTextPdfCMYKColor class]);
  return (cyan_ == ((ComItextpdfTextPdfCMYKColor *) nil_chk(c2))->cyan_ && magenta_ == c2->magenta_ && yellow_ == c2->yellow_ && black_ == c2->black_);
}

- (NSUInteger)hash {
  
#line 121
  return [JavaLangFloat floatToIntBitsWithFloat:cyan_] ^ [JavaLangFloat floatToIntBitsWithFloat:magenta_] ^ [JavaLangFloat floatToIntBitsWithFloat:yellow_] ^ [JavaLangFloat floatToIntBitsWithFloat:black_];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCMYKColor *)other {
  [super copyAllFieldsTo:other];
  other->black_ = black_;
  other->cyan_ = cyan_;
  other->magenta_ = magenta_;
  other->yellow_ = yellow_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withInt:withInt:", "CMYKColor", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:withFloat:withFloat:", "CMYKColor", NULL, 0x1, NULL },
    { "getCyan", NULL, "F", 0x1, NULL },
    { "getMagenta", NULL, "F", 0x1, NULL },
    { "getYellow", NULL, "F", 0x1, NULL },
    { "getBlack", NULL, "F", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextPdfCMYKColor_serialVersionUID },
    { "cyan_", NULL, 0x0, "F", NULL,  },
    { "magenta_", NULL, 0x0, "F", NULL,  },
    { "yellow_", NULL, 0x0, "F", NULL,  },
    { "black_", NULL, 0x0, "F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCMYKColor = { "CMYKColor", "com.itextpdf.text.pdf", NULL, 0x1, 8, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfCMYKColor;
}

@end
