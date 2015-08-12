//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/BarcodeCodabar.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/BarcodeCodabar.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/Barcode.h"
#include "com/itextpdf/text/pdf/BarcodeCodabar.h"
#include "com/itextpdf/text/pdf/BaseFont.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"

BOOL ComItextpdfTextPdfBarcodeCodabar_initialized = NO;


#line 70
@implementation ComItextpdfTextPdfBarcodeCodabar

IOSObjectArray * ComItextpdfTextPdfBarcodeCodabar_BARS_;
NSString * ComItextpdfTextPdfBarcodeCodabar_CHARS_ = 
#line 100
@"0123456789-$:/.+ABCD";


#line 105
- (instancetype)init {
  if (self = [super init]) {
    
#line 106
    @try {
      x_ = 0.8f;
      n_ = 2;
      font_ = [ComItextpdfTextPdfBaseFont createFontWithNSString:@"Helvetica" withNSString:@"winansi" withBoolean:NO];
      size_ = 8;
      baseline_ = size_;
      barHeight_ = size_ * 3;
      textAlignment_ = ComItextpdfTextElement_ALIGN_CENTER;
      generateChecksum_ = NO;
      checksumText_ = NO;
      startStopText_ = NO;
      codeType_ = ComItextpdfTextPdfBarcode_CODABAR;
    }
    @catch (JavaLangException *e) {
      @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:e];
    }
  }
  return self;
}


#line 128
+ (IOSByteArray *)getBarsCodabarWithNSString:(NSString *)text {
  text = [((NSString *) nil_chk(text)) uppercaseString];
  jint len = ((jint) [((NSString *) nil_chk(text)) length]);
  if (len < 2)
#line 132
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"codabar.must.have.at.least.a.start.and.stop.character" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  if ([((NSString *) nil_chk(ComItextpdfTextPdfBarcodeCodabar_CHARS_)) indexOf:[text charAtWithInt:0]] < ComItextpdfTextPdfBarcodeCodabar_START_STOP_IDX || [ComItextpdfTextPdfBarcodeCodabar_CHARS_ indexOf:[text charAtWithInt:len - 1]] < ComItextpdfTextPdfBarcodeCodabar_START_STOP_IDX)
#line 134
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"codabar.must.have.one.of.abcd.as.start.stop.character" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  IOSByteArray *bars = [IOSByteArray arrayWithLength:((jint) [text length]) * 8 - 1];
  for (jint k = 0; k < len; ++k) {
    jint idx = [ComItextpdfTextPdfBarcodeCodabar_CHARS_ indexOf:[text charAtWithInt:k]];
    if (idx >= ComItextpdfTextPdfBarcodeCodabar_START_STOP_IDX && k > 0 && k < len - 1)
#line 139
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"in.codabar.start.stop.characters.are.only.allowed.at.the.extremes" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    if (idx < 0)
#line 141
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"the.character.1.is.illegal.in.codabar" withInt:[text charAtWithInt:k]]];
    [JavaLangSystem arraycopyWithId:IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfBarcodeCodabar_BARS_), idx) withInt:0 withId:bars withInt:k * 8 withInt:7];
  }
  return bars;
}


#line 147
+ (NSString *)calculateChecksumWithNSString:(NSString *)code {
  
#line 148
  if (((jint) [((NSString *) nil_chk(code)) length]) < 2)
#line 149
  return code;
  NSString *text = [code uppercaseString];
  jint sum = 0;
  jint len = ((jint) [((NSString *) nil_chk(text)) length]);
  for (jint k = 0; k < len; ++k)
#line 154
  sum += [((NSString *) nil_chk(ComItextpdfTextPdfBarcodeCodabar_CHARS_)) indexOf:[text charAtWithInt:k]];
  sum = (sum + 15) / 16 * 16 - sum;
  return JreStrcat("$C$", [code substring:0 endIndex:len - 1], [((NSString *) nil_chk(ComItextpdfTextPdfBarcodeCodabar_CHARS_)) charAtWithInt:sum], [code substring:len - 1]);
}

