//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/SysoCounter.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/SysoCounter.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/log/Counter.h"
#include "com/itextpdf/text/log/SysoCounter.h"
#include "java/io/PrintStream.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"


#line 45
@implementation ComItextpdfTextLogSysoCounter


#line 56
- (instancetype)init {
  if (self = [super init]) {
    
#line 57
    name_ = @"iText";
  }
  return self;
}


#line 64
- (instancetype)initWithIOSClass:(IOSClass *)klass {
  if (self = [super init]) {
    
#line 65
    name_ = [((IOSClass *) nil_chk(klass)) getName];
  }
  return self;
}


#line 71
- (id<ComItextpdfTextLogCounter>)getCounterWithIOSClass:(IOSClass *)klass {
  
#line 72
  return [[ComItextpdfTextLogSysoCounter alloc] initWithIOSClass:klass];
}


#line 78
- (void)readWithLong:(jlong)l {
  
#line 79
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:[NSString formatWithNSString:@"[%s] %s bytes read" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ name_, [JavaLangLong valueOfWithLong:l] } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
}


#line 85
- (void)writtenWithLong:(jlong)l {
  
#line 86
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:[NSString formatWithNSString:@"[%s] %s bytes written" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ name_, [JavaLangLong valueOfWithLong:l] } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
}

- (void)copyAllFieldsTo:(ComItextpdfTextLogSysoCounter *)other {
  [super copyAllFieldsTo:other];
  other->name_ = name_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SysoCounter", NULL, 0x1, NULL },
    { "initWithIOSClass:", "SysoCounter", NULL, 0x4, NULL },
    { "getCounterWithIOSClass:", "getCounter", "Lcom.itextpdf.text.log.Counter;", 0x1, NULL },
    { "readWithLong:", "read", "V", 0x1, NULL },
    { "writtenWithLong:", "written", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextLogSysoCounter = { "SysoCounter", "com.itextpdf.text.log", NULL, 0x1, 5, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextLogSysoCounter;
}

@end
