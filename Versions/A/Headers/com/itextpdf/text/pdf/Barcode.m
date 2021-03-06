//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/Barcode.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/Barcode.java"

#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/Image.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/pdf/Barcode.h"
#include "com/itextpdf/text/pdf/BaseFont.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "com/itextpdf/text/pdf/PdfTemplate.h"
#include "java/lang/Exception.h"


#line 56
@implementation ComItextpdfTextPdfBarcode


#line 149
- (jfloat)getX {
  
#line 150
  return x_;
}


#line 156
- (void)setXWithFloat:(jfloat)x {
  
#line 157
  self->x_ = x;
}


#line 163
- (jfloat)getN {
  
#line 164
  return n_;
}


#line 170
- (void)setNWithFloat:(jfloat)n {
  
#line 171
  self->n_ = n;
}


#line 177
- (ComItextpdfTextPdfBaseFont *)getFont {
  
#line 178
  return font_;
}


#line 184
- (void)setFontWithComItextpdfTextPdfBaseFont:(ComItextpdfTextPdfBaseFont *)font {
  
#line 185
  self->font_ = font;
}


#line 191
- (jfloat)getSize {
  
#line 192
  return size_;
}


#line 198
- (void)setSizeWithFloat:(jfloat)size {
  
#line 199
  self->size_ = size;
}


#line 207
- (jfloat)getBaseline {
  
#line 208
  return baseline_;
}


#line 216
- (void)setBaselineWithFloat:(jfloat)baseline {
  
#line 217
  self->baseline_ = baseline;
}


#line 223
- (jfloat)getBarHeight {
  
#line 224
  return barHeight_;
}


#line 230
- (void)setBarHeightWithFloat:(jfloat)barHeight {
  
#line 231
  self->barHeight_ = barHeight;
}


#line 238
- (jint)getTextAlignment {
  
#line 239
  return textAlignment_;
}


#line 246
- (void)setTextAlignmentWithInt:(jint)textAlignment {
  
#line 247
  self->textAlignment_ = textAlignment;
}


#line 253
- (jboolean)isGenerateChecksum {
  
#line 254
  return generateChecksum_;
}


#line 260
- (void)setGenerateChecksumWithBoolean:(jboolean)generateChecksum {
  
#line 261
  self->generateChecksum_ = generateChecksum;
}


#line 267
- (jboolean)isChecksumText {
  
#line 268
  return checksumText_;
}


#line 274
- (void)setChecksumTextWithBoolean:(jboolean)checksumText {
  
#line 275
  self->checksumText_ = checksumText;
}


#line 282
- (jboolean)isStartStopText {
  
#line 283
  return startStopText_;
}


#line 290
- (void)setStartStopTextWithBoolean:(jboolean)startStopText {
  
#line 291
  self->startStopText_ = startStopText;
}


#line 297
- (jboolean)isExtended {
  
#line 298
  return extended_;
}


#line 304
- (void)setExtendedWithBoolean:(jboolean)extended {
  
#line 305
  self->extended_ = extended;
}


#line 311
- (NSString *)getCode {
  
#line 312
  return code_;
}


#line 318
- (void)setCodeWithNSString:(NSString *)code {
  
#line 319
  self->code_ = code;
}


#line 325
- (jboolean)isGuardBars {
  
#line 326
  return guardBars_;
}


#line 332
- (void)setGuardBarsWithBoolean:(jboolean)guardBars {
  
#line 333
  self->guardBars_ = guardBars;
}


#line 339
- (jint)getCodeType {
  
#line 340
  return codeType_;
}


#line 346
- (void)setCodeTypeWithInt:(jint)codeType {
  
#line 347
  self->codeType_ = codeType;
}


