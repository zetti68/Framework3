//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfStream.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfStream.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/DocWriter.h"
#include "com/itextpdf/text/Document.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/OutputStreamCounter.h"
#include "com/itextpdf/text/pdf/OutputStreamEncryption.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfEncryption.h"
#include "com/itextpdf/text/pdf/PdfIndirectObject.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/PdfStream.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/internal/PdfIsoKeys.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/zip/Deflater.h"
#include "java/util/zip/DeflaterOutputStream.h"

BOOL ComItextpdfTextPdfPdfStream_initialized = NO;


#line 81
@implementation ComItextpdfTextPdfPdfStream

IOSByteArray * ComItextpdfTextPdfPdfStream_STARTSTREAM_;
IOSByteArray * ComItextpdfTextPdfPdfStream_ENDSTREAM_;
jint ComItextpdfTextPdfPdfStream_SIZESTREAM_;


#line 134
- (instancetype)initWithByteArray:(IOSByteArray *)bytes {
  if (self =
#line 135
  [super init]) {
    compressed_ =
#line 108
    NO;
    compressionLevel_ =
#line 113
    ComItextpdfTextPdfPdfStream_NO_COMPRESSION;
    streamBytes_ =
#line 115
    nil;
    inputStreamLength_ =
#line 118
    -1;
    
#line 136
    type__ = ComItextpdfTextPdfPdfObject_STREAM;
    
#line 137
    self->bytes_ = bytes;
    
#line 138
    rawLength_ = ((IOSByteArray *) nil_chk(bytes))->size_;
    
#line 139
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:bytes->size_]];
  }
  return self;
}


#line 157
- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inputStream
          withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer {
  if (self =
#line 158
  [super init]) {
    compressed_ =
#line 108
    NO;
    compressionLevel_ =
#line 113
    ComItextpdfTextPdfPdfStream_NO_COMPRESSION;
    streamBytes_ =
#line 115
    nil;
    inputStreamLength_ =
#line 118
    -1;
    
#line 159
    type__ = ComItextpdfTextPdfPdfObject_STREAM;
    
#line 160
    self->inputStream_ = inputStream;
    
#line 161
    self->writer_ = writer;
    
#line 162
    ref_ = [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) getPdfIndirectReference];
    
#line 163
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:ref_];
  }
  return self;
}


#line 170
- (instancetype)init {
  if (self =
#line 171
  [super init]) {
    compressed_ =
#line 108
    NO;
    compressionLevel_ =
#line 113
    ComItextpdfTextPdfPdfStream_NO_COMPRESSION;
    streamBytes_ =
#line 115
    nil;
    inputStreamLength_ =
#line 118
    -1;
    
#line 172
    type__ = ComItextpdfTextPdfPdfObject_STREAM;
  }
  return self;
}


#line 183
- (void)writeLength {
  
#line 184
  if (inputStream_ == nil)
#line 185
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"writelength.can.only.be.called.in.a.contructed.pdfstream.inputstream.pdfwriter" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  if (inputStreamLength_ == -1)
#line 187
  @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"writelength.can.only.be.called.after.output.of.the.stream.body" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  (void) [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer_)) addToBodyWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:inputStreamLength_] withComItextpdfTextPdfPdfIndirectReference:ref_ withBoolean:NO];
}

- (jint)getRawLength {
  
#line 196
  return rawLength_;
}


#line 202
- (void)flateCompress {
  
#line 203
  [self flateCompressWithInt:ComItextpdfTextPdfPdfStream_DEFAULT_COMPRESSION];
}


#line 211
- (void)flateCompressWithInt:(jint)compressionLevel {
  
#line 212
  if (!ComItextpdfTextDocument_get_compress_())
#line 213
  return;
  
#line 215
  if (compressed_) {
    return;
  }
  self->compressionLevel_ = compressionLevel;
  if (inputStream_ != nil) {
    compressed_ = YES;
    return;
  }
  
#line 224
  ComItextpdfTextPdfPdfObject *filter = [ComItextpdfTextPdfPdfReader getPdfObjectWithComItextpdfTextPdfPdfObject:[self getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FILTER_()]];
  if (filter != nil) {
    if ([filter isName]) {
      if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_FLATEDECODE_())) isEqual:filter])
