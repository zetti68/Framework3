//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ImgWMF.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ImgWMF.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/BadElementException.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/Image.h"
#include "com/itextpdf/text/ImgWMF.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/Utilities.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfTemplate.h"
#include "com/itextpdf/text/pdf/codec/wmf/InputMeta.h"
#include "com/itextpdf/text/pdf/codec/wmf/MetaDo.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/net/MalformedURLException.h"
#include "java/net/URL.h"


#line 65
@implementation ComItextpdfTextImgWMF


#line 69
- (instancetype)initWithComItextpdfTextImage:(ComItextpdfTextImage *)image {
  return
#line 70
  [super initWithComItextpdfTextImage:image];
}


#line 81
- (instancetype)initComItextpdfTextImgWMFWithJavaNetURL:(JavaNetURL *)url {
  if (self =
#line 82
  [super initWithJavaNetURL:url]) {
    
#line 83
    [self processParameters];
  }
  return self;
}

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url {
  return [self initComItextpdfTextImgWMFWithJavaNetURL:
#line 81
url];
}


#line 95
- (instancetype)initWithNSString:(NSString *)filename {
  return
#line 96
  [self initComItextpdfTextImgWMFWithJavaNetURL:[ComItextpdfTextUtilities toURLWithNSString:filename]];
}


#line 107
- (instancetype)initWithByteArray:(IOSByteArray *)img {
  if (self =
#line 108
  [super initWithJavaNetURL:(JavaNetURL *) check_class_cast(nil, [JavaNetURL class])]) {
    
#line 109
    rawData_ = img;
    
#line 110
    originalData_ = img;
    
#line 111
    [self processParameters];
  }
  return self;
}


#line 120
- (void)processParameters {
  
#line 121
  type__ = ComItextpdfTextElement_IMGTEMPLATE;
  originalType_ = ComItextpdfTextImage_ORIGINAL_WMF;
  JavaIoInputStream *is = nil;
  @try {
    NSString *errorID;
    if (rawData_ == nil) {
      is = [((JavaNetURL *) nil_chk(url_)) openStream];
      errorID = [url_ description];
    }
    else {
      is = [[JavaIoByteArrayInputStream alloc] initWithByteArray:rawData_];
      errorID = @"Byte array";
    }
    ComItextpdfTextPdfCodecWmfInputMeta *in = [[ComItextpdfTextPdfCodecWmfInputMeta alloc] initWithJavaIoInputStream:is];
    if ([in readInt] != (jint) 0x9AC6CDD7) {
      @throw [[ComItextpdfTextBadElementException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.is.not.a.valid.placeable.windows.metafile" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ errorID } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
    [in readWord];
    jint left = [in readShort];
    jint top = [in readShort];
    jint right = [in readShort];
    jint bottom = [in readShort];
    jint inch = [in readWord];
    dpiX_ = 72;
    dpiY_ = 72;
    scaledHeight_ = (jfloat) (bottom - top) / inch * 72.0f;
    [self setTopWithFloat:scaledHeight_];
    scaledWidth_ = (jfloat) (right - left) / inch * 72.0f;
    [self setRightWithFloat:scaledWidth_];
  }
  @finally {
    if (is != nil) {
      [is close];
    }
    plainWidth_ = [self getWidth];
    plainHeight_ = [self getHeight];
  }
}


#line 165
- (void)readWMFWithComItextpdfTextPdfPdfTemplate:(ComItextpdfTextPdfPdfTemplate *)template_ {
  
#line 166
  [self setTemplateDataWithComItextpdfTextPdfPdfTemplate:template_];
  [((ComItextpdfTextPdfPdfTemplate *) nil_chk(template_)) setWidthWithFloat:[self getWidth]];
  [template_ setHeightWithFloat:[self getHeight]];
  JavaIoInputStream *is = nil;
  @try {
    if (rawData_ == nil) {
      is = [((JavaNetURL *) nil_chk(url_)) openStream];
    }
    else {
      is = [[JavaIoByteArrayInputStream alloc] initWithByteArray:rawData_];
    }
    ComItextpdfTextPdfCodecWmfMetaDo *meta = [[ComItextpdfTextPdfCodecWmfMetaDo alloc] initWithJavaIoInputStream:is withComItextpdfTextPdfPdfContentByte:template_];
    [meta readAll];
  }
  @finally {
    if (is != nil) {
      [is close];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextImage:", "ImgWMF", NULL, 0x0, NULL },
    { "initWithJavaNetURL:", "ImgWMF", NULL, 0x1, "Lcom.itextpdf.text.BadElementException;Ljava.io.IOException;" },
    { "initWithNSString:", "ImgWMF", NULL, 0x1, "Lcom.itextpdf.text.BadElementException;Ljava.net.MalformedURLException;Ljava.io.IOException;" },
    { "initWithByteArray:", "ImgWMF", NULL, 0x1, "Lcom.itextpdf.text.BadElementException;Ljava.io.IOException;" },
    { "processParameters", NULL, "V", 0x2, "Lcom.itextpdf.text.BadElementException;Ljava.io.IOException;" },
    { "readWMFWithComItextpdfTextPdfPdfTemplate:", "readWMF", "V", 0x1, "Ljava.io.IOException;Lcom.itextpdf.text.DocumentException;" },
  };
  static const J2ObjcClassInfo _ComItextpdfTextImgWMF = { "ImgWMF", "com.itextpdf.text", NULL, 0x1, 6, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextImgWMF;
}

@end
