//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ListBody.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ListBody.java"

#include "com/itextpdf/text/AccessibleElementId.h"
#include "com/itextpdf/text/ListBody.h"
#include "com/itextpdf/text/ListItem.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "java/util/HashMap.h"


#line 53
@implementation ComItextpdfTextListBody


#line 60
- (instancetype)initWithComItextpdfTextListItem:(ComItextpdfTextListItem *)parentItem {
  if (self = [super init]) {
    role_ = ComItextpdfTextPdfPdfName_get_LBODY_();
    id__ =
#line 56
    nil;
    accessibleAttributes_ =
#line 57
    nil;
    parentItem_ =
#line 58
    nil;
    
#line 61
    self->parentItem_ = parentItem;
  }
  return self;
}


#line 64
- (ComItextpdfTextPdfPdfObject *)getAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key {
  
#line 65
  if (accessibleAttributes_ != nil)
#line 66
  return [accessibleAttributes_ getWithId:key];
  else
#line 68
  return nil;
}


#line 71
- (void)setAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value {
  
#line 72
  if (accessibleAttributes_ == nil)
#line 73
  accessibleAttributes_ = [[JavaUtilHashMap alloc] init];
  (void) [((JavaUtilHashMap *) nil_chk(accessibleAttributes_)) putWithId:key withId:value];
}


#line 77
- (JavaUtilHashMap *)getAccessibleAttributes {
  
#line 78
  return accessibleAttributes_;
}


#line 81
- (ComItextpdfTextPdfPdfName *)getRole {
  
#line 82
  return role_;
}


#line 85
- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role {
  
#line 86
  self->role_ = role;
}


#line 89
- (ComItextpdfTextAccessibleElementId *)getId {
  
#line 90
  if (id__ == nil)
#line 91
  id__ = [[ComItextpdfTextAccessibleElementId alloc] init];
  return id__;
}


#line 95
- (void)setIdWithComItextpdfTextAccessibleElementId:(ComItextpdfTextAccessibleElementId *)id_ {
  
#line 96
  self->id__ = id_;
}


#line 99
- (jboolean)isInline {
  
#line 100
  return NO;
}

- (void)copyAllFieldsTo:(ComItextpdfTextListBody *)other {
  [super copyAllFieldsTo:other];
  other->accessibleAttributes_ = accessibleAttributes_;
  other->id__ = id__;
  other->parentItem_ = parentItem_;
  other->role_ = role_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextListItem:", "ListBody", NULL, 0x4, NULL },
    { "getAccessibleAttributeWithComItextpdfTextPdfPdfName:", "getAccessibleAttribute", "Lcom.itextpdf.text.pdf.PdfObject;", 0x1, NULL },
    { "setAccessibleAttributeWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfObject:", "setAccessibleAttribute", "V", 0x1, NULL },
    { "getAccessibleAttributes", NULL, "Ljava.util.HashMap;", 0x1, NULL },
    { "getRole", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x1, NULL },
    { "setRoleWithComItextpdfTextPdfPdfName:", "setRole", "V", 0x1, NULL },
    { "getId", NULL, "Lcom.itextpdf.text.AccessibleElementId;", 0x1, NULL },
    { "setIdWithComItextpdfTextAccessibleElementId:", "setId", "V", 0x1, NULL },
    { "isInline", NULL, "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "role_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "id__", "id", 0x2, "Lcom.itextpdf.text.AccessibleElementId;", NULL,  },
    { "accessibleAttributes_", NULL, 0x4, "Ljava.util.HashMap;", NULL,  },
    { "parentItem_", NULL, 0x4, "Lcom.itextpdf.text.ListItem;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextListBody = { "ListBody", "com.itextpdf.text", NULL, 0x1, 9, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextListBody;
}

@end