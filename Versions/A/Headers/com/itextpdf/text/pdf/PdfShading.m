//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfShading.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfShading.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/CMYKColor.h"
#include "com/itextpdf/text/pdf/ColorDetails.h"
#include "com/itextpdf/text/pdf/ExtendedColor.h"
#include "com/itextpdf/text/pdf/GrayColor.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfBoolean.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfFunction.h"
#include "com/itextpdf/text/pdf/PdfIndirectObject.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfShading.h"
#include "com/itextpdf/text/pdf/PdfSpotColor.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/SpotColor.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"


#line 54
@implementation ComItextpdfTextPdfPdfShading


#line 77
- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer {
  if (self = [super init]) {
    antiAlias_ =
#line 74
    NO;
    
#line 78
    self->writer_ = writer;
  }
  return self;
}


#line 81
- (void)setColorSpaceWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color {
  
#line 82
  cspace_ = color;
  jint type = [ComItextpdfTextPdfExtendedColor getTypeWithComItextpdfTextBaseColor:color];
  ComItextpdfTextPdfPdfObject *colorSpace = nil;
  switch (type) {
    case ComItextpdfTextPdfExtendedColor_TYPE_GRAY:
    {
      
#line 87
      colorSpace = ComItextpdfTextPdfPdfName_get_DEVICEGRAY_();
      break;
    }
    case ComItextpdfTextPdfExtendedColor_TYPE_CMYK:
    {
      
#line 91
      colorSpace = ComItextpdfTextPdfPdfName_get_DEVICECMYK_();
      break;
    }
    case ComItextpdfTextPdfExtendedColor_TYPE_SEPARATION:
    {
      
#line 95
      ComItextpdfTextPdfSpotColor *spot = (ComItextpdfTextPdfSpotColor *) check_class_cast(color, [ComItextpdfTextPdfSpotColor class]);
      colorDetails_ = [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer_)) addSimpleWithComItextpdfTextPdfPdfSpotColor:[((ComItextpdfTextPdfSpotColor *) nil_chk(spot)) getPdfSpotColor]];
      colorSpace = [((ComItextpdfTextPdfColorDetails *) nil_chk(colorDetails_)) getIndirectReference];
      break;
    }
    case ComItextpdfTextPdfExtendedColor_TYPE_PATTERN:
    case ComItextpdfTextPdfExtendedColor_TYPE_SHADING:
    {
      
#line 102
      [ComItextpdfTextPdfPdfShading throwColorSpaceError];
    }
    default:
    colorSpace = ComItextpdfTextPdfPdfName_get_DEVICERGB_();
    break;
  }
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(shading_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_COLORSPACE_() withComItextpdfTextPdfPdfObject:colorSpace];
}


#line 111
- (ComItextpdfTextBaseColor *)getColorSpace {
  
#line 112
  return cspace_;
}


#line 115
+ (void)throwColorSpaceError {
  
#line 116
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"a.tiling.or.shading.pattern.cannot.be.used.as.a.color.space.in.a.shading.pattern" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
}


#line 119
+ (void)checkCompatibleColorsWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)c1
                             withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)c2 {
  
#line 120
  jint type1 = [ComItextpdfTextPdfExtendedColor getTypeWithComItextpdfTextBaseColor:c1];
  jint type2 = [ComItextpdfTextPdfExtendedColor getTypeWithComItextpdfTextBaseColor:c2];
  if (type1 != type2)
#line 123
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"both.colors.must.be.of.the.same.type" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  if (type1 == ComItextpdfTextPdfExtendedColor_TYPE_SEPARATION && [((ComItextpdfTextPdfSpotColor *) nil_chk(((ComItextpdfTextPdfSpotColor *) check_class_cast(c1, [ComItextpdfTextPdfSpotColor class])))) getPdfSpotColor] != [((ComItextpdfTextPdfSpotColor *) nil_chk(((ComItextpdfTextPdfSpotColor *) check_class_cast(c2, [ComItextpdfTextPdfSpotColor class])))) getPdfSpotColor])
#line 125
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"the.spot.color.must.be.the.same.only.the.tint.can.vary" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  if (type1 == ComItextpdfTextPdfExtendedColor_TYPE_PATTERN || type1 == ComItextpdfTextPdfExtendedColor_TYPE_SHADING)
#line 127
  [ComItextpdfTextPdfPdfShading throwColorSpaceError];
}


