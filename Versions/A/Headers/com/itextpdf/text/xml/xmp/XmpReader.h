//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/XmpReader.java
//

#ifndef _ComItextpdfTextXmlXmpXmpReader_H_
#define _ComItextpdfTextXmlXmpXmpReader_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@protocol OrgW3cDomDocument;
@protocol OrgW3cDomNode;

@interface ComItextpdfTextXmlXmpXmpReader : NSObject

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)bytes;

- (jboolean)addWithNSString:(NSString *)parent
               withNSString:(NSString *)namespaceURI
               withNSString:(NSString *)localName
               withNSString:(NSString *)value;

- (jboolean)replaceDescriptionAttributeWithNSString:(NSString *)namespaceURI
                                       withNSString:(NSString *)localName
                                       withNSString:(NSString *)value;

- (jboolean)replaceNodeWithNSString:(NSString *)namespaceURI
                       withNSString:(NSString *)localName
                       withNSString:(NSString *)value;

- (IOSByteArray *)serializeDoc;

- (jboolean)setNodeTextWithOrgW3cDomDocument:(id<OrgW3cDomDocument>)domDocument
                           withOrgW3cDomNode:(id<OrgW3cDomNode>)n
                                withNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextXmlXmpXmpReader)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpXmpReader_EXTRASPACE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpXmpReader, EXTRASPACE_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpXmpReader_XPACKET_PI_BEGIN_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpXmpReader, XPACKET_PI_BEGIN_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpXmpReader_XPACKET_PI_END_W_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpXmpReader, XPACKET_PI_END_W_, NSString *)

FOUNDATION_EXPORT void ComItextpdfTextXmlXmpXmpReader_initWithByteArray_(ComItextpdfTextXmlXmpXmpReader *self, IOSByteArray *bytes);

FOUNDATION_EXPORT ComItextpdfTextXmlXmpXmpReader *new_ComItextpdfTextXmlXmpXmpReader_initWithByteArray_(IOSByteArray *bytes) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextXmlXmpXmpReader)

#endif // _ComItextpdfTextXmlXmpXmpReader_H_
