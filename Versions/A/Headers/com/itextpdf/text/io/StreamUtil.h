//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/io/StreamUtil.java
//

#ifndef _ComItextpdfTextIoStreamUtil_H_
#define _ComItextpdfTextIoStreamUtil_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaLangClassLoader;
@protocol ComItextpdfTextIoRandomAccessSource;
@protocol ComItextpdfTextIoResourceProvider;

@interface ComItextpdfTextIoStreamUtil : NSObject

#pragma mark Public

+ (void)CopyBytesWithComItextpdfTextIoRandomAccessSource:(id<ComItextpdfTextIoRandomAccessSource>)source
                                                withLong:(jlong)start
                                                withLong:(jlong)length
                                  withJavaIoOutputStream:(JavaIoOutputStream *)outs;

+ (JavaIoInputStream *)getResourceStreamWithNSString:(NSString *)key;

+ (JavaIoInputStream *)getResourceStreamWithNSString:(NSString *)key
                             withJavaLangClassLoader:(JavaLangClassLoader *)loader;

+ (IOSByteArray *)inputStreamToArrayWithJavaIoInputStream:(JavaIoInputStream *)is;

+ (void)setResourceProviderWithComItextpdfTextIoResourceProvider:(id<ComItextpdfTextIoResourceProvider>)pResourceProvider;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextIoStreamUtil)

FOUNDATION_EXPORT void ComItextpdfTextIoStreamUtil_setResourceProviderWithComItextpdfTextIoResourceProvider_(id<ComItextpdfTextIoResourceProvider> pResourceProvider);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextIoStreamUtil_inputStreamToArrayWithJavaIoInputStream_(JavaIoInputStream *is);

FOUNDATION_EXPORT void ComItextpdfTextIoStreamUtil_CopyBytesWithComItextpdfTextIoRandomAccessSource_withLong_withLong_withJavaIoOutputStream_(id<ComItextpdfTextIoRandomAccessSource> source, jlong start, jlong length, JavaIoOutputStream *outs);

FOUNDATION_EXPORT JavaIoInputStream *ComItextpdfTextIoStreamUtil_getResourceStreamWithNSString_(NSString *key);

FOUNDATION_EXPORT JavaIoInputStream *ComItextpdfTextIoStreamUtil_getResourceStreamWithNSString_withJavaLangClassLoader_(NSString *key, JavaLangClassLoader *loader);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextIoStreamUtil)

#endif // _ComItextpdfTextIoStreamUtil_H_