#line 130
+ (IOSFloatArray *)getColorArrayWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color {
  
#line 131
  jint type = [ComItextpdfTextPdfExtendedColor getTypeWithComItextpdfTextBaseColor:color];
  switch (type) {
    case ComItextpdfTextPdfExtendedColor_TYPE_GRAY:
    {
      
#line 134
      return [IOSFloatArray arrayWithFloats:(jfloat[]){ [((ComItextpdfTextPdfGrayColor *) nil_chk(((ComItextpdfTextPdfGrayColor *) check_class_cast(color, [ComItextpdfTextPdfGrayColor class])))) getGray] } count:1];
    }
    case ComItextpdfTextPdfExtendedColor_TYPE_CMYK:
    {
      
#line 137
      ComItextpdfTextPdfCMYKColor *cmyk = (ComItextpdfTextPdfCMYKColor *) check_class_cast(color, [ComItextpdfTextPdfCMYKColor class]);
      return [IOSFloatArray arrayWithFloats:(jfloat[]){ [((ComItextpdfTextPdfCMYKColor *) nil_chk(cmyk)) getCyan], [cmyk getMagenta], [cmyk getYellow], [cmyk getBlack] } count:4];
    }
    case ComItextpdfTextPdfExtendedColor_TYPE_SEPARATION:
    {
      
#line 141
      return [IOSFloatArray arrayWithFloats:(jfloat[]){ [((ComItextpdfTextPdfSpotColor *) nil_chk(((ComItextpdfTextPdfSpotColor *) check_class_cast(color, [ComItextpdfTextPdfSpotColor class])))) getTint] } count:1];
    }
    case ComItextpdfTextPdfExtendedColor_TYPE_RGB:
    {
      
#line 144
      return [IOSFloatArray arrayWithFloats:(jfloat[]){ [((ComItextpdfTextBaseColor *) nil_chk(color)) getRed] / 255.0f, [color getGreen] / 255.0f, [color getBlue] / 255.0f } count:3];
    }
  }
  [ComItextpdfTextPdfPdfShading throwColorSpaceError];
  return nil;
}


#line 151
+ (ComItextpdfTextPdfPdfShading *)type1WithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                          withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)colorSpace
                                                        withFloatArray:(IOSFloatArray *)domain
                                                        withFloatArray:(IOSFloatArray *)tMatrix
                                     withComItextpdfTextPdfPdfFunction:(ComItextpdfTextPdfPdfFunction *)function {
  
#line 152
  ComItextpdfTextPdfPdfShading *sp = [[ComItextpdfTextPdfPdfShading alloc] initWithComItextpdfTextPdfPdfWriter:writer];
  sp->shading_ = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  sp->shadingType_ = 1;
  [sp->shading_ putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SHADINGTYPE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:sp->shadingType_]];
  [sp setColorSpaceWithComItextpdfTextBaseColor:colorSpace];
  if (domain != nil)
#line 158
  [sp->shading_ putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_DOMAIN__() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfArray alloc] initWithFloatArray:domain]];
  if (tMatrix != nil)
#line 160
  [sp->shading_ putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_MATRIX_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfArray alloc] initWithFloatArray:tMatrix]];
  [sp->shading_ putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FUNCTION_() withComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfPdfFunction *) nil_chk(function)) getReference]];
  return sp;
}


#line 165
+ (ComItextpdfTextPdfPdfShading *)type2WithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                          withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)colorSpace
                                                        withFloatArray:(IOSFloatArray *)coords
                                                        withFloatArray:(IOSFloatArray *)domain
                                     withComItextpdfTextPdfPdfFunction:(ComItextpdfTextPdfPdfFunction *)function
                                                      withBooleanArray:(IOSBooleanArray *)extend {
  
#line 166
  ComItextpdfTextPdfPdfShading *sp = [[ComItextpdfTextPdfPdfShading alloc] initWithComItextpdfTextPdfPdfWriter:writer];
  sp->shading_ = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  sp->shadingType_ = 2;
  [sp->shading_ putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SHADINGTYPE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:sp->shadingType_]];
  [sp setColorSpaceWithComItextpdfTextBaseColor:colorSpace];
  [sp->shading_ putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_COORDS_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfArray alloc] initWithFloatArray:coords]];
  if (domain != nil)
