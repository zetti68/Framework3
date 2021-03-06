//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/CounterFactory.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/CounterFactory.java"

#include "IOSClass.h"
#include "com/itextpdf/text/log/Counter.h"
#include "com/itextpdf/text/log/CounterFactory.h"
#include "com/itextpdf/text/log/NoOpCounter.h"

BOOL ComItextpdfTextLogCounterFactory_initialized = NO;


#line 54
@implementation ComItextpdfTextLogCounterFactory

ComItextpdfTextLogCounterFactory * ComItextpdfTextLogCounterFactory_myself_;


#line 66
- (instancetype)init {
  if (self = [super init]) {
    counter_ =
#line 63
    [[ComItextpdfTextLogNoOpCounter alloc] init];
  }
  return self;
}


#line 69
+ (ComItextpdfTextLogCounterFactory *)getInstance {
  
#line 70
  return ComItextpdfTextLogCounterFactory_myself_;
}


#line 74
+ (id<ComItextpdfTextLogCounter>)getCounterWithIOSClass:(IOSClass *)klass {
  return [((id<ComItextpdfTextLogCounter>) nil_chk(((ComItextpdfTextLogCounterFactory *) nil_chk(ComItextpdfTextLogCounterFactory_myself_))->counter_)) getCounterWithIOSClass:klass];
}


#line 81
- (id<ComItextpdfTextLogCounter>)getCounter {
  
#line 82
  return counter_;
}


#line 88
- (void)setCounterWithComItextpdfTextLogCounter:(id<ComItextpdfTextLogCounter>)counter {
  
#line 89
  self->counter_ = counter;
}

- (void)copyAllFieldsTo:(ComItextpdfTextLogCounterFactory *)other {
  [super copyAllFieldsTo:other];
  other->counter_ = counter_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextLogCounterFactory class]) {
    {
      
#line 59
      ComItextpdfTextLogCounterFactory_myself_ = [[ComItextpdfTextLogCounterFactory alloc] init];
    }
    ComItextpdfTextLogCounterFactory_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CounterFactory", NULL, 0x2, NULL },
    { "getInstance", NULL, "Lcom.itextpdf.text.log.CounterFactory;", 0x9, NULL },
    { "getCounterWithIOSClass:", "getCounter", "Lcom.itextpdf.text.log.Counter;", 0x9, NULL },
    { "getCounter", NULL, "Lcom.itextpdf.text.log.Counter;", 0x1, NULL },
    { "setCounterWithComItextpdfTextLogCounter:", "setCounter", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "myself_", NULL, 0xa, "Lcom.itextpdf.text.log.CounterFactory;", &ComItextpdfTextLogCounterFactory_myself_,  },
    { "counter_", NULL, 0x2, "Lcom.itextpdf.text.log.Counter;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextLogCounterFactory = { "CounterFactory", "com.itextpdf.text.log", NULL, 0x1, 5, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextLogCounterFactory;
}

@end
