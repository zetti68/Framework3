//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/Logger.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/Logger.java"

#include "IOSClass.h"
#include "com/itextpdf/text/log/Level.h"
#include "com/itextpdf/text/log/Logger.h"
#include "java/lang/Exception.h"

@interface ComItextpdfTextLogLogger : NSObject
@end

@implementation ComItextpdfTextLogLogger

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getLoggerWithIOSClass:", "getLogger", "Lcom.itextpdf.text.log.Logger;", 0x401, NULL },
    { "getLoggerWithNSString:", "getLogger", "Lcom.itextpdf.text.log.Logger;", 0x401, NULL },
    { "isLoggingWithComItextpdfTextLogLevelEnum:", "isLogging", "Z", 0x401, NULL },
    { "warnWithNSString:", "warn", "V", 0x401, NULL },
    { "traceWithNSString:", "trace", "V", 0x401, NULL },
    { "debugWithNSString:", "debug", "V", 0x401, NULL },
    { "infoWithNSString:", "info", "V", 0x401, NULL },
    { "errorWithNSString:", "error", "V", 0x401, NULL },
    { "errorWithNSString:withJavaLangException:", "error", "V", 0x401, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextLogLogger = { "Logger", "com.itextpdf.text.log", NULL, 0x201, 9, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextLogLogger;
}

@end