#line 354
- (ComItextpdfTextRectangle *)getBarcodeSize {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 392
- (ComItextpdfTextRectangle *)placeBarcodeWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)cb
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)barColor
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)textColor {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 402
- (ComItextpdfTextPdfPdfTemplate *)createTemplateWithBarcodeWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)cb
                                                                    withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)barColor
                                                                    withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)textColor {
  
#line 403
  ComItextpdfTextPdfPdfTemplate *tp = [((ComItextpdfTextPdfPdfContentByte *) nil_chk(cb)) createTemplateWithFloat:0 withFloat:0];
  ComItextpdfTextRectangle *rect = [self placeBarcodeWithComItextpdfTextPdfPdfContentByte:tp withComItextpdfTextBaseColor:barColor withComItextpdfTextBaseColor:textColor];
  [((ComItextpdfTextPdfPdfTemplate *) nil_chk(tp)) setBoundingBoxWithComItextpdfTextRectangle:rect];
  return tp;
}


#line 417
- (ComItextpdfTextImage *)createImageWithBarcodeWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)cb
                                                        withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)barColor
                                                        withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)textColor {
  
#line 418
  @try {
    return [ComItextpdfTextImage getInstanceWithComItextpdfTextPdfPdfTemplate:[self createTemplateWithBarcodeWithComItextpdfTextPdfPdfContentByte:cb withComItextpdfTextBaseColor:barColor withComItextpdfTextBaseColor:textColor]];
  }
  @catch (JavaLangException *e) {
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:e];
  }
}

- (jfloat)getInkSpreading {
  
#line 431
  return self->inkSpreading_;
}


#line 440
- (void)setInkSpreadingWithFloat:(jfloat)inkSpreading {
  
#line 441
  self->inkSpreading_ = inkSpreading;
}


#line 453
- (NSString *)getAltText {
  
#line 454
  return self->altText_;
}


#line 462
- (void)setAltTextWithNSString:(NSString *)altText {
  
#line 463
  self->altText_ = altText;
}

