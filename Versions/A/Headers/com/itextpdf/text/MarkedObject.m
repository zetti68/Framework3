//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/MarkedObject.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/MarkedObject.java"

#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ElementListener.h"
#include "com/itextpdf/text/MarkedObject.h"
#include "java/util/List.h"
#include "java/util/Properties.h"


#line 58
@implementation ComItextpdfTextMarkedObject


#line 69
- (instancetype)init {
  if (self = [super init]) {
    markupAttributes_ =
#line 64
    [[JavaUtilProperties alloc] init];
    
#line 70
    element_ = nil;
  }
  return self;
}


#line 77
- (instancetype)initWithComItextpdfTextElement:(id<ComItextpdfTextElement>)element {
  if (self = [super init]) {
    markupAttributes_ =
#line 64
    [[JavaUtilProperties alloc] init];
    
#line 78
    self->element_ = element;
  }
  return self;
}


#line 86
- (id<JavaUtilList>)getChunks {
  
#line 87
  return [((id<ComItextpdfTextElement>) nil_chk(element_)) getChunks];
}


#line 97
- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener {
  
#line 98
  @try {
    return [((id<ComItextpdfTextElementListener>) nil_chk(listener)) addWithComItextpdfTextElement:element_];
  }
  @catch (ComItextpdfTextDocumentException *de) {
    return NO;
  }
}


#line 111
- (jint)type {
  
#line 112
  return ComItextpdfTextElement_MARKED;
}


#line 119
- (jboolean)isContent {
  
#line 120
  return YES;
}


#line 127
- (jboolean)isNestable {
  
#line 128
  return YES;
}


#line 135
- (JavaUtilProperties *)getMarkupAttributes {
  
#line 136
  return markupAttributes_;
}


#line 144
- (void)setMarkupAttributeWithNSString:(NSString *)key
                          withNSString:(NSString *)value {
  
#line 145
  (void) [((JavaUtilProperties *) nil_chk(markupAttributes_)) setPropertyWithNSString:key withNSString:value];
}

- (void)copyAllFieldsTo:(ComItextpdfTextMarkedObject *)other {
  [super copyAllFieldsTo:other];
  other->element_ = element_;
  other->markupAttributes_ = markupAttributes_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "MarkedObject", NULL, 0x4, NULL },
    { "initWithComItextpdfTextElement:", "MarkedObject", NULL, 0x1, NULL },
    { "getChunks", NULL, "Ljava.util.List;", 0x1, NULL },
    { "processWithComItextpdfTextElementListener:", "process", "Z", 0x1, NULL },
    { "type", NULL, "I", 0x1, NULL },
    { "isContent", NULL, "Z", 0x1, NULL },
    { "isNestable", NULL, "Z", 0x1, NULL },
    { "getMarkupAttributes", NULL, "Ljava.util.Properties;", 0x1, NULL },
    { "setMarkupAttributeWithNSString:withNSString:", "setMarkupAttribute", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "element_", NULL, 0x4, "Lcom.itextpdf.text.Element;", NULL,  },
    { "markupAttributes_", NULL, 0x4, "Ljava.util.Properties;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextMarkedObject = { "MarkedObject", "com.itextpdf.text", NULL, 0x1, 9, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextMarkedObject;
}

@end