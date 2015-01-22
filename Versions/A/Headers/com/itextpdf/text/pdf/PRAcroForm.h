//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PRAcroForm.java
//

#ifndef _ComItextpdfTextPdfPRAcroForm_H_
#define _ComItextpdfTextPdfPRAcroForm_H_

@class ComItextpdfTextPdfPRAcroForm_FieldInformation;
@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfReader;
@class JavaUtilArrayList;
@class JavaUtilHashMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"

@interface ComItextpdfTextPdfPRAcroForm : ComItextpdfTextPdfPdfDictionary {
 @public
  JavaUtilArrayList *fields_;
  JavaUtilArrayList *stack_;
  JavaUtilHashMap *fieldByName_;
  ComItextpdfTextPdfPdfReader *reader_;
}

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (jint)size;

- (JavaUtilArrayList *)getFields;

- (ComItextpdfTextPdfPRAcroForm_FieldInformation *)getFieldWithNSString:(NSString *)name;

- (ComItextpdfTextPdfPRIndirectReference *)getRefByNameWithNSString:(NSString *)name;

- (void)readAcroFormWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)root;

- (void)iterateFieldsWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)fieldlist
          withComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)fieldDict
                                       withNSString:(NSString *)parentPath;

- (ComItextpdfTextPdfPdfDictionary *)mergeAttribWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)parent
                                                withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)child;

- (void)pushAttribWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dict;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPRAcroForm *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPRAcroForm_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRAcroForm, fields_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRAcroForm, stack_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRAcroForm, fieldByName_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRAcroForm, reader_, ComItextpdfTextPdfPdfReader *)

@interface ComItextpdfTextPdfPRAcroForm_FieldInformation : NSObject {
 @public
  NSString *fieldName_;
  ComItextpdfTextPdfPdfDictionary *info_;
  ComItextpdfTextPdfPRIndirectReference *ref_;
}

- (instancetype)initWithNSString:(NSString *)fieldName
withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)info
withComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)ref;

- (NSString *)getWidgetName;

- (NSString *)getName;

- (ComItextpdfTextPdfPdfDictionary *)getInfo;

- (ComItextpdfTextPdfPRIndirectReference *)getRef;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPRAcroForm_FieldInformation *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPRAcroForm_FieldInformation_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRAcroForm_FieldInformation, fieldName_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRAcroForm_FieldInformation, info_, ComItextpdfTextPdfPdfDictionary *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPRAcroForm_FieldInformation, ref_, ComItextpdfTextPdfPRIndirectReference *)

#endif // _ComItextpdfTextPdfPRAcroForm_H_
