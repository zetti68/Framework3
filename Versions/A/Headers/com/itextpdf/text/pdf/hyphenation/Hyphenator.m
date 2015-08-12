//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/Hyphenator.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/Hyphenator.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/io/StreamUtil.h"
#include "com/itextpdf/text/pdf/hyphenation/Hyphenation.h"
#include "com/itextpdf/text/pdf/hyphenation/HyphenationTree.h"
#include "com/itextpdf/text/pdf/hyphenation/Hyphenator.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/InputStream.h"
#include "java/lang/Exception.h"
#include "java/util/Hashtable.h"

BOOL ComItextpdfTextPdfHyphenationHyphenator_initialized = NO;


#line 32
@implementation ComItextpdfTextPdfHyphenationHyphenator

JavaUtilHashtable * ComItextpdfTextPdfHyphenationHyphenator_hyphenTrees_;
NSString * ComItextpdfTextPdfHyphenationHyphenator_defaultHyphLocation_ = 
#line 40
@"com/itextpdf/text/pdf/hyphenation/hyph/";
NSString * ComItextpdfTextPdfHyphenationHyphenator_hyphenDir_ = 
#line 43
@"";


#line 51
- (instancetype)initWithNSString:(NSString *)lang
                    withNSString:(NSString *)country
                         withInt:(jint)leftMin
                         withInt:(jint)rightMin {
  if (self = [super init]) {
    hyphenTree_ =
#line 37
    nil;
    remainCharCount_ =
#line 38
    2;
    pushCharCount_ =
#line 39
    2;
    
#line 53
    hyphenTree_ = [ComItextpdfTextPdfHyphenationHyphenator getHyphenationTreeWithNSString:lang withNSString:country];
    
#line 54
    remainCharCount_ = leftMin;
    
#line 55
    pushCharCount_ = rightMin;
  }
  return self;
}


#line 63
+ (ComItextpdfTextPdfHyphenationHyphenationTree *)getHyphenationTreeWithNSString:(NSString *)lang
                                                                    withNSString:(NSString *)country {
  
#line 65
  NSString *key = lang;
  
#line 67
  if (country != nil && ![country isEqual:@"none"]) {
    key = JreStrcat("$$", key, JreStrcat("C$", '_', country));
  }
  
#line 71
  if ([((JavaUtilHashtable *) nil_chk(ComItextpdfTextPdfHyphenationHyphenator_hyphenTrees_)) containsKeyWithId:key]) {
    return [ComItextpdfTextPdfHyphenationHyphenator_hyphenTrees_ getWithId:key];
  }
  if ([ComItextpdfTextPdfHyphenationHyphenator_hyphenTrees_ containsKeyWithId:lang]) {
    return [ComItextpdfTextPdfHyphenationHyphenator_hyphenTrees_ getWithId:lang];
  }
  
#line 78
  ComItextpdfTextPdfHyphenationHyphenationTree *hTree = [ComItextpdfTextPdfHyphenationHyphenator getResourceHyphenationTreeWithNSString:key];
  if (hTree == nil)
#line 80
  hTree = [ComItextpdfTextPdfHyphenationHyphenator getFileHyphenationTreeWithNSString:key];
  
#line 82
  if (hTree != nil) {
    (void) [ComItextpdfTextPdfHyphenationHyphenator_hyphenTrees_ putWithId:key withId:hTree];
  }
  return hTree;
}


#line 92
+ (ComItextpdfTextPdfHyphenationHyphenationTree *)getResourceHyphenationTreeWithNSString:(NSString *)key {
  
#line 93
  @try {
    JavaIoInputStream *stream = [ComItextpdfTextIoStreamUtil getResourceStreamWithNSString:JreStrcat("$$$", ComItextpdfTextPdfHyphenationHyphenator_defaultHyphLocation_, key, @".xml")];
    if (stream == nil && ((jint) [((NSString *) nil_chk(key)) length]) > 2)
#line 96
    stream = [ComItextpdfTextIoStreamUtil getResourceStreamWithNSString:JreStrcat("$$$", ComItextpdfTextPdfHyphenationHyphenator_defaultHyphLocation_, [key substring:0 endIndex:2], @".xml")];
    if (stream == nil)
#line 98
    return nil;
    ComItextpdfTextPdfHyphenationHyphenationTree *hTree = [[ComItextpdfTextPdfHyphenationHyphenationTree alloc] init];
    [hTree loadSimplePatternsWithJavaIoInputStream:stream];
    return hTree;
  }
  @catch (JavaLangException *e) {
    return nil;
  }
}

