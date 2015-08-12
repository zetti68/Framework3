//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfAppearance.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfAppearance.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/pdf/BaseFont.h"
#include "com/itextpdf/text/pdf/ByteBuffer.h"
#include "com/itextpdf/text/pdf/DocumentFont.h"
#include "com/itextpdf/text/pdf/FontDetails.h"
#include "com/itextpdf/text/pdf/PageResources.h"
#include "com/itextpdf/text/pdf/PdfAppearance.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "com/itextpdf/text/pdf/PdfDocument.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfOCG.h"
#include "com/itextpdf/text/pdf/PdfTemplate.h"
#include "com/itextpdf/text/pdf/PdfTransparencyGroup.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "java/util/HashMap.h"

BOOL ComItextpdfTextPdfPdfAppearance_initialized = NO;


#line 54
@implementation ComItextpdfTextPdfPdfAppearance

JavaUtilHashMap * ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_;


#line 89
- (instancetype)init {
  if (self =
#line 90
  [super init]) {
    
#line 91
    separator_ = ' ';
  }
  return self;
}


#line 94
- (instancetype)initWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)iref {
  if (self = [super init]) {
    
#line 95
    thisReference_ = iref;
  }
  return self;
}


#line 104
- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)wr {
  if (self =
#line 105
  [super initWithComItextpdfTextPdfPdfWriter:wr]) {
    
#line 106
    separator_ = ' ';
  }
  return self;
}


#line 117
+ (ComItextpdfTextPdfPdfAppearance *)createAppearanceWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                                           withFloat:(jfloat)width
                                                                           withFloat:(jfloat)height {
  
#line 118
  return [ComItextpdfTextPdfPdfAppearance createAppearanceWithComItextpdfTextPdfPdfWriter:writer withFloat:width withFloat:height withComItextpdfTextPdfPdfName:nil];
}


#line 121
+ (ComItextpdfTextPdfPdfAppearance *)createAppearanceWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                                           withFloat:(jfloat)width
                                                                           withFloat:(jfloat)height
                                                       withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)forcedName {
  
#line 122
  ComItextpdfTextPdfPdfAppearance *template_ = [[ComItextpdfTextPdfPdfAppearance alloc] initWithComItextpdfTextPdfPdfWriter:writer];
  [template_ setWidthWithFloat:width];
  [template_ setHeightWithFloat:height];
  (void) [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) addDirectTemplateSimpleWithComItextpdfTextPdfPdfTemplate:template_ withComItextpdfTextPdfPdfName:forcedName];
  return template_;
}


#line 136
- (void)setFontAndSizeWithComItextpdfTextPdfBaseFont:(ComItextpdfTextPdfBaseFont *)bf
                                           withFloat:(jfloat)size {
  
#line 137
  [self checkWriter];
  ((ComItextpdfTextPdfPdfContentByte_GraphicState *) nil_chk(state_))->size_ = size;
  if ([((ComItextpdfTextPdfBaseFont *) nil_chk(bf)) getFontType] == ComItextpdfTextPdfBaseFont_FONT_TYPE_DOCUMENT) {
    state_->fontDetails_ = [[ComItextpdfTextPdfFontDetails alloc] initWithComItextpdfTextPdfPdfName:nil withComItextpdfTextPdfPdfIndirectReference:[((ComItextpdfTextPdfDocumentFont *) check_class_cast(bf, [ComItextpdfTextPdfDocumentFont class])) getIndirectReference] withComItextpdfTextPdfBaseFont:bf];
  }
  else
#line 143
  state_->fontDetails_ = [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer_)) addSimpleWithComItextpdfTextPdfBaseFont:bf];
  ComItextpdfTextPdfPdfName *psn = [((JavaUtilHashMap *) nil_chk(ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_)) getWithId:[bf getPostscriptFontName]];
  if (psn == nil) {
    if ([bf isSubset] && [bf getFontType] == ComItextpdfTextPdfBaseFont_FONT_TYPE_TTUNI)
#line 147
    psn = [((ComItextpdfTextPdfFontDetails *) nil_chk(state_->fontDetails_)) getFontName];
    else {
      psn = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:[bf getPostscriptFontName]];
      [((ComItextpdfTextPdfFontDetails *) nil_chk(state_->fontDetails_)) setSubsetWithBoolean:NO];
    }
  }
  ComItextpdfTextPdfPageResources *prs = [self getPageResources];
  
