//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/ISO8601Converter.java
//

#ifndef _ComItextpdfXmpImplISO8601Converter_H_
#define _ComItextpdfXmpImplISO8601Converter_H_

@protocol ComItextpdfXmpXMPDateTime;

#import "JreEmulation.h"

@interface ComItextpdfXmpImplISO8601Converter : NSObject {
}

- (instancetype)init;

+ (id<ComItextpdfXmpXMPDateTime>)parseWithNSString:(NSString *)iso8601String;

+ (id<ComItextpdfXmpXMPDateTime>)parseWithNSString:(NSString *)iso8601String
                     withComItextpdfXmpXMPDateTime:(id<ComItextpdfXmpXMPDateTime>)binValue;

+ (NSString *)renderWithComItextpdfXmpXMPDateTime:(id<ComItextpdfXmpXMPDateTime>)dateTime;

@end

__attribute__((always_inline)) inline void ComItextpdfXmpImplISO8601Converter_init() {}

@interface ComItextpdfXmpImplParseState : NSObject {
 @public
  NSString *str_;
  jint pos__;
}

- (instancetype)initWithNSString:(NSString *)str;

- (jint)length;

- (jboolean)hasNext;

- (jchar)chWithInt:(jint)index;

- (jchar)ch;

- (void)skip;

- (jint)pos;

- (jint)gatherIntWithNSString:(NSString *)errorMsg
                      withInt:(jint)maxValue;

- (void)copyAllFieldsTo:(ComItextpdfXmpImplParseState *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfXmpImplParseState_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfXmpImplParseState, str_, NSString *)

#endif // _ComItextpdfXmpImplISO8601Converter_H_
