//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/XMPDateTime.java
//

#ifndef _ComItextpdfXmpXMPDateTime_H_
#define _ComItextpdfXmpXMPDateTime_H_

@class JavaUtilCalendar;
@class JavaUtilTimeZone;

#import "JreEmulation.h"
#include "java/lang/Comparable.h"

@protocol ComItextpdfXmpXMPDateTime < JavaLangComparable, NSObject, JavaObject >
- (jint)getYear;

- (void)setYearWithInt:(jint)year;

- (jint)getMonth;

- (void)setMonthWithInt:(jint)month;

- (jint)getDay;

- (void)setDayWithInt:(jint)day;

- (jint)getHour;

- (void)setHourWithInt:(jint)hour;

- (jint)getMinute;

- (void)setMinuteWithInt:(jint)minute;

- (jint)getSecond;

- (void)setSecondWithInt:(jint)second;

- (jint)getNanoSecond;

- (void)setNanoSecondWithInt:(jint)nanoSecond;

- (JavaUtilTimeZone *)getTimeZone;

- (void)setTimeZoneWithJavaUtilTimeZone:(JavaUtilTimeZone *)tz;

- (jboolean)hasDate;

- (jboolean)hasTime;

- (jboolean)hasTimeZone;

- (JavaUtilCalendar *)getCalendar;

- (NSString *)getISO8601String;

@end

__attribute__((always_inline)) inline void ComItextpdfXmpXMPDateTime_init() {}

#endif // _ComItextpdfXmpXMPDateTime_H_