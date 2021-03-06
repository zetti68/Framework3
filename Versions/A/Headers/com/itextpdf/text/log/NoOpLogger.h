//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/NoOpLogger.java
//

#ifndef _ComItextpdfTextLogNoOpLogger_H_
#define _ComItextpdfTextLogNoOpLogger_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/log/Logger.h"

@class ComItextpdfTextLogLevelEnum;
@class IOSClass;
@class JavaLangException;

@interface ComItextpdfTextLogNoOpLogger : NSObject < ComItextpdfTextLogLogger >

#pragma mark Public

- (instancetype)init;

- (void)debugWithNSString:(NSString *)message;

- (void)errorWithNSString:(NSString *)message;

- (void)errorWithNSString:(NSString *)message
    withJavaLangException:(JavaLangException *)e;

- (id<ComItextpdfTextLogLogger>)getLoggerWithIOSClass:(IOSClass *)name;

- (id<ComItextpdfTextLogLogger>)getLoggerWithNSString:(NSString *)name;

- (void)infoWithNSString:(NSString *)message;

- (jboolean)isLoggingWithComItextpdfTextLogLevelEnum:(ComItextpdfTextLogLevelEnum *)level;

- (void)traceWithNSString:(NSString *)message;

- (void)warnWithNSString:(NSString *)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextLogNoOpLogger)

FOUNDATION_EXPORT void ComItextpdfTextLogNoOpLogger_init(ComItextpdfTextLogNoOpLogger *self);

FOUNDATION_EXPORT ComItextpdfTextLogNoOpLogger *new_ComItextpdfTextLogNoOpLogger_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextLogNoOpLogger)

#endif // _ComItextpdfTextLogNoOpLogger_H_
