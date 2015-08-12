//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/FdfWriter.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/FdfWriter.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/DocWriter.h"
#include "com/itextpdf/text/log/Counter.h"
#include "com/itextpdf/text/log/CounterFactory.h"
#include "com/itextpdf/text/pdf/AcroFields.h"
#include "com/itextpdf/text/pdf/FdfReader.h"
#include "com/itextpdf/text/pdf/FdfWriter.h"
#include "com/itextpdf/text/pdf/OutputStreamCounter.h"
#include "com/itextpdf/text/pdf/PdfAction.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfDocument.h"
#include "com/itextpdf/text/pdf/PdfIndirectObject.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/StringTokenizer.h"

BOOL ComItextpdfTextPdfFdfWriter_initialized = NO;


#line 62
@implementation ComItextpdfTextPdfFdfWriter

IOSByteArray * ComItextpdfTextPdfFdfWriter_HEADER_FDF_;


#line 70
- (instancetype)init {
  if (self = [super init]) {
    fields_ =
#line 64
    [[JavaUtilHashMap alloc] init];
    COUNTER_ =
#line 359
    [ComItextpdfTextLogCounterFactory getCounterWithIOSClass:[IOSClass classWithClass:[ComItextpdfTextPdfFdfWriter class]]];
  }
  return self;
}


#line 77
- (void)writeToWithJavaIoOutputStream:(JavaIoOutputStream *)os {
  
#line 78
  ComItextpdfTextPdfFdfWriter_Wrt *wrt = [[ComItextpdfTextPdfFdfWriter_Wrt alloc] initWithJavaIoOutputStream:os withComItextpdfTextPdfFdfWriter:self];
  [wrt writeTo];
}


#line 83
- (jboolean)setFieldWithNSString:(NSString *)field
 withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value {
  JavaUtilHashMap *map = fields_;
  JavaUtilStringTokenizer *tk = [[JavaUtilStringTokenizer alloc] initWithNSString:field withNSString:@"."];
  if (![tk hasMoreTokens])
#line 87
  return NO;
  while (YES) {
    NSString *s = [tk nextToken];
    id obj = [((JavaUtilHashMap *) nil_chk(map)) getWithId:s];
    if ([tk hasMoreTokens]) {
      if (obj == nil) {
        obj = [[JavaUtilHashMap alloc] init];
        (void) [map putWithId:s withId:obj];
        map = (JavaUtilHashMap *) check_class_cast(obj, [JavaUtilHashMap class]);
        continue;
      }
      else if ([obj isKindOfClass:[JavaUtilHashMap class]])
#line 99
      map = (JavaUtilHashMap *) check_class_cast(obj, [JavaUtilHashMap class]);
      else
#line 101
      return NO;
    }
    else {
      if (!([obj isKindOfClass:[JavaUtilHashMap class]])) {
        (void) [map putWithId:s withId:value];
        return YES;
      }
      else
#line 109
      return NO;
    }
  }
}


#line 115
- (void)iterateFieldsWithJavaUtilHashMap:(JavaUtilHashMap *)values
                     withJavaUtilHashMap:(JavaUtilHashMap *)map
                            withNSString:(NSString *)name {
  
#line 116
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((JavaUtilHashMap *) nil_chk(map)) entrySet])) {
    NSString *s = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
    id obj = [entry_ getValue];
    if ([obj isKindOfClass:[JavaUtilHashMap class]])
#line 120
    [self iterateFieldsWithJavaUtilHashMap:values withJavaUtilHashMap:(JavaUtilHashMap *) check_class_cast(obj, [JavaUtilHashMap class]) withNSString:JreStrcat("$C$", name, '.', s)];
    else
#line 122
    (void) [((JavaUtilHashMap *) nil_chk(values)) putWithId:[(JreStrcat("$C$", name, '.', s)) substring:1] withId:obj];
  }
}

