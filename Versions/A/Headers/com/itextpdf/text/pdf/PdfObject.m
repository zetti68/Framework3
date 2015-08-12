//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfObject.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfObject.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/PRIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfEncodings.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/internal/PdfIsoKeys.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"


#line 70
@implementation ComItextpdfTextPdfPdfObject

NSString * ComItextpdfTextPdfPdfObject_NOTHING_ = 
#line 102
@"";
NSString * ComItextpdfTextPdfPdfObject_TEXT_PDFDOCENCODING_ = 
#line 108
@"PDF";
NSString * ComItextpdfTextPdfPdfObject_TEXT_UNICODE_ = 
#line 111
@"UnicodeBig";


#line 132
- (instancetype)initWithInt:(jint)type {
  if (self = [super init]) {
    
#line 133
    self->type__ = type;
  }
  return self;
}


#line 144
- (instancetype)initWithInt:(jint)type
               withNSString:(NSString *)content {
  if (self = [super init]) {
    
#line 145
    self->type__ = type;
    
#line 146
    bytes_ = [ComItextpdfTextPdfPdfEncodings convertToBytesWithNSString:content withNSString:nil];
  }
  return self;
}

- (instancetype)initWithInt:(jint)type
              withByteArray:(IOSByteArray *)bytes {
  if (self = [super init]) {
    
#line 158
    self->bytes_ = bytes;
    
#line 159
    self->type__ = type;
  }
  return self;
}


#line 172
- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os {
  
#line 173
  if (bytes_ != nil) {
    [ComItextpdfTextPdfPdfWriter checkPdfIsoConformanceWithComItextpdfTextPdfPdfWriter:writer withInt:ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_OBJECT withId:self];
    [((JavaIoOutputStream *) nil_chk(os)) writeWithByteArray:bytes_];
  }
}

- (NSString *)description {
  
#line 186
  if (bytes_ == nil)
#line 187
  return [super description];
  return [ComItextpdfTextPdfPdfEncodings convertToStringWithByteArray:bytes_ withNSString:nil];
}


#line 196
- (IOSByteArray *)getBytes {
  
#line 197
  return bytes_;
}


#line 209
- (jboolean)canBeInObjStm {
  
#line 210
  switch (type__) {
    case ComItextpdfTextPdfPdfObject_NULL:
    case ComItextpdfTextPdfPdfObject_BOOLEAN:
    case ComItextpdfTextPdfPdfObject_NUMBER:
    case ComItextpdfTextPdfPdfObject_STRING:
    case ComItextpdfTextPdfPdfObject_NAME:
    case ComItextpdfTextPdfPdfObject_ARRAY:
    case ComItextpdfTextPdfPdfObject_DICTIONARY:
    return YES;
    case ComItextpdfTextPdfPdfObject_STREAM:
    case ComItextpdfTextPdfPdfObject_INDIRECT:
    default:
    return NO;
  }
}


#line 239
- (jint)length {
  
#line 240
  return ((jint) [((NSString *) nil_chk([self description])) length]);
}


#line 248
- (void)setContentWithNSString:(NSString *)content {
  
#line 249
  bytes_ = [ComItextpdfTextPdfPdfEncodings convertToBytesWithNSString:content withNSString:nil];
}


#line 270
- (jint)type {
  
#line 271
  return type__;
}


#line 280
- (jboolean)isNull {
  
#line 281
  return type__ == ComItextpdfTextPdfPdfObject_NULL;
}


#line 290
- (jboolean)isBoolean {
  
#line 291
  return type__ == ComItextpdfTextPdfPdfObject_BOOLEAN;
}


#line 300
- (jboolean)isNumber {
  
#line 301
  return type__ == ComItextpdfTextPdfPdfObject_NUMBER;
}


#line 310
- (jboolean)isString {
  
#line 311
  return type__ == ComItextpdfTextPdfPdfObject_STRING;
}


#line 320
- (jboolean)isName {
  
#line 321
  return type__ == ComItextpdfTextPdfPdfObject_NAME;
}


#line 330
- (jboolean)isArray {
  
#line 331
  return type__ == ComItextpdfTextPdfPdfObject_ARRAY;
}


#line 340
- (jboolean)isDictionary {
  
#line 341
  return type__ == ComItextpdfTextPdfPdfObject_DICTIONARY;
}


#line 350
- (jboolean)isStream {
  
#line 351
  return type__ == ComItextpdfTextPdfPdfObject_STREAM;
}


#line 361
- (jboolean)isIndirect {
  
#line 362
  return type__ == ComItextpdfTextPdfPdfObject_INDIRECT;
}


#line 370
- (ComItextpdfTextPdfPRIndirectReference *)getIndRef {
  
#line 371
  return indRef_;
}


#line 379
- (void)setIndRefWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)indRef {
  
#line 380
  self->indRef_ = indRef;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfObject *)other {
  [super copyAllFieldsTo:other];
  other->bytes_ = bytes_;
  other->indRef_ = indRef_;
  other->type__ = type__;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "PdfObject", NULL, 0x4, NULL },
    { "initWithInt:withNSString:", "PdfObject", NULL, 0x4, NULL },
    { "initWithInt:withByteArray:", "PdfObject", NULL, 0x4, NULL },
    { "toPdfWithComItextpdfTextPdfPdfWriter:withJavaIoOutputStream:", "toPdf", "V", 0x1, "Ljava.io.IOException;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "getBytes", NULL, "[B", 0x1, NULL },
    { "canBeInObjStm", NULL, "Z", 0x1, NULL },
    { "length", NULL, "I", 0x1, NULL },
    { "setContentWithNSString:", "setContent", "V", 0x4, NULL },
    { "type", NULL, "I", 0x1, NULL },
    { "isNull", NULL, "Z", 0x1, NULL },
    { "isBoolean", NULL, "Z", 0x1, NULL },
    { "isNumber", NULL, "Z", 0x1, NULL },
    { "isString", NULL, "Z", 0x1, NULL },
    { "isName", NULL, "Z", 0x1, NULL },
    { "isArray", NULL, "Z", 0x1, NULL },
    { "isDictionary", NULL, "Z", 0x1, NULL },
    { "isStream", NULL, "Z", 0x1, NULL },
    { "isIndirect", NULL, "Z", 0x1, NULL },
    { "getIndRef", NULL, "Lcom.itextpdf.text.pdf.PRIndirectReference;", 0x1, NULL },
    { "setIndRefWithComItextpdfTextPdfPRIndirectReference:", "setIndRef", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BOOLEAN_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfObject_BOOLEAN },
    { "NUMBER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfObject_NUMBER },
    { "STRING_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfObject_STRING },
    { "NAME_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfObject_NAME },
    { "ARRAY_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfObject_ARRAY },
    { "DICTIONARY_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfObject_DICTIONARY },
    { "STREAM_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfObject_STREAM },
    { "NULL__", "NULL", 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfObject_NULL },
    { "INDIRECT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfObject_INDIRECT },
    { "NOTHING_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextPdfPdfObject_NOTHING_,  },
    { "TEXT_PDFDOCENCODING_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextPdfPdfObject_TEXT_PDFDOCENCODING_,  },
    { "TEXT_UNICODE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextPdfPdfObject_TEXT_UNICODE_,  },
    { "bytes_", NULL, 0x4, "[B", NULL,  },
    { "type__", "type", 0x4, "I", NULL,  },
    { "indRef_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PRIndirectReference;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfObject = { "PdfObject", "com.itextpdf.text.pdf", NULL, 0x401, 21, methods, 15, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfObject;
}

@end
