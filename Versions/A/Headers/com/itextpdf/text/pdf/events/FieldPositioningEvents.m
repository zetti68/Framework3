//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/events/FieldPositioningEvents.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/events/FieldPositioningEvents.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/Document.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfFormField.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfPCell.h"
#include "com/itextpdf/text/pdf/PdfRectangle.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/TextField.h"
#include "com/itextpdf/text/pdf/events/FieldPositioningEvents.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/HashMap.h"


#line 68
@implementation ComItextpdfTextPdfEventsFieldPositioningEvents


#line 90
- (instancetype)init {
  if (self = [super init]) {
    genericChunkFields_ =
#line 73
    [[JavaUtilHashMap alloc] init];
    cellField_ =
#line 78
    nil;
    fieldWriter_ =
#line 83
    nil;
    parent_ =
#line 87
    nil;
  }
  return self;
}


#line 98
- (void)addFieldWithNSString:(NSString *)text
withComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)field {
  
#line 99
  (void) [((JavaUtilHashMap *) nil_chk(genericChunkFields_)) putWithId:text withId:field];
}


#line 103
- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                 withComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)field {
  if (self = [super init]) {
    genericChunkFields_ =
#line 73
    [[JavaUtilHashMap alloc] init];
    cellField_ =
#line 78
    nil;
    fieldWriter_ =
#line 83
    nil;
    parent_ =
#line 87
    nil;
    self->cellField_ = field;
    
#line 105
    self->fieldWriter_ = writer;
  }
  return self;
}


#line 109
- (instancetype)initWithComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)parent
                    withComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)field {
  if (self = [super init]) {
    genericChunkFields_ =
#line 73
    [[JavaUtilHashMap alloc] init];
    cellField_ =
#line 78
    nil;
    fieldWriter_ =
#line 83
    nil;
    parent_ =
#line 87
    nil;
    
#line 110
    self->cellField_ = field;
    
#line 111
    self->parent_ = parent;
  }
  return self;
}


#line 117
- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                       withNSString:(NSString *)text {
  if (self = [super init]) {
    genericChunkFields_ =
#line 73
    [[JavaUtilHashMap alloc] init];
    cellField_ =
#line 78
    nil;
    fieldWriter_ =
#line 83
    nil;
    parent_ =
#line 87
    nil;
    
#line 118
    self->fieldWriter_ = writer;
    
#line 119
    ComItextpdfTextPdfTextField *tf = [[ComItextpdfTextPdfTextField alloc] initWithComItextpdfTextPdfPdfWriter:writer withComItextpdfTextRectangle:[[ComItextpdfTextRectangle alloc] initWithFloat:0 withFloat:0] withNSString:text];
    
#line 120
    [tf setFontSizeWithFloat:14];
    
#line 121
    cellField_ = [tf getTextField];
  }
  return self;
}


#line 127
- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                 withComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)parent
                                       withNSString:(NSString *)text {
  if (self = [super init]) {
    genericChunkFields_ =
#line 73
    [[JavaUtilHashMap alloc] init];
    cellField_ =
#line 78
    nil;
    fieldWriter_ =
#line 83
    nil;
    parent_ =
#line 87
    nil;
    
#line 128
    self->parent_ = parent;
    
#line 129
    ComItextpdfTextPdfTextField *tf = [[ComItextpdfTextPdfTextField alloc] initWithComItextpdfTextPdfPdfWriter:writer withComItextpdfTextRectangle:[[ComItextpdfTextRectangle alloc] initWithFloat:0 withFloat:0] withNSString:text];
    
#line 130
    [tf setFontSizeWithFloat:14];
    
#line 131
    cellField_ = [tf getTextField];
  }
  return self;
}


#line 137
- (void)setPaddingWithFloat:(jfloat)padding {
  
#line 138
  self->padding_ = padding;
}


#line 144
- (void)setParentWithComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)parent {
  
#line 145
  self->parent_ = parent;
}