#line 155
  (void) [((ComItextpdfTextPdfPageResources *) nil_chk(prs)) addFontWithComItextpdfTextPdfPdfName:psn withComItextpdfTextPdfPdfIndirectReference:[((ComItextpdfTextPdfFontDetails *) nil_chk(state_->fontDetails_)) getIndirectReference]];
  (void) [((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk(content_)) appendWithByteArray:[((ComItextpdfTextPdfPdfName *) nil_chk(psn)) getBytes]])) appendWithChar:' '])) appendWithFloat:size])) appendWithNSString:@" Tf"])) append_iWithInt:separator_];
}


#line 160
- (ComItextpdfTextPdfPdfContentByte *)getDuplicate {
  
#line 161
  ComItextpdfTextPdfPdfAppearance *tpl = [[ComItextpdfTextPdfPdfAppearance alloc] init];
  tpl->writer_ = writer_;
  tpl->pdf_ = pdf_;
  tpl->thisReference_ = thisReference_;
  tpl->pageResources_ = pageResources_;
  tpl->bBox_ = [[ComItextpdfTextRectangle alloc] initWithComItextpdfTextRectangle:bBox_];
  tpl->group_ = group_;
  tpl->layer_ = layer_;
  if (matrix_ != nil) {
    tpl->matrix_ = [[ComItextpdfTextPdfPdfArray alloc] initWithComItextpdfTextPdfPdfArray:matrix_];
  }
  tpl->separator_ = separator_;
  return tpl;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfPdfAppearance class]) {
    ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ =
#line 56
    [[JavaUtilHashMap alloc] init];
    {
      
#line 58
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Courier-BoldOblique" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"CoBO"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Courier-Bold" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"CoBo"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Courier-Oblique" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"CoOb"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Courier" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"Cour"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Helvetica-BoldOblique" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"HeBO"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Helvetica-Bold" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"HeBo"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Helvetica-Oblique" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"HeOb"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Helvetica" withId:ComItextpdfTextPdfPdfName_get_HELV_()];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Symbol" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"Symb"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Times-BoldItalic" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"TiBI"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Times-Bold" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"TiBo"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Times-Italic" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"TiIt"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"Times-Roman" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"TiRo"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"ZapfDingbats" withId:ComItextpdfTextPdfPdfName_get_ZADB_()];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"HYSMyeongJo-Medium" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"HySm"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"HYGoThic-Medium" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"HyGo"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"HeiseiKakuGo-W5" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"KaGo"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"HeiseiMin-W3" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"KaMi"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"MHei-Medium" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"MHei"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"MSung-Light" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"MSun"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"STSong-Light" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"STSo"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"MSungStd-Light" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"MSun"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"STSongStd-Light" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"STSo"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"HYSMyeongJoStd-Medium" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"HySm"]];
      (void) [ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_ putWithId:@"KozMinPro-Regular" withId:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"KaMi"]];
    }
    ComItextpdfTextPdfPdfAppearance_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PdfAppearance", NULL, 0x0, NULL },
    { "initWithComItextpdfTextPdfPdfIndirectReference:", "PdfAppearance", NULL, 0x0, NULL },
    { "initWithComItextpdfTextPdfPdfWriter:", "PdfAppearance", NULL, 0x0, NULL },
    { "createAppearanceWithComItextpdfTextPdfPdfWriter:withFloat:withFloat:", "createAppearance", "Lcom.itextpdf.text.pdf.PdfAppearance;", 0x9, NULL },
    { "createAppearanceWithComItextpdfTextPdfPdfWriter:withFloat:withFloat:withComItextpdfTextPdfPdfName:", "createAppearance", "Lcom.itextpdf.text.pdf.PdfAppearance;", 0x8, NULL },
    { "setFontAndSizeWithComItextpdfTextPdfBaseFont:withFloat:", "setFontAndSize", "V", 0x1, NULL },
    { "getDuplicate", NULL, "Lcom.itextpdf.text.pdf.PdfContentByte;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stdFieldFontNames_", NULL, 0x19, "Ljava.util.HashMap;", &ComItextpdfTextPdfPdfAppearance_stdFieldFontNames_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfAppearance = { "PdfAppearance", "com.itextpdf.text.pdf", NULL, 0x1, 7, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfAppearance;
}

@end