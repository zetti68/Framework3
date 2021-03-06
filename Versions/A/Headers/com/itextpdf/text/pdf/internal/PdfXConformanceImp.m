//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/internal/PdfXConformanceImp.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/internal/PdfXConformanceImp.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/BaseFont.h"
#include "com/itextpdf/text/pdf/ExtendedColor.h"
#include "com/itextpdf/text/pdf/PatternColor.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfGState.h"
#include "com/itextpdf/text/pdf/PdfImage.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfPatternPainter.h"
#include "com/itextpdf/text/pdf/PdfShading.h"
#include "com/itextpdf/text/pdf/PdfShadingPattern.h"
#include "com/itextpdf/text/pdf/PdfSpotColor.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/PdfXConformanceException.h"
#include "com/itextpdf/text/pdf/ShadingColor.h"
#include "com/itextpdf/text/pdf/SpotColor.h"
#include "com/itextpdf/text/pdf/internal/PdfIsoKeys.h"
#include "com/itextpdf/text/pdf/internal/PdfXConformanceImp.h"


#line 66
@implementation ComItextpdfTextPdfInternalPdfXConformanceImp


#line 74
- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer {
  if (self = [super init]) {
    pdfxConformance_ =
#line 71
    ComItextpdfTextPdfPdfWriter_PDFXNONE;
    
#line 75
    self->writer_ = writer;
  }
  return self;
}


#line 81
- (void)setPDFXConformanceWithInt:(jint)pdfxConformance {
  
#line 82
  self->pdfxConformance_ = pdfxConformance;
}


#line 88
- (jint)getPDFXConformance {
  
#line 89
  return pdfxConformance_;
}


#line 95
- (jboolean)isPdfIso {
  
#line 96
  return [self isPdfX];
}


#line 103
- (jboolean)isPdfX {
  
#line 104
  return pdfxConformance_ != ComItextpdfTextPdfPdfWriter_PDFXNONE;
}


#line 110
- (jboolean)isPdfX1A2001 {
  
#line 111
  return pdfxConformance_ == ComItextpdfTextPdfPdfWriter_PDFX1A2001;
}


#line 117
- (jboolean)isPdfX32002 {
  
#line 118
  return pdfxConformance_ == ComItextpdfTextPdfPdfWriter_PDFX32002;
}


#line 126
- (void)checkPdfIsoConformanceWithInt:(jint)key
                               withId:(id)obj1 {
  
#line 127
  if (writer_ == nil || ![writer_ isPdfX])
#line 128
  return;
  jint conf = [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer_)) getPDFXConformance];
  {
    
#line 172
    ComItextpdfTextPdfPdfImage *image;
    
#line 192
    ComItextpdfTextPdfPdfDictionary *gs;
    
#line 196
    ComItextpdfTextPdfPdfObject *obj;
    
#line 200
    jdouble v;
    
#line 130
    switch (key) {
      case ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_COLOR:
      switch (conf) {
        case ComItextpdfTextPdfPdfWriter_PDFX1A2001:
        if ([obj1 isKindOfClass:[ComItextpdfTextPdfExtendedColor class]]) {
          ComItextpdfTextPdfExtendedColor *ec = (ComItextpdfTextPdfExtendedColor *) check_class_cast(obj1, [ComItextpdfTextPdfExtendedColor class]);
          {
            
#line 143
            ComItextpdfTextPdfSpotColor *sc;
            
#line 147
            ComItextpdfTextPdfShadingColor *xc;
            
#line 151
            ComItextpdfTextPdfPatternColor *pc;
            
#line 136
            switch ([((ComItextpdfTextPdfExtendedColor *) nil_chk(ec)) getType]) {
              case ComItextpdfTextPdfExtendedColor_TYPE_CMYK:
              case ComItextpdfTextPdfExtendedColor_TYPE_GRAY:
              return;
              case ComItextpdfTextPdfExtendedColor_TYPE_RGB:
              @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"colorspace.rgb.is.not.allowed" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
              case ComItextpdfTextPdfExtendedColor_TYPE_SEPARATION:
              sc = (ComItextpdfTextPdfSpotColor *) check_class_cast(ec, [ComItextpdfTextPdfSpotColor class]);
              [self checkPdfIsoConformanceWithInt:ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_COLOR withId:[((ComItextpdfTextPdfPdfSpotColor *) nil_chk([sc getPdfSpotColor])) getAlternativeCS]];
              break;
              case ComItextpdfTextPdfExtendedColor_TYPE_SHADING:
              xc = (ComItextpdfTextPdfShadingColor *) check_class_cast(ec, [ComItextpdfTextPdfShadingColor class]);
              [self checkPdfIsoConformanceWithInt:ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_COLOR withId:[((ComItextpdfTextPdfPdfShading *) nil_chk([((ComItextpdfTextPdfPdfShadingPattern *) nil_chk([xc getPdfShadingPattern])) getShading])) getColorSpace]];
              break;
              case ComItextpdfTextPdfExtendedColor_TYPE_PATTERN:
              pc = (ComItextpdfTextPdfPatternColor *) check_class_cast(ec, [ComItextpdfTextPdfPatternColor class]);
              [self checkPdfIsoConformanceWithInt:ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_COLOR withId:[((ComItextpdfTextPdfPdfPatternPainter *) nil_chk([pc getPainter])) getDefaultColor]];
              break;
            }
          }
        }
        else
#line 156
        if ([obj1 isKindOfClass:[ComItextpdfTextBaseColor class]])
#line 157
        @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"colorspace.rgb.is.not.allowed" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
        break;
      }
      break;
      case ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_CMYK:
      break;
      case ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_RGB:
      if (conf == ComItextpdfTextPdfPdfWriter_PDFX1A2001)
#line 165
      @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"colorspace.rgb.is.not.allowed" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
      break;
      case ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_FONT:
      if (![((ComItextpdfTextPdfBaseFont *) nil_chk(((ComItextpdfTextPdfBaseFont *) check_class_cast(obj1, [ComItextpdfTextPdfBaseFont class])))) isEmbedded])
#line 169
      @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"all.the.fonts.must.be.embedded.this.one.isn.t.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [((ComItextpdfTextPdfBaseFont *) nil_chk(((ComItextpdfTextPdfBaseFont *) check_class_cast(obj1, [ComItextpdfTextPdfBaseFont class])))) getPostscriptFontName] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
      break;
      case ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_IMAGE:
      image = (ComItextpdfTextPdfPdfImage *) check_class_cast(obj1, [ComItextpdfTextPdfPdfImage class]);
      if ([((ComItextpdfTextPdfPdfImage *) nil_chk(image)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SMASK_()] != nil)
#line 174
      @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"the.smask.key.is.not.allowed.in.images" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
      {
        
#line 177
        ComItextpdfTextPdfPdfObject *cs;
        
#line 175
        switch (conf) {
          case ComItextpdfTextPdfPdfWriter_PDFX1A2001:
          cs = [image getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_COLORSPACE_()];
          if (cs == nil)
#line 179
          return;
          if ([((ComItextpdfTextPdfPdfObject *) nil_chk(cs)) isName]) {
            if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_DEVICERGB_())) isEqual:cs])
#line 182
            @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"colorspace.rgb.is.not.allowed" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
          }
          else if ([cs isArray]) {
            if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_CALRGB_())) isEqual:[((ComItextpdfTextPdfPdfArray *) check_class_cast(cs, [ComItextpdfTextPdfPdfArray class])) getPdfObjectWithInt:0]])
