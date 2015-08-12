//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfTextArray.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfTextArray.java"

#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfTextArray.h"
#include "java/lang/Float.h"
#include "java/util/ArrayList.h"


#line 59
@implementation ComItextpdfTextPdfPdfTextArray


#line 71
- (instancetype)initWithNSString:(NSString *)str {
  if (self = [super init]) {
    arrayList_ = [[JavaUtilArrayList alloc] init];
    
#line 72
    [self addWithNSString:str];
  }
  return self;
}


#line 75
- (instancetype)init {
  if (self = [super init]) {
    arrayList_ =
#line 60
    [[JavaUtilArrayList alloc] init];
  }
  return self;
}


#line 83
- (void)addWithComItextpdfTextPdfPdfNumber:(ComItextpdfTextPdfPdfNumber *)number {
  [self addWithFloat:(jfloat) [((ComItextpdfTextPdfPdfNumber *) nil_chk(number)) doubleValue]];
}

- (void)addWithFloat:(jfloat)number {
  
#line 88
  if (number != 0) {
    if (lastNum_ != nil) {
      lastNum_ = [[JavaLangFloat alloc] initWithFloat:number + [lastNum_ floatValue]];
      if ([lastNum_ floatValue] != 0) {
        [self replaceLastWithId:lastNum_];
      }
      else {
        
#line 94
        (void) [arrayList_ removeWithInt:[((JavaUtilArrayList *) nil_chk(arrayList_)) size] - 1];
      }
    }
    else {
      
#line 97
      lastNum_ = [[JavaLangFloat alloc] initWithFloat:number];
      [((JavaUtilArrayList *) nil_chk(arrayList_)) addWithId:lastNum_];
    }
    
#line 101
    lastStr_ = nil;
  }
}


#line 106
- (void)addWithNSString:(NSString *)str {
  
#line 107
  if (((jint) [((NSString *) nil_chk(str)) length]) > 0) {
    if (lastStr_ != nil) {
      lastStr_ = JreStrcat("$$", lastStr_, str);
      [self replaceLastWithId:lastStr_];
    }
    else {
      
#line 112
      lastStr_ = str;
      [((JavaUtilArrayList *) nil_chk(arrayList_)) addWithId:lastStr_];
    }
    lastNum_ = nil;
  }
}


#line 120
- (JavaUtilArrayList *)getArrayList {
  
#line 121
  return arrayList_;
}


#line 124
- (void)replaceLastWithId:(id)obj {
  (void) [arrayList_ setWithInt:[((JavaUtilArrayList *) nil_chk(arrayList_)) size] - 1 withId:obj];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfTextArray *)other {
  [super copyAllFieldsTo:other];
  other->arrayList_ = arrayList_;
  other->lastNum_ = lastNum_;
  other->lastStr_ = lastStr_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "PdfTextArray", NULL, 0x1, NULL },
    { "init", "PdfTextArray", NULL, 0x1, NULL },
    { "addWithComItextpdfTextPdfPdfNumber:", "add", "V", 0x1, NULL },
    { "addWithFloat:", "add", "V", 0x1, NULL },
    { "addWithNSString:", "add", "V", 0x1, NULL },
    { "getArrayList", NULL, "Ljava.util.ArrayList;", 0x0, NULL },
    { "replaceLastWithId:", "replaceLast", "V", 0x2, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "arrayList_", NULL, 0x0, "Ljava.util.ArrayList;", NULL,  },
    { "lastStr_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "lastNum_", NULL, 0x2, "Ljava.lang.Float;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfTextArray = { "PdfTextArray", "com.itextpdf.text.pdf", NULL, 0x1, 7, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfTextArray;
}

@end