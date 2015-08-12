//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ZapfDingbatsList.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ZapfDingbatsList.java"

#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/Chunk.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/Font.h"
#include "com/itextpdf/text/FontFactory.h"
#include "com/itextpdf/text/List.h"
#include "com/itextpdf/text/ListItem.h"
#include "com/itextpdf/text/ZapfDingbatsList.h"
#include "java/lang/StringBuffer.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"


#line 55
@implementation ComItextpdfTextZapfDingbatsList


#line 67
- (instancetype)initWithInt:(jint)zn {
  if (self =
#line 68
  [super initWithBoolean:YES]) {
    
#line 69
    self->zn_ = zn;
    
#line 70
    jfloat fontsize = [((ComItextpdfTextFont *) nil_chk([((ComItextpdfTextChunk *) nil_chk(symbol_)) getFont])) getSize];
    
#line 71
    [symbol_ setFontWithComItextpdfTextFont:[ComItextpdfTextFontFactory getFontWithNSString:ComItextpdfTextFontFactory_get_ZAPFDINGBATS_() withFloat:fontsize withInt:ComItextpdfTextFont_NORMAL]];
    
#line 72
    postSymbol_ = @" ";
  }
  return self;
}


#line 81
- (instancetype)initWithInt:(jint)zn
                    withInt:(jint)symbolIndent {
  if (self =
#line 82
  [super initWithBoolean:YES withFloat:symbolIndent]) {
    
#line 83
    self->zn_ = zn;
    
#line 84
    jfloat fontsize = [((ComItextpdfTextFont *) nil_chk([((ComItextpdfTextChunk *) nil_chk(symbol_)) getFont])) getSize];
    
#line 85
    [symbol_ setFontWithComItextpdfTextFont:[ComItextpdfTextFontFactory getFontWithNSString:ComItextpdfTextFontFactory_get_ZAPFDINGBATS_() withFloat:fontsize withInt:ComItextpdfTextFont_NORMAL]];
    postSymbol_ = @" ";
  }
  return self;
}


#line 96
- (instancetype)initWithInt:(jint)zn
                    withInt:(jint)symbolIndent
withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)zapfDingbatColor {
  if (self =
#line 97
  [super initWithBoolean:YES withFloat:symbolIndent]) {
    
#line 98
    self->zn_ = zn;
    jfloat fontsize = [((ComItextpdfTextFont *) nil_chk([((ComItextpdfTextChunk *) nil_chk(symbol_)) getFont])) getSize];
    
#line 100
    [symbol_ setFontWithComItextpdfTextFont:[ComItextpdfTextFontFactory getFontWithNSString:ComItextpdfTextFontFactory_get_ZAPFDINGBATS_() withFloat:fontsize withInt:ComItextpdfTextFont_NORMAL withComItextpdfTextBaseColor:zapfDingbatColor]];
    
#line 101
    postSymbol_ = @" ";
  }
  return self;
}


#line 109
- (void)setDingbatColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)zapfDingbatColor {
  
#line 110
  jfloat fontsize = [((ComItextpdfTextFont *) nil_chk([((ComItextpdfTextChunk *) nil_chk(symbol_)) getFont])) getSize];
  [symbol_ setFontWithComItextpdfTextFont:[ComItextpdfTextFontFactory getFontWithNSString:ComItextpdfTextFontFactory_get_ZAPFDINGBATS_() withFloat:fontsize withInt:ComItextpdfTextFont_NORMAL withComItextpdfTextBaseColor:zapfDingbatColor]];
}


#line 118
- (void)setCharNumberWithInt:(jint)zn {
  
#line 119
  self->zn_ = zn;
}


#line 127
- (jint)getCharNumber {
  
#line 128
  return zn_;
}


#line 138
- (jboolean)addWithComItextpdfTextElement:(id<ComItextpdfTextElement>)o {
  
#line 139
  if ([(id) o isKindOfClass:[ComItextpdfTextListItem class]]) {
    ComItextpdfTextListItem *item = (ComItextpdfTextListItem *) check_class_cast(o, [ComItextpdfTextListItem class]);
    ComItextpdfTextChunk *chunk = [[ComItextpdfTextChunk alloc] initWithNSString:preSymbol_ withComItextpdfTextFont:[((ComItextpdfTextChunk *) nil_chk(symbol_)) getFont]];
    [chunk setAttributesWithJavaUtilHashMap:[symbol_ getAttributes]];
    (void) [chunk appendWithNSString:[NSString valueOfChar:(jchar) zn_]];
    (void) [chunk appendWithNSString:postSymbol_];
    [((ComItextpdfTextListItem *) nil_chk(item)) setListSymbolWithComItextpdfTextChunk:chunk];
    [item setIndentationLeftWithFloat:symbolIndent_ withBoolean:autoindent_];
    [item setIndentationRightWithFloat:0];
    [((JavaUtilArrayList *) nil_chk(list_)) addWithId:item];
  }
  else
#line 149
  if ([(id) o isKindOfClass:[ComItextpdfTextList class]]) {
    ComItextpdfTextList *nested = (ComItextpdfTextList *) check_class_cast(o, [ComItextpdfTextList class]);
    [nested setIndentationLeftWithFloat:[((ComItextpdfTextList *) nil_chk(nested)) getIndentationLeft] + symbolIndent_];
    first_--;
    return [((JavaUtilArrayList *) nil_chk(list_)) addWithId:nested];
  }
  return NO;
}

- (void)copyAllFieldsTo:(ComItextpdfTextZapfDingbatsList *)other {
  [super copyAllFieldsTo:other];
  other->zn_ = zn_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "ZapfDingbatsList", NULL, 0x1, NULL },
    { "initWithInt:withInt:", "ZapfDingbatsList", NULL, 0x1, NULL },
    { "initWithInt:withInt:withComItextpdfTextBaseColor:", "ZapfDingbatsList", NULL, 0x1, NULL },
    { "setDingbatColorWithComItextpdfTextBaseColor:", "setDingbatColor", "V", 0x1, NULL },
    { "setCharNumberWithInt:", "setCharNumber", "V", 0x1, NULL },
    { "getCharNumber", NULL, "I", 0x1, NULL },
    { "addWithComItextpdfTextElement:", "add", "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "zn_", NULL, 0x4, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextZapfDingbatsList = { "ZapfDingbatsList", "com.itextpdf.text", NULL, 0x1, 7, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextZapfDingbatsList;
}

@end
