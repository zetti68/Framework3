//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/MarkedContentInfo.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/MarkedContentInfo.java"

#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/parser/MarkedContentInfo.h"
#include "java/lang/IllegalStateException.h"


#line 55
@implementation ComItextpdfTextPdfParserMarkedContentInfo


#line 59
- (instancetype)initWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)tag
              withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dictionary {
  if (self = [super init]) {
    
#line 60
    self->tag_ = tag;
    
#line 61
    self->dictionary_ = dictionary != nil ? dictionary : [[ComItextpdfTextPdfPdfDictionary alloc] init];
  }
  return self;
}


#line 68
- (ComItextpdfTextPdfPdfName *)getTag {
  
#line 69
  return tag_;
}


#line 76
- (jboolean)hasMcid {
  
#line 77
  return [((ComItextpdfTextPdfPdfDictionary *) nil_chk(dictionary_)) containsWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_MCID_()];
}


#line 86
- (jint)getMcid {
  
#line 87
  ComItextpdfTextPdfPdfNumber *id_ = [((ComItextpdfTextPdfPdfDictionary *) nil_chk(dictionary_)) getAsNumberWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_MCID_()];
  if (id_ == nil)
#line 89
  @throw [[JavaLangIllegalStateException alloc] initWithNSString:@"MarkedContentInfo does not contain MCID"];
  
#line 91
  return [((ComItextpdfTextPdfPdfNumber *) nil_chk(id_)) intValue];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserMarkedContentInfo *)other {
  [super copyAllFieldsTo:other];
  other->dictionary_ = dictionary_;
  other->tag_ = tag_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfDictionary:", "MarkedContentInfo", NULL, 0x1, NULL },
    { "getTag", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x1, NULL },
    { "hasMcid", NULL, "Z", 0x1, NULL },
    { "getMcid", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "tag_", NULL, 0x12, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "dictionary_", NULL, 0x12, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserMarkedContentInfo = { "MarkedContentInfo", "com.itextpdf.text.pdf.parser", NULL, 0x1, 4, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfParserMarkedContentInfo;
}

@end
