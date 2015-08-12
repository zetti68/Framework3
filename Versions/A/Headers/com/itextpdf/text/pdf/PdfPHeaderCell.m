//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPHeaderCell.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPHeaderCell.java"

#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfPHeaderCell.h"


#line 54
@implementation ComItextpdfTextPdfPdfPHeaderCell


#line 73
- (instancetype)init {
  if (self =
#line 74
  [super init]) {
    scope_ =
#line 71
    ComItextpdfTextPdfPdfPHeaderCell_NONE;
    name_ =
#line 85
    nil;
    
#line 75
    role_ = ComItextpdfTextPdfPdfName_get_TH_();
  }
  return self;
}


#line 78
- (instancetype)initWithComItextpdfTextPdfPdfPHeaderCell:(ComItextpdfTextPdfPdfPHeaderCell *)headerCell {
  if (self =
#line 79
  [super initWithComItextpdfTextPdfPdfPCell:headerCell]) {
    scope_ =
#line 71
    ComItextpdfTextPdfPdfPHeaderCell_NONE;
    name_ =
#line 85
    nil;
    
#line 80
    role_ = ((ComItextpdfTextPdfPdfPHeaderCell *) nil_chk(headerCell))->role_;
    
#line 81
    scope_ = headerCell->scope_;
    
#line 82
    name_ = [headerCell getName];
  }
  return self;
}


#line 87
- (void)setNameWithNSString:(NSString *)name {
  
#line 88
  self->name_ = name;
}


#line 91
- (NSString *)getName {
  
#line 92
  return name_;
}


#line 95
- (ComItextpdfTextPdfPdfName *)getRole {
  
#line 96
  return role_;
}


#line 99
- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role {
  
#line 100
  self->role_ = role;
}


#line 103
- (void)setScopeWithInt:(jint)scope {
  
#line 104
  self->scope_ = scope;
}


#line 107
- (jint)getScope {
  
#line 108
  return scope_;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfPHeaderCell *)other {
  [super copyAllFieldsTo:other];
  other->name_ = name_;
  other->scope_ = scope_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PdfPHeaderCell", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfPdfPHeaderCell:", "PdfPHeaderCell", NULL, 0x1, NULL },
    { "setNameWithNSString:", "setName", "V", 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getRole", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x1, NULL },
    { "setRoleWithComItextpdfTextPdfPdfName:", "setRole", "V", 0x1, NULL },
    { "setScopeWithInt:", "setScope", "V", 0x1, NULL },
    { "getScope", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NONE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPHeaderCell_NONE },
    { "ROW_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPHeaderCell_ROW },
    { "COLUMN_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPHeaderCell_COLUMN },
    { "BOTH_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPHeaderCell_BOTH },
    { "scope_", NULL, 0x4, "I", NULL,  },
    { "name_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfPHeaderCell = { "PdfPHeaderCell", "com.itextpdf.text.pdf", NULL, 0x1, 8, methods, 6, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfPHeaderCell;
}

@end
