//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPMetaParser.java
//

#ifndef _ComItextpdfXmpImplXMPMetaParser_H_
#define _ComItextpdfXmpImplXMPMetaParser_H_

@class ComItextpdfXmpImplByteBuffer;
@class ComItextpdfXmpOptionsParseOptions;
@class IOSObjectArray;
@class JavaIoInputStream;
@class JavaxXmlParsersDocumentBuilderFactory;
@class OrgXmlSaxInputSource;
@protocol ComItextpdfXmpXMPMeta;
@protocol OrgW3cDomDocument;
@protocol OrgW3cDomNode;

#import "JreEmulation.h"

@interface ComItextpdfXmpImplXMPMetaParser : NSObject {
}

- (instancetype)init;

+ (id<ComItextpdfXmpXMPMeta>)parseWithId:(id)input
   withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (id<OrgW3cDomDocument>)parseXmlWithId:(id)input
  withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (id<OrgW3cDomDocument>)parseXmlFromInputStreamWithJavaIoInputStream:(JavaIoInputStream *)stream
                                withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (id<OrgW3cDomDocument>)parseXmlFromBytebufferWithComItextpdfXmpImplByteBuffer:(ComItextpdfXmpImplByteBuffer *)buffer
                                          withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (id<OrgW3cDomDocument>)parseXmlFromStringWithNSString:(NSString *)input
                  withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

+ (id<OrgW3cDomDocument>)parseInputSourceWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)source;

+ (IOSObjectArray *)findRootNodeWithOrgW3cDomNode:(id<OrgW3cDomNode>)root
                                      withBoolean:(jboolean)xmpmetaRequired
                                withNSObjectArray:(IOSObjectArray *)result;

+ (JavaxXmlParsersDocumentBuilderFactory *)createDocumentBuilderFactory;

@end

FOUNDATION_EXPORT BOOL ComItextpdfXmpImplXMPMetaParser_initialized;
J2OBJC_STATIC_INIT(ComItextpdfXmpImplXMPMetaParser)

FOUNDATION_EXPORT id ComItextpdfXmpImplXMPMetaParser_XMP_RDF_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPMetaParser, XMP_RDF_, id)

FOUNDATION_EXPORT JavaxXmlParsersDocumentBuilderFactory *ComItextpdfXmpImplXMPMetaParser_factory_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPMetaParser, factory_, JavaxXmlParsersDocumentBuilderFactory *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfXmpImplXMPMetaParser, factory_, JavaxXmlParsersDocumentBuilderFactory *)

#endif // _ComItextpdfXmpImplXMPMetaParser_H_