- (instancetype)init {
  if (self = [super init]) {
    code_ =
#line 133
    @"";
    inkSpreading_ =
#line 144
    0;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfBarcode *)other {
  [super copyAllFieldsTo:other];
  other->altText_ = altText_;
  other->barHeight_ = barHeight_;
  other->baseline_ = baseline_;
  other->checksumText_ = checksumText_;
  other->code_ = code_;
  other->codeType_ = codeType_;
  other->extended_ = extended_;
  other->font_ = font_;
  other->generateChecksum_ = generateChecksum_;
  other->guardBars_ = guardBars_;
  other->inkSpreading_ = inkSpreading_;
  other->n_ = n_;
  other->size_ = size_;
  other->startStopText_ = startStopText_;
  other->textAlignment_ = textAlignment_;
  other->x_ = x_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getX", NULL, "F", 0x1, NULL },
    { "setXWithFloat:", "setX", "V", 0x1, NULL },
    { "getN", NULL, "F", 0x1, NULL },
    { "setNWithFloat:", "setN", "V", 0x1, NULL },
    { "getFont", NULL, "Lcom.itextpdf.text.pdf.BaseFont;", 0x1, NULL },
    { "setFontWithComItextpdfTextPdfBaseFont:", "setFont", "V", 0x1, NULL },
    { "getSize", NULL, "F", 0x1, NULL },
    { "setSizeWithFloat:", "setSize", "V", 0x1, NULL },
    { "getBaseline", NULL, "F", 0x1, NULL },
    { "setBaselineWithFloat:", "setBaseline", "V", 0x1, NULL },
    { "getBarHeight", NULL, "F", 0x1, NULL },
    { "setBarHeightWithFloat:", "setBarHeight", "V", 0x1, NULL },
    { "getTextAlignment", NULL, "I", 0x1, NULL },
    { "setTextAlignmentWithInt:", "setTextAlignment", "V", 0x1, NULL },
    { "isGenerateChecksum", NULL, "Z", 0x1, NULL },
    { "setGenerateChecksumWithBoolean:", "setGenerateChecksum", "V", 0x1, NULL },
    { "isChecksumText", NULL, "Z", 0x1, NULL },
    { "setChecksumTextWithBoolean:", "setChecksumText", "V", 0x1, NULL },
    { "isStartStopText", NULL, "Z", 0x1, NULL },
    { "setStartStopTextWithBoolean:", "setStartStopText", "V", 0x1, NULL },
    { "isExtended", NULL, "Z", 0x1, NULL },
    { "setExtendedWithBoolean:", "setExtended", "V", 0x1, NULL },
    { "getCode", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setCodeWithNSString:", "setCode", "V", 0x1, NULL },
    { "isGuardBars", NULL, "Z", 0x1, NULL },
    { "setGuardBarsWithBoolean:", "setGuardBars", "V", 0x1, NULL },
    { "getCodeType", NULL, "I", 0x1, NULL },
    { "setCodeTypeWithInt:", "setCodeType", "V", 0x1, NULL },
    { "getBarcodeSize", NULL, "Lcom.itextpdf.text.Rectangle;", 0x401, NULL },
    { "placeBarcodeWithComItextpdfTextPdfPdfContentByte:withComItextpdfTextBaseColor:withComItextpdfTextBaseColor:", "placeBarcode", "Lcom.itextpdf.text.Rectangle;", 0x401, NULL },
    { "createTemplateWithBarcodeWithComItextpdfTextPdfPdfContentByte:withComItextpdfTextBaseColor:withComItextpdfTextBaseColor:", "createTemplateWithBarcode", "Lcom.itextpdf.text.pdf.PdfTemplate;", 0x1, NULL },
    { "createImageWithBarcodeWithComItextpdfTextPdfPdfContentByte:withComItextpdfTextBaseColor:withComItextpdfTextBaseColor:", "createImageWithBarcode", "Lcom.itextpdf.text.Image;", 0x1, NULL },
    { "getInkSpreading", NULL, "F", 0x1, NULL },
    { "setInkSpreadingWithFloat:", "setInkSpreading", "V", 0x1, NULL },
    { "getAltText", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setAltTextWithNSString:", "setAltText", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EAN13_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_EAN13 },
    { "EAN8_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_EAN8 },
    { "UPCA_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_UPCA },
    { "UPCE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_UPCE },
    { "SUPP2_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_SUPP2 },
    { "SUPP5_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_SUPP5 },
    { "POSTNET_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_POSTNET },
    { "PLANET_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_PLANET },
    { "CODE128_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_CODE128 },
    { "CODE128_UCC_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_CODE128_UCC },
    { "CODE128_RAW_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_CODE128_RAW },
    { "CODABAR_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcode_CODABAR },
    { "x_", NULL, 0x4, "F", NULL,  },
    { "n_", NULL, 0x4, "F", NULL,  },
    { "font_", NULL, 0x4, "Lcom.itextpdf.text.pdf.BaseFont;", NULL,  },
    { "size_", NULL, 0x4, "F", NULL,  },
    { "baseline_", NULL, 0x4, "F", NULL,  },
    { "barHeight_", NULL, 0x4, "F", NULL,  },
    { "textAlignment_", NULL, 0x4, "I", NULL,  },
    { "generateChecksum_", NULL, 0x4, "Z", NULL,  },
    { "checksumText_", NULL, 0x4, "Z", NULL,  },
    { "startStopText_", NULL, 0x4, "Z", NULL,  },
    { "extended_", NULL, 0x4, "Z", NULL,  },
    { "code_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
    { "guardBars_", NULL, 0x4, "Z", NULL,  },
    { "codeType_", NULL, 0x4, "I", NULL,  },
    { "inkSpreading_", NULL, 0x4, "F", NULL,  },
    { "altText_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfBarcode = { "Barcode", "com.itextpdf.text.pdf", NULL, 0x401, 37, methods, 28, fields, 0, NULL};
  return &_ComItextpdfTextPdfBarcode;
}

@end
