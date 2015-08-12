//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/WritableDirectElement.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/WritableDirectElement.java"

#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ElementListener.h"
#include "com/itextpdf/text/WritableDirectElement.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#pragma clang diagnostic ignored "-Wprotocol"


#line 63
@implementation ComItextpdfTextWritableDirectElement


#line 70
- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener {
  
#line 71
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}


#line 77
- (jint)type {
  
#line 78
  return ComItextpdfTextElement_WRITABLE_DIRECT;
}


#line 86
- (jboolean)isContent {
  
#line 87
  return NO;
}


#line 95
- (jboolean)isNestable {
  
#line 96
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}


#line 104
- (id<JavaUtilList>)getChunks {
  
#line 105
  return [[JavaUtilArrayList alloc] initWithInt:0];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "processWithComItextpdfTextElementListener:", "process", "Z", 0x1, NULL },
    { "type", NULL, "I", 0x1, NULL },
    { "isContent", NULL, "Z", 0x1, NULL },
    { "isNestable", NULL, "Z", 0x1, NULL },
    { "getChunks", NULL, "Ljava.util.List;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextWritableDirectElement = { "WritableDirectElement", "com.itextpdf.text", NULL, 0x401, 6, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextWritableDirectElement;
}

@end