- (ComItextpdfTextRectangle *)getBarcodeSize {
  
#line 164
  jfloat fontX = 0;
  jfloat fontY = 0;
  NSString *text = code_;
  if (generateChecksum_ && checksumText_)
#line 168
  text = [ComItextpdfTextPdfBarcodeCodabar calculateChecksumWithNSString:code_];
  if (!startStopText_)
#line 170
  text = [text substring:1 endIndex:((jint) [((NSString *) nil_chk(text)) length]) - 1];
  if (font_ != nil) {
    if (baseline_ > 0)
#line 173
    fontY = baseline_ - [font_ getFontDescriptorWithInt:ComItextpdfTextPdfBaseFont_DESCENT withFloat:size_];
    else
#line 175
    fontY = -baseline_ + size_;
    fontX = [font_ getWidthPointWithNSString:altText_ != nil ? altText_ : text withFloat:size_];
  }
  text = code_;
  if (generateChecksum_)
#line 180
  text = [ComItextpdfTextPdfBarcodeCodabar calculateChecksumWithNSString:code_];
  IOSByteArray *bars = [ComItextpdfTextPdfBarcodeCodabar getBarsCodabarWithNSString:text];
  jint wide = 0;
  for (jint k = 0; k < ((IOSByteArray *) nil_chk(bars))->size_; ++k) {
    wide += IOSByteArray_Get(bars, k);
  }
  jint narrow = bars->size_ - wide;
  jfloat fullWidth = x_ * (narrow + wide * n_);
  fullWidth = [JavaLangMath maxWithFloat:fullWidth withFloat:fontX];
  jfloat fullHeight = barHeight_ + fontY;
  return [[ComItextpdfTextRectangle alloc] initWithFloat:fullWidth withFloat:fullHeight];
}


