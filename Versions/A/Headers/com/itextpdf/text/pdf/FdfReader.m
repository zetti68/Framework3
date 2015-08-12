//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/FdfReader.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/FdfReader.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/log/Counter.h"
#include "com/itextpdf/text/log/CounterFactory.h"
#include "com/itextpdf/text/pdf/FdfReader.h"
#include "com/itextpdf/text/pdf/PRIndirectReference.h"
#include "com/itextpdf/text/pdf/PRStream.h"
#include "com/itextpdf/text/pdf/PRTokeniser.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/Exception.h"
#include "java/net/URL.h"
#include "java/util/HashMap.h"

BOOL ComItextpdfTextPdfFdfReader_initialized = NO;


#line 56
@implementation ComItextpdfTextPdfFdfReader

id<ComItextpdfTextLogCounter> ComItextpdfTextPdfFdfReader_COUNTER_;


#line 66
- (instancetype)initWithNSString:(NSString *)filename {
  return
#line 67
  [super initWithNSString:filename];
}


#line 74
- (instancetype)initWithByteArray:(IOSByteArray *)pdfIn {
  return
#line 75
  [super initWithByteArray:pdfIn];
}


#line 82
- (instancetype)initWithJavaNetURL:(JavaNetURL *)url {
  return
#line 83
  [super initWithJavaNetURL:url];
}


#line 91
- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)is {
  return
#line 92
  [super initWithJavaIoInputStream:is];
}


#line 96
- (id<ComItextpdfTextLogCounter>)getCounter {
  return ComItextpdfTextPdfFdfReader_COUNTER_;
}


#line 101
- (void)readPdf {
  
#line 102
  fields_ = [[JavaUtilHashMap alloc] init];
  @try {
    [((ComItextpdfTextPdfPRTokeniser *) nil_chk(tokens_)) checkFdfHeader];
    [self rebuildXref];
    [self readDocObj];
  }
  @finally {
    @try {
      [((ComItextpdfTextPdfPRTokeniser *) nil_chk(tokens_)) close];
    }
    @catch (JavaLangException *e) {
    }
  }
  
#line 116
  [self readFields];
}


#line 119
- (void)kidNodeWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)merged
                                      withNSString:(NSString *)name {
  
#line 120
  ComItextpdfTextPdfPdfArray *kids = [((ComItextpdfTextPdfPdfDictionary *) nil_chk(merged)) getAsArrayWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_KIDS_()];
  if (kids == nil || [kids isEmpty]) {
    if (((jint) [((NSString *) nil_chk(name)) length]) > 0)
#line 123
    name = [name substring:1];
    (void) [((JavaUtilHashMap *) nil_chk(fields_)) putWithId:name withId:merged];
  }
  else {
    [merged removeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_KIDS_()];
    for (jint k = 0; k < [kids size]; ++k) {
      ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
      [dic mergeWithComItextpdfTextPdfPdfDictionary:merged];
      ComItextpdfTextPdfPdfDictionary *newDic = [kids getAsDictWithInt:k];
      ComItextpdfTextPdfPdfString *t = [((ComItextpdfTextPdfPdfDictionary *) nil_chk(newDic)) getAsStringWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_T_()];
      NSString *newName = name;
      if (t != nil)
#line 135
      newName = JreStrcat("$$", newName, JreStrcat("C$", '.', [t toUnicodeString]));
      [dic mergeWithComItextpdfTextPdfPdfDictionary:newDic];
      [dic removeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_T_()];
      [self kidNodeWithComItextpdfTextPdfPdfDictionary:dic withNSString:newName];
    }
  }
}