#line 186
            @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"colorspace.calrgb.is.not.allowed" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
          }
          break;
        }
      }
      
#line 190
      break;
      case ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_GSTATE:
      gs = (ComItextpdfTextPdfPdfDictionary *) check_class_cast(obj1, [ComItextpdfTextPdfPdfDictionary class]);
      
#line 194
      if (gs == nil)
#line 195
      break;
      obj = [((ComItextpdfTextPdfPdfDictionary *) nil_chk(gs)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_BM_()];
      if (obj != nil && ![((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfGState_get_BM_NORMAL_())) isEqual:obj] && ![((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfGState_get_BM_COMPATIBLE_())) isEqual:obj])
#line 198
      @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"blend.mode.1.not.allowed" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [obj description] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
      obj = [gs getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_CA_()];
      v = 0.0;
      if (obj != nil && (v = [((ComItextpdfTextPdfPdfNumber *) check_class_cast(obj, [ComItextpdfTextPdfPdfNumber class])) doubleValue]) != 1.0)
#line 202
      @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"transparency.is.not.allowed.ca.eq.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [NSString valueOfDouble:v] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
      obj = [gs getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ca_()];
      v = 0.0;
      if (obj != nil && (v = [((ComItextpdfTextPdfPdfNumber *) check_class_cast(obj, [ComItextpdfTextPdfPdfNumber class])) doubleValue]) != 1.0)
#line 206
      @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"transparency.is.not.allowed.ca.eq.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [NSString valueOfDouble:v] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
      break;
      case ComItextpdfTextPdfInternalPdfIsoKeys_PDFISOKEY_LAYER:
      @throw [[ComItextpdfTextPdfPdfXConformanceException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"layers.are.not.allowed" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfInternalPdfXConformanceImp *)other {
  [super copyAllFieldsTo:other];
  other->pdfxConformance_ = pdfxConformance_;
  other->writer_ = writer_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPdfWriter:", "PdfXConformanceImp", NULL, 0x1, NULL },
    { "setPDFXConformanceWithInt:", "setPDFXConformance", "V", 0x1, NULL },
    { "getPDFXConformance", NULL, "I", 0x1, NULL },
    { "isPdfIso", NULL, "Z", 0x1, NULL },
    { "isPdfX", NULL, "Z", 0x1, NULL },
    { "isPdfX1A2001", NULL, "Z", 0x1, NULL },
    { "isPdfX32002", NULL, "Z", 0x1, NULL },
    { "checkPdfIsoConformanceWithInt:withId:", "checkPdfIsoConformance", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pdfxConformance_", NULL, 0x4, "I", NULL,  },
    { "writer_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfWriter;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfInternalPdfXConformanceImp = { "PdfXConformanceImp", "com.itextpdf.text.pdf.internal", NULL, 0x1, 8, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfInternalPdfXConformanceImp;
}

@end
