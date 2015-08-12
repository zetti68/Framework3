//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfLister.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfLister.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/PRStream.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfImportedPage.h"
#include "com/itextpdf/text/pdf/PdfLister.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/PdfReaderInstance.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"
#include "java/util/Iterator.h"
#include "java/util/ListIterator.h"
#include "java/util/Set.h"


#line 55
@implementation ComItextpdfTextPdfPdfLister


#line 64
- (instancetype)initWithJavaIoPrintStream:(JavaIoPrintStream *)outArg {
  if (self = [super init]) {
    
#line 65
    self->out_ = outArg;
  }
  return self;
}


#line 72
- (void)listAnyObjectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object {
  
#line 74
  switch ([((ComItextpdfTextPdfPdfObject *) nil_chk(object)) type]) {
    case ComItextpdfTextPdfPdfObject_ARRAY:
    [self listArrayWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *) check_class_cast(object, [ComItextpdfTextPdfPdfArray class])];
    break;
    case ComItextpdfTextPdfPdfObject_DICTIONARY:
    [self listDictWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *) check_class_cast(object, [ComItextpdfTextPdfPdfDictionary class])];
    break;
    case ComItextpdfTextPdfPdfObject_STRING:
    [((JavaIoPrintStream *) nil_chk(out_)) printlnWithNSString:JreStrcat("C$C", '(', [object description], ')')];
    break;
    default:
    [((JavaIoPrintStream *) nil_chk(out_)) printlnWithNSString:[object description]];
    break;
  }
}


#line 93
- (void)listDictWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dictionary {
  
#line 95
  [((JavaIoPrintStream *) nil_chk(out_)) printlnWithNSString:@"<<"];
  ComItextpdfTextPdfPdfObject *value;
  for (ComItextpdfTextPdfPdfName * __strong key in nil_chk([((ComItextpdfTextPdfPdfDictionary *) nil_chk(dictionary)) getKeys])) {
    value = [dictionary getWithComItextpdfTextPdfPdfName:key];
    [out_ printWithNSString:[((ComItextpdfTextPdfPdfName *) nil_chk(key)) description]];
    [out_ printWithChar:' '];
    [self listAnyObjectWithComItextpdfTextPdfPdfObject:value];
  }
  [out_ printlnWithNSString:@">>"];
}


#line 110
- (void)listArrayWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)array {
  
#line 112
  [((JavaIoPrintStream *) nil_chk(out_)) printlnWithChar:'['];
  for (id<JavaUtilIterator> i = [((ComItextpdfTextPdfPdfArray *) nil_chk(array)) listIterator]; [((id<JavaUtilIterator>) nil_chk(i)) hasNext]; ) {
    ComItextpdfTextPdfPdfObject *item = [i next];
    [self listAnyObjectWithComItextpdfTextPdfPdfObject:item];
  }
  [out_ printlnWithChar:']'];
}


#line 124
- (void)listStreamWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream
         withComItextpdfTextPdfPdfReaderInstance:(ComItextpdfTextPdfPdfReaderInstance *)reader {
  
#line 126
  @try {
    [self listDictWithComItextpdfTextPdfPdfDictionary:stream];
    [((JavaIoPrintStream *) nil_chk(out_)) printlnWithNSString:@"startstream"];
    IOSByteArray *b = [ComItextpdfTextPdfPdfReader getStreamBytesWithComItextpdfTextPdfPRStream:stream];
    
#line 139
    jint len = ((IOSByteArray *) nil_chk(b))->size_ - 1;
    for (jint k = 0; k < len; ++k) {
      if (IOSByteArray_Get(b, k) == 0x000d && IOSByteArray_Get(b, k + 1) != 0x000a)
#line 142
      *IOSByteArray_GetRef(b, k) = (jbyte) 0x000a;
    }
    [out_ printlnWithNSString:[NSString stringWithBytes:b]];
    [out_ printlnWithNSString:@"endstream"];
  }
  @catch (
#line 146
  JavaIoIOException *e) {
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:JreStrcat("$@", @"I/O exception: ", e)];
  }
}


#line 156
- (void)listPageWithComItextpdfTextPdfPdfImportedPage:(ComItextpdfTextPdfPdfImportedPage *)iPage {
  
#line 158
  jint pageNum = [((ComItextpdfTextPdfPdfImportedPage *) nil_chk(iPage)) getPageNumber];
  ComItextpdfTextPdfPdfReaderInstance *readerInst = [iPage getPdfReaderInstance];
  ComItextpdfTextPdfPdfReader *reader = [((ComItextpdfTextPdfPdfReaderInstance *) nil_chk(readerInst)) getReader];
  
#line 162
  ComItextpdfTextPdfPdfDictionary *page = [((ComItextpdfTextPdfPdfReader *) nil_chk(reader)) getPageNWithInt:pageNum];
  [self listDictWithComItextpdfTextPdfPdfDictionary:page];
  ComItextpdfTextPdfPdfObject *obj = [ComItextpdfTextPdfPdfReader getPdfObjectWithComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfPdfDictionary *) nil_chk(page)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_CONTENTS_()]];
  if (obj == nil)
#line 166
  return;
  switch (((ComItextpdfTextPdfPdfObject *) nil_chk(obj))->type__) {
    case ComItextpdfTextPdfPdfObject_STREAM:
    [self listStreamWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *) check_class_cast(obj, [ComItextpdfTextPdfPRStream class]) withComItextpdfTextPdfPdfReaderInstance:readerInst];
    break;
    case ComItextpdfTextPdfPdfObject_ARRAY:
    for (id<JavaUtilIterator> i = [((ComItextpdfTextPdfPdfArray *) check_class_cast(obj, [ComItextpdfTextPdfPdfArray class])) listIterator]; [((id<JavaUtilIterator>) nil_chk(i)) hasNext]; ) {
      ComItextpdfTextPdfPdfObject *o = [ComItextpdfTextPdfPdfReader getPdfObjectWithComItextpdfTextPdfPdfObject:[i next]];
      [self listStreamWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *) check_class_cast(o, [ComItextpdfTextPdfPRStream class]) withComItextpdfTextPdfPdfReaderInstance:readerInst];
      [((JavaIoPrintStream *) nil_chk(out_)) printlnWithNSString:@"-----------"];
    }
    break;
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfLister *)other {
  [super copyAllFieldsTo:other];
  other->out_ = out_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoPrintStream:", "PdfLister", NULL, 0x1, NULL },
    { "listAnyObjectWithComItextpdfTextPdfPdfObject:", "listAnyObject", "V", 0x1, NULL },
    { "listDictWithComItextpdfTextPdfPdfDictionary:", "listDict", "V", 0x1, NULL },
    { "listArrayWithComItextpdfTextPdfPdfArray:", "listArray", "V", 0x1, NULL },
    { "listStreamWithComItextpdfTextPdfPRStream:withComItextpdfTextPdfPdfReaderInstance:", "listStream", "V", 0x1, NULL },
    { "listPageWithComItextpdfTextPdfPdfImportedPage:", "listPage", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "out_", NULL, 0x0, "Ljava.io.PrintStream;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfLister = { "PdfLister", "com.itextpdf.text.pdf", NULL, 0x1, 6, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfLister;
}

@end
