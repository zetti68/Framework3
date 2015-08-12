//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/ImageRenderInfo.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/ImageRenderInfo.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/PRStream.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/parser/ImageRenderInfo.h"
#include "com/itextpdf/text/pdf/parser/InlineImageInfo.h"
#include "com/itextpdf/text/pdf/parser/Matrix.h"
#include "com/itextpdf/text/pdf/parser/PdfImageObject.h"
#include "com/itextpdf/text/pdf/parser/Vector.h"
#include "java/io/IOException.h"


#line 58
@implementation ComItextpdfTextPdfParserImageRenderInfo


#line 70
- (instancetype)initWithComItextpdfTextPdfParserMatrix:(ComItextpdfTextPdfParserMatrix *)ctm
            withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                   withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)colorSpaceDictionary {
  if (self = [super init]) {
    imageObject_ =
#line 68
    nil;
    
#line 71
    self->ctm_ = ctm;
    
#line 72
    self->ref_ = ref;
    
#line 73
    self->inlineImageInfo_ = nil;
    
#line 74
    self->colorSpaceDictionary_ = colorSpaceDictionary;
  }
  return self;
}


#line 77
- (instancetype)initWithComItextpdfTextPdfParserMatrix:(ComItextpdfTextPdfParserMatrix *)ctm
           withComItextpdfTextPdfParserInlineImageInfo:(ComItextpdfTextPdfParserInlineImageInfo *)inlineImageInfo
                   withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)colorSpaceDictionary {
  if (self = [super init]) {
    imageObject_ =
#line 68
    nil;
    
#line 78
    self->ctm_ = ctm;
    
#line 79
    self->ref_ = nil;
    
#line 80
    self->inlineImageInfo_ = inlineImageInfo;
    
#line 81
    self->colorSpaceDictionary_ = colorSpaceDictionary;
  }
  return self;
}


#line 91
+ (ComItextpdfTextPdfParserImageRenderInfo *)createForXObjectWithComItextpdfTextPdfParserMatrix:(ComItextpdfTextPdfParserMatrix *)ctm
                                                     withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                                                            withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)colorSpaceDictionary {
  
#line 92
  return [[ComItextpdfTextPdfParserImageRenderInfo alloc] initWithComItextpdfTextPdfParserMatrix:ctm withComItextpdfTextPdfPdfIndirectReference:ref withComItextpdfTextPdfPdfDictionary:colorSpaceDictionary];
}


#line 103
+ (ComItextpdfTextPdfParserImageRenderInfo *)createForEmbeddedImageWithComItextpdfTextPdfParserMatrix:(ComItextpdfTextPdfParserMatrix *)ctm
                                                          withComItextpdfTextPdfParserInlineImageInfo:(ComItextpdfTextPdfParserInlineImageInfo *)inlineImageInfo
                                                                  withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)colorSpaceDictionary {
  
#line 104
  ComItextpdfTextPdfParserImageRenderInfo *renderInfo = [[ComItextpdfTextPdfParserImageRenderInfo alloc] initWithComItextpdfTextPdfParserMatrix:ctm withComItextpdfTextPdfParserInlineImageInfo:inlineImageInfo withComItextpdfTextPdfPdfDictionary:colorSpaceDictionary];
  return renderInfo;
}


#line 113
- (ComItextpdfTextPdfParserPdfImageObject *)getImage {
  
#line 114
  [self prepareImageObject];
  return imageObject_;
}


#line 118
- (void)prepareImageObject {
  
#line 119
  if (imageObject_ != nil)
#line 120
  return;
  
#line 122
  if (ref_ != nil) {
    ComItextpdfTextPdfPRStream *stream = (ComItextpdfTextPdfPRStream *) check_class_cast([ComItextpdfTextPdfPdfReader getPdfObjectWithComItextpdfTextPdfPdfObject:ref_], [ComItextpdfTextPdfPRStream class]);
    imageObject_ = [[ComItextpdfTextPdfParserPdfImageObject alloc] initWithComItextpdfTextPdfPRStream:stream withComItextpdfTextPdfPdfDictionary:colorSpaceDictionary_];
  }
  else
#line 125
  if (inlineImageInfo_ != nil) {
    imageObject_ = [[ComItextpdfTextPdfParserPdfImageObject alloc] initWithComItextpdfTextPdfPdfDictionary:[inlineImageInfo_ getImageDictionary] withByteArray:[inlineImageInfo_ getSamples] withComItextpdfTextPdfPdfDictionary:colorSpaceDictionary_];
  }
}