#line 229
- (ComItextpdfTextRectangle *)placeBarcodeWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)cb
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)barColor
                                                  withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)textColor {
  
#line 230
  NSString *fullCode = code_;
  if (generateChecksum_ && checksumText_)
#line 232
  fullCode = [ComItextpdfTextPdfBarcodeCodabar calculateChecksumWithNSString:code_];
  if (!startStopText_)
#line 234
  fullCode = [fullCode substring:1 endIndex:((jint) [((NSString *) nil_chk(fullCode)) length]) - 1];
  jfloat fontX = 0;
  if (font_ != nil) {
    fontX = [font_ getWidthPointWithNSString:fullCode = altText_ != nil ? altText_ : fullCode withFloat:size_];
  }
  IOSByteArray *bars = [ComItextpdfTextPdfBarcodeCodabar getBarsCodabarWithNSString:generateChecksum_ ? [ComItextpdfTextPdfBarcodeCodabar calculateChecksumWithNSString:code_] : code_];
  jint wide = 0;
  for (jint k = 0; k < ((IOSByteArray *) nil_chk(bars))->size_; ++k) {
    wide += IOSByteArray_Get(bars, k);
  }
  jint narrow = bars->size_ - wide;
  jfloat fullWidth = x_ * (narrow + wide * n_);
  jfloat barStartX = 0;
  jfloat textStartX = 0;
  switch (textAlignment_) {
    case ComItextpdfTextElement_ALIGN_LEFT:
    break;
    case ComItextpdfTextElement_ALIGN_RIGHT:
    if (fontX > fullWidth)
#line 253
    barStartX = fontX - fullWidth;
    else
#line 255
    textStartX = fullWidth - fontX;
    break;
    default:
    if (fontX > fullWidth)
#line 259
    barStartX = (fontX - fullWidth) / 2;
    else
#line 261
    textStartX = (fullWidth - fontX) / 2;
    break;
  }
  jfloat barStartY = 0;
  jfloat textStartY = 0;
  if (font_ != nil) {
    if (baseline_ <= 0)
#line 268
    textStartY = barHeight_ - baseline_;
    else {
      textStartY = -[font_ getFontDescriptorWithInt:ComItextpdfTextPdfBaseFont_DESCENT withFloat:size_];
      barStartY = textStartY + baseline_;
    }
  }
  jboolean print = YES;
  if (barColor != nil)
#line 276
  [((ComItextpdfTextPdfPdfContentByte *) nil_chk(cb)) setColorFillWithComItextpdfTextBaseColor:barColor];
  for (jint k = 0; k < bars->size_; ++k) {
    jfloat w = (IOSByteArray_Get(bars, k) == 0 ? x_ : x_ * n_);
    if (print)
#line 280
    [((ComItextpdfTextPdfPdfContentByte *) nil_chk(cb)) rectangleWithFloat:barStartX withFloat:barStartY withFloat:w - inkSpreading_ withFloat:barHeight_];
    print = !print;
    barStartX += w;
  }
  [((ComItextpdfTextPdfPdfContentByte *) nil_chk(cb)) fill];
  if (font_ != nil) {
    if (textColor != nil)
#line 287
    [cb setColorFillWithComItextpdfTextBaseColor:textColor];
    [cb beginText];
    [cb setFontAndSizeWithComItextpdfTextPdfBaseFont:font_ withFloat:size_];
    [cb setTextMatrixWithFloat:textStartX withFloat:textStartY];
    [cb showTextWithNSString:fullCode];
    [cb endText];
  }
  return [self getBarcodeSize];
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfBarcodeCodabar class]) {
    ComItextpdfTextPdfBarcodeCodabar_BARS_ = [IOSObjectArray arrayWithObjects:(id[]){ [IOSByteArray arrayWithBytes:(jbyte[]){
#line 76
      0, 0, 0, 0, 0, 1, 1 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 77
        0, 0, 0, 0, 1, 1, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 78
          0, 0, 0, 1, 0, 0, 1 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 79
            1, 1, 0, 0, 0, 0, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 80
              0, 0, 1, 0, 0, 1, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 81
                1, 0, 0, 0, 0, 1, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 82
                  0, 1, 0, 0, 0, 0, 1 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 83
                    0, 1, 0, 0, 1, 0, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 84
                      0, 1, 1, 0, 0, 0, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 85
                        1, 0, 0, 1, 0, 0, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 86
                          0, 0, 0, 1, 1, 0, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 87
                            0, 0, 1, 1, 0, 0, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 88
                              1, 0, 0, 0, 1, 0, 1 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 89
                                1, 0, 1, 0, 0, 0, 1 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 90
                                  1, 0, 1, 0, 1, 0, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 91
                                    0, 0, 1, 0, 1, 0, 1 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 92
                                      0, 0, 1, 1, 0, 1, 0 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 93
                                        0, 1, 0, 1, 0, 0, 1 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 94
                                          0, 0, 0, 1, 0, 1, 1 } count:7], [IOSByteArray arrayWithBytes:(jbyte[]){
#line 95
                                            0, 0, 0, 1, 1, 1, 0 } count:7] } count:20 type:[IOSByteArray iosClass]];
                                            ComItextpdfTextPdfBarcodeCodabar_initialized = YES;
                                          }
                                        }

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "BarcodeCodabar", NULL, 0x1, NULL },
    { "getBarsCodabarWithNSString:", "getBarsCodabar", "[B", 0x9, NULL },
    { "calculateChecksumWithNSString:", "calculateChecksum", "Ljava.lang.String;", 0x9, NULL },
    { "getBarcodeSize", NULL, "Lcom.itextpdf.text.Rectangle;", 0x1, NULL },
    { "placeBarcodeWithComItextpdfTextPdfPdfContentByte:withComItextpdfTextBaseColor:withComItextpdfTextBaseColor:", "placeBarcode", "Lcom.itextpdf.text.Rectangle;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BARS_", NULL, 0x1a, "[[B", &ComItextpdfTextPdfBarcodeCodabar_BARS_,  },
    { "CHARS_", NULL, 0x1a, "Ljava.lang.String;", &ComItextpdfTextPdfBarcodeCodabar_CHARS_,  },
    { "START_STOP_IDX_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfBarcodeCodabar_START_STOP_IDX },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfBarcodeCodabar = { "BarcodeCodabar", "com.itextpdf.text.pdf", NULL, 0x1, 5, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfBarcodeCodabar;
}

@end
