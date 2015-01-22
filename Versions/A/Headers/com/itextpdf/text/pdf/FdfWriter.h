//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/FdfWriter.java
//

#ifndef _ComItextpdfTextPdfFdfWriter_H_
#define _ComItextpdfTextPdfFdfWriter_H_

@class ComItextpdfTextPdfAcroFields;
@class ComItextpdfTextPdfFdfReader;
@class ComItextpdfTextPdfPdfAction;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfReader;
@class IOSByteArray;
@class JavaIoOutputStream;
@class JavaUtilHashMap;
@protocol ComItextpdfTextLogCounter;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"

@interface ComItextpdfTextPdfFdfWriter : NSObject {
 @public
  JavaUtilHashMap *fields_;
  NSString *file_;
  id<ComItextpdfTextLogCounter> COUNTER_;
}

- (instancetype)init;

- (void)writeToWithJavaIoOutputStream:(JavaIoOutputStream *)os;

- (jboolean)setFieldWithNSString:(NSString *)field
 withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value;

- (void)iterateFieldsWithJavaUtilHashMap:(JavaUtilHashMap *)values
                     withJavaUtilHashMap:(JavaUtilHashMap *)map
                            withNSString:(NSString *)name;

- (jboolean)removeFieldWithNSString:(NSString *)field;

- (JavaUtilHashMap *)getFields;

- (NSString *)getFieldWithNSString:(NSString *)field;

- (jboolean)setFieldAsNameWithNSString:(NSString *)field
                          withNSString:(NSString *)value;

- (jboolean)setFieldAsStringWithNSString:(NSString *)field
                            withNSString:(NSString *)value;

- (jboolean)setFieldAsActionWithNSString:(NSString *)field
         withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action;

- (void)setFieldsWithComItextpdfTextPdfFdfReader:(ComItextpdfTextPdfFdfReader *)fdf;

- (void)setFieldsWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)pdf;

- (void)setFieldsWithComItextpdfTextPdfAcroFields:(ComItextpdfTextPdfAcroFields *)af;

- (NSString *)getFile;

- (void)setFileWithNSString:(NSString *)file;

- (id<ComItextpdfTextLogCounter>)getCounter;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFdfWriter *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfFdfWriter_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfFdfWriter)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFdfWriter, fields_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFdfWriter, file_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFdfWriter, COUNTER_, id<ComItextpdfTextLogCounter>)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfFdfWriter_HEADER_FDF_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfFdfWriter, HEADER_FDF_, IOSByteArray *)

@interface ComItextpdfTextPdfFdfWriter_Wrt : ComItextpdfTextPdfPdfWriter {
 @public
  ComItextpdfTextPdfFdfWriter *fdf_;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os
           withComItextpdfTextPdfFdfWriter:(ComItextpdfTextPdfFdfWriter *)fdf;

- (void)writeTo;

- (ComItextpdfTextPdfPdfArray *)calculateWithJavaUtilHashMap:(JavaUtilHashMap *)map;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFdfWriter_Wrt *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfFdfWriter_Wrt_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFdfWriter_Wrt, fdf_, ComItextpdfTextPdfFdfWriter *)

#endif // _ComItextpdfTextPdfFdfWriter_H_