#line 133
- (ComItextpdfTextPdfParserVector *)getStartPoint {
  
#line 134
  return [((ComItextpdfTextPdfParserVector *) [[ComItextpdfTextPdfParserVector alloc] initWithFloat:0 withFloat:0 withFloat:1]) crossWithComItextpdfTextPdfParserMatrix:ctm_];
}


#line 141
- (ComItextpdfTextPdfParserMatrix *)getImageCTM {
  
#line 142
  return ctm_;
}


#line 149
- (jfloat)getArea {
  
#line 151
  return [((ComItextpdfTextPdfParserMatrix *) nil_chk(ctm_)) getDeterminant];
}


#line 158
- (ComItextpdfTextPdfPdfIndirectReference *)getRef {
  
#line 159
  return ref_;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserImageRenderInfo *)other {
  [super copyAllFieldsTo:other];
  other->colorSpaceDictionary_ = colorSpaceDictionary_;
  other->ctm_ = ctm_;
  other->imageObject_ = imageObject_;
  other->inlineImageInfo_ = inlineImageInfo_;
  other->ref_ = ref_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfParserMatrix:withComItextpdfTextPdfPdfIndirectReference:withComItextpdfTextPdfPdfDictionary:", "ImageRenderInfo", NULL, 0x2, NULL },
    { "initWithComItextpdfTextPdfParserMatrix:withComItextpdfTextPdfParserInlineImageInfo:withComItextpdfTextPdfPdfDictionary:", "ImageRenderInfo", NULL, 0x2, NULL },
    { "createForXObjectWithComItextpdfTextPdfParserMatrix:withComItextpdfTextPdfPdfIndirectReference:withComItextpdfTextPdfPdfDictionary:", "createForXObject", "Lcom.itextpdf.text.pdf.parser.ImageRenderInfo;", 0x9, NULL },
    { "createForEmbeddedImageWithComItextpdfTextPdfParserMatrix:withComItextpdfTextPdfParserInlineImageInfo:withComItextpdfTextPdfPdfDictionary:", "createForEmbeddedImage", "Lcom.itextpdf.text.pdf.parser.ImageRenderInfo;", 0xc, NULL },
    { "getImage", NULL, "Lcom.itextpdf.text.pdf.parser.PdfImageObject;", 0x1, "Ljava.io.IOException;" },
    { "prepareImageObject", NULL, "V", 0x2, "Ljava.io.IOException;" },
    { "getStartPoint", NULL, "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "getImageCTM", NULL, "Lcom.itextpdf.text.pdf.parser.Matrix;", 0x1, NULL },
    { "getArea", NULL, "F", 0x1, NULL },
    { "getRef", NULL, "Lcom.itextpdf.text.pdf.PdfIndirectReference;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ctm_", NULL, 0x12, "Lcom.itextpdf.text.pdf.parser.Matrix;", NULL,  },
    { "ref_", NULL, 0x12, "Lcom.itextpdf.text.pdf.PdfIndirectReference;", NULL,  },
    { "inlineImageInfo_", NULL, 0x12, "Lcom.itextpdf.text.pdf.parser.InlineImageInfo;", NULL,  },
    { "colorSpaceDictionary_", NULL, 0x12, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "imageObject_", NULL, 0x2, "Lcom.itextpdf.text.pdf.parser.PdfImageObject;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserImageRenderInfo = { "ImageRenderInfo", "com.itextpdf.text.pdf.parser", NULL, 0x1, 10, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfParserImageRenderInfo;
}

@end
