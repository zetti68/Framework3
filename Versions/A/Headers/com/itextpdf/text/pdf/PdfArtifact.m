//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfArtifact.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfArtifact.java"

#include "com/itextpdf/text/AccessibleElementId.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfArtifact.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "java/util/HashMap.h"


#line 52
@implementation ComItextpdfTextPdfPdfArtifact


#line 58
- (ComItextpdfTextPdfPdfObject *)getAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key {
  
#line 59
  if (accessibleAttributes_ != nil)
#line 60
  return [accessibleAttributes_ getWithId:key];
  else
#line 62
  return nil;
}


#line 65
- (void)setAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value {
  
#line 66
  if (accessibleAttributes_ == nil)
#line 67
  accessibleAttributes_ = [[JavaUtilHashMap alloc] init];
  (void) [((JavaUtilHashMap *) nil_chk(accessibleAttributes_)) putWithId:key withId:value];
}


#line 71
- (JavaUtilHashMap *)getAccessibleAttributes {
  
#line 72
  return accessibleAttributes_;
}


#line 75
- (ComItextpdfTextPdfPdfName *)getRole {
  
#line 76
  return role_;
}


#line 79
- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role {
}

- (ComItextpdfTextAccessibleElementId *)getId {
  
#line 83
  return id__;
}


#line 86
- (void)setIdWithComItextpdfTextAccessibleElementId:(ComItextpdfTextAccessibleElementId *)id_ {
  
#line 87
  self->id__ = id_;
}


#line 90
- (jboolean)isInline {
  
#line 91
  return YES;
}


#line 94
- (ComItextpdfTextPdfPdfString *)getType {
  
#line 95
  return accessibleAttributes_ == nil ? nil : (ComItextpdfTextPdfPdfString *) check_class_cast([accessibleAttributes_ getWithId:ComItextpdfTextPdfPdfName_get_TYPE_()], [ComItextpdfTextPdfPdfString class]);
}


#line 98
- (void)setTypeWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)type {
  
#line 99
  [self setAccessibleAttributeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_TYPE_() withComItextpdfTextPdfPdfObject:type];
}


#line 102
- (ComItextpdfTextPdfPdfArray *)getBBox {
  
#line 103
  return accessibleAttributes_ == nil ? nil : (ComItextpdfTextPdfPdfArray *) check_class_cast([accessibleAttributes_ getWithId:ComItextpdfTextPdfPdfName_get_BBOX_()], [ComItextpdfTextPdfPdfArray class]);
}


#line 106
- (void)setBBoxWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)bbox {
  
#line 107
  [self setAccessibleAttributeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_BBOX_() withComItextpdfTextPdfPdfObject:bbox];
}


#line 110
- (ComItextpdfTextPdfPdfArray *)getAttached {
  
#line 111
  return accessibleAttributes_ == nil ? nil : (ComItextpdfTextPdfPdfArray *) check_class_cast([accessibleAttributes_ getWithId:ComItextpdfTextPdfPdfName_get_ATTACHED_()], [ComItextpdfTextPdfPdfArray class]);
}


#line 114
- (void)setAttachedWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)attached {
  
#line 115
  [self setAccessibleAttributeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ATTACHED_() withComItextpdfTextPdfPdfObject:attached];
}

- (instancetype)init {
  if (self = [super init]) {
    role_ = ComItextpdfTextPdfPdfName_get_ARTIFACT_();
    accessibleAttributes_ =
#line 55
    nil;
    id__ =
#line 56
    [[ComItextpdfTextAccessibleElementId alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfArtifact *)other {
  [super copyAllFieldsTo:other];
  other->accessibleAttributes_ = accessibleAttributes_;
  other->id__ = id__;
  other->role_ = role_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getAccessibleAttributeWithComItextpdfTextPdfPdfName:", "getAccessibleAttribute", "Lcom.itextpdf.text.pdf.PdfObject;", 0x1, NULL },
    { "setAccessibleAttributeWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfObject:", "setAccessibleAttribute", "V", 0x1, NULL },
    { "getAccessibleAttributes", NULL, "Ljava.util.HashMap;", 0x1, NULL },
    { "getRole", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x1, NULL },
    { "setRoleWithComItextpdfTextPdfPdfName:", "setRole", "V", 0x1, NULL },
    { "getId", NULL, "Lcom.itextpdf.text.AccessibleElementId;", 0x1, NULL },
    { "setIdWithComItextpdfTextAccessibleElementId:", "setId", "V", 0x1, NULL },
    { "isInline", NULL, "Z", 0x1, NULL },
    { "getType", NULL, "Lcom.itextpdf.text.pdf.PdfString;", 0x1, NULL },
    { "setTypeWithComItextpdfTextPdfPdfString:", "setType", "V", 0x1, NULL },
    { "getBBox", NULL, "Lcom.itextpdf.text.pdf.PdfArray;", 0x1, NULL },
    { "setBBoxWithComItextpdfTextPdfPdfArray:", "setBBox", "V", 0x1, NULL },
    { "getAttached", NULL, "Lcom.itextpdf.text.pdf.PdfArray;", 0x1, NULL },
    { "setAttachedWithComItextpdfTextPdfPdfArray:", "setAttached", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "role_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "accessibleAttributes_", NULL, 0x4, "Ljava.util.HashMap;", NULL,  },
    { "id__", "id", 0x4, "Lcom.itextpdf.text.AccessibleElementId;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfArtifact = { "PdfArtifact", "com.itextpdf.text.pdf", NULL, 0x1, 15, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfArtifact;
}

@end