#line 151
- (void)onGenericTagWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                        withComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                       withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                       withNSString:(NSString *)text {
  
#line 153
  [rect setBottomWithFloat:[((ComItextpdfTextRectangle *) nil_chk(rect)) getBottom] - 3];
  ComItextpdfTextPdfPdfFormField *field = [((JavaUtilHashMap *) nil_chk(genericChunkFields_)) getWithId:text];
  if (field == nil) {
    ComItextpdfTextPdfTextField *tf = [[ComItextpdfTextPdfTextField alloc] initWithComItextpdfTextPdfPdfWriter:writer withComItextpdfTextRectangle:[[ComItextpdfTextRectangle alloc] initWithFloat:[rect getLeftWithFloat:padding_] withFloat:[rect getBottomWithFloat:padding_] withFloat:[rect getRightWithFloat:padding_] withFloat:[rect getTopWithFloat:padding_]] withNSString:text];
    [tf setFontSizeWithFloat:14];
    @try {
      field = [tf getTextField];
    }
    @catch (
#line 160
    JavaLangException *e) {
      @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:e];
    }
  }
  else {
    [field putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_RECT_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfRectangle alloc] initWithFloat:[rect getLeftWithFloat:padding_] withFloat:[rect getBottomWithFloat:padding_] withFloat:[rect getRightWithFloat:padding_] withFloat:[rect getTopWithFloat:padding_]]];
  }
  if (parent_ == nil)
#line 168
  [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) addAnnotationWithComItextpdfTextPdfPdfAnnotation:field];
  else
#line 170
  [parent_ addKidWithComItextpdfTextPdfPdfFormField:field];
}


#line 176
- (void)cellLayoutWithComItextpdfTextPdfPdfPCell:(ComItextpdfTextPdfPdfPCell *)cell
                    withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
       withComItextpdfTextPdfPdfContentByteArray:(IOSObjectArray *)canvases {
  
#line 177
  if (cellField_ == nil || (fieldWriter_ == nil && parent_ == nil)) @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"you.have.used.the.wrong.constructor.for.this.fieldpositioningevents.class" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  [((ComItextpdfTextPdfPdfFormField *) nil_chk(cellField_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_RECT_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfRectangle alloc] initWithFloat:[((ComItextpdfTextRectangle *) nil_chk(rect)) getLeftWithFloat:padding_] withFloat:[rect getBottomWithFloat:padding_] withFloat:[rect getRightWithFloat:padding_] withFloat:[rect getTopWithFloat:padding_]]];
  if (parent_ == nil)
#line 180
  [((ComItextpdfTextPdfPdfWriter *) nil_chk(fieldWriter_)) addAnnotationWithComItextpdfTextPdfPdfAnnotation:cellField_];
  else
#line 182
  [parent_ addKidWithComItextpdfTextPdfPdfFormField:cellField_];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfEventsFieldPositioningEvents *)other {
  [super copyAllFieldsTo:other];
  other->cellField_ = cellField_;
  other->fieldWriter_ = fieldWriter_;
  other->genericChunkFields_ = genericChunkFields_;
  other->padding_ = padding_;
  other->parent_ = parent_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FieldPositioningEvents", NULL, 0x1, NULL },
    { "addFieldWithNSString:withComItextpdfTextPdfPdfFormField:", "addField", "V", 0x1, NULL },
    { "initWithComItextpdfTextPdfPdfWriter:withComItextpdfTextPdfPdfFormField:", "FieldPositioningEvents", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfPdfFormField:withComItextpdfTextPdfPdfFormField:", "FieldPositioningEvents", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfPdfWriter:withNSString:", "FieldPositioningEvents", NULL, 0x1, "Ljava.io.IOException;Lcom.itextpdf.text.DocumentException;" },
    { "initWithComItextpdfTextPdfPdfWriter:withComItextpdfTextPdfPdfFormField:withNSString:", "FieldPositioningEvents", NULL, 0x1, "Ljava.io.IOException;Lcom.itextpdf.text.DocumentException;" },
    { "setPaddingWithFloat:", "setPadding", "V", 0x1, NULL },
    { "setParentWithComItextpdfTextPdfPdfFormField:", "setParent", "V", 0x1, NULL },
    { "onGenericTagWithComItextpdfTextPdfPdfWriter:withComItextpdfTextDocument:withComItextpdfTextRectangle:withNSString:", "onGenericTag", "V", 0x1, NULL },
    { "cellLayoutWithComItextpdfTextPdfPdfPCell:withComItextpdfTextRectangle:withComItextpdfTextPdfPdfContentByteArray:", "cellLayout", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "genericChunkFields_", NULL, 0x4, "Ljava.util.HashMap;", NULL,  },
    { "cellField_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfFormField;", NULL,  },
    { "fieldWriter_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfWriter;", NULL,  },
    { "parent_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfFormField;", NULL,  },
    { "padding_", NULL, 0x1, "F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfEventsFieldPositioningEvents = { "FieldPositioningEvents", "com.itextpdf.text.pdf.events", NULL, 0x1, 10, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfEventsFieldPositioningEvents;
}

@end