#line 173
  [sp->shading_ putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_DOMAIN__() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfArray alloc] initWithFloatArray:domain]];
  [sp->shading_ putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FUNCTION_() withComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfPdfFunction *) nil_chk(function)) getReference]];
  if (extend != nil && (IOSBooleanArray_Get(extend, 0) || IOSBooleanArray_Get(extend, 1))) {
    ComItextpdfTextPdfPdfArray *array = [[ComItextpdfTextPdfPdfArray alloc] initWithComItextpdfTextPdfPdfObject:IOSBooleanArray_Get(extend, 0) ? ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_() : ComItextpdfTextPdfPdfBoolean_get_PDFFALSE_()];
    [array addWithComItextpdfTextPdfPdfObject:IOSBooleanArray_Get(extend, 1) ? ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_() : ComItextpdfTextPdfPdfBoolean_get_PDFFALSE_()];
    [sp->shading_ putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_EXTEND_() withComItextpdfTextPdfPdfObject:array];
  }
  return sp;
}


#line 183
+ (ComItextpdfTextPdfPdfShading *)type3WithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                          withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)colorSpace
                                                        withFloatArray:(IOSFloatArray *)coords
                                                        withFloatArray:(IOSFloatArray *)domain
                                     withComItextpdfTextPdfPdfFunction:(ComItextpdfTextPdfPdfFunction *)function
                                                      withBooleanArray:(IOSBooleanArray *)extend {
  
#line 184
  ComItextpdfTextPdfPdfShading *sp = [ComItextpdfTextPdfPdfShading type2WithComItextpdfTextPdfPdfWriter:writer withComItextpdfTextBaseColor:colorSpace withFloatArray:coords withFloatArray:domain withComItextpdfTextPdfPdfFunction:function withBooleanArray:extend];
  ((ComItextpdfTextPdfPdfShading *) nil_chk(sp))->shadingType_ = 3;
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(sp->shading_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SHADINGTYPE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:sp->shadingType_]];
  return sp;
}


#line 190
+ (ComItextpdfTextPdfPdfShading *)simpleAxialWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                                   withFloat:(jfloat)x0
                                                                   withFloat:(jfloat)y0
                                                                   withFloat:(jfloat)x1
                                                                   withFloat:(jfloat)y1
                                                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)startColor
                                                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)endColor
                                                                 withBoolean:(jboolean)extendStart
                                                                 withBoolean:(jboolean)extendEnd {
  
#line 191
  [ComItextpdfTextPdfPdfShading checkCompatibleColorsWithComItextpdfTextBaseColor:startColor withComItextpdfTextBaseColor:endColor];
  ComItextpdfTextPdfPdfFunction *function = [ComItextpdfTextPdfPdfFunction type2WithComItextpdfTextPdfPdfWriter:writer withFloatArray:[IOSFloatArray arrayWithFloats:(jfloat[]){ 0, 1 } count:2] withFloatArray:nil withFloatArray:[ComItextpdfTextPdfPdfShading getColorArrayWithComItextpdfTextBaseColor:startColor] withFloatArray:
#line 193
  [ComItextpdfTextPdfPdfShading getColorArrayWithComItextpdfTextBaseColor:endColor] withFloat:1];
  return [ComItextpdfTextPdfPdfShading type2WithComItextpdfTextPdfPdfWriter:writer withComItextpdfTextBaseColor:startColor withFloatArray:[IOSFloatArray arrayWithFloats:(jfloat[]){ x0, y0, x1, y1 } count:4] withFloatArray:nil withComItextpdfTextPdfPdfFunction:function withBooleanArray:[IOSBooleanArray arrayWithBooleans:(jboolean[]){ extendStart, extendEnd } count:2]];
}


#line 197
+ (ComItextpdfTextPdfPdfShading *)simpleAxialWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                                   withFloat:(jfloat)x0
                                                                   withFloat:(jfloat)y0
                                                                   withFloat:(jfloat)x1
                                                                   withFloat:(jfloat)y1
                                                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)startColor
                                                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)endColor {
  
#line 198
  return [ComItextpdfTextPdfPdfShading simpleAxialWithComItextpdfTextPdfPdfWriter:writer withFloat:x0 withFloat:y0 withFloat:x1 withFloat:y1 withComItextpdfTextBaseColor:startColor withComItextpdfTextBaseColor:endColor withBoolean:YES withBoolean:YES];
}