#line 228
      return;
    }
    else if ([filter isArray]) {
      if ([((ComItextpdfTextPdfPdfArray *) check_class_cast(filter, [ComItextpdfTextPdfPdfArray class])) containsWithComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_FLATEDECODE_()])
#line 232
      return;
    }
    else {
      @throw [[JavaLangRuntimeException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"stream.could.not.be.compressed.filter.is.not.a.name.or.array" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
  }
  @try {
    
#line 240
    JavaIoByteArrayOutputStream *stream = [[JavaIoByteArrayOutputStream alloc] init];
    JavaUtilZipDeflater *deflater = [[JavaUtilZipDeflater alloc] initWithInt:compressionLevel];
    JavaUtilZipDeflaterOutputStream *zip = [[JavaUtilZipDeflaterOutputStream alloc] initWithJavaIoOutputStream:stream withJavaUtilZipDeflater:deflater];
    if (streamBytes_ != nil)
#line 244
    [streamBytes_ writeToWithJavaIoOutputStream:zip];
    else
#line 246
    [zip writeWithByteArray:bytes_];
    [zip close];
    [deflater end];
    
#line 250
    streamBytes_ = stream;
    bytes_ = nil;
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:[streamBytes_ size]]];
    if (filter == nil) {
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FILTER_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_FLATEDECODE_()];
    }
    else {
      ComItextpdfTextPdfPdfArray *filters = [[ComItextpdfTextPdfPdfArray alloc] initWithComItextpdfTextPdfPdfObject:filter];
      [filters addWithComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_FLATEDECODE_()];
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FILTER_() withComItextpdfTextPdfPdfObject:filters];
    }
    compressed_ = YES;
  }
  @catch (JavaIoIOException *ioe) {
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:ioe];
  }
}


#line 277
- (void)superToPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                           withJavaIoOutputStream:(JavaIoOutputStream *)os {
  
#line 278
  [super toPdfWithComItextpdfTextPdfPdfWriter:writer withJavaIoOutputStream:os];
}

- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os {
  
#line 285
  if (inputStream_ != nil && compressed_)
#line 286
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FILTER_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_FLATEDECODE_()];
  ComItextpdfTextPdfPdfEncryption *crypto = nil;
  if (writer != nil)
#line 289
  crypto = [writer getEncryption];
  if (crypto != nil) {
    ComItextpdfTextPdfPdfObject *filter = [self getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FILTER_()];
    if (filter != nil) {
      if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_CRYPT_())) isEqual:filter])
#line 294
      crypto = nil;
      else if ([filter isArray]) {
        ComItextpdfTextPdfPdfArray *a = (ComItextpdfTextPdfPdfArray *) check_class_cast(filter, [ComItextpdfTextPdfPdfArray class]);
        if (![a isEmpty] && [ComItextpdfTextPdfPdfName_get_CRYPT_() isEqual:[a getPdfObjectWithInt:0]])
#line 298
        crypto = nil;
      }
    }
  }
  ComItextpdfTextPdfPdfObject *nn = [self getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_()];
  if (crypto != nil && nn != nil && [nn isNumber]) {
    jint sz = [((ComItextpdfTextPdfPdfNumber *) check_class_cast(nn, [ComItextpdfTextPdfPdfNumber class])) intValue];
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:[crypto calculateStreamSizeWithInt:sz]]];
    [self superToPdfWithComItextpdfTextPdfPdfWriter:writer withJavaIoOutputStream:os];
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:nn];
  }
  else
#line 310
  [self superToPdfWithComItextpdfTextPdfPdfWriter:writer withJavaIoOutputStream:os];
  [ComItextpdfTextPdfPdfWriter checkPdfIsoConformanceWithComItextpdfTextPdfPdfWriter:writer withInt:ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_STREAM withId:self];
  [((JavaIoOutputStream *) nil_chk(os)) writeWithByteArray:ComItextpdfTextPdfPdfStream_STARTSTREAM_];
  if (inputStream_ != nil) {
    rawLength_ = 0;
    JavaUtilZipDeflaterOutputStream *def = nil;
    ComItextpdfTextPdfOutputStreamCounter *osc = [[ComItextpdfTextPdfOutputStreamCounter alloc] initWithJavaIoOutputStream:os];
    ComItextpdfTextPdfOutputStreamEncryption *ose = nil;
    JavaIoOutputStream *fout = osc;
    if (crypto != nil && ![crypto isEmbeddedFilesOnly])
#line 320
    fout = ose = [crypto getEncryptionStreamWithJavaIoOutputStream:fout];
    JavaUtilZipDeflater *deflater = nil;
    if (compressed_) {
      deflater = [[JavaUtilZipDeflater alloc] initWithInt:compressionLevel_];
      fout = def = [[JavaUtilZipDeflaterOutputStream alloc] initWithJavaIoOutputStream:fout withJavaUtilZipDeflater:deflater withInt:(jint) 0x8000];
    }
    
#line 327
    IOSByteArray *buf = [IOSByteArray arrayWithLength:4192];
    while (YES) {
      jint n = [inputStream_ readWithByteArray:buf];
      if (n <= 0)
#line 331
      break;
      [fout writeWithByteArray:buf withInt:0 withInt:n];
      rawLength_ += n;
    }
    if (def != nil) {
      [def finish];
      [((JavaUtilZipDeflater *) nil_chk(deflater)) end];
    }
    if (ose != nil)
#line 340
    [ose finish];
    inputStreamLength_ = (jint) [osc getCounter];
  }
  else {
    if (crypto != nil && ![crypto isEmbeddedFilesOnly]) {
      IOSByteArray *b;
      if (streamBytes_ != nil) {
        b = [crypto encryptByteArrayWithByteArray:[streamBytes_ toByteArray]];
      }
      else {
        b = [crypto encryptByteArrayWithByteArray:bytes_];
      }
      [os writeWithByteArray:b];
    }
    else {
      if (streamBytes_ != nil)
#line 356
      [streamBytes_ writeToWithJavaIoOutputStream:os];
      else
#line 358
      [os writeWithByteArray:bytes_];
    }
  }
  [os writeWithByteArray:ComItextpdfTextPdfPdfStream_ENDSTREAM_];
}


