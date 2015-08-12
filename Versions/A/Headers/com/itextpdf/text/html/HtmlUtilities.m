//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/HtmlUtilities.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/HtmlUtilities.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/html/HtmlTags.h"
#include "com/itextpdf/text/html/HtmlUtilities.h"
#include "com/itextpdf/text/html/WebColors.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuffer.h"
#include "java/util/HashMap.h"
#include "java/util/Properties.h"
#include "java/util/StringTokenizer.h"

BOOL ComItextpdfTextHtmlHtmlUtilities_initialized = NO;


#line 58
@implementation ComItextpdfTextHtmlHtmlUtilities

JavaUtilHashMap * ComItextpdfTextHtmlHtmlUtilities_sizes_;
IOSIntArray * ComItextpdfTextHtmlHtmlUtilities_FONTSIZES_;


#line 86
+ (jfloat)parseLengthWithNSString:(NSString *)string {
  
#line 87
  return [ComItextpdfTextHtmlHtmlUtilities parseLengthWithNSString:string withFloat:ComItextpdfTextHtmlHtmlUtilities_DEFAULT_FONT_SIZE];
}


#line 95
+ (jfloat)parseLengthWithNSString:(NSString *)string
                        withFloat:(jfloat)actualFontSize {
  
#line 96
  if (string == nil)
#line 97
  return 0.0f;
  JavaLangFloat *fl = [((JavaUtilHashMap *) nil_chk(ComItextpdfTextHtmlHtmlUtilities_sizes_)) getWithId:[((NSString *) nil_chk(string)) lowercaseString]];
  if (fl != nil)
#line 100
  return [fl floatValue];
  jint pos = 0;
  jint length = ((jint) [string length]);
  jboolean ok = YES;
  while (ok && pos < length) {
    switch ([string charAtWithInt:pos]) {
      case '+':
      case '-':
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '.':
      pos++;
      break;
      default:
      ok = NO;
    }
  }
  if (pos == 0)
#line 126
  return 0.0f;
  if (pos == length)
#line 128
  return [JavaLangFloat parseFloatWithNSString:JreStrcat("$C", string, 'f')];
  jfloat f = [JavaLangFloat parseFloatWithNSString:JreStrcat("$C", [string substring:0 endIndex:pos], 'f')];
  string = [string substring:pos];
  
#line 132
  if ([((NSString *) nil_chk(string)) hasPrefix:@"in"]) {
    return f * 72.0f;
  }
  
#line 136
  if ([string hasPrefix:@"cm"]) {
    return (f / 2.54f) * 72.0f;
  }
  
#line 140
  if ([string hasPrefix:@"mm"]) {
    return (f / 25.4f) * 72.0f;
  }
  
#line 144
  if ([string hasPrefix:@"pc"]) {
    return f * 12.0f;
  }
  
#line 148
  if ([string hasPrefix:@"em"]) {
    return f * actualFontSize;
  }
  
#line 153
  if ([string hasPrefix:@"ex"]) {
    return f * actualFontSize / 2;
  }
  
#line 157
  return f;
}


#line 169
+ (ComItextpdfTextBaseColor *)decodeColorWithNSString:(NSString *)s {
  
#line 170
  if (s == nil)
#line 171
  return nil;
  s = [((NSString *) nil_chk([((NSString *) nil_chk(s)) lowercaseString])) trim];
  @try {
    return [ComItextpdfTextHtmlWebColors getRGBColorWithNSString:s];
  }
  @catch (JavaLangIllegalArgumentException *iae) {
    return nil;
  }
}


#line 190
+ (JavaUtilProperties *)parseAttributesWithNSString:(NSString *)string {
  
#line 191
  JavaUtilProperties *result = [[JavaUtilProperties alloc] init];
  if (string == nil)
#line 193
  return result;
  JavaUtilStringTokenizer *keyValuePairs = [[JavaUtilStringTokenizer alloc] initWithNSString:string withNSString:@";"];
  JavaUtilStringTokenizer *keyValuePair;
  NSString *key;
  NSString *value;
  while ([keyValuePairs hasMoreTokens]) {
    keyValuePair = [[JavaUtilStringTokenizer alloc] initWithNSString:[keyValuePairs nextToken] withNSString:@":"];
    if ([keyValuePair hasMoreTokens])
#line 201
    key = [((NSString *) nil_chk([keyValuePair nextToken])) trim];
    else
#line 203
    continue;
    if ([keyValuePair hasMoreTokens])
#line 205
    value = [((NSString *) nil_chk([keyValuePair nextToken])) trim];
    else
#line 207
    continue;
    if ([((NSString *) nil_chk(value)) hasPrefix:@"\""])
#line 209
    value = [value substring:1];
    if ([((NSString *) nil_chk(value)) hasSuffix:@"\""])
#line 211
    value = [value substring:0 endIndex:((jint) [value length]) - 1];
    (void) [result setPropertyWithNSString:[((NSString *) nil_chk(key)) lowercaseString] withNSString:value];
  }
  return result;
}