+ (ComItextpdfTextPdfHyphenationHyphenationTree *)getFileHyphenationTreeWithNSString:(NSString *)key {
  
#line 113
  @try {
    if (ComItextpdfTextPdfHyphenationHyphenator_hyphenDir_ == nil)
#line 115
    return nil;
    JavaIoInputStream *stream = nil;
    JavaIoFile *hyphenFile = [[JavaIoFile alloc] initWithNSString:ComItextpdfTextPdfHyphenationHyphenator_hyphenDir_ withNSString:JreStrcat("$$", key, @".xml")];
    if ([hyphenFile canRead])
#line 119
    stream = [[JavaIoFileInputStream alloc] initWithJavaIoFile:hyphenFile];
    if (stream == nil && ((jint) [((NSString *) nil_chk(key)) length]) > 2) {
      hyphenFile = [[JavaIoFile alloc] initWithNSString:ComItextpdfTextPdfHyphenationHyphenator_hyphenDir_ withNSString:JreStrcat("$$", [key substring:0 endIndex:2], @".xml")];
      if ([hyphenFile canRead])
#line 123
      stream = [[JavaIoFileInputStream alloc] initWithJavaIoFile:hyphenFile];
    }
    if (stream == nil)
#line 126
    return nil;
    ComItextpdfTextPdfHyphenationHyphenationTree *hTree = [[ComItextpdfTextPdfHyphenationHyphenationTree alloc] init];
    [hTree loadSimplePatternsWithJavaIoInputStream:stream];
    return hTree;
  }
  @catch (JavaLangException *e) {
    return nil;
  }
}


#line 144
+ (ComItextpdfTextPdfHyphenationHyphenation *)hyphenateWithNSString:(NSString *)lang
                                                       withNSString:(NSString *)country
                                                       withNSString:(NSString *)word
                                                            withInt:(jint)leftMin
                                                            withInt:(jint)rightMin {
  
#line 147
  ComItextpdfTextPdfHyphenationHyphenationTree *hTree = [ComItextpdfTextPdfHyphenationHyphenator getHyphenationTreeWithNSString:lang withNSString:country];
  if (hTree == nil) {
    
#line 151
    return nil;
  }
  return [((ComItextpdfTextPdfHyphenationHyphenationTree *) nil_chk(hTree)) hyphenateWithNSString:word withInt:leftMin withInt:rightMin];
}


#line 166
+ (ComItextpdfTextPdfHyphenationHyphenation *)hyphenateWithNSString:(NSString *)lang
                                                       withNSString:(NSString *)country
                                                      withCharArray:(IOSCharArray *)word
                                                            withInt:(jint)offset
                                                            withInt:(jint)len
                                                            withInt:(jint)leftMin
                                                            withInt:(jint)rightMin {
  
#line 169
  ComItextpdfTextPdfHyphenationHyphenationTree *hTree = [ComItextpdfTextPdfHyphenationHyphenator getHyphenationTreeWithNSString:lang withNSString:country];
  if (hTree == nil) {
    
#line 173
    return nil;
  }
  return [((ComItextpdfTextPdfHyphenationHyphenationTree *) nil_chk(hTree)) hyphenateWithCharArray:word withInt:offset withInt:len withInt:leftMin withInt:rightMin];
}


#line 181
- (void)setMinRemainCharCountWithInt:(jint)min {
  
#line 182
  remainCharCount_ = min;
}


#line 188
- (void)setMinPushCharCountWithInt:(jint)min {
  
#line 189
  pushCharCount_ = min;
}


#line 196
- (void)setLanguageWithNSString:(NSString *)lang
                   withNSString:(NSString *)country {
  
#line 197
  hyphenTree_ = [ComItextpdfTextPdfHyphenationHyphenator getHyphenationTreeWithNSString:lang withNSString:country];
}


#line 206
- (ComItextpdfTextPdfHyphenationHyphenation *)hyphenateWithCharArray:(IOSCharArray *)word
                                                             withInt:(jint)offset
                                                             withInt:(jint)len {
  
#line 207
  if (hyphenTree_ == nil) {
    return nil;
  }
  return [((ComItextpdfTextPdfHyphenationHyphenationTree *) nil_chk(hyphenTree_)) hyphenateWithCharArray:word withInt:offset withInt:len withInt:remainCharCount_ withInt:
#line 211
  pushCharCount_];
}


