//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Header.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Header.java"

#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/Header.h"
#include "java/lang/StringBuffer.h"


#line 60
@implementation ComItextpdfTextHeader


#line 76
- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)content {
  if (self =
#line 77
  [super initWithInt:ComItextpdfTextElement_HEADER withNSString:content]) {
    
#line 78
    self->name_ = [[JavaLangStringBuffer alloc] initWithNSString:name];
  }
  return self;
}

- (NSString *)getName {
  
#line 89
  return [((JavaLangStringBuffer *) nil_chk(name_)) description];
}

- (void)copyAllFieldsTo:(ComItextpdfTextHeader *)other {
  [super copyAllFieldsTo:other];
  other->name_ = name_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:", "Header", NULL, 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x2, "Ljava.lang.StringBuffer;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHeader = { "Header", "com.itextpdf.text", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextHeader;
}

@end
