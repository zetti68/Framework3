//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPNormalizer.java
//

#ifndef _ComItextpdfXmpImplXMPNormalizer_H_
#define _ComItextpdfXmpImplXMPNormalizer_H_

@class ComItextpdfXmpImplXMPMetaImpl;
@class ComItextpdfXmpImplXMPNode;
@class ComItextpdfXmpOptionsParseOptions;
@protocol ComItextpdfXmpXMPMeta;
@protocol JavaUtilIterator;
@protocol JavaUtilMap;

#import "JreEmulation.h"

@interface ComItextpdfXmpImplXMPNormalizer : NSObject {
}

- (instancetype)init;

+ (id<ComItextpdfXmpXMPMeta>)processWithComItextpdfXmpImplXMPMetaImpl:(ComItextpdfXmpImplXMPMetaImpl *)xmp
                                withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (void)tweakOldXMPWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree;

+ (void)touchUpDataModelWithComItextpdfXmpImplXMPMetaImpl:(ComItextpdfXmpImplXMPMetaImpl *)xmp;

+ (void)normalizeDCArraysWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)dcSchema;

+ (void)repairAltTextWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode;

+ (void)moveExplicitAliasesWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree
                   withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (void)transplantArrayItemAliasWithJavaUtilIterator:(id<JavaUtilIterator>)propertyIt
                       withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)childNode
                       withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)baseArray;

+ (void)fixGPSTimeStampWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)exifSchema;

+ (void)deleteEmptySchemasWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree;

+ (void)compareAliasedSubtreesWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)aliasNode
                              withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)baseNode
                                                withBoolean:(jboolean)outerCall;

+ (void)migrateAudioCopyrightWithComItextpdfXmpXMPMeta:(id<ComItextpdfXmpXMPMeta>)xmp
                         withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)dmCopyright;

+ (void)initDCArrays OBJC_METHOD_FAMILY_NONE;

@end

FOUNDATION_EXPORT BOOL ComItextpdfXmpImplXMPNormalizer_initialized;
J2OBJC_STATIC_INIT(ComItextpdfXmpImplXMPNormalizer)

FOUNDATION_EXPORT id<JavaUtilMap> ComItextpdfXmpImplXMPNormalizer_dcArrayForms_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPNormalizer, dcArrayForms_, id<JavaUtilMap>)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfXmpImplXMPNormalizer, dcArrayForms_, id<JavaUtilMap>)

#endif // _ComItextpdfXmpImplXMPNormalizer_H_
