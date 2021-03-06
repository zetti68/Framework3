//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PRStream.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PRStream.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/Document.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/pdf/PRStream.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfEncryption.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/PdfStream.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/util/HashMap.h"
#include "java/util/zip/Deflater.h"
#include "java/util/zip/DeflaterOutputStream.h"


#line 56
@implementation ComItextpdfTextPdfPRStream


#line 66
- (instancetype)initComItextpdfTextPdfPRStreamWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream
                                         withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)newDic {
  if (self = [super init]) {
    objNum_ =
#line 63
    0;
    objGen_ =
#line 64
    0;
    
#line 67
    reader_ = ((ComItextpdfTextPdfPRStream *) nil_chk(stream))->reader_;
    
#line 68
    offset_ = stream->offset_;
    
#line 69
    length_ = stream->length_;
    
#line 70
    compressed_ = stream->compressed_;
    
#line 71
    compressionLevel_ = stream->compressionLevel_;
    
#line 72
    streamBytes_ = stream->streamBytes_;
    
#line 73
    bytes_ = stream->bytes_;
    
#line 74
    objNum_ = stream->objNum_;
    
#line 75
    objGen_ = stream->objGen_;
    
#line 76
    if (newDic != nil)
#line 77
    [self putAllWithComItextpdfTextPdfPdfDictionary:newDic];
    else
#line 79
    [((JavaUtilHashMap *) nil_chk(hashMap_)) putAllWithJavaUtilMap:stream->hashMap_];
  }
  return self;
}

- (instancetype)initWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream
               withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)newDic {
  return [self initComItextpdfTextPdfPRStreamWithComItextpdfTextPdfPRStream:
#line 66
stream withComItextpdfTextPdfPdfDictionary:newDic];
}


#line 82
- (instancetype)initWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream
               withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)newDic
                   withComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader {
  if (self =
#line 83
  [self initComItextpdfTextPdfPRStreamWithComItextpdfTextPdfPRStream:stream withComItextpdfTextPdfPdfDictionary:newDic]) {
    
#line 84
    self->reader_ = reader;
  }
  return self;
}


#line 87
- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                           withLong:(jlong)offset {
  if (self = [super init]) {
    objNum_ =
#line 63
    0;
    objGen_ =
#line 64
    0;
    
#line 88
    self->reader_ = reader;
    
#line 89
    self->offset_ = offset;
  }
  return self;
}


#line 92
- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                      withByteArray:(IOSByteArray *)conts {
  return
#line 93
  [self initComItextpdfTextPdfPRStreamWithComItextpdfTextPdfPdfReader:reader withByteArray:conts withInt:ComItextpdfTextPdfPdfStream_DEFAULT_COMPRESSION];
}


#line 104
- (instancetype)initComItextpdfTextPdfPRStreamWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                                                withByteArray:(IOSByteArray *)conts
                                                                      withInt:(jint)compressionLevel {
  if (self = [super init]) {
    objNum_ =
#line 63
    0;
    objGen_ =
#line 64
    0;
    
#line 105
    self->reader_ = reader;
    
#line 106
    self->offset_ = -1;
    
#line 107
    if (ComItextpdfTextDocument_get_compress_()) {
      @try {
        JavaIoByteArrayOutputStream *stream = [[JavaIoByteArrayOutputStream alloc] init];
        JavaUtilZipDeflater *deflater = [[JavaUtilZipDeflater alloc] initWithInt:compressionLevel];
        JavaUtilZipDeflaterOutputStream *zip = [[JavaUtilZipDeflaterOutputStream alloc] initWithJavaIoOutputStream:stream withJavaUtilZipDeflater:deflater];
        [zip writeWithByteArray:conts];
        [zip close];
        [deflater end];
        bytes_ = [stream toByteArray];
      }
      @catch (JavaIoIOException *ioe) {
        @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:ioe];
      }
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FILTER_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_FLATEDECODE_()];
    }
    else
#line 123
    bytes_ = conts;
    
#line 124
    [self setLengthWithInt:((IOSByteArray *) nil_chk(bytes_))->size_];
  }
  return self;
}

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                      withByteArray:(IOSByteArray *)conts
                                            withInt:(jint)compressionLevel {
  return [self initComItextpdfTextPdfPRStreamWithComItextpdfTextPdfPdfReader:
#line 104
reader withByteArray:conts withInt:compressionLevel];
}


#line 136
- (void)setDataWithByteArray:(IOSByteArray *)data
                 withBoolean:(jboolean)compress {
  
#line 137
  [self setDataWithByteArray:data withBoolean:compress withInt:ComItextpdfTextPdfPdfStream_DEFAULT_COMPRESSION];
}


#line 150
- (void)setDataWithByteArray:(IOSByteArray *)data
                 withBoolean:(jboolean)compress
                     withInt:(jint)compressionLevel {
  
#line 151
  [self removeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FILTER_()];
  self->offset_ = -1;
  if (ComItextpdfTextDocument_get_compress_() && compress) {
    @try {
      JavaIoByteArrayOutputStream *stream = [[JavaIoByteArrayOutputStream alloc] init];
      JavaUtilZipDeflater *deflater = [[JavaUtilZipDeflater alloc] initWithInt:compressionLevel];
      JavaUtilZipDeflaterOutputStream *zip = [[JavaUtilZipDeflaterOutputStream alloc] initWithJavaIoOutputStream:stream withJavaUtilZipDeflater:deflater];
      [zip writeWithByteArray:data];
      [zip close];
      [deflater end];
      bytes_ = [stream toByteArray];
      self->compressionLevel_ = compressionLevel;
    }
    @catch (JavaIoIOException *ioe) {
      @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:ioe];
    }
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FILTER_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_FLATEDECODE_()];
  }
  else
#line 170
  bytes_ = data;
  [self setLengthWithInt:((IOSByteArray *) nil_chk(bytes_))->size_];
}


#line 182
- (void)setDataRawWithByteArray:(IOSByteArray *)data {
  
#line 183
  self->offset_ = -1;
  bytes_ = data;
  [self setLengthWithInt:((IOSByteArray *) nil_chk(bytes_))->size_];
}


#line 191
- (void)setDataWithByteArray:(IOSByteArray *)data {
  
#line 192
  [self setDataWithByteArray:data withBoolean:YES];
}


#line 195
- (void)setLengthWithInt:(jint)length {
  
#line 196
  self->length_ = length;
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:length]];
}


#line 200
- (jlong)getOffset {
  
#line 201
  return offset_;
}


#line 204
- (jint)getLength {
  
#line 205
  return length_;
}


#line 208
- (ComItextpdfTextPdfPdfReader *)getReader {
  
#line 209
  return reader_;
}


#line 212
- (IOSByteArray *)getBytes {
  
#line 213
  return bytes_;
}


#line 216
- (void)setObjNumWithInt:(jint)objNum
                 withInt:(jint)objGen {
  
#line 217
  self->objNum_ = objNum;
  self->objGen_ = objGen;
}


#line 221
- (jint)getObjNum {
  
#line 222
  return objNum_;
}


#line 225
- (jint)getObjGen {
  
#line 226
  return objGen_;
}


#line 229
- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os {
  
#line 230
  IOSByteArray *b = [ComItextpdfTextPdfPdfReader getStreamBytesRawWithComItextpdfTextPdfPRStream:self];
  ComItextpdfTextPdfPdfEncryption *crypto = nil;
  if (writer != nil)
#line 233
  crypto = [writer getEncryption];
  ComItextpdfTextPdfPdfObject *objLen = [self getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_()];
  jint nn = ((IOSByteArray *) nil_chk(b))->size_;
  if (crypto != nil)
#line 237
  nn = [crypto calculateStreamSizeWithInt:nn];
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:nn]];
  [self superToPdfWithComItextpdfTextPdfPdfWriter:writer withJavaIoOutputStream:os];
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:objLen];
  [((JavaIoOutputStream *) nil_chk(os)) writeWithByteArray:ComItextpdfTextPdfPdfStream_get_STARTSTREAM_()];
  if (length_ > 0) {
    if (crypto != nil && ![crypto isEmbeddedFilesOnly])
#line 244
    b = [crypto encryptByteArrayWithByteArray:b];
    [os writeWithByteArray:b];
  }
  [os writeWithByteArray:ComItextpdfTextPdfPdfStream_get_ENDSTREAM_()];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPRStream *)other {
  [super copyAllFieldsTo:other];
  other->length_ = length_;
  other->objGen_ = objGen_;
  other->objNum_ = objNum_;
  other->offset_ = offset_;
  other->reader_ = reader_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPRStream:withComItextpdfTextPdfPdfDictionary:", "PRStream", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfPRStream:withComItextpdfTextPdfPdfDictionary:withComItextpdfTextPdfPdfReader:", "PRStream", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfPdfReader:withLong:", "PRStream", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfPdfReader:withByteArray:", "PRStream", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfPdfReader:withByteArray:withInt:", "PRStream", NULL, 0x1, NULL },
    { "setDataWithByteArray:withBoolean:", "setData", "V", 0x1, NULL },
    { "setDataWithByteArray:withBoolean:withInt:", "setData", "V", 0x1, NULL },
    { "setDataRawWithByteArray:", "setDataRaw", "V", 0x1, NULL },
    { "setDataWithByteArray:", "setData", "V", 0x1, NULL },
    { "setLengthWithInt:", "setLength", "V", 0x1, NULL },
    { "getOffset", NULL, "J", 0x1, NULL },
    { "getLength", NULL, "I", 0x1, NULL },
    { "getReader", NULL, "Lcom.itextpdf.text.pdf.PdfReader;", 0x1, NULL },
    { "getBytes", NULL, "[B", 0x1, NULL },
    { "setObjNumWithInt:withInt:", "setObjNum", "V", 0x1, NULL },
    { "getObjNum", NULL, "I", 0x0, NULL },
    { "getObjGen", NULL, "I", 0x0, NULL },
    { "toPdfWithComItextpdfTextPdfPdfWriter:withJavaIoOutputStream:", "toPdf", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfReader;", NULL,  },
    { "offset_", NULL, 0x4, "J", NULL,  },
    { "length_", NULL, 0x4, "I", NULL,  },
    { "objNum_", NULL, 0x4, "I", NULL,  },
    { "objGen_", NULL, 0x4, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPRStream = { "PRStream", "com.itextpdf.text.pdf", NULL, 0x1, 18, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfPRStream;
}

@end
