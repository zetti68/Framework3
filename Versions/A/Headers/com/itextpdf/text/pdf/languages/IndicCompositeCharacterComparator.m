//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/languages/IndicCompositeCharacterComparator.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/languages/IndicCompositeCharacterComparator.java"

#include "com/itextpdf/text/pdf/languages/IndicCompositeCharacterComparator.h"


#line 71
@implementation ComItextpdfTextPdfLanguagesIndicCompositeCharacterComparator

- (jint)compareWithId:(NSString *)o1
               withId:(NSString *)o2 {
  
#line 74
  if (((jint) [((NSString *) nil_chk(o2)) length]) > ((jint) [((NSString *) nil_chk(o1)) length])) {
    return 1;
  }
  else
#line 76
  if (((jint) [o1 length]) > ((jint) [o2 length])) {
    return -1;
  }
  else {
    
#line 79
    return [o1 compareToWithId:o2];
  }
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "compareWithNSString:withNSString:", "compare", "I", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfLanguagesIndicCompositeCharacterComparator = { "IndicCompositeCharacterComparator", "com.itextpdf.text.pdf.languages", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfLanguagesIndicCompositeCharacterComparator;
}

@end
