//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/exceptions/InvalidPdfException.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/exceptions/InvalidPdfException.java"

#include "com/itextpdf/text/exceptions/InvalidPdfException.h"
#include "java/lang/Throwable.h"


#line 54
@implementation ComItextpdfTextExceptionsInvalidPdfException


#line 64
- (instancetype)initWithNSString:(NSString *)message {
  return
#line 65
  [self initComItextpdfTextExceptionsInvalidPdfExceptionWithNSString:message withJavaLangThrowable:nil];
}


#line 73
- (instancetype)initComItextpdfTextExceptionsInvalidPdfExceptionWithNSString:(NSString *)message
                                                       withJavaLangThrowable:(JavaLangThrowable *)cause {
  if (self =
#line 74
  [super initWithNSString:message]) {
    
#line 75
    self->cause_ = cause;
  }
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  return [self initComItextpdfTextExceptionsInvalidPdfExceptionWithNSString:
#line 73
message withJavaLangThrowable:cause];
}


#line 83
- (JavaLangThrowable *)getCause {
  
#line 84
  return cause_;
}

- (void)copyAllFieldsTo:(ComItextpdfTextExceptionsInvalidPdfException *)other {
  [super copyAllFieldsTo:other];
  other->cause_ = cause_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "InvalidPdfException", NULL, 0x1, NULL },
    { "initWithNSString:withJavaLangThrowable:", "InvalidPdfException", NULL, 0x1, NULL },
    { "getCause", NULL, "Ljava.lang.Throwable;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextExceptionsInvalidPdfException_serialVersionUID },
    { "cause_", NULL, 0x12, "Ljava.lang.Throwable;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextExceptionsInvalidPdfException = { "InvalidPdfException", "com.itextpdf.text.exceptions", NULL, 0x1, 3, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextExceptionsInvalidPdfException;
}

@end