#line 218
- (ComItextpdfTextPdfHyphenationHyphenation *)hyphenateWithNSString:(NSString *)word {
  if (hyphenTree_ == nil) {
    return nil;
  }
  return [((ComItextpdfTextPdfHyphenationHyphenationTree *) nil_chk(hyphenTree_)) hyphenateWithNSString:word withInt:remainCharCount_ withInt:pushCharCount_];
}


#line 228
+ (NSString *)getHyphenDir {
  
#line 229
  return ComItextpdfTextPdfHyphenationHyphenator_hyphenDir_;
}


#line 235
+ (void)setHyphenDirWithNSString:(NSString *)_hyphenDir {
  
#line 236
  ComItextpdfTextPdfHyphenationHyphenator_hyphenDir_ = _hyphenDir;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfHyphenationHyphenator *)other {
  [super copyAllFieldsTo:other];
  other->hyphenTree_ = hyphenTree_;
  other->pushCharCount_ = pushCharCount_;
  other->remainCharCount_ = remainCharCount_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfHyphenationHyphenator class]) {
    ComItextpdfTextPdfHyphenationHyphenator_hyphenTrees_ =
#line 35
    [[JavaUtilHashtable alloc] init];
    ComItextpdfTextPdfHyphenationHyphenator_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withInt:withInt:", "Hyphenator", NULL, 0x1, NULL },
    { "getHyphenationTreeWithNSString:withNSString:", "getHyphenationTree", "Lcom.itextpdf.text.pdf.hyphenation.HyphenationTree;", 0x9, NULL },
    { "getResourceHyphenationTreeWithNSString:", "getResourceHyphenationTree", "Lcom.itextpdf.text.pdf.hyphenation.HyphenationTree;", 0x9, NULL },
    { "getFileHyphenationTreeWithNSString:", "getFileHyphenationTree", "Lcom.itextpdf.text.pdf.hyphenation.HyphenationTree;", 0x9, NULL },
    { "hyphenateWithNSString:withNSString:withNSString:withInt:withInt:", "hyphenate", "Lcom.itextpdf.text.pdf.hyphenation.Hyphenation;", 0x9, NULL },
    { "hyphenateWithNSString:withNSString:withCharArray:withInt:withInt:withInt:withInt:", "hyphenate", "Lcom.itextpdf.text.pdf.hyphenation.Hyphenation;", 0x9, NULL },
    { "setMinRemainCharCountWithInt:", "setMinRemainCharCount", "V", 0x1, NULL },
    { "setMinPushCharCountWithInt:", "setMinPushCharCount", "V", 0x1, NULL },
    { "setLanguageWithNSString:withNSString:", "setLanguage", "V", 0x1, NULL },
    { "hyphenateWithCharArray:withInt:withInt:", "hyphenate", "Lcom.itextpdf.text.pdf.hyphenation.Hyphenation;", 0x1, NULL },
    { "hyphenateWithNSString:", "hyphenate", "Lcom.itextpdf.text.pdf.hyphenation.Hyphenation;", 0x1, NULL },
    { "getHyphenDir", NULL, "Ljava.lang.String;", 0x9, NULL },
    { "setHyphenDirWithNSString:", "setHyphenDir", "V", 0x9, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "hyphenTrees_", NULL, 0xa, "Ljava.util.Hashtable;", &ComItextpdfTextPdfHyphenationHyphenator_hyphenTrees_,  },
    { "hyphenTree_", NULL, 0x2, "Lcom.itextpdf.text.pdf.hyphenation.HyphenationTree;", NULL,  },
    { "remainCharCount_", NULL, 0x2, "I", NULL,  },
    { "pushCharCount_", NULL, 0x2, "I", NULL,  },
    { "defaultHyphLocation_", NULL, 0x1a, "Ljava.lang.String;", &ComItextpdfTextPdfHyphenationHyphenator_defaultHyphLocation_,  },
    { "hyphenDir_", NULL, 0xa, "Ljava.lang.String;", &ComItextpdfTextPdfHyphenationHyphenator_hyphenDir_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfHyphenationHyphenator = { "Hyphenator", "com.itextpdf.text.pdf.hyphenation", NULL, 0x1, 13, methods, 6, fields, 0, NULL};
  return &_ComItextpdfTextPdfHyphenationHyphenator;
}

@end