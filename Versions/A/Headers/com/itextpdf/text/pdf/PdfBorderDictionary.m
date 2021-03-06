//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfBorderDictionary.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfBorderDictionary.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfBorderDictionary.h"
#include "com/itextpdf/text/pdf/PdfDashPattern.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "java/lang/IllegalArgumentException.h"


#line 55
@implementation ComItextpdfTextPdfPdfBorderDictionary


#line 68
- (instancetype)initComItextpdfTextPdfPdfBorderDictionaryWithFloat:(jfloat)borderWidth
                                                           withInt:(jint)borderStyle
                              withComItextpdfTextPdfPdfDashPattern:(ComItextpdfTextPdfPdfDashPattern *)dashes {
  if (self = [super init]) {
    
#line 69
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_W_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:borderWidth]];
    
#line 70
    switch (borderStyle) {
      case ComItextpdfTextPdfPdfBorderDictionary_STYLE_SOLID:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_S_()];
      break;
      case ComItextpdfTextPdfPdfBorderDictionary_STYLE_DASHED:
      if (dashes != nil)
#line 76
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_D_() withComItextpdfTextPdfPdfObject:dashes];
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_D_()];
      break;
      case ComItextpdfTextPdfPdfBorderDictionary_STYLE_BEVELED:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_B_()];
      break;
      case ComItextpdfTextPdfPdfBorderDictionary_STYLE_INSET:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_I_()];
      break;
      case ComItextpdfTextPdfPdfBorderDictionary_STYLE_UNDERLINE:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_U_()];
      break;
      default:
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"invalid.border.style" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
  }
  return self;
}

- (instancetype)initWithFloat:(jfloat)borderWidth
                      withInt:(jint)borderStyle
withComItextpdfTextPdfPdfDashPattern:(ComItextpdfTextPdfPdfDashPattern *)dashes {
  return [self initComItextpdfTextPdfPdfBorderDictionaryWithFloat:
#line 68
borderWidth withInt:borderStyle withComItextpdfTextPdfPdfDashPattern:dashes];
}


#line 93
- (instancetype)initWithFloat:(jfloat)borderWidth
                      withInt:(jint)borderStyle {
  return
#line 94
  [self initComItextpdfTextPdfPdfBorderDictionaryWithFloat:borderWidth withInt:borderStyle withComItextpdfTextPdfPdfDashPattern:nil];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:withInt:withComItextpdfTextPdfPdfDashPattern:", "PdfBorderDictionary", NULL, 0x1, NULL },
    { "initWithFloat:withInt:", "PdfBorderDictionary", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "STYLE_SOLID_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfBorderDictionary_STYLE_SOLID },
    { "STYLE_DASHED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfBorderDictionary_STYLE_DASHED },
    { "STYLE_BEVELED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfBorderDictionary_STYLE_BEVELED },
    { "STYLE_INSET_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfBorderDictionary_STYLE_INSET },
    { "STYLE_UNDERLINE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfBorderDictionary_STYLE_UNDERLINE },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfBorderDictionary = { "PdfBorderDictionary", "com.itextpdf.text.pdf", NULL, 0x1, 2, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfBorderDictionary;
}

@end
