//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/misc/Messages.java
//

#ifndef _ComItextpdfAwtGeomMiscMessages_H_
#define _ComItextpdfAwtGeomMiscMessages_H_

#include "J2ObjC_header.h"

@class IOSObjectArray;

@interface ComItextpdfAwtGeomMiscMessages : NSObject

#pragma mark Public

- (instancetype)init;

+ (NSString *)formatWithNSString:(NSString *)format
               withNSObjectArray:(IOSObjectArray *)args;

+ (NSString *)getStringWithNSString:(NSString *)msg;

+ (NSString *)getStringWithNSString:(NSString *)msg
                           withChar:(jchar)arg;

+ (NSString *)getStringWithNSString:(NSString *)msg
                            withInt:(jint)arg;

+ (NSString *)getStringWithNSString:(NSString *)msg
                             withId:(id)arg;

+ (NSString *)getStringWithNSString:(NSString *)msg
                             withId:(id)arg1
                             withId:(id)arg2;

+ (NSString *)getStringWithNSString:(NSString *)msg
                  withNSObjectArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfAwtGeomMiscMessages)

FOUNDATION_EXPORT NSString *ComItextpdfAwtGeomMiscMessages_getStringWithNSString_(NSString *msg);

FOUNDATION_EXPORT NSString *ComItextpdfAwtGeomMiscMessages_getStringWithNSString_withId_(NSString *msg, id arg);

FOUNDATION_EXPORT NSString *ComItextpdfAwtGeomMiscMessages_getStringWithNSString_withInt_(NSString *msg, jint arg);

FOUNDATION_EXPORT NSString *ComItextpdfAwtGeomMiscMessages_getStringWithNSString_withChar_(NSString *msg, jchar arg);

FOUNDATION_EXPORT NSString *ComItextpdfAwtGeomMiscMessages_getStringWithNSString_withId_withId_(NSString *msg, id arg1, id arg2);

FOUNDATION_EXPORT NSString *ComItextpdfAwtGeomMiscMessages_getStringWithNSString_withNSObjectArray_(NSString *msg, IOSObjectArray *args);

FOUNDATION_EXPORT NSString *ComItextpdfAwtGeomMiscMessages_formatWithNSString_withNSObjectArray_(NSString *format, IOSObjectArray *args);

FOUNDATION_EXPORT void ComItextpdfAwtGeomMiscMessages_init(ComItextpdfAwtGeomMiscMessages *self);

FOUNDATION_EXPORT ComItextpdfAwtGeomMiscMessages *new_ComItextpdfAwtGeomMiscMessages_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfAwtGeomMiscMessages)

#endif // _ComItextpdfAwtGeomMiscMessages_H_
