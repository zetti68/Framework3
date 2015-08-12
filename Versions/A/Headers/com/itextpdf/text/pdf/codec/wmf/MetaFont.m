//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/wmf/MetaFont.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/wmf/MetaFont.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/Document.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/Font.h"
#include "com/itextpdf/text/FontFactory.h"
#include "com/itextpdf/text/pdf/BaseFont.h"
#include "com/itextpdf/text/pdf/codec/wmf/InputMeta.h"
#include "com/itextpdf/text/pdf/codec/wmf/MetaFont.h"
#include "com/itextpdf/text/pdf/codec/wmf/MetaObject.h"
#include "com/itextpdf/text/pdf/codec/wmf/MetaState.h"
#include "java/io/IOException.h"
#include "java/io/UnsupportedEncodingException.h"
#include "java/lang/Exception.h"
#include "java/lang/Math.h"

BOOL ComItextpdfTextPdfCodecWmfMetaFont_initialized = NO;


#line 55
@implementation ComItextpdfTextPdfCodecWmfMetaFont

IOSObjectArray * ComItextpdfTextPdfCodecWmfMetaFont_fontNames_;


#line 94
- (instancetype)init {
  if (self = [super init]) {
    faceName_ =
#line 91
    @"arial";
    font_ =
#line 92
    nil;
    
#line 95
    type_ = ComItextpdfTextPdfCodecWmfMetaObject_META_FONT;
  }
  return self;
}


#line 98
- (void)init__WithComItextpdfTextPdfCodecWmfInputMeta:(ComItextpdfTextPdfCodecWmfInputMeta *)inArg {
  
#line 99
  height_ = [JavaLangMath absWithInt:[((ComItextpdfTextPdfCodecWmfInputMeta *) nil_chk(inArg)) readShort]];
  [inArg skipWithInt:2];
  angle_ = (jfloat) ([inArg readShort] / 1800.0 * JavaLangMath_PI);
  [inArg skipWithInt:2];
  bold_ = ([inArg readShort] >= ComItextpdfTextPdfCodecWmfMetaFont_BOLDTHRESHOLD ? ComItextpdfTextPdfCodecWmfMetaFont_MARKER_BOLD : 0);
  italic_ = ([inArg readByte] != 0 ? ComItextpdfTextPdfCodecWmfMetaFont_MARKER_ITALIC : 0);
  underline_ = ([inArg readByte] != 0);
  strikeout_ = ([inArg readByte] != 0);
  charset_ = [inArg readByte];
  [inArg skipWithInt:3];
  pitchAndFamily_ = [inArg readByte];
  IOSByteArray *name = [IOSByteArray arrayWithLength:ComItextpdfTextPdfCodecWmfMetaFont_nameSize];
  jint k;
  for (k = 0; k < ComItextpdfTextPdfCodecWmfMetaFont_nameSize; ++k) {
    jint c = [inArg readByte];
    if (c == 0) {
      break;
    }
    *IOSByteArray_GetRef(name, k) = (jbyte) c;
  }
  @try {
    faceName_ = [NSString stringWithBytes:name offset:0 length:k charsetName:@"Cp1252"];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    faceName_ = [NSString stringWithBytes:name offset:0 length:k];
  }
  faceName_ = [((NSString *) nil_chk(faceName_)) lowercaseString];
}


