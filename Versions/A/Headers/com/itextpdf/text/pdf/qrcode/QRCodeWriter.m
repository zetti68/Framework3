//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/QRCodeWriter.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/QRCodeWriter.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/qrcode/ByteMatrix.h"
#include "com/itextpdf/text/pdf/qrcode/EncodeHintType.h"
#include "com/itextpdf/text/pdf/qrcode/Encoder.h"
#include "com/itextpdf/text/pdf/qrcode/ErrorCorrectionLevel.h"
#include "com/itextpdf/text/pdf/qrcode/QRCode.h"
#include "com/itextpdf/text/pdf/qrcode/QRCodeWriter.h"
#include "com/itextpdf/text/pdf/qrcode/WriterException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/Map.h"


#line 28
@implementation ComItextpdfTextPdfQrcodeQRCodeWriter


#line 32
- (ComItextpdfTextPdfQrcodeByteMatrix *)encodeWithNSString:(NSString *)contents
                                                   withInt:(jint)width
                                                   withInt:(jint)height {
  
#line 35
  return [self encodeWithNSString:contents withInt:width withInt:height withJavaUtilMap:nil];
}


#line 38
- (ComItextpdfTextPdfQrcodeByteMatrix *)encodeWithNSString:(NSString *)contents
                                                   withInt:(jint)width
                                                   withInt:(jint)height
                                           withJavaUtilMap:(id<JavaUtilMap>)hints {
  
#line 41
  if (contents == nil || ((jint) [contents length]) == 0) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Found empty contents"];
  }
  
#line 45
  if (width < 0 || height < 0) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$ICI", @"Requested dimensions are too small: ", width, 'x',
#line 47
    height)];
  }
  
#line 50
  ComItextpdfTextPdfQrcodeErrorCorrectionLevel *errorCorrectionLevel = ComItextpdfTextPdfQrcodeErrorCorrectionLevel_get_L_();
  if (hints != nil) {
    ComItextpdfTextPdfQrcodeErrorCorrectionLevel *requestedECLevel = (ComItextpdfTextPdfQrcodeErrorCorrectionLevel *) check_class_cast([hints getWithId:ComItextpdfTextPdfQrcodeEncodeHintType_get_ERROR_CORRECTION_()], [ComItextpdfTextPdfQrcodeErrorCorrectionLevel class]);
    if (requestedECLevel != nil) {
      errorCorrectionLevel = requestedECLevel;
    }
  }
  
#line 58
  ComItextpdfTextPdfQrcodeQRCode *code = [[ComItextpdfTextPdfQrcodeQRCode alloc] init];
  [ComItextpdfTextPdfQrcodeEncoder encodeWithNSString:contents withComItextpdfTextPdfQrcodeErrorCorrectionLevel:errorCorrectionLevel withJavaUtilMap:hints withComItextpdfTextPdfQrcodeQRCode:code];
  return [ComItextpdfTextPdfQrcodeQRCodeWriter renderResultWithComItextpdfTextPdfQrcodeQRCode:code withInt:width withInt:height];
}


