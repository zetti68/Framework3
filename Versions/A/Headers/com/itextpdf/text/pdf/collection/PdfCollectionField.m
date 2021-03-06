//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfCollectionField.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfCollectionField.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfBoolean.h"
#include "com/itextpdf/text/pdf/PdfDate.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/collection/PdfCollectionField.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Calendar.h"


#line 60
@implementation ComItextpdfTextPdfCollectionPdfCollectionField


#line 89
- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)type {
  if (self =
#line 90
  [super initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_COLLECTIONFIELD_()]) {
    
#line 91
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_N_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:name withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
    
#line 92
    self->fieldType_ = type;
    
#line 93
    switch (type) {
      default:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_S_()];
      break;
      case ComItextpdfTextPdfCollectionPdfCollectionField_DATE:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_D_()];
      break;
      case ComItextpdfTextPdfCollectionPdfCollectionField_NUMBER:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_N_()];
      break;
      case ComItextpdfTextPdfCollectionPdfCollectionField_FILENAME:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_F_()];
      break;
      case ComItextpdfTextPdfCollectionPdfCollectionField_DESC:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_DESC_()];
      break;
      case ComItextpdfTextPdfCollectionPdfCollectionField_MODDATE:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_MODDATE_()];
      break;
      case ComItextpdfTextPdfCollectionPdfCollectionField_CREATIONDATE:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_CREATIONDATE_()];
      break;
      case ComItextpdfTextPdfCollectionPdfCollectionField_SIZE:
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_SIZE_()];
      break;
    }
  }
  return self;
}


#line 125
- (void)setOrderWithInt:(jint)i {
  
#line 126
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_O_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:i]];
}


#line 133
- (void)setVisibleWithBoolean:(jboolean)visible {
  
#line 134
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_V_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfBoolean alloc] initWithBoolean:visible]];
}


#line 141
- (void)setEditableWithBoolean:(jboolean)editable {
  
#line 142
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_E_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfBoolean alloc] initWithBoolean:editable]];
}


#line 148
- (jboolean)isCollectionItem {
  
#line 149
  switch (fieldType_) {
    case ComItextpdfTextPdfCollectionPdfCollectionField_TEXT:
    case ComItextpdfTextPdfCollectionPdfCollectionField_DATE:
    case ComItextpdfTextPdfCollectionPdfCollectionField_NUMBER:
    return YES;
    default:
    return NO;
  }
}


#line 163
- (ComItextpdfTextPdfPdfObject *)getValueWithNSString:(NSString *)v {
  
#line 164
  switch (fieldType_) {
    case ComItextpdfTextPdfCollectionPdfCollectionField_TEXT:
    return [[ComItextpdfTextPdfPdfString alloc] initWithNSString:v withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()];
    case ComItextpdfTextPdfCollectionPdfCollectionField_DATE:
    return [[ComItextpdfTextPdfPdfDate alloc] initWithJavaUtilCalendar:[ComItextpdfTextPdfPdfDate decodeWithNSString:v]];
    case ComItextpdfTextPdfCollectionPdfCollectionField_NUMBER:
    return [[ComItextpdfTextPdfPdfNumber alloc] initWithNSString:v];
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.is.not.an.acceptable.value.for.the.field.2" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ v, [((ComItextpdfTextPdfPdfObject *) nil_chk([self getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_N_()])) description] } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCollectionPdfCollectionField *)other {
  [super copyAllFieldsTo:other];
  other->fieldType_ = fieldType_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:", "PdfCollectionField", NULL, 0x1, NULL },
    { "setOrderWithInt:", "setOrder", "V", 0x1, NULL },
    { "setVisibleWithBoolean:", "setVisible", "V", 0x1, NULL },
    { "setEditableWithBoolean:", "setEditable", "V", 0x1, NULL },
    { "isCollectionItem", NULL, "Z", 0x1, NULL },
    { "getValueWithNSString:", "getValue", "Lcom.itextpdf.text.pdf.PdfObject;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TEXT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCollectionPdfCollectionField_TEXT },
    { "DATE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCollectionPdfCollectionField_DATE },
    { "NUMBER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCollectionPdfCollectionField_NUMBER },
    { "FILENAME_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCollectionPdfCollectionField_FILENAME },
    { "DESC_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCollectionPdfCollectionField_DESC },
    { "MODDATE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCollectionPdfCollectionField_MODDATE },
    { "CREATIONDATE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCollectionPdfCollectionField_CREATIONDATE },
    { "SIZE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCollectionPdfCollectionField_SIZE },
    { "fieldType_", NULL, 0x4, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCollectionPdfCollectionField = { "PdfCollectionField", "com.itextpdf.text.pdf.collection", NULL, 0x1, 6, methods, 9, fields, 0, NULL};
  return &_ComItextpdfTextPdfCollectionPdfCollectionField;
}

@end