#line 128
- (ComItextpdfTextPdfBaseFont *)getFont {
  
#line 129
  if (font_ != nil)
#line 130
  return font_;
  ComItextpdfTextFont *ff2 = [ComItextpdfTextFontFactory getFontWithNSString:faceName_ withNSString:ComItextpdfTextPdfBaseFont_get_CP1252_() withBoolean:YES withFloat:10 withInt:((italic_ != 0) ? ComItextpdfTextFont_ITALIC : 0) | ((bold_ != 0) ? ComItextpdfTextFont_BOLD : 0)];
  font_ = [((ComItextpdfTextFont *) nil_chk(ff2)) getBaseFont];
  if (font_ != nil)
#line 134
  return font_;
  NSString *fontName;
  if ([((NSString *) nil_chk(faceName_)) indexOfString:@"courier"] != -1 || [faceName_ indexOfString:@"terminal"] != -1 ||
#line 137
  [faceName_ indexOfString:@"fixedsys"] != -1) {
    fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_COURIER + italic_ + bold_);
  }
  else if ([faceName_ indexOfString:@"ms sans serif"] != -1 || [faceName_ indexOfString:@"arial"] != -1 ||
#line 141
  [faceName_ indexOfString:@"system"] != -1) {
    fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_HELVETICA + italic_ + bold_);
  }
  else if ([faceName_ indexOfString:@"arial black"] != -1) {
    fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_HELVETICA + italic_ + ComItextpdfTextPdfCodecWmfMetaFont_MARKER_BOLD);
  }
  else if ([faceName_ indexOfString:@"times"] != -1 || [faceName_ indexOfString:@"ms serif"] != -1 ||
#line 148
  [faceName_ indexOfString:@"roman"] != -1) {
    fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_TIMES + italic_ + bold_);
  }
  else if ([faceName_ indexOfString:@"symbol"] != -1) {
    fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_SYMBOL);
  }
  else {
    jint pitch = pitchAndFamily_ & 3;
    jint family = (RShift32(pitchAndFamily_, 4)) & 7;
    switch (family) {
      case ComItextpdfTextPdfCodecWmfMetaFont_FF_MODERN:
      fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_COURIER + italic_ + bold_);
      break;
      case ComItextpdfTextPdfCodecWmfMetaFont_FF_ROMAN:
      fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_TIMES + italic_ + bold_);
      break;
      case ComItextpdfTextPdfCodecWmfMetaFont_FF_SWISS:
      case ComItextpdfTextPdfCodecWmfMetaFont_FF_SCRIPT:
      case ComItextpdfTextPdfCodecWmfMetaFont_FF_DECORATIVE:
      fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_HELVETICA + italic_ + bold_);
      break;
      default:
      {
        switch (pitch) {
          case ComItextpdfTextPdfCodecWmfMetaFont_FIXED_PITCH:
          fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_COURIER + italic_ + bold_);
          break;
          default:
          fontName = IOSObjectArray_Get(nil_chk(ComItextpdfTextPdfCodecWmfMetaFont_fontNames_), ComItextpdfTextPdfCodecWmfMetaFont_MARKER_HELVETICA + italic_ + bold_);
          break;
        }
      }
    }
  }
  @try {
    font_ = [ComItextpdfTextPdfBaseFont createFontWithNSString:fontName withNSString:@"Cp1252" withBoolean:NO];
  }
  @catch (JavaLangException *e) {
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:e];
  }
  
#line 189
  return font_;
}


#line 192
- (jfloat)getAngle {
  
#line 193
  return angle_;
}


#line 196
- (jboolean)isUnderline {
  
#line 197
  return underline_;
}


#line 200
- (jboolean)isStrikeout {
  
#line 201
  return strikeout_;
}