#line 65
+ (ComItextpdfTextPdfQrcodeByteMatrix *)renderResultWithComItextpdfTextPdfQrcodeQRCode:(ComItextpdfTextPdfQrcodeQRCode *)code
                                                                               withInt:(jint)width
                                                                               withInt:(jint)height {
  
#line 66
  ComItextpdfTextPdfQrcodeByteMatrix *input = [((ComItextpdfTextPdfQrcodeQRCode *) nil_chk(code)) getMatrix];
  jint inputWidth = [((ComItextpdfTextPdfQrcodeByteMatrix *) nil_chk(input)) getWidth];
  jint inputHeight = [input getHeight];
  jint qrWidth = inputWidth + (LShift32(ComItextpdfTextPdfQrcodeQRCodeWriter_QUIET_ZONE_SIZE, 1));
  jint qrHeight = inputHeight + (LShift32(ComItextpdfTextPdfQrcodeQRCodeWriter_QUIET_ZONE_SIZE, 1));
  jint outputWidth = [JavaLangMath maxWithInt:width withInt:qrWidth];
  jint outputHeight = [JavaLangMath maxWithInt:height withInt:qrHeight];
  
#line 74
  jint multiple = [JavaLangMath minWithInt:outputWidth / qrWidth withInt:outputHeight / qrHeight];
  
#line 79
  jint leftPadding = (outputWidth - (inputWidth * multiple)) / 2;
  jint topPadding = (outputHeight - (inputHeight * multiple)) / 2;
  
#line 82
  ComItextpdfTextPdfQrcodeByteMatrix *output = [[ComItextpdfTextPdfQrcodeByteMatrix alloc] initWithInt:outputWidth withInt:outputHeight];
  IOSObjectArray *outputArray = [output getArray];
  
#line 87
  IOSByteArray *row = [IOSByteArray arrayWithLength:outputWidth];
  
#line 90
  for (jint y = 0; y < topPadding; y++) {
    [ComItextpdfTextPdfQrcodeQRCodeWriter setRowColorWithByteArray:IOSObjectArray_Get(nil_chk(outputArray), y) withByte:(jbyte) 255];
  }
  
#line 95
  IOSObjectArray *inputArray = [input getArray];
  for (jint y = 0; y < inputHeight; y++) {
    
#line 98
    for (jint x = 0; x < leftPadding; x++) {
      *IOSByteArray_GetRef(row, x) = (jbyte) 255;
    }
    
#line 103
    jint offset = leftPadding;
    for (jint x = 0; x < inputWidth; x++) {
      jbyte value = (IOSByteArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(inputArray), y)), x) == 1) ? 0 : (jbyte) 255;
      for (jint z = 0; z < multiple; z++) {
        *IOSByteArray_GetRef(row, offset + z) = value;
      }
      offset += multiple;
    }
    
#line 113
    offset = leftPadding + (inputWidth * multiple);
    for (jint x = offset; x < outputWidth; x++) {
      *IOSByteArray_GetRef(row, x) = (jbyte) 255;
    }
    
#line 119
    offset = topPadding + (y * multiple);
    for (jint z = 0; z < multiple; z++) {
      [JavaLangSystem arraycopyWithId:row withInt:0 withId:IOSObjectArray_Get(nil_chk(outputArray), offset + z) withInt:0 withInt:outputWidth];
    }
  }
  
#line 126
  jint offset = topPadding + (inputHeight * multiple);
  for (jint y = offset; y < outputHeight; y++) {
    [ComItextpdfTextPdfQrcodeQRCodeWriter setRowColorWithByteArray:IOSObjectArray_Get(nil_chk(outputArray), y) withByte:(jbyte) 255];
  }
  
#line 131
  return output;
}


#line 134
+ (void)setRowColorWithByteArray:(IOSByteArray *)row
                        withByte:(jbyte)value {
  
#line 135
  for (jint x = 0; x < ((IOSByteArray *) nil_chk(row))->size_; x++) {
    *IOSByteArray_GetRef(row, x) = value;
  }
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "encodeWithNSString:withInt:withInt:", "encode", "Lcom.itextpdf.text.pdf.qrcode.ByteMatrix;", 0x1, "Lcom.itextpdf.text.pdf.qrcode.WriterException;" },
    { "encodeWithNSString:withInt:withInt:withJavaUtilMap:", "encode", "Lcom.itextpdf.text.pdf.qrcode.ByteMatrix;", 0x1, "Lcom.itextpdf.text.pdf.qrcode.WriterException;" },
    { "renderResultWithComItextpdfTextPdfQrcodeQRCode:withInt:withInt:", "renderResult", "Lcom.itextpdf.text.pdf.qrcode.ByteMatrix;", 0xa, NULL },
    { "setRowColorWithByteArray:withByte:", "setRowColor", "V", 0xa, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "QUIET_ZONE_SIZE_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfQrcodeQRCodeWriter_QUIET_ZONE_SIZE },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfQrcodeQRCodeWriter = { "QRCodeWriter", "com.itextpdf.text.pdf.qrcode", NULL, 0x11, 5, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfQrcodeQRCodeWriter;
}

@end