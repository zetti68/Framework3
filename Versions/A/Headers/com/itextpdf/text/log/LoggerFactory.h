//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/log/LoggerFactory.java
//

#ifndef _ComItextpdfTextLogLoggerFactory_H_
#define _ComItextpdfTextLogLoggerFactory_H_

#include "J2ObjC_header.h"

@class IOSClass;
@protocol ComItextpdfTextLogLogger;

@interface ComItextpdfTextLogLoggerFactory : NSObject

#pragma mark Public

+ (ComItextpdfTextLogLoggerFactory *)getInstance;

+ (id<ComItextpdfTextLogLogger>)getLoggerWithIOSClass:(IOSClass *)klass;

+ (id<ComItextpdfTextLogLogger>)getLoggerWithNSString:(NSString *)name;

- (id<ComItextpdfTextLogLogger>)logger;

- (void)setLoggerWithComItextpdfTextLogLogger:(id<ComItextpdfTextLogLogger>)logger;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextLogLoggerFactory)

FOUNDATION_EXPORT id<ComItextpdfTextLogLogger> ComItextpdfTextLogLoggerFactory_getLoggerWithIOSClass_(IOSClass *klass);

FOUNDATION_EXPORT id<ComItextpdfTextLogLogger> ComItextpdfTextLogLoggerFactory_getLoggerWithNSString_(NSString *name);

FOUNDATION_EXPORT ComItextpdfTextLogLoggerFactory *ComItextpdfTextLogLoggerFactory_getInstance();

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextLogLoggerFactory)

#endif // _ComItextpdfTextLogLoggerFactory_H_