#line 204
- (jfloat)getFontSizeWithComItextpdfTextPdfCodecWmfMetaState:(ComItextpdfTextPdfCodecWmfMetaState *)state {
  
#line 205
  return [JavaLangMath absWithFloat:[((ComItextpdfTextPdfCodecWmfMetaState *) nil_chk(state)) transformYWithInt:height_] - [state transformYWithInt:0]] * ComItextpdfTextDocument_get_wmfFontCorrection_();
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecWmfMetaFont *)other {
  [super copyAllFieldsTo:other];
  other->angle_ = angle_;
  other->bold_ = bold_;
  other->charset_ = charset_;
  other->faceName_ = faceName_;
  other->font_ = font_;
  other->height_ = height_;
  other->italic_ = italic_;
  other->pitchAndFamily_ = pitchAndFamily_;
  other->strikeout_ = strikeout_;
  other->underline_ = underline_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfCodecWmfMetaFont class]) {
    ComItextpdfTextPdfCodecWmfMetaFont_fontNames_ = [IOSObjectArray arrayWithObjects:(id[]){
#line 57
      @"Courier", @"Courier-Bold", @"Courier-Oblique", @"Courier-BoldOblique",
#line 58
      @"Helvetica", @"Helvetica-Bold", @"Helvetica-Oblique", @"Helvetica-BoldOblique",
#line 59
      @"Times-Roman", @"Times-Bold", @"Times-Italic", @"Times-BoldItalic",
#line 60
      @"Symbol", @"ZapfDingbats" } count:14 type:[IOSClass classWithClass:[NSString class]]];
      ComItextpdfTextPdfCodecWmfMetaFont_initialized = YES;
    }
  }

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "MetaFont", NULL, 0x1, NULL },
    { "init__WithComItextpdfTextPdfCodecWmfInputMeta:", "init", "V", 0x1, "Ljava.io.IOException;" },
    { "getFont", NULL, "Lcom.itextpdf.text.pdf.BaseFont;", 0x1, NULL },
    { "getAngle", NULL, "F", 0x1, NULL },
    { "isUnderline", NULL, "Z", 0x1, NULL },
    { "isStrikeout", NULL, "Z", 0x1, NULL },
    { "getFontSizeWithComItextpdfTextPdfCodecWmfMetaState:", "getFontSize", "F", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fontNames_", NULL, 0x18, "[Ljava.lang.String;", &ComItextpdfTextPdfCodecWmfMetaFont_fontNames_,  },
    { "MARKER_BOLD_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_MARKER_BOLD },
    { "MARKER_ITALIC_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_MARKER_ITALIC },
    { "MARKER_COURIER_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_MARKER_COURIER },
    { "MARKER_HELVETICA_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_MARKER_HELVETICA },
    { "MARKER_TIMES_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_MARKER_TIMES },
    { "MARKER_SYMBOL_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_MARKER_SYMBOL },
    { "DEFAULT_PITCH_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_DEFAULT_PITCH },
    { "FIXED_PITCH_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_FIXED_PITCH },
    { "VARIABLE_PITCH_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_VARIABLE_PITCH },
    { "FF_DONTCARE_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_FF_DONTCARE },
    { "FF_ROMAN_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_FF_ROMAN },
    { "FF_SWISS_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_FF_SWISS },
    { "FF_MODERN_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_FF_MODERN },
    { "FF_SCRIPT_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_FF_SCRIPT },
    { "FF_DECORATIVE_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_FF_DECORATIVE },
    { "BOLDTHRESHOLD_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_BOLDTHRESHOLD },
    { "nameSize_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_nameSize },
    { "ETO_OPAQUE_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_ETO_OPAQUE },
    { "ETO_CLIPPED_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecWmfMetaFont_ETO_CLIPPED },
    { "height_", NULL, 0x0, "I", NULL,  },
    { "angle_", NULL, 0x0, "F", NULL,  },
    { "bold_", NULL, 0x0, "I", NULL,  },
    { "italic_", NULL, 0x0, "I", NULL,  },
    { "underline_", NULL, 0x0, "Z", NULL,  },
    { "strikeout_", NULL, 0x0, "Z", NULL,  },
    { "charset_", NULL, 0x0, "I", NULL,  },
    { "pitchAndFamily_", NULL, 0x0, "I", NULL,  },
    { "faceName_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
    { "font_", NULL, 0x0, "Lcom.itextpdf.text.pdf.BaseFont;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecWmfMetaFont = { "MetaFont", "com.itextpdf.text.pdf.codec.wmf", NULL, 0x1, 7, methods, 30, fields, 0, NULL};
  return &_ComItextpdfTextPdfCodecWmfMetaFont;
}

@end
