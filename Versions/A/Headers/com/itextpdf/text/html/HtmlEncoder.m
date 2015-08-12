//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/HtmlEncoder.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/HtmlEncoder.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/html/HtmlEncoder.h"
#include "com/itextpdf/text/html/HtmlTags.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"

BOOL ComItextpdfTextHtmlHtmlEncoder_initialized = NO;


#line 79
@implementation ComItextpdfTextHtmlHtmlEncoder

IOSObjectArray * ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_;
id<JavaUtilSet> ComItextpdfTextHtmlHtmlEncoder_NEWLINETAGS_;

- (instancetype)init {
  return [super init];
}


#line 128
+ (NSString *)encodeWithNSString:(NSString *)string {
  
#line 129
  jint n = ((jint) [((NSString *) nil_chk(string)) length]);
  jchar character;
  JavaLangStringBuffer *buffer = [[JavaLangStringBuffer alloc] init];
  
#line 133
  for (jint i = 0; i < n; i++) {
    character = [string charAtWithInt:i];
    
#line 136
    if (character < 256) {
      (void) [buffer appendWithNSString:IOSObjectArray_Get(nil_chk(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_), character)];
    }
    else {
      
#line 141
      (void) [((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([buffer appendWithNSString:@"&#"])) appendWithInt:(jint) character])) appendWithChar:';'];
    }
  }
  return [buffer description];
}


#line 153
+ (NSString *)encodeWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color {
  
#line 154
  JavaLangStringBuffer *buffer = [[JavaLangStringBuffer alloc] initWithNSString:@"#"];
  if ([((ComItextpdfTextBaseColor *) nil_chk(color)) getRed] < 16) {
    (void) [buffer appendWithChar:'0'];
  }
  (void) [buffer appendWithNSString:[JavaLangInteger toStringWithInt:[color getRed] withInt:16]];
  if ([color getGreen] < 16) {
    (void) [buffer appendWithChar:'0'];
  }
  (void) [buffer appendWithNSString:[JavaLangInteger toStringWithInt:[color getGreen] withInt:16]];
  if ([color getBlue] < 16) {
    (void) [buffer appendWithChar:'0'];
  }
  (void) [buffer appendWithNSString:[JavaLangInteger toStringWithInt:[color getBlue] withInt:16]];
  return [buffer description];
}


#line 176
+ (NSString *)getAlignmentWithInt:(jint)alignment {
  
#line 177
  switch (alignment) {
    case ComItextpdfTextElement_ALIGN_LEFT:
    return ComItextpdfTextHtmlHtmlTags_get_ALIGN_LEFT_();
    case ComItextpdfTextElement_ALIGN_CENTER:
    return ComItextpdfTextHtmlHtmlTags_get_ALIGN_CENTER_();
    case ComItextpdfTextElement_ALIGN_RIGHT:
    return ComItextpdfTextHtmlHtmlTags_get_ALIGN_RIGHT_();
    case ComItextpdfTextElement_ALIGN_JUSTIFIED:
    case ComItextpdfTextElement_ALIGN_JUSTIFIED_ALL:
    return ComItextpdfTextHtmlHtmlTags_get_ALIGN_JUSTIFY_();
    case ComItextpdfTextElement_ALIGN_TOP:
    return ComItextpdfTextHtmlHtmlTags_get_ALIGN_TOP_();
    case ComItextpdfTextElement_ALIGN_MIDDLE:
    return ComItextpdfTextHtmlHtmlTags_get_ALIGN_MIDDLE_();
    case ComItextpdfTextElement_ALIGN_BOTTOM:
    return ComItextpdfTextHtmlHtmlTags_get_ALIGN_BOTTOM_();
    case ComItextpdfTextElement_ALIGN_BASELINE:
    return ComItextpdfTextHtmlHtmlTags_get_ALIGN_BASELINE_();
    default:
    return @"";
  }
}


#line 217
+ (jboolean)isNewLineTagWithNSString:(NSString *)tag {
  
#line 218
  return [((id<JavaUtilSet>) nil_chk(ComItextpdfTextHtmlHtmlEncoder_NEWLINETAGS_)) containsWithId:tag];
}

+ (void)initialize {
  if (self == [ComItextpdfTextHtmlHtmlEncoder class]) {
    ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_ = [IOSObjectArray arrayWithLength:
#line 92
    256 type:[IOSClass classWithClass:[NSString class]]];
    {
      
#line 95
      for (jint i = 0; i < 10; i++) {
        IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, i, JreStrcat("$IC", @"&#00", i, ';'));
      }
      
#line 99
      for (jint i = 10; i < 32; i++) {
        IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, i, JreStrcat("$IC", @"&#0", i, ';'));
      }
      
#line 103
      for (jint i = 32; i < 128; i++) {
        IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, i, [NSString valueOfChar:(jchar) i]);
      }
      
#line 108
      IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, 0x0009, @"\t");
      IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, 0x000a, @"<br />\n");
      IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, '"', @"&quot;");
      IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, '&', @"&amp;");
      IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, '<', @"&lt;");
      IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, '>', @"&gt;");
      
#line 115
      for (jint i = 128; i < 256; i++) {
        IOSObjectArray_Set(ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_, i, JreStrcat("$IC", @"&#", i, ';'));
      }
    }
    ComItextpdfTextHtmlHtmlEncoder_NEWLINETAGS_ =
#line 204
    [[JavaUtilHashSet alloc] init];
    {
      
#line 208
      [ComItextpdfTextHtmlHtmlEncoder_NEWLINETAGS_ addWithId:ComItextpdfTextHtmlHtmlTags_get_P_()];
      [ComItextpdfTextHtmlHtmlEncoder_NEWLINETAGS_ addWithId:ComItextpdfTextHtmlHtmlTags_get_BLOCKQUOTE_()];
      [ComItextpdfTextHtmlHtmlEncoder_NEWLINETAGS_ addWithId:ComItextpdfTextHtmlHtmlTags_get_BR_()];
    }
    ComItextpdfTextHtmlHtmlEncoder_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "HtmlEncoder", NULL, 0x2, NULL },
    { "encodeWithNSString:", "encode", "Ljava.lang.String;", 0x9, NULL },
    { "encodeWithComItextpdfTextBaseColor:", "encode", "Ljava.lang.String;", 0x9, NULL },
    { "getAlignmentWithInt:", "getAlignment", "Ljava.lang.String;", 0x9, NULL },
    { "isNewLineTagWithNSString:", "isNewLineTag", "Z", 0x9, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HTML_CODE_", NULL, 0x1a, "[Ljava.lang.String;", &ComItextpdfTextHtmlHtmlEncoder_HTML_CODE_,  },
    { "NEWLINETAGS_", NULL, 0x1a, "Ljava.util.Set;", &ComItextpdfTextHtmlHtmlEncoder_NEWLINETAGS_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlHtmlEncoder = { "HtmlEncoder", "com.itextpdf.text.html", NULL, 0x11, 5, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextHtmlHtmlEncoder;
}

@end
