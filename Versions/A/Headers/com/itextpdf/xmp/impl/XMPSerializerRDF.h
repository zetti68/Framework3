//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPSerializerRDF.java
//

#ifndef _ComItextpdfXmpImplXMPSerializerRDF_H_
#define _ComItextpdfXmpImplXMPSerializerRDF_H_

#include "J2ObjC_header.h"

@class ComItextpdfXmpOptionsSerializeOptions;
@class JavaIoOutputStream;
@protocol ComItextpdfXmpXMPMeta;
@protocol JavaUtilSet;

@interface ComItextpdfXmpImplXMPSerializerRDF : NSObject

#pragma mark Public

- (instancetype)init;

- (void)serializeWithComItextpdfXmpXMPMeta:(id<ComItextpdfXmpXMPMeta>)xmp
                    withJavaIoOutputStream:(JavaIoOutputStream *)outArg
 withComItextpdfXmpOptionsSerializeOptions:(ComItextpdfXmpOptionsSerializeOptions *)options;

#pragma mark Protected

- (void)checkOptionsConsistence;

@end

J2OBJC_STATIC_INIT(ComItextpdfXmpImplXMPSerializerRDF)

FOUNDATION_EXPORT id<JavaUtilSet> ComItextpdfXmpImplXMPSerializerRDF_RDF_ATTR_QUALIFIER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPSerializerRDF, RDF_ATTR_QUALIFIER_, id<JavaUtilSet>)

FOUNDATION_EXPORT void ComItextpdfXmpImplXMPSerializerRDF_init(ComItextpdfXmpImplXMPSerializerRDF *self);

FOUNDATION_EXPORT ComItextpdfXmpImplXMPSerializerRDF *new_ComItextpdfXmpImplXMPSerializerRDF_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfXmpImplXMPSerializerRDF)

#endif // _ComItextpdfXmpImplXMPSerializerRDF_H_
