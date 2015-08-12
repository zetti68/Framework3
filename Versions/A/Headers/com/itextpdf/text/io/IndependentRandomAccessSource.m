//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/IndependentRandomAccessSource.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/IndependentRandomAccessSource.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/io/IndependentRandomAccessSource.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"
#include "java/io/IOException.h"


#line 52
@implementation ComItextpdfTextIoIndependentRandomAccessSource


#line 63
- (instancetype)initWithComItextpdfTextIoRandomAccessSource:(id<ComItextpdfTextIoRandomAccessSource>)source {
  if (self = [super init]) {
    
#line 64
    self->source_ = source;
  }
  return self;
}


#line 70
- (jint)getWithLong:(jlong)position {
  
#line 71
  return [((id<ComItextpdfTextIoRandomAccessSource>) nil_chk(source_)) getWithLong:position];
}


#line 77
- (jint)getWithLong:(jlong)position
      withByteArray:(IOSByteArray *)bytes
            withInt:(jint)off
            withInt:(jint)len {
  
#line 78
  return [((id<ComItextpdfTextIoRandomAccessSource>) nil_chk(source_)) getWithLong:position withByteArray:bytes withInt:off withInt:len];
}


#line 84
- (jlong)length {
  
#line 85
  return [((id<ComItextpdfTextIoRandomAccessSource>) nil_chk(source_)) length];
}


#line 91
- (void)close {
}

- (void)copyAllFieldsTo:(ComItextpdfTextIoIndependentRandomAccessSource *)other {
  [super copyAllFieldsTo:other];
  other->source_ = source_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextIoRandomAccessSource:", "IndependentRandomAccessSource", NULL, 0x1, NULL },
    { "getWithLong:", "get", "I", 0x1, "Ljava.io.IOException;" },
    { "getWithLong:withByteArray:withInt:withInt:", "get", "I", 0x1, "Ljava.io.IOException;" },
    { "length", NULL, "J", 0x1, NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "source_", NULL, 0x12, "Lcom.itextpdf.text.io.RandomAccessSource;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextIoIndependentRandomAccessSource = { "IndependentRandomAccessSource", "com.itextpdf.text.io", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextIoIndependentRandomAccessSource;
}

@end