#line 201
+ (ComItextpdfTextPdfPdfShading *)simpleRadialWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                                    withFloat:(jfloat)x0
                                                                    withFloat:(jfloat)y0
                                                                    withFloat:(jfloat)r0
                                                                    withFloat:(jfloat)x1
                                                                    withFloat:(jfloat)y1
                                                                    withFloat:(jfloat)r1
                                                 withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)startColor
                                                 withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)endColor
                                                                  withBoolean:(jboolean)extendStart
                                                                  withBoolean:(jboolean)extendEnd {
  
#line 202
  [ComItextpdfTextPdfPdfShading checkCompatibleColorsWithComItextpdfTextBaseColor:startColor withComItextpdfTextBaseColor:endColor];
  ComItextpdfTextPdfPdfFunction *function = [ComItextpdfTextPdfPdfFunction type2WithComItextpdfTextPdfPdfWriter:writer withFloatArray:[IOSFloatArray arrayWithFloats:(jfloat[]){ 0, 1 } count:2] withFloatArray:nil withFloatArray:[ComItextpdfTextPdfPdfShading getColorArrayWithComItextpdfTextBaseColor:startColor] withFloatArray:
#line 204
  [ComItextpdfTextPdfPdfShading getColorArrayWithComItextpdfTextBaseColor:endColor] withFloat:1];
  return [ComItextpdfTextPdfPdfShading type3WithComItextpdfTextPdfPdfWriter:writer withComItextpdfTextBaseColor:startColor withFloatArray:[IOSFloatArray arrayWithFloats:(jfloat[]){ x0, y0, r0, x1, y1, r1 } count:6] withFloatArray:nil withComItextpdfTextPdfPdfFunction:function withBooleanArray:[IOSBooleanArray arrayWithBooleans:(jboolean[]){ extendStart, extendEnd } count:2]];
}


#line 208
+ (ComItextpdfTextPdfPdfShading *)simpleRadialWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                                    withFloat:(jfloat)x0
                                                                    withFloat:(jfloat)y0
                                                                    withFloat:(jfloat)r0
                                                                    withFloat:(jfloat)x1
                                                                    withFloat:(jfloat)y1
                                                                    withFloat:(jfloat)r1
                                                 withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)startColor
                                                 withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)endColor {
  
#line 209
  return [ComItextpdfTextPdfPdfShading simpleRadialWithComItextpdfTextPdfPdfWriter:writer withFloat:x0 withFloat:y0 withFloat:r0 withFloat:x1 withFloat:y1 withFloat:r1 withComItextpdfTextBaseColor:startColor withComItextpdfTextBaseColor:endColor withBoolean:YES withBoolean:YES];
}


#line 212
- (ComItextpdfTextPdfPdfName *)getShadingName {
  
#line 213
  return shadingName_;
}


#line 216
- (ComItextpdfTextPdfPdfIndirectReference *)getShadingReference {
  
#line 217
  if (shadingReference_ == nil)
#line 218
  shadingReference_ = [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer_)) getPdfIndirectReference];
  return shadingReference_;
}


#line 222
- (void)setNameWithInt:(jint)number {
  
#line 223
  shadingName_ = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:JreStrcat("$I", @"Sh", number)];
}


#line 226
- (void)addToBody {
  
#line 227
  if (bBox_ != nil)
#line 228
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(shading_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_BBOX_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfArray alloc] initWithFloatArray:bBox_]];
  if (antiAlias_)
#line 230
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(shading_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ANTIALIAS_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_()];
  (void) [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer_)) addToBodyWithComItextpdfTextPdfPdfObject:shading_ withComItextpdfTextPdfPdfIndirectReference:[self getShadingReference]];
}


#line 234
- (ComItextpdfTextPdfPdfWriter *)getWriter {
  
#line 235
  return writer_;
}


#line 238
- (ComItextpdfTextPdfColorDetails *)getColorDetails {
  
#line 239
  return colorDetails_;
}


#line 242
- (IOSFloatArray *)getBBox {
  
#line 243
  return bBox_;
}


#line 246
- (void)setBBoxWithFloatArray:(IOSFloatArray *)bBox {
  
#line 247
  if (((IOSFloatArray *) nil_chk(bBox))->size_ != 4)
#line 248
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"bbox.must.be.a.4.element.array" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  self->bBox_ = bBox;
}


#line 252
- (jboolean)isAntiAlias {
  
#line 253
  return antiAlias_;
}


