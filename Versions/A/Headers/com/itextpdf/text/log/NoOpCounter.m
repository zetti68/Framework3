//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/NoOpCounter.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/NoOpCounter.java"

#include "IOSClass.h"
#include "com/itextpdf/text/log/Counter.h"
#include "com/itextpdf/text/log/NoOpCounter.h"


#line 48
@implementation ComItextpdfTextLogNoOpCounter


#line 53
- (id<ComItextpdfTextLogCounter>)getCounterWithIOSClass:(IOSClass *)klass {
  
#line 54
  return self;
}


#line 60
- (void)readWithLong:(jlong)l {
}


#line 66
- (void)writtenWithLong:(jlong)l {
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getCounterWithIOSClass:", "getCounter", "Lcom.itextpdf.text.log.Counter;", 0x1, NULL },
    { "readWithLong:", "read", "V", 0x1, NULL },
    { "writtenWithLong:", "written", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextLogNoOpCounter = { "NoOpCounter", "com.itextpdf.text.log", NULL, 0x1, 4, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextLogNoOpCounter;
}

@end
