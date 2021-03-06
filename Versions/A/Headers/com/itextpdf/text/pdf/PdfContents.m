//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfContents.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfContents.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/DocWriter.h"
#include "com/itextpdf/text/Document.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/pdf/BadPdfFormatException.h"
#include "com/itextpdf/text/pdf/ByteBuffer.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "com/itextpdf/text/pdf/PdfContents.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/Exception.h"
#include "java/util/zip/Deflater.h"
#include "java/util/zip/DeflaterOutputStream.h"

BOOL ComItextpdfTextPdfPdfContents_initialized = NO;


#line 60
@implementation ComItextpdfTextPdfPdfContents

IOSByteArray * ComItextpdfTextPdfPdfContents_SAVESTATE_;
IOSByteArray * ComItextpdfTextPdfPdfContents_RESTORESTATE_;
IOSByteArray * ComItextpdfTextPdfPdfContents_ROTATE90_;
IOSByteArray * ComItextpdfTextPdfPdfContents_ROTATE180_;
IOSByteArray * ComItextpdfTextPdfPdfContents_ROTATE270_;
IOSByteArray * ComItextpdfTextPdfPdfContents_ROTATEFINAL_;


#line 80
- (instancetype)initWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)under
                    withComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)content
                    withComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)text
                    withComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)secondContent
                            withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)page {
  if (self =
#line 81
  [super init]) {
    
#line 82
    @try {
      JavaIoOutputStream *out = nil;
      JavaUtilZipDeflater *deflater = nil;
      streamBytes_ = [[JavaIoByteArrayOutputStream alloc] init];
      if (ComItextpdfTextDocument_get_compress_()) {
        
#line 88
        compressed_ = YES;
        if (text != nil)
#line 90
        compressionLevel_ = [((ComItextpdfTextPdfPdfWriter *) nil_chk([text getPdfWriter])) getCompressionLevel];
        else if (content != nil)
#line 92
        compressionLevel_ = [((ComItextpdfTextPdfPdfWriter *) nil_chk([content getPdfWriter])) getCompressionLevel];
        deflater = [[JavaUtilZipDeflater alloc] initWithInt:compressionLevel_];
        out = [[JavaUtilZipDeflaterOutputStream alloc] initWithJavaIoOutputStream:streamBytes_ withJavaUtilZipDeflater:deflater];
      }
      else
#line 97
      out = streamBytes_;
      jint rotation = [((ComItextpdfTextRectangle *) nil_chk(page)) getRotation];
      switch (rotation) {
        case 90:
        [((JavaIoOutputStream *) nil_chk(out)) writeWithByteArray:ComItextpdfTextPdfPdfContents_ROTATE90_];
        [out writeWithByteArray:[ComItextpdfTextDocWriter getISOBytesWithNSString:[ComItextpdfTextPdfByteBuffer formatDoubleWithDouble:[page getTop]]]];
        [out writeWithInt:' '];
        [out writeWithInt:'0'];
        [out writeWithByteArray:ComItextpdfTextPdfPdfContents_ROTATEFINAL_];
        break;
        case 180:
        [((JavaIoOutputStream *) nil_chk(out)) writeWithByteArray:ComItextpdfTextPdfPdfContents_ROTATE180_];
        [out writeWithByteArray:[ComItextpdfTextDocWriter getISOBytesWithNSString:[ComItextpdfTextPdfByteBuffer formatDoubleWithDouble:[page getRight]]]];
        [out writeWithInt:' '];
        [out writeWithByteArray:[ComItextpdfTextDocWriter getISOBytesWithNSString:[ComItextpdfTextPdfByteBuffer formatDoubleWithDouble:[page getTop]]]];
        [out writeWithByteArray:ComItextpdfTextPdfPdfContents_ROTATEFINAL_];
        break;
        case 270:
        [((JavaIoOutputStream *) nil_chk(out)) writeWithByteArray:ComItextpdfTextPdfPdfContents_ROTATE270_];
        [out writeWithInt:'0'];
        [out writeWithInt:' '];
        [out writeWithByteArray:[ComItextpdfTextDocWriter getISOBytesWithNSString:[ComItextpdfTextPdfByteBuffer formatDoubleWithDouble:[page getRight]]]];
        [out writeWithByteArray:ComItextpdfTextPdfPdfContents_ROTATEFINAL_];
        break;
      }
      if ([((ComItextpdfTextPdfPdfContentByte *) nil_chk(under)) size] > 0) {
        [((JavaIoOutputStream *) nil_chk(out)) writeWithByteArray:ComItextpdfTextPdfPdfContents_SAVESTATE_];
        [((ComItextpdfTextPdfByteBuffer *) nil_chk([under getInternalBuffer])) writeToWithJavaIoOutputStream:out];
        [out writeWithByteArray:ComItextpdfTextPdfPdfContents_RESTORESTATE_];
      }
      if ([((ComItextpdfTextPdfPdfContentByte *) nil_chk(content)) size] > 0) {
        [((JavaIoOutputStream *) nil_chk(out)) writeWithByteArray:ComItextpdfTextPdfPdfContents_SAVESTATE_];
        [((ComItextpdfTextPdfByteBuffer *) nil_chk([content getInternalBuffer])) writeToWithJavaIoOutputStream:out];
        [out writeWithByteArray:ComItextpdfTextPdfPdfContents_RESTORESTATE_];
      }
      if (text != nil) {
        [((JavaIoOutputStream *) nil_chk(out)) writeWithByteArray:ComItextpdfTextPdfPdfContents_SAVESTATE_];
        [((ComItextpdfTextPdfByteBuffer *) nil_chk([text getInternalBuffer])) writeToWithJavaIoOutputStream:out];
        [out writeWithByteArray:ComItextpdfTextPdfPdfContents_RESTORESTATE_];
      }
      if ([((ComItextpdfTextPdfPdfContentByte *) nil_chk(secondContent)) size] > 0) {
        [((ComItextpdfTextPdfByteBuffer *) nil_chk([secondContent getInternalBuffer])) writeToWithJavaIoOutputStream:out];
      }
      [((JavaIoOutputStream *) nil_chk(out)) close];
      if (deflater != nil) {
        [deflater end];
      }
    }
    @catch (JavaLangException *e) {
      @throw [[ComItextpdfTextPdfBadPdfFormatException alloc] initWithNSString:[((JavaLangException *) nil_chk(e)) getMessage]];
    }
    
#line 148
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:[((JavaIoByteArrayOutputStream *) nil_chk(streamBytes_)) size]]];
    
#line 149
    if (compressed_)
#line 150
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FILTER_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_FLATEDECODE_()];
  }
  return self;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfPdfContents class]) {
    ComItextpdfTextPdfPdfContents_SAVESTATE_ =
#line 62
    [ComItextpdfTextDocWriter getISOBytesWithNSString:@"q\n"];
    ComItextpdfTextPdfPdfContents_RESTORESTATE_ =
#line 63
    [ComItextpdfTextDocWriter getISOBytesWithNSString:@"Q\n"];
    ComItextpdfTextPdfPdfContents_ROTATE90_ =
#line 64
    [ComItextpdfTextDocWriter getISOBytesWithNSString:@"0 1 -1 0 "];
    ComItextpdfTextPdfPdfContents_ROTATE180_ =
#line 65
    [ComItextpdfTextDocWriter getISOBytesWithNSString:@"-1 0 0 -1 "];
    ComItextpdfTextPdfPdfContents_ROTATE270_ =
#line 66
    [ComItextpdfTextDocWriter getISOBytesWithNSString:@"0 -1 1 0 "];
    ComItextpdfTextPdfPdfContents_ROTATEFINAL_ =
#line 67
    [ComItextpdfTextDocWriter getISOBytesWithNSString:@" cm\n"];
    ComItextpdfTextPdfPdfContents_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPdfContentByte:withComItextpdfTextPdfPdfContentByte:withComItextpdfTextPdfPdfContentByte:withComItextpdfTextPdfPdfContentByte:withComItextpdfTextRectangle:", "PdfContents", NULL, 0x0, "Lcom.itextpdf.text.pdf.BadPdfFormatException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SAVESTATE_", NULL, 0x18, "[B", &ComItextpdfTextPdfPdfContents_SAVESTATE_,  },
    { "RESTORESTATE_", NULL, 0x18, "[B", &ComItextpdfTextPdfPdfContents_RESTORESTATE_,  },
    { "ROTATE90_", NULL, 0x18, "[B", &ComItextpdfTextPdfPdfContents_ROTATE90_,  },
    { "ROTATE180_", NULL, 0x18, "[B", &ComItextpdfTextPdfPdfContents_ROTATE180_,  },
    { "ROTATE270_", NULL, 0x18, "[B", &ComItextpdfTextPdfPdfContents_ROTATE270_,  },
    { "ROTATEFINAL_", NULL, 0x18, "[B", &ComItextpdfTextPdfPdfContents_ROTATEFINAL_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfContents = { "PdfContents", "com.itextpdf.text.pdf", NULL, 0x0, 1, methods, 6, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfContents;
}

@end
