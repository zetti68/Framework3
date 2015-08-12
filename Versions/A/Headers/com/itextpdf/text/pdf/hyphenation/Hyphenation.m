//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/Hyphenation.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/Hyphenation.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/hyphenation/Hyphenation.h"
#include "java/lang/StringBuffer.h"


#line 24
@implementation ComItextpdfTextPdfHyphenationHyphenation


#line 38
- (instancetype)initWithNSString:(NSString *)word
                    withIntArray:(IOSIntArray *)points {
  if (self = [super init]) {
    
#line 39
    self->word_ = word;
    
#line 40
    hyphenPoints_ = points;
    
#line 41
    len_ = ((IOSIntArray *) nil_chk(points))->size_;
  }
  return self;
}


#line 47
- (jint)length {
  
#line 48
  return len_;
}


#line 54
- (NSString *)getPreHyphenTextWithInt:(jint)index {
  
#line 55
  return [((NSString *) nil_chk(word_)) substring:0 endIndex:IOSIntArray_Get(nil_chk(hyphenPoints_), index)];
}


#line 61
- (NSString *)getPostHyphenTextWithInt:(jint)index {
  
#line 62
  return [((NSString *) nil_chk(word_)) substring:IOSIntArray_Get(nil_chk(hyphenPoints_), index)];
}


#line 68
- (IOSIntArray *)getHyphenationPoints {
  
#line 69
  return hyphenPoints_;
}

- (NSString *)description {
  
#line 73
  JavaLangStringBuffer *str = [[JavaLangStringBuffer alloc] init];
  jint start = 0;
  for (jint i = 0; i < len_; i++) {
    (void) [((JavaLangStringBuffer *) nil_chk([str appendWithNSString:[((NSString *) nil_chk(word_)) substring:start endIndex:IOSIntArray_Get(nil_chk(hyphenPoints_), i)]])) appendWithChar:'-'];
    start = IOSIntArray_Get(hyphenPoints_, i);
  }
  (void) [str appendWithNSString:[((NSString *) nil_chk(word_)) substring:start]];
  return [str description];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfHyphenationHyphenation *)other {
  [super copyAllFieldsTo:other];
  other->hyphenPoints_ = hyphenPoints_;
  other->len_ = len_;
  other->word_ = word_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withIntArray:", "Hyphenation", NULL, 0x0, NULL },
    { "length", NULL, "I", 0x1, NULL },
    { "getPreHyphenTextWithInt:", "getPreHyphenText", "Ljava.lang.String;", 0x1, NULL },
    { "getPostHyphenTextWithInt:", "getPostHyphenText", "Ljava.lang.String;", 0x1, NULL },
    { "getHyphenationPoints", NULL, "[I", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "hyphenPoints_", NULL, 0x2, "[I", NULL,  },
    { "word_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "len_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfHyphenationHyphenation = { "Hyphenation", "com.itextpdf.text.pdf.hyphenation", NULL, 0x1, 6, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfHyphenationHyphenation;
}

@end
