//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/BadElementException.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/BadElementException.java"

#include "com/itextpdf/text/BadElementException.h"
#include "java/lang/Exception.h"


#line 53
@implementation ComItextpdfTextBadElementException


#line 62
- (instancetype)initWithJavaLangException:(JavaLangException *)ex {
  return
#line 63
  [super initWithJavaLangException:ex];
}


#line 69
- (instancetype)init {
  return
#line 70
  [super init];
}


#line 77
- (instancetype)initWithNSString:(NSString *)message {
  return
#line 78
  [super initWithNSString:message];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangException:", "BadElementException", NULL, 0x1, NULL },
    { "init", "BadElementException", NULL, 0x0, NULL },
    { "initWithNSString:", "BadElementException", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextBadElementException_serialVersionUID },
  };
  static const J2ObjcClassInfo _ComItextpdfTextBadElementException = { "BadElementException", "com.itextpdf.text", NULL, 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextBadElementException;
}

@end