#line 369
- (void)writeContentWithJavaIoOutputStream:(JavaIoOutputStream *)os {
  
#line 370
  if (streamBytes_ != nil)
#line 371
  [streamBytes_ writeToWithJavaIoOutputStream:os];
  else if (bytes_ != nil)
#line 373
  [((JavaIoOutputStream *) nil_chk(os)) writeWithByteArray:bytes_];
}

- (NSString *)description {
  if ([self getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_TYPE_()] == nil) return @"Stream";
  return JreStrcat("$@", @"Stream of type: ", [self getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_TYPE_()]);
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfStream *)other {
  [super copyAllFieldsTo:other];
  other->compressed_ = compressed_;
  other->compressionLevel_ = compressionLevel_;
  other->inputStream_ = inputStream_;
  other->inputStreamLength_ = inputStreamLength_;
  other->rawLength_ = rawLength_;
  other->ref_ = ref_;
  other->streamBytes_ = streamBytes_;
  other->writer_ = writer_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfPdfStream class]) {
    ComItextpdfTextPdfPdfStream_STARTSTREAM_ =
#line 122
    [ComItextpdfTextDocWriter getISOBytesWithNSString:@"stream\n"];
    ComItextpdfTextPdfPdfStream_ENDSTREAM_ =
#line 123
    [ComItextpdfTextDocWriter getISOBytesWithNSString:@"\nendstream"];
    ComItextpdfTextPdfPdfStream_SIZESTREAM_ =
#line 124
    ((IOSByteArray *) nil_chk(ComItextpdfTextPdfPdfStream_STARTSTREAM_))->size_ + ((IOSByteArray *) nil_chk(ComItextpdfTextPdfPdfStream_ENDSTREAM_))->size_;
    ComItextpdfTextPdfPdfStream_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:", "PdfStream", NULL, 0x1, NULL },
    { "initWithJavaIoInputStream:withComItextpdfTextPdfPdfWriter:", "PdfStream", NULL, 0x1, NULL },
    { "init", "PdfStream", NULL, 0x4, NULL },
    { "writeLength", NULL, "V", 0x1, "Ljava.io.IOException;" },
    { "getRawLength", NULL, "I", 0x1, NULL },
    { "flateCompress", NULL, "V", 0x1, NULL },
    { "flateCompressWithInt:", "flateCompress", "V", 0x1, NULL },
    { "superToPdfWithComItextpdfTextPdfPdfWriter:withJavaIoOutputStream:", "superToPdf", "V", 0x4, "Ljava.io.IOException;" },
    { "toPdfWithComItextpdfTextPdfPdfWriter:withJavaIoOutputStream:", "toPdf", "V", 0x1, "Ljava.io.IOException;" },
    { "writeContentWithJavaIoOutputStream:", "writeContent", "V", 0x1, "Ljava.io.IOException;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_COMPRESSION_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfStream_DEFAULT_COMPRESSION },
    { "NO_COMPRESSION_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfStream_NO_COMPRESSION },
    { "BEST_SPEED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfStream_BEST_SPEED },
    { "BEST_COMPRESSION_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfStream_BEST_COMPRESSION },
    { "compressed_", NULL, 0x4, "Z", NULL,  },
    { "compressionLevel_", NULL, 0x4, "I", NULL,  },
    { "streamBytes_", NULL, 0x4, "Ljava.io.ByteArrayOutputStream;", NULL,  },
    { "inputStream_", NULL, 0x4, "Ljava.io.InputStream;", NULL,  },
    { "ref_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfIndirectReference;", NULL,  },
    { "inputStreamLength_", NULL, 0x4, "I", NULL,  },
    { "writer_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfWriter;", NULL,  },
    { "rawLength_", NULL, 0x4, "I", NULL,  },
    { "STARTSTREAM_", NULL, 0x18, "[B", &ComItextpdfTextPdfPdfStream_STARTSTREAM_,  },
    { "ENDSTREAM_", NULL, 0x18, "[B", &ComItextpdfTextPdfPdfStream_ENDSTREAM_,  },
    { "SIZESTREAM_", NULL, 0x18, "I", &ComItextpdfTextPdfPdfStream_SIZESTREAM_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfStream = { "PdfStream", "com.itextpdf.text.pdf", NULL, 0x1, 11, methods, 15, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfStream;
}

@end
