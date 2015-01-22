//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/XMPMetaFactory.java
//

#ifndef _ComItextpdfXmpXMPMetaFactory_H_
#define _ComItextpdfXmpXMPMetaFactory_H_

@class ComItextpdfXmpOptionsParseOptions;
@class ComItextpdfXmpOptionsSerializeOptions;
@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@protocol ComItextpdfXmpXMPMeta;
@protocol ComItextpdfXmpXMPSchemaRegistry;

#import "JreEmulation.h"
#include "com/itextpdf/xmp/XMPVersionInfo.h"

@interface ComItextpdfXmpXMPMetaFactory : NSObject {
}

- (instancetype)init;

+ (id<ComItextpdfXmpXMPSchemaRegistry>)getSchemaRegistry;

+ (id<ComItextpdfXmpXMPMeta>)create;

+ (id<ComItextpdfXmpXMPMeta>)parseWithJavaIoInputStream:(JavaIoInputStream *)inArg;

+ (id<ComItextpdfXmpXMPMeta>)parseWithJavaIoInputStream:(JavaIoInputStream *)inArg
                  withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (id<ComItextpdfXmpXMPMeta>)parseFromStringWithNSString:(NSString *)packet;

+ (id<ComItextpdfXmpXMPMeta>)parseFromStringWithNSString:(NSString *)packet
                   withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (id<ComItextpdfXmpXMPMeta>)parseFromBufferWithByteArray:(IOSByteArray *)buffer;

+ (id<ComItextpdfXmpXMPMeta>)parseFromBufferWithByteArray:(IOSByteArray *)buffer
                    withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (void)serializeWithComItextpdfXmpXMPMeta:(id<ComItextpdfXmpXMPMeta>)xmp
                    withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

+ (void)serializeWithComItextpdfXmpXMPMeta:(id<ComItextpdfXmpXMPMeta>)xmp
                    withJavaIoOutputStream:(JavaIoOutputStream *)outArg
 withComItextpdfXmpOptionsSerializeOptions:(ComItextpdfXmpOptionsSerializeOptions *)options;

+ (IOSByteArray *)serializeToBufferWithComItextpdfXmpXMPMeta:(id<ComItextpdfXmpXMPMeta>)xmp
                   withComItextpdfXmpOptionsSerializeOptions:(ComItextpdfXmpOptionsSerializeOptions *)options;

+ (NSString *)serializeToStringWithComItextpdfXmpXMPMeta:(id<ComItextpdfXmpXMPMeta>)xmp
               withComItextpdfXmpOptionsSerializeOptions:(ComItextpdfXmpOptionsSerializeOptions *)options;

+ (void)assertImplementationWithComItextpdfXmpXMPMeta:(id<ComItextpdfXmpXMPMeta>)xmp;

+ (void)reset;

+ (id<ComItextpdfXmpXMPVersionInfo>)getVersionInfo;

@end

FOUNDATION_EXPORT BOOL ComItextpdfXmpXMPMetaFactory_initialized;
J2OBJC_STATIC_INIT(ComItextpdfXmpXMPMetaFactory)

FOUNDATION_EXPORT id<ComItextpdfXmpXMPSchemaRegistry> ComItextpdfXmpXMPMetaFactory_schema_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpXMPMetaFactory, schema_, id<ComItextpdfXmpXMPSchemaRegistry>)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfXmpXMPMetaFactory, schema_, id<ComItextpdfXmpXMPSchemaRegistry>)

FOUNDATION_EXPORT id<ComItextpdfXmpXMPVersionInfo> ComItextpdfXmpXMPMetaFactory_versionInfo_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpXMPMetaFactory, versionInfo_, id<ComItextpdfXmpXMPVersionInfo>)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfXmpXMPMetaFactory, versionInfo_, id<ComItextpdfXmpXMPVersionInfo>)

@interface ComItextpdfXmpXMPMetaFactory_$1 : NSObject < ComItextpdfXmpXMPVersionInfo > {
}

- (jint)getMajor;

- (jint)getMinor;

- (jint)getMicro;

- (jboolean)isDebug;

- (jint)getBuild;

- (NSString *)getMessage;

- (NSString *)description;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfXmpXMPMetaFactory_$1_init() {}

#endif // _ComItextpdfXmpXMPMetaFactory_H_
