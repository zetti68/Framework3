//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/XMPDateTimeFactory.java
//

#ifndef _ComItextpdfXmpXMPDateTimeFactory_H_
#define _ComItextpdfXmpXMPDateTimeFactory_H_

@class JavaUtilCalendar;
@class JavaUtilTimeZone;
@protocol ComItextpdfXmpXMPDateTime;

#import "JreEmulation.h"

@interface ComItextpdfXmpXMPDateTimeFactory : NSObject {
}

- (instancetype)init;

+ (id<ComItextpdfXmpXMPDateTime>)createFromCalendarWithJavaUtilCalendar:(JavaUtilCalendar *)calendar;

+ (id<ComItextpdfXmpXMPDateTime>)create;

+ (id<ComItextpdfXmpXMPDateTime>)createWithInt:(jint)year
                                       withInt:(jint)month
                                       withInt:(jint)day;

+ (id<ComItextpdfXmpXMPDateTime>)createWithInt:(jint)year
                                       withInt:(jint)month
                                       withInt:(jint)day
                                       withInt:(jint)hour
                                       withInt:(jint)minute
                                       withInt:(jint)second
                                       withInt:(jint)nanoSecond;

+ (id<ComItextpdfXmpXMPDateTime>)createFromISO8601WithNSString:(NSString *)strValue;

+ (id<ComItextpdfXmpXMPDateTime>)getCurrentDateTime;

+ (id<ComItextpdfXmpXMPDateTime>)setLocalTimeZoneWithComItextpdfXmpXMPDateTime:(id<ComItextpdfXmpXMPDateTime>)dateTime;

+ (id<ComItextpdfXmpXMPDateTime>)convertToUTCTimeWithComItextpdfXmpXMPDateTime:(id<ComItextpdfXmpXMPDateTime>)dateTime;

+ (id<ComItextpdfXmpXMPDateTime>)convertToLocalTimeWithComItextpdfXmpXMPDateTime:(id<ComItextpdfXmpXMPDateTime>)dateTime;

@end

FOUNDATION_EXPORT BOOL ComItextpdfXmpXMPDateTimeFactory_initialized;
J2OBJC_STATIC_INIT(ComItextpdfXmpXMPDateTimeFactory)

FOUNDATION_EXPORT JavaUtilTimeZone *ComItextpdfXmpXMPDateTimeFactory_UTC_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpXMPDateTimeFactory, UTC_, JavaUtilTimeZone *)

#endif // _ComItextpdfXmpXMPDateTimeFactory_H_
