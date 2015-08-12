//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfCollectionItem.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfCollectionItem.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfDate.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/collection/PdfCollectionField.h"
#include "com/itextpdf/text/pdf/collection/PdfCollectionItem.h"
#include "com/itextpdf/text/pdf/collection/PdfCollectionSchema.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Calendar.h"


#line 57
@implementation ComItextpdfTextPdfCollectionPdfCollectionItem


#line 65
- (instancetype)initWithComItextpdfTextPdfCollectionPdfCollectionSchema:(ComItextpdfTextPdfCollectionPdfCollectionSchema *)schema {
  if (self =
#line 66
  [super initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_COLLECTIONITEM_()]) {
    
#line 67
    self->schema_ = schema;
  }
  return self;
}


#line 74
- (void)addItemWithNSString:(NSString *)key
               withNSString:(NSString *)value {
  
#line 75
  ComItextpdfTextPdfPdfName *fieldname = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:key];
  ComItextpdfTextPdfCollectionPdfCollectionField *field = (ComItextpdfTextPdfCollectionPdfCollectionField *) check_class_cast([((ComItextpdfTextPdfCollectionPdfCollectionSchema *) nil_chk(schema_)) getWithComItextpdfTextPdfPdfName:fieldname], [ComItextpdfTextPdfCollectionPdfCollectionField class]);
  [self putWithComItextpdfTextPdfPdfName:fieldname withComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfCollectionPdfCollectionField *) nil_chk(field)) getValueWithNSString:value]];
}


#line 84
- (void)addItemWithNSString:(NSString *)key
withComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)value {
  
#line 85
  ComItextpdfTextPdfPdfName *fieldname = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:key];
  ComItextpdfTextPdfCollectionPdfCollectionField *field = (ComItextpdfTextPdfCollectionPdfCollectionField *) check_class_cast([((ComItextpdfTextPdfCollectionPdfCollectionSchema *) nil_chk(schema_)) getWithComItextpdfTextPdfPdfName:fieldname], [ComItextpdfTextPdfCollectionPdfCollectionField class]);
  if (((ComItextpdfTextPdfCollectionPdfCollectionField *) nil_chk(field))->fieldType_ == ComItextpdfTextPdfCollectionPdfCollectionField_TEXT) {
    [self putWithComItextpdfTextPdfPdfName:fieldname withComItextpdfTextPdfPdfObject:value];
  }
}


#line 96
- (void)addItemWithNSString:(NSString *)key
withComItextpdfTextPdfPdfDate:(ComItextpdfTextPdfPdfDate *)d {
  
#line 97
  ComItextpdfTextPdfPdfName *fieldname = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:key];
  ComItextpdfTextPdfCollectionPdfCollectionField *field = (ComItextpdfTextPdfCollectionPdfCollectionField *) check_class_cast([((ComItextpdfTextPdfCollectionPdfCollectionSchema *) nil_chk(schema_)) getWithComItextpdfTextPdfPdfName:fieldname], [ComItextpdfTextPdfCollectionPdfCollectionField class]);
  if (((ComItextpdfTextPdfCollectionPdfCollectionField *) nil_chk(field))->fieldType_ == ComItextpdfTextPdfCollectionPdfCollectionField_DATE) {
    [self putWithComItextpdfTextPdfPdfName:fieldname withComItextpdfTextPdfPdfObject:d];
  }
}


#line 108
- (void)addItemWithNSString:(NSString *)key
withComItextpdfTextPdfPdfNumber:(ComItextpdfTextPdfPdfNumber *)n {
  
#line 109
  ComItextpdfTextPdfPdfName *fieldname = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:key];
  ComItextpdfTextPdfCollectionPdfCollectionField *field = (ComItextpdfTextPdfCollectionPdfCollectionField *) check_class_cast([((ComItextpdfTextPdfCollectionPdfCollectionSchema *) nil_chk(schema_)) getWithComItextpdfTextPdfPdfName:fieldname], [ComItextpdfTextPdfCollectionPdfCollectionField class]);
  if (((ComItextpdfTextPdfCollectionPdfCollectionField *) nil_chk(field))->fieldType_ == ComItextpdfTextPdfCollectionPdfCollectionField_NUMBER) {
    [self putWithComItextpdfTextPdfPdfName:fieldname withComItextpdfTextPdfPdfObject:n];
  }
}


#line 120
- (void)addItemWithNSString:(NSString *)key
       withJavaUtilCalendar:(JavaUtilCalendar *)c {
  
#line 121
  [self addItemWithNSString:key withComItextpdfTextPdfPdfDate:[[ComItextpdfTextPdfPdfDate alloc] initWithJavaUtilCalendar:c]];
}


#line 128
- (void)addItemWithNSString:(NSString *)key
                    withInt:(jint)i {
  
#line 129
  [self addItemWithNSString:key withComItextpdfTextPdfPdfNumber:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:i]];
}


#line 136
- (void)addItemWithNSString:(NSString *)key
                  withFloat:(jfloat)f {
  
#line 137
  [self addItemWithNSString:key withComItextpdfTextPdfPdfNumber:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:f]];
}


#line 144
- (void)addItemWithNSString:(NSString *)key
                 withDouble:(jdouble)d {
  
#line 145
  [self addItemWithNSString:key withComItextpdfTextPdfPdfNumber:[[ComItextpdfTextPdfPdfNumber alloc] initWithDouble:d]];
}


#line 153
- (void)setPrefixWithNSString:(NSString *)key
                 withNSString:(NSString *)prefix {
  
#line 154
  ComItextpdfTextPdfPdfName *fieldname = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:key];
  ComItextpdfTextPdfPdfObject *o = [self getWithComItextpdfTextPdfPdfName:fieldname];
  if (o == nil)
#line 157
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"you.must.set.a.value.before.adding.a.prefix" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  ComItextpdfTextPdfPdfDictionary *dict = [[ComItextpdfTextPdfPdfDictionary alloc] initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_COLLECTIONSUBITEM_()];
  [dict putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_D_() withComItextpdfTextPdfPdfObject:o];
  [dict putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_P_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:prefix withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
  [self putWithComItextpdfTextPdfPdfName:fieldname withComItextpdfTextPdfPdfObject:dict];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCollectionPdfCollectionItem *)other {
  [super copyAllFieldsTo:other];
  other->schema_ = schema_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfCollectionPdfCollectionSchema:", "PdfCollectionItem", NULL, 0x1, NULL },
    { "addItemWithNSString:withNSString:", "addItem", "V", 0x1, NULL },
    { "addItemWithNSString:withComItextpdfTextPdfPdfString:", "addItem", "V", 0x1, NULL },
    { "addItemWithNSString:withComItextpdfTextPdfPdfDate:", "addItem", "V", 0x1, NULL },
    { "addItemWithNSString:withComItextpdfTextPdfPdfNumber:", "addItem", "V", 0x1, NULL },
    { "addItemWithNSString:withJavaUtilCalendar:", "addItem", "V", 0x1, NULL },
    { "addItemWithNSString:withInt:", "addItem", "V", 0x1, NULL },
    { "addItemWithNSString:withFloat:", "addItem", "V", 0x1, NULL },
    { "addItemWithNSString:withDouble:", "addItem", "V", 0x1, NULL },
    { "setPrefixWithNSString:withNSString:", "setPrefix", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "schema_", NULL, 0x0, "Lcom.itextpdf.text.pdf.collection.PdfCollectionSchema;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCollectionPdfCollectionItem = { "PdfCollectionItem", "com.itextpdf.text.pdf.collection", NULL, 0x1, 10, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfCollectionPdfCollectionItem;
}

@end