- (jboolean)removeFieldWithNSString:(NSString *)field {
  
#line 133
  JavaUtilHashMap *map = fields_;
  JavaUtilStringTokenizer *tk = [[JavaUtilStringTokenizer alloc] initWithNSString:field withNSString:@"."];
  if (![tk hasMoreTokens])
#line 136
  return NO;
  JavaUtilArrayList *hist = [[JavaUtilArrayList alloc] init];
  while (YES) {
    NSString *s = [tk nextToken];
    id obj = [((JavaUtilHashMap *) nil_chk(map)) getWithId:s];
    if (obj == nil)
#line 142
    return NO;
    [hist addWithId:map];
    [hist addWithId:s];
    if ([tk hasMoreTokens]) {
      if ([obj isKindOfClass:[JavaUtilHashMap class]])
#line 147
      map = (JavaUtilHashMap *) check_class_cast(obj, [JavaUtilHashMap class]);
      else
#line 149
      return NO;
    }
    else {
      if ([obj isKindOfClass:[JavaUtilHashMap class]])
#line 153
      return NO;
      else
#line 155
      break;
    }
  }
  for (jint k = [hist size] - 2; k >= 0; k -= 2) {
    map = (JavaUtilHashMap *) check_class_cast([hist getWithInt:k], [JavaUtilHashMap class]);
    NSString *s = (NSString *) check_class_cast([hist getWithInt:k + 1], [NSString class]);
    (void) [((JavaUtilHashMap *) nil_chk(map)) removeWithId:s];
    if (![map isEmpty])
#line 163
    break;
  }
  return YES;
}


#line 172
- (JavaUtilHashMap *)getFields {
  
#line 173
  JavaUtilHashMap *values = [[JavaUtilHashMap alloc] init];
  [self iterateFieldsWithJavaUtilHashMap:values withJavaUtilHashMap:fields_ withNSString:@""];
  return values;
}


#line 183
- (NSString *)getFieldWithNSString:(NSString *)field {
  
#line 184
  JavaUtilHashMap *map = fields_;
  JavaUtilStringTokenizer *tk = [[JavaUtilStringTokenizer alloc] initWithNSString:field withNSString:@"."];
  if (![tk hasMoreTokens])
#line 187
  return nil;
  while (YES) {
    NSString *s = [tk nextToken];
    id obj = [((JavaUtilHashMap *) nil_chk(map)) getWithId:s];
    if (obj == nil)
#line 192
    return nil;
    if ([tk hasMoreTokens]) {
      if ([obj isKindOfClass:[JavaUtilHashMap class]])
#line 195
      map = (JavaUtilHashMap *) check_class_cast(obj, [JavaUtilHashMap class]);
      else
#line 197
      return nil;
    }
    else {
      if ([obj isKindOfClass:[JavaUtilHashMap class]])
#line 201
      return nil;
      else {
        if ([((ComItextpdfTextPdfPdfObject *) nil_chk(((ComItextpdfTextPdfPdfObject *) check_class_cast(obj, [ComItextpdfTextPdfPdfObject class])))) isString])
#line 204
        return [((ComItextpdfTextPdfPdfString *) nil_chk(((ComItextpdfTextPdfPdfString *) check_class_cast(obj, [ComItextpdfTextPdfPdfString class])))) toUnicodeString];
        else
#line 206
        return [ComItextpdfTextPdfPdfName decodeNameWithNSString:[nil_chk(obj) description]];
      }
    }
  }
}


#line 219
- (jboolean)setFieldAsNameWithNSString:(NSString *)field
                          withNSString:(NSString *)value {
  
#line 220
  return [self setFieldWithNSString:field withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:value]];
}


#line 230
- (jboolean)setFieldAsStringWithNSString:(NSString *)field
                            withNSString:(NSString *)value {
  
#line 231
  return [self setFieldWithNSString:field withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:value withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
}


#line 246
- (jboolean)setFieldAsActionWithNSString:(NSString *)field
         withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action {
  
#line 247
  return [self setFieldWithNSString:field withComItextpdfTextPdfPdfObject:action];
}

- (void)setFieldsWithComItextpdfTextPdfFdfReader:(ComItextpdfTextPdfFdfReader *)fdf {
  
#line 254
  JavaUtilHashMap *map = [((ComItextpdfTextPdfFdfReader *) nil_chk(fdf)) getFields];
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((JavaUtilHashMap *) nil_chk(map)) entrySet])) {
    NSString *key = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
    ComItextpdfTextPdfPdfDictionary *dic = [entry_ getValue];
    ComItextpdfTextPdfPdfObject *v = [((ComItextpdfTextPdfPdfDictionary *) nil_chk(dic)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_V_()];
    if (v != nil) {
      [self setFieldWithNSString:key withComItextpdfTextPdfPdfObject:v];
    }
    v = [dic getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_A_()];
    if (v != nil) {
      [self setFieldWithNSString:key withComItextpdfTextPdfPdfObject:v];
    }
  }
}