#line 143
- (void)readFields {
  
#line 144
  catalog_ = [((ComItextpdfTextPdfPdfDictionary *) nil_chk(trailer_)) getAsDictWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ROOT_()];
  ComItextpdfTextPdfPdfDictionary *fdf = [((ComItextpdfTextPdfPdfDictionary *) nil_chk(catalog_)) getAsDictWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FDF_()];
  if (fdf == nil)
#line 147
  return;
  ComItextpdfTextPdfPdfString *fs = [((ComItextpdfTextPdfPdfDictionary *) nil_chk(fdf)) getAsStringWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_F_()];
  if (fs != nil)
#line 150
  fileSpec_ = [fs toUnicodeString];
  ComItextpdfTextPdfPdfArray *fld = [fdf getAsArrayWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FIELDS_()];
  if (fld == nil)
#line 153
  return;
  encoding_ = [fdf getAsNameWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ENCODING_()];
  ComItextpdfTextPdfPdfDictionary *merged = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [merged putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_KIDS_() withComItextpdfTextPdfPdfObject:fld];
  [self kidNodeWithComItextpdfTextPdfPdfDictionary:merged withNSString:@""];
}

- (JavaUtilHashMap *)getFields {
  
#line 166
  return fields_;
}


#line 173
- (ComItextpdfTextPdfPdfDictionary *)getFieldWithNSString:(NSString *)name {
  
#line 174
  return [((JavaUtilHashMap *) nil_chk(fields_)) getWithId:name];
}


#line 184
- (IOSByteArray *)getAttachedFileWithNSString:(NSString *)name {
  
#line 185
  ComItextpdfTextPdfPdfDictionary *field = [((JavaUtilHashMap *) nil_chk(fields_)) getWithId:name];
  if (field != nil) {
    ComItextpdfTextPdfPdfIndirectReference *ir = (ComItextpdfTextPdfPRIndirectReference *) check_class_cast([field getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_V_()], [ComItextpdfTextPdfPRIndirectReference class]);
    ComItextpdfTextPdfPdfDictionary *filespec = (ComItextpdfTextPdfPdfDictionary *) check_class_cast([self getPdfObjectWithInt:[((ComItextpdfTextPdfPdfIndirectReference *) nil_chk(ir)) getNumber]], [ComItextpdfTextPdfPdfDictionary class]);
    ComItextpdfTextPdfPdfDictionary *ef = [((ComItextpdfTextPdfPdfDictionary *) nil_chk(filespec)) getAsDictWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_EF_()];
    ir = (ComItextpdfTextPdfPRIndirectReference *) check_class_cast([((ComItextpdfTextPdfPdfDictionary *) nil_chk(ef)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_F_()], [ComItextpdfTextPdfPRIndirectReference class]);
    ComItextpdfTextPdfPRStream *stream = (ComItextpdfTextPdfPRStream *) check_class_cast([self getPdfObjectWithInt:[((ComItextpdfTextPdfPdfIndirectReference *) nil_chk(ir)) getNumber]], [ComItextpdfTextPdfPRStream class]);
    return [ComItextpdfTextPdfPdfReader getStreamBytesWithComItextpdfTextPdfPRStream:stream];
  }
  return [IOSByteArray arrayWithLength:0];
}


#line 203
- (NSString *)getFieldValueWithNSString:(NSString *)name {
  
#line 204
  ComItextpdfTextPdfPdfDictionary *field = [((JavaUtilHashMap *) nil_chk(fields_)) getWithId:name];
  if (field == nil)
#line 206
  return nil;
  ComItextpdfTextPdfPdfObject *v = [ComItextpdfTextPdfPdfReader getPdfObjectWithComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfPdfDictionary *) nil_chk(field)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_V_()]];
  if (v == nil)
#line 209
  return nil;
  if ([((ComItextpdfTextPdfPdfObject *) nil_chk(v)) isName])
