//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/Base64.java
//

#ifndef _ComItextpdfXmpImplBase64_H_
#define _ComItextpdfXmpImplBase64_H_

#include "J2ObjC_header.h"

@class IOSByteArray;

@interface ComItextpdfXmpImplBase64 : NSObject

#pragma mark Public

- (instancetype)init;

+ (IOSByteArray *)decodeWithByteArray:(IOSByteArray *)src;

+ (NSString *)decodeWithNSString:(NSString *)src;

+ (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)src;

+ (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)src
                              withInt:(jint)lineFeed;

+ (NSString *)encodeWithNSString:(NSString *)src;

@end

J2OBJC_STATIC_INIT(ComItextpdfXmpImplBase64)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfXmpImplBase64_encodeWithByteArray_(IOSByteArray *src);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfXmpImplBase64_encodeWithByteArray_withInt_(IOSByteArray *src, jint lineFeed);

FOUNDATION_EXPORT NSString *ComItextpdfXmpImplBase64_encodeWithNSString_(NSString *src);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfXmpImplBase64_decodeWithByteArray_(IOSByteArray *src);

FOUNDATION_EXPORT NSString *ComItextpdfXmpImplBase64_decodeWithNSString_(NSString *src);

FOUNDATION_EXPORT void ComItextpdfXmpImplBase64_init(ComItextpdfXmpImplBase64 *self);

FOUNDATION_EXPORT ComItextpdfXmpImplBase64 *new_ComItextpdfXmpImplBase64_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfXmpImplBase64)

#endif // _ComItextpdfXmpImplBase64_H_