#line 272
- (void)setFieldsWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)pdf {
  
#line 273
  [self setFieldsWithComItextpdfTextPdfAcroFields:[((ComItextpdfTextPdfPdfReader *) nil_chk(pdf)) getAcroFields]];
}


#line 279
- (void)setFieldsWithComItextpdfTextPdfAcroFields:(ComItextpdfTextPdfAcroFields *)af {
  
#line 280
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk([((ComItextpdfTextPdfAcroFields *) nil_chk(af)) getFields])) entrySet])) {
    NSString *fn = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
    ComItextpdfTextPdfAcroFields_Item *item = [entry_ getValue];
    ComItextpdfTextPdfPdfDictionary *dic = [((ComItextpdfTextPdfAcroFields_Item *) nil_chk(item)) getMergedWithInt:0];
    ComItextpdfTextPdfPdfObject *v = [ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfPdfDictionary *) nil_chk(dic)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_V_()]];
    if (v == nil)
#line 286
    continue;
    ComItextpdfTextPdfPdfObject *ft = [ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[dic getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FT_()]];
    if (ft == nil || [((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_SIG_())) isEqual:ft])
#line 289
    continue;
    [self setFieldWithNSString:fn withComItextpdfTextPdfPdfObject:v];
  }
}


#line 297
- (NSString *)getFile {
  return self->file_;
}


#line 305
- (void)setFileWithNSString:(NSString *)file {
  
#line 306
  self->file_ = file;
}