#line 228
+ (NSString *)removeCommentWithNSString:(NSString *)string
                           withNSString:(NSString *)startComment
                           withNSString:(NSString *)endComment {
  
#line 230
  JavaLangStringBuffer *result = [[JavaLangStringBuffer alloc] init];
  jint pos = 0;
  jint end = ((jint) [((NSString *) nil_chk(endComment)) length]);
  jint start = [((NSString *) nil_chk(string)) indexOfString:startComment fromIndex:pos];
  while (start > -1) {
    (void) [result appendWithNSString:[string substring:pos endIndex:start]];
    pos = [string indexOfString:endComment fromIndex:start] + end;
    start = [string indexOfString:startComment fromIndex:pos];
  }
  (void) [result appendWithNSString:[string substring:pos]];
  return [result description];
}


#line 248
+ (NSString *)eliminateWhiteSpaceWithNSString:(NSString *)content {
  
#line 252
  JavaLangStringBuffer *buf = [[JavaLangStringBuffer alloc] init];
  jint len = ((jint) [((NSString *) nil_chk(content)) length]);
  jchar character;
  jboolean newline = NO;
  for (jint i = 0; i < len; i++) {
    switch (character = [content charAtWithInt:i]) {
      case ' ':
      if (!newline) {
        (void) [buf appendWithChar:character];
      }
      break;
      case 0x000a:
      if (i > 0) {
        newline = YES;
        (void) [buf appendWithChar:' '];
      }
      break;
      case 0x000d:
      break;
      case 0x0009:
      break;
      default:
      newline = NO;
      (void) [buf appendWithChar:character];
    }
  }
  return [buf description];
}


#line 293
+ (jint)getIndexedFontSizeWithNSString:(NSString *)value
                          withNSString:(NSString *)previous {
  
#line 295
  jint sIndex = 0;
  
#line 297
  if ([((NSString *) nil_chk(value)) hasPrefix:@"+"] || [value hasPrefix:@"-"]) {
    
#line 299
    if (previous == nil)
#line 300
    previous = @"12";
    jint c = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:previous]);
    
#line 303
    for (jint k = ((IOSIntArray *) nil_chk(ComItextpdfTextHtmlHtmlUtilities_FONTSIZES_))->size_ - 1; k >= 0; --k) {
      if (c >= IOSIntArray_Get(ComItextpdfTextHtmlHtmlUtilities_FONTSIZES_, k)) {
        sIndex = k;
        break;
      }
    }
    
#line 310
    jint diff =
#line 311
    [JavaLangInteger parseIntWithNSString:[value hasPrefix:@"+"] ?
#line 312
    [value substring:1] : value];
    
#line 314
    sIndex += diff;
  }
  else {
    
#line 318
    @try {
      sIndex = [JavaLangInteger parseIntWithNSString:value] - 1;
    }
    @catch (
#line 320
    JavaLangNumberFormatException *nfe) {
      sIndex = 0;
    }
  }
  if (sIndex < 0)
#line 325
  sIndex = 0;
  else if (sIndex >= ((IOSIntArray *) nil_chk(ComItextpdfTextHtmlHtmlUtilities_FONTSIZES_))->size_)
#line 327
  sIndex = ComItextpdfTextHtmlHtmlUtilities_FONTSIZES_->size_ - 1;
  return IOSIntArray_Get(nil_chk(ComItextpdfTextHtmlHtmlUtilities_FONTSIZES_), sIndex);
}