#line 211
  return [ComItextpdfTextPdfPdfName decodeNameWithNSString:[((ComItextpdfTextPdfPdfName *) check_class_cast(v, [ComItextpdfTextPdfPdfName class])) description]];
  else if ([v isString]) {
    ComItextpdfTextPdfPdfString *vs = (ComItextpdfTextPdfPdfString *) check_class_cast(v, [ComItextpdfTextPdfPdfString class]);
    if (encoding_ == nil || [vs getEncoding] != nil)
#line 215
    return [vs toUnicodeString];
    IOSByteArray *b = [vs getBytes];
    if (((IOSByteArray *) nil_chk(b))->size_ >= 2 && IOSByteArray_Get(b, 0) == (jbyte) 254 && IOSByteArray_Get(b, 1) == (jbyte) 255)
#line 218
    return [vs toUnicodeString];
    @try {
      if ([((ComItextpdfTextPdfPdfName *) nil_chk(encoding_)) isEqual:ComItextpdfTextPdfPdfName_get_SHIFT_JIS_()])
#line 221
      return [NSString stringWithBytes:b charsetName:@"SJIS"];
      else if ([encoding_ isEqual:ComItextpdfTextPdfPdfName_get_UHC_()])
#line 223
      return [NSString stringWithBytes:b charsetName:@"MS949"];
      else if ([encoding_ isEqual:ComItextpdfTextPdfPdfName_get_GBK_()])
#line 225
      return [NSString stringWithBytes:b charsetName:@"GBK"];
      else if ([encoding_ isEqual:ComItextpdfTextPdfPdfName_get_BIGFIVE_()])
#line 227
      return [NSString stringWithBytes:b charsetName:@"Big5"];
      else if ([encoding_ isEqual:ComItextpdfTextPdfPdfName_get_UTF_8_()])
#line 229
      return [NSString stringWithBytes:b charsetName:@"UTF8"];
    }
    @catch (JavaLangException *e) {
    }
    return [vs toUnicodeString];
  }
  return nil;
}


#line 241
- (NSString *)getFileSpec {
  
#line 242
  return fileSpec_;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFdfReader *)other {
  [super copyAllFieldsTo:other];
  other->encoding_ = encoding_;
  other->fields_ = fields_;
  other->fileSpec_ = fileSpec_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfFdfReader class]) {
    ComItextpdfTextPdfFdfReader_COUNTER_ =
#line 95
    [ComItextpdfTextLogCounterFactory getCounterWithIOSClass:[IOSClass classWithClass:[ComItextpdfTextPdfFdfReader class]]];
    ComItextpdfTextPdfFdfReader_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "FdfReader", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithByteArray:", "FdfReader", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithJavaNetURL:", "FdfReader", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithJavaIoInputStream:", "FdfReader", NULL, 0x1, "Ljava.io.IOException;" },
    { "getCounter", NULL, "Lcom.itextpdf.text.log.Counter;", 0x4, NULL },
    { "readPdf", NULL, "V", 0x4, "Ljava.io.IOException;" },
    { "kidNodeWithComItextpdfTextPdfPdfDictionary:withNSString:", "kidNode", "V", 0x4, NULL },
    { "readFields", NULL, "V", 0x4, NULL },
    { "getFields", NULL, "Ljava.util.HashMap;", 0x1, NULL },
    { "getFieldWithNSString:", "getField", "Lcom.itextpdf.text.pdf.PdfDictionary;", 0x1, NULL },
    { "getAttachedFileWithNSString:", "getAttachedFile", "[B", 0x1, "Ljava.io.IOException;" },
    { "getFieldValueWithNSString:", "getFieldValue", "Ljava.lang.String;", 0x1, NULL },
    { "getFileSpec", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fields_", NULL, 0x0, "Ljava.util.HashMap;", NULL,  },
    { "fileSpec_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
    { "encoding_", NULL, 0x0, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "COUNTER_", NULL, 0xc, "Lcom.itextpdf.text.log.Counter;", &ComItextpdfTextPdfFdfReader_COUNTER_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFdfReader = { "FdfReader", "com.itextpdf.text.pdf", NULL, 0x1, 13, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfFdfReader;
}

@end
