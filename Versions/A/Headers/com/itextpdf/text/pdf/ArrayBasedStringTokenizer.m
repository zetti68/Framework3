//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ArrayBasedStringTokenizer.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ArrayBasedStringTokenizer.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/pdf/ArrayBasedStringTokenizer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"


#line 59
@implementation ComItextpdfTextPdfArrayBasedStringTokenizer


#line 63
- (instancetype)initWithNSStringArray:(IOSObjectArray *)tokens {
  if (self = [super init]) {
    
#line 64
    self->regex_ = [JavaUtilRegexPattern compileWithNSString:[self getRegexFromTokensWithNSStringArray:tokens]];
  }
  return self;
}


#line 67
- (IOSObjectArray *)tokenizeWithNSString:(NSString *)text {
  
#line 69
  id<JavaUtilList> tokens = [[JavaUtilArrayList alloc] init];
  
#line 71
  JavaUtilRegexMatcher *matcher = [((JavaUtilRegexPattern *) nil_chk(regex_)) matcherWithJavaLangCharSequence:text];
  
#line 73
  jint endIndexOfpreviousMatch = 0;
  
#line 75
  while ([((JavaUtilRegexMatcher *) nil_chk(matcher)) find]) {
    
#line 77
    jint startIndexOfMatch = [matcher start];
    
#line 79
    NSString *previousToken = [((NSString *) nil_chk(text)) substring:endIndexOfpreviousMatch endIndex:startIndexOfMatch];
    
#line 81
    if (((jint) [((NSString *) nil_chk(previousToken)) length]) > 0) {
      [tokens addWithId:previousToken];
    }
    
#line 85
    NSString *currentMatch = [matcher group];
    
#line 89
    [tokens addWithId:currentMatch];
    
#line 91
    endIndexOfpreviousMatch = [matcher end];
  }
  
#line 95
  NSString *tail = [text substring:endIndexOfpreviousMatch endIndex:((jint) [((NSString *) nil_chk(text)) length])];
  
#line 97
  if (((jint) [((NSString *) nil_chk(tail)) length]) > 0) {
    [tokens addWithId:tail];
  }
  
#line 101
  return [tokens toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSString class]]]];
}


#line 105
- (NSString *)getRegexFromTokensWithNSStringArray:(IOSObjectArray *)tokens {
  
#line 106
  JavaLangStringBuilder *regexBuilder = [[JavaLangStringBuilder alloc] initWithInt:100];
  {
    IOSObjectArray *a__ = tokens;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *token = *b__++;
      
#line 109
      (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([regexBuilder appendWithNSString:@"("])) appendWithNSString:token])) appendWithNSString:@")|"];
    }
  }
  [regexBuilder setLengthWithInt:[regexBuilder sequenceLength] - 1];
  
#line 114
  NSString *regex = [regexBuilder description];
  
#line 116
  return regex;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfArrayBasedStringTokenizer *)other {
  [super copyAllFieldsTo:other];
  other->regex_ = regex_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSStringArray:", "ArrayBasedStringTokenizer", NULL, 0x1, NULL },
    { "tokenizeWithNSString:", "tokenize", "[Ljava.lang.String;", 0x1, NULL },
    { "getRegexFromTokensWithNSStringArray:", "getRegexFromTokens", "Ljava.lang.String;", 0x2, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "regex_", NULL, 0x12, "Ljava.util.regex.Pattern;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfArrayBasedStringTokenizer = { "ArrayBasedStringTokenizer", "com.itextpdf.text.pdf", NULL, 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfArrayBasedStringTokenizer;
}

@end