#line 337
+ (jint)alignmentValueWithNSString:(NSString *)alignment {
  
#line 338
  if (alignment == nil) return ComItextpdfTextElement_ALIGN_UNDEFINED;
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_ALIGN_CENTER_())) equalsIgnoreCase:alignment]) {
    return ComItextpdfTextElement_ALIGN_CENTER;
  }
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_ALIGN_LEFT_())) equalsIgnoreCase:alignment]) {
    return ComItextpdfTextElement_ALIGN_LEFT;
  }
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_ALIGN_RIGHT_())) equalsIgnoreCase:alignment]) {
    return ComItextpdfTextElement_ALIGN_RIGHT;
  }
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_ALIGN_JUSTIFY_())) equalsIgnoreCase:alignment]) {
    return ComItextpdfTextElement_ALIGN_JUSTIFIED;
  }
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_ALIGN_JUSTIFIED_ALL_())) equalsIgnoreCase:alignment]) {
    return ComItextpdfTextElement_ALIGN_JUSTIFIED_ALL;
  }
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_ALIGN_TOP_())) equalsIgnoreCase:alignment]) {
    return ComItextpdfTextElement_ALIGN_TOP;
  }
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_ALIGN_MIDDLE_())) equalsIgnoreCase:alignment]) {
    return ComItextpdfTextElement_ALIGN_MIDDLE;
  }
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_ALIGN_BOTTOM_())) equalsIgnoreCase:alignment]) {
    return ComItextpdfTextElement_ALIGN_BOTTOM;
  }
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_ALIGN_BASELINE_())) equalsIgnoreCase:alignment]) {
    return ComItextpdfTextElement_ALIGN_BASELINE;
  }
  return ComItextpdfTextElement_ALIGN_UNDEFINED;
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComItextpdfTextHtmlHtmlUtilities class]) {
    ComItextpdfTextHtmlHtmlUtilities_sizes_ =
#line 66
    [[JavaUtilHashMap alloc] init];
    {
      
#line 68
      (void) [ComItextpdfTextHtmlHtmlUtilities_sizes_ putWithId:@"xx-small" withId:[[JavaLangFloat alloc] initWithFloat:4]];
      (void) [ComItextpdfTextHtmlHtmlUtilities_sizes_ putWithId:@"x-small" withId:[[JavaLangFloat alloc] initWithFloat:6]];
      (void) [ComItextpdfTextHtmlHtmlUtilities_sizes_ putWithId:@"small" withId:[[JavaLangFloat alloc] initWithFloat:8]];
      (void) [ComItextpdfTextHtmlHtmlUtilities_sizes_ putWithId:@"medium" withId:[[JavaLangFloat alloc] initWithFloat:10]];
      (void) [ComItextpdfTextHtmlHtmlUtilities_sizes_ putWithId:@"large" withId:[[JavaLangFloat alloc] initWithFloat:13]];
      (void) [ComItextpdfTextHtmlHtmlUtilities_sizes_ putWithId:@"x-large" withId:[[JavaLangFloat alloc] initWithFloat:18]];
      (void) [ComItextpdfTextHtmlHtmlUtilities_sizes_ putWithId:@"xx-large" withId:[[JavaLangFloat alloc] initWithFloat:26]];
    }
    ComItextpdfTextHtmlHtmlUtilities_FONTSIZES_ = [IOSIntArray arrayWithInts:(jint[]){
#line 285
      8, 10, 12, 14, 18, 24, 36 } count:7];
      ComItextpdfTextHtmlHtmlUtilities_initialized = YES;
    }
  }

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseLengthWithNSString:", "parseLength", "F", 0x9, NULL },
    { "parseLengthWithNSString:withFloat:", "parseLength", "F", 0x9, NULL },
    { "decodeColorWithNSString:", "decodeColor", "Lcom.itextpdf.text.BaseColor;", 0x9, NULL },
    { "parseAttributesWithNSString:", "parseAttributes", "Ljava.util.Properties;", 0x9, NULL },
    { "removeCommentWithNSString:withNSString:withNSString:", "removeComment", "Ljava.lang.String;", 0x9, NULL },
    { "eliminateWhiteSpaceWithNSString:", "eliminateWhiteSpace", "Ljava.lang.String;", 0x9, NULL },
    { "getIndexedFontSizeWithNSString:withNSString:", "getIndexedFontSize", "I", 0x9, NULL },
    { "alignmentValueWithNSString:", "alignmentValue", "I", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_FONT_SIZE_", NULL, 0x19, "F", NULL, .constantValue.asFloat = ComItextpdfTextHtmlHtmlUtilities_DEFAULT_FONT_SIZE },
    { "sizes_", NULL, 0xa, "Ljava.util.HashMap;", &ComItextpdfTextHtmlHtmlUtilities_sizes_,  },
    { "FONTSIZES_", NULL, 0x19, "[I", &ComItextpdfTextHtmlHtmlUtilities_FONTSIZES_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlHtmlUtilities = { "HtmlUtilities", "com.itextpdf.text.html", NULL, 0x1, 9, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextHtmlHtmlUtilities;
}

@end
