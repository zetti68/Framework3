//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPSerializerHelper.java
//

#ifndef _ComItextpdfXmpImplXMPSerializerHelper_H_
#define _ComItextpdfXmpImplXMPSerializerHelper_H_

#include "J2ObjC_header.h"

@class ComItextpdfXmpImplXMPMetaImpl;
@class ComItextpdfXmpOptionsSerializeOptions;
@class IOSByteArray;
@class JavaIoOutputStream;

@interface ComItextpdfXmpImplXMPSerializerHelper : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)serializeWithComItextpdfXmpImplXMPMetaImpl:(ComItextpdfXmpImplXMPMetaImpl *)xmp
                            withJavaIoOutputStream:(JavaIoOutputStream *)outArg
         withComItextpdfXmpOptionsSerializeOptions:(ComItextpdfXmpOptionsSerializeOptions *)options;

+ (IOSByteArray *)serializeToBufferWithComItextpdfXmpImplXMPMetaImpl:(ComItextpdfXmpImplXMPMetaImpl *)xmp
                           withComItextpdfXmpOptionsSerializeOptions:(ComItextpdfXmpOptionsSerializeOptions *)options;

+ (NSString *)serializeToStringWithComItextpdfXmpImplXMPMetaImpl:(ComItextpdfXmpImplXMPMetaImpl *)xmp
                       withComItextpdfXmpOptionsSerializeOptions:(ComItextpdfXmpOptionsSerializeOptions *)options;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfXmpImplXMPSerializerHelper)

FOUNDATION_EXPORT void ComItextpdfXmpImplXMPSerializerHelper_serializeWithComItextpdfXmpImplXMPMetaImpl_withJavaIoOutputStream_withComItextpdfXmpOptionsSerializeOptions_(ComItextpdfXmpImplXMPMetaImpl *xmp, JavaIoOutputStream *outArg, ComItextpdfXmpOptionsSerializeOptions *options);

FOUNDATION_EXPORT NSString *ComItextpdfXmpImplXMPSerializerHelper_serializeToStringWithComItextpdfXmpImplXMPMetaImpl_withComItextpdfXmpOptionsSerializeOptions_(ComItextpdfXmpImplXMPMetaImpl *xmp, ComItextpdfXmpOptionsSerializeOptions *options);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfXmpImplXMPSerializerHelper_serializeToBufferWithComItextpdfXmpImplXMPMetaImpl_withComItextpdfXmpOptionsSerializeOptions_(ComItextpdfXmpImplXMPMetaImpl *xmp, ComItextpdfXmpOptionsSerializeOptions *options);

FOUNDATION_EXPORT void ComItextpdfXmpImplXMPSerializerHelper_init(ComItextpdfXmpImplXMPSerializerHelper *self);

FOUNDATION_EXPORT ComItextpdfXmpImplXMPSerializerHelper *new_ComItextpdfXmpImplXMPSerializerHelper_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfXmpImplXMPSerializerHelper)

#endif // _ComItextpdfXmpImplXMPSerializerHelper_H_