#line 256
- (void)setAntiAliasWithBoolean:(jboolean)antiAlias {
  
#line 257
  self->antiAlias_ = antiAlias;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfShading *)other {
  [super copyAllFieldsTo:other];
  other->antiAlias_ = antiAlias_;
  other->bBox_ = bBox_;
  other->colorDetails_ = colorDetails_;
  other->cspace_ = cspace_;
  other->shading_ = shading_;
  other->shadingName_ = shadingName_;
  other->shadingReference_ = shadingReference_;
  other->shadingType_ = shadingType_;
  other->writer_ = writer_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPdfWriter:", "PdfShading", NULL, 0x4, NULL },
    { "setColorSpaceWithComItextpdfTextBaseColor:", "setColorSpace", "V", 0x4, NULL },
    { "getColorSpace", NULL, "Lcom.itextpdf.text.BaseColor;", 0x1, NULL },
    { "throwColorSpaceError", NULL, "V", 0x9, NULL },
    { "checkCompatibleColorsWithComItextpdfTextBaseColor:withComItextpdfTextBaseColor:", "checkCompatibleColors", "V", 0x9, NULL },
    { "getColorArrayWithComItextpdfTextBaseColor:", "getColorArray", "[F", 0x9, NULL },
    { "type1WithComItextpdfTextPdfPdfWriter:withComItextpdfTextBaseColor:withFloatArray:withFloatArray:withComItextpdfTextPdfPdfFunction:", "type1", "Lcom.itextpdf.text.pdf.PdfShading;", 0x9, NULL },
    { "type2WithComItextpdfTextPdfPdfWriter:withComItextpdfTextBaseColor:withFloatArray:withFloatArray:withComItextpdfTextPdfPdfFunction:withBooleanArray:", "type2", "Lcom.itextpdf.text.pdf.PdfShading;", 0x9, NULL },
    { "type3WithComItextpdfTextPdfPdfWriter:withComItextpdfTextBaseColor:withFloatArray:withFloatArray:withComItextpdfTextPdfPdfFunction:withBooleanArray:", "type3", "Lcom.itextpdf.text.pdf.PdfShading;", 0x9, NULL },
    { "simpleAxialWithComItextpdfTextPdfPdfWriter:withFloat:withFloat:withFloat:withFloat:withComItextpdfTextBaseColor:withComItextpdfTextBaseColor:withBoolean:withBoolean:", "simpleAxial", "Lcom.itextpdf.text.pdf.PdfShading;", 0x9, NULL },
    { "simpleAxialWithComItextpdfTextPdfPdfWriter:withFloat:withFloat:withFloat:withFloat:withComItextpdfTextBaseColor:withComItextpdfTextBaseColor:", "simpleAxial", "Lcom.itextpdf.text.pdf.PdfShading;", 0x9, NULL },
    { "simpleRadialWithComItextpdfTextPdfPdfWriter:withFloat:withFloat:withFloat:withFloat:withFloat:withFloat:withComItextpdfTextBaseColor:withComItextpdfTextBaseColor:withBoolean:withBoolean:", "simpleRadial", "Lcom.itextpdf.text.pdf.PdfShading;", 0x9, NULL },
    { "simpleRadialWithComItextpdfTextPdfPdfWriter:withFloat:withFloat:withFloat:withFloat:withFloat:withFloat:withComItextpdfTextBaseColor:withComItextpdfTextBaseColor:", "simpleRadial", "Lcom.itextpdf.text.pdf.PdfShading;", 0x9, NULL },
    { "getShadingName", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "getShadingReference", NULL, "Lcom.itextpdf.text.pdf.PdfIndirectReference;", 0x0, NULL },
    { "setNameWithInt:", "setName", "V", 0x0, NULL },
    { "addToBody", NULL, "V", 0x1, "Ljava.io.IOException;" },
    { "getWriter", NULL, "Lcom.itextpdf.text.pdf.PdfWriter;", 0x0, NULL },
    { "getColorDetails", NULL, "Lcom.itextpdf.text.pdf.ColorDetails;", 0x0, NULL },
    { "getBBox", NULL, "[F", 0x1, NULL },
    { "setBBoxWithFloatArray:", "setBBox", "V", 0x1, NULL },
    { "isAntiAlias", NULL, "Z", 0x1, NULL },
    { "setAntiAliasWithBoolean:", "setAntiAlias", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "shading_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "writer_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfWriter;", NULL,  },
    { "shadingType_", NULL, 0x4, "I", NULL,  },
    { "colorDetails_", NULL, 0x4, "Lcom.itextpdf.text.pdf.ColorDetails;", NULL,  },
    { "shadingName_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "shadingReference_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfIndirectReference;", NULL,  },
    { "cspace_", NULL, 0x2, "Lcom.itextpdf.text.BaseColor;", NULL,  },
    { "bBox_", NULL, 0x4, "[F", NULL,  },
    { "antiAlias_", NULL, 0x4, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfShading = { "PdfShading", "com.itextpdf.text.pdf", NULL, 0x1, 23, methods, 9, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfShading;
}

@end