#line 360
- (id<ComItextpdfTextLogCounter>)getCounter {
  
#line 361
  return COUNTER_;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFdfWriter *)other {
  [super copyAllFieldsTo:other];
  other->COUNTER_ = COUNTER_;
  other->fields_ = fields_;
  other->file_ = file_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfFdfWriter class]) {
    ComItextpdfTextPdfFdfWriter_HEADER_FDF_ =
#line 63
    [ComItextpdfTextDocWriter getISOBytesWithNSString:@"%FDF-1.4\n%\u00e2\u00e3\u00cf\u00d3\n"];
    ComItextpdfTextPdfFdfWriter_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FdfWriter", NULL, 0x1, NULL },
    { "writeToWithJavaIoOutputStream:", "writeTo", "V", 0x1, "Ljava.io.IOException;" },
    { "setFieldWithNSString:withComItextpdfTextPdfPdfObject:", "setField", "Z", 0x0, NULL },
    { "iterateFieldsWithJavaUtilHashMap:withJavaUtilHashMap:withNSString:", "iterateFields", "V", 0x0, NULL },
    { "removeFieldWithNSString:", "removeField", "Z", 0x1, NULL },
    { "getFields", NULL, "Ljava.util.HashMap;", 0x1, NULL },
    { "getFieldWithNSString:", "getField", "Ljava.lang.String;", 0x1, NULL },
    { "setFieldAsNameWithNSString:withNSString:", "setFieldAsName", "Z", 0x1, NULL },
    { "setFieldAsStringWithNSString:withNSString:", "setFieldAsString", "Z", 0x1, NULL },
    { "setFieldAsActionWithNSString:withComItextpdfTextPdfPdfAction:", "setFieldAsAction", "Z", 0x1, NULL },
    { "setFieldsWithComItextpdfTextPdfFdfReader:", "setFields", "V", 0x1, NULL },
    { "setFieldsWithComItextpdfTextPdfPdfReader:", "setFields", "V", 0x1, NULL },
    { "setFieldsWithComItextpdfTextPdfAcroFields:", "setFields", "V", 0x1, NULL },
    { "getFile", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setFileWithNSString:", "setFile", "V", 0x1, NULL },
    { "getCounter", NULL, "Lcom.itextpdf.text.log.Counter;", 0x4, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_FDF_", NULL, 0x1a, "[B", &ComItextpdfTextPdfFdfWriter_HEADER_FDF_,  },
    { "fields_", NULL, 0x0, "Ljava.util.HashMap;", NULL,  },
    { "file_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "COUNTER_", NULL, 0x4, "Lcom.itextpdf.text.log.Counter;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFdfWriter = { "FdfWriter", "com.itextpdf.text.pdf", NULL, 0x1, 16, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfFdfWriter;
}

@end


#line 309
@implementation ComItextpdfTextPdfFdfWriter_Wrt


#line 312
- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os
           withComItextpdfTextPdfFdfWriter:(ComItextpdfTextPdfFdfWriter *)fdf {
  if (self =
#line 313
  [super initWithComItextpdfTextPdfPdfDocument:[[ComItextpdfTextPdfPdfDocument alloc] init] withJavaIoOutputStream:os]) {
    
#line 314
    self->fdf_ = fdf;
    
#line 315
    [((ComItextpdfTextPdfOutputStreamCounter *) nil_chk(self->os_)) writeWithByteArray:ComItextpdfTextPdfFdfWriter_get_HEADER_FDF_()];
    
#line 316
    body_ = [[ComItextpdfTextPdfPdfWriter_PdfBody alloc] initWithComItextpdfTextPdfPdfWriter:self];
  }
  return self;
}


#line 319
- (void)writeTo {
  
#line 320
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FIELDS_() withComItextpdfTextPdfPdfObject:[self calculateWithJavaUtilHashMap:((ComItextpdfTextPdfFdfWriter *) nil_chk(fdf_))->fields_]];
  if (fdf_->file_ != nil)
#line 323
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_F_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:fdf_->file_ withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
  ComItextpdfTextPdfPdfDictionary *fd = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [fd putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FDF_() withComItextpdfTextPdfPdfObject:dic];
  ComItextpdfTextPdfPdfIndirectReference *ref = [((ComItextpdfTextPdfPdfIndirectObject *) nil_chk([self addToBodyWithComItextpdfTextPdfPdfObject:fd])) getIndirectReference];
  [((ComItextpdfTextPdfOutputStreamCounter *) nil_chk(os_)) writeWithByteArray:[ComItextpdfTextDocWriter getISOBytesWithNSString:@"trailer\n"]];
  ComItextpdfTextPdfPdfDictionary *trailer = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [trailer putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ROOT_() withComItextpdfTextPdfPdfObject:ref];
  [trailer toPdfWithComItextpdfTextPdfPdfWriter:nil withJavaIoOutputStream:os_];
  [os_ writeWithByteArray:[ComItextpdfTextDocWriter getISOBytesWithNSString:@"\n%%EOF\n"]];
  [os_ close];
}


#line 337
- (ComItextpdfTextPdfPdfArray *)calculateWithJavaUtilHashMap:(JavaUtilHashMap *)map {
  ComItextpdfTextPdfPdfArray *ar = [[ComItextpdfTextPdfPdfArray alloc] init];
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((JavaUtilHashMap *) nil_chk(map)) entrySet])) {
    NSString *key = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
    id v = [entry_ getValue];
    ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
    [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_T_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:key withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
    if ([v isKindOfClass:[JavaUtilHashMap class]]) {
      [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_KIDS_() withComItextpdfTextPdfPdfObject:[self calculateWithJavaUtilHashMap:(JavaUtilHashMap *) check_class_cast(v, [JavaUtilHashMap class])]];
    }
    else if ([v isKindOfClass:[ComItextpdfTextPdfPdfAction class]]) {
      [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_A_() withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfAction *) check_class_cast(v, [ComItextpdfTextPdfPdfAction class])];
    }
    else {
      [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_V_() withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *) check_class_cast(v, [ComItextpdfTextPdfPdfObject class])];
    }
    [ar addWithComItextpdfTextPdfPdfObject:dic];
  }
  return ar;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFdfWriter_Wrt *)other {
  [super copyAllFieldsTo:other];
  other->fdf_ = fdf_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoOutputStream:withComItextpdfTextPdfFdfWriter:", "Wrt", NULL, 0x0, "Ljava.io.IOException;" },
    { "writeTo", NULL, "V", 0x0, "Ljava.io.IOException;" },
    { "calculateWithJavaUtilHashMap:", "calculate", "Lcom.itextpdf.text.pdf.PdfArray;", 0x0, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fdf_", NULL, 0x2, "Lcom.itextpdf.text.pdf.FdfWriter;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFdfWriter_Wrt = { "Wrt", "com.itextpdf.text.pdf", "FdfWriter", 0x8, 3, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfFdfWriter_Wrt;
}

@end