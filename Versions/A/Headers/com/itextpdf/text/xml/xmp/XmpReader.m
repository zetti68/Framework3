//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/XmpReader.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/XmpReader.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/xml/XmlDomWriter.h"
#include "com/itextpdf/text/xml/xmp/XmpReader.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "org/w3c/dom/Document.h"
#include "org/w3c/dom/Element.h"
#include "org/w3c/dom/NamedNodeMap.h"
#include "org/w3c/dom/Node.h"
#include "org/w3c/dom/NodeList.h"
#include "org/w3c/dom/Text.h"
#include "org/xml/sax/SAXException.h"


#line 66
@implementation ComItextpdfTextXmlXmpXmpReader

NSString * ComItextpdfTextXmlXmpXmpReader_EXTRASPACE_ = 
#line 70
@"                                                                                                   \n";
NSString * ComItextpdfTextXmlXmpXmpReader_XPACKET_PI_BEGIN_ = 
#line 75
@"<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n";
NSString * ComItextpdfTextXmlXmpXmpReader_XPACKET_PI_END_W_ = 
#line 80
@"<?xpacket end=\"w\"?>";


#line 91
- (instancetype)initWithByteArray:(IOSByteArray *)bytes {
  return [super init];
}


#line 102
- (jboolean)replaceNodeWithNSString:(NSString *)namespaceURI
                       withNSString:(NSString *)localName
                       withNSString:(NSString *)value {
  
#line 103
  id<OrgW3cDomNodeList> nodes = [((id<OrgW3cDomDocument>) nil_chk(domDocument_)) getElementsByTagNameNSWithNSString:namespaceURI withNSString:localName];
  id<OrgW3cDomNode> node;
  if ([((id<OrgW3cDomNodeList>) nil_chk(nodes)) getLength] == 0)
#line 106
  return NO;
  for (jint i = 0; i < [nodes getLength]; i++) {
    node = [nodes itemWithInt:i];
    [self setNodeTextWithOrgW3cDomDocument:domDocument_ withOrgW3cDomNode:node withNSString:value];
  }
  return YES;
}


#line 122
- (jboolean)replaceDescriptionAttributeWithNSString:(NSString *)namespaceURI
                                       withNSString:(NSString *)localName
                                       withNSString:(NSString *)value {
  
#line 123
  id<OrgW3cDomNodeList> descNodes = [((id<OrgW3cDomDocument>) nil_chk(domDocument_)) getElementsByTagNameNSWithNSString:@"http://www.w3.org/1999/02/22-rdf-syntax-ns#" withNSString:@"Description"];
  if ([((id<OrgW3cDomNodeList>) nil_chk(descNodes)) getLength] == 0) {
    return NO;
  }
  id<OrgW3cDomNode> node;
  for (jint i = 0; i < [descNodes getLength]; i++) {
    node = [descNodes itemWithInt:i];
    id<OrgW3cDomNode> attr = [((id<OrgW3cDomNamedNodeMap>) nil_chk([((id<OrgW3cDomNode>) nil_chk(node)) getAttributes])) getNamedItemNSWithNSString:namespaceURI withNSString:localName];
    if (attr != nil) {
      [attr setNodeValueWithNSString:value];
      return YES;
    }
  }
  return NO;
}


#line 148
- (jboolean)addWithNSString:(NSString *)parent
               withNSString:(NSString *)namespaceURI
               withNSString:(NSString *)localName
               withNSString:(NSString *)value {
  
#line 149
  id<OrgW3cDomNodeList> nodes = [((id<OrgW3cDomDocument>) nil_chk(domDocument_)) getElementsByTagNameWithNSString:parent];
  if ([((id<OrgW3cDomNodeList>) nil_chk(nodes)) getLength] == 0)
#line 151
  return NO;
  id<OrgW3cDomNode> pNode;
  id<OrgW3cDomNode> node;
  NSString *prefix;
  for (jint i = 0; i < [nodes getLength]; i++) {
    pNode = [nodes itemWithInt:i];
    id<OrgW3cDomNamedNodeMap> attrs = [((id<OrgW3cDomNode>) nil_chk(pNode)) getAttributes];
    for (jint j = 0; j < [((id<OrgW3cDomNamedNodeMap>) nil_chk(attrs)) getLength]; j++) {
      node = [attrs itemWithInt:j];
      if ([((NSString *) nil_chk(namespaceURI)) isEqual:[((id<OrgW3cDomNode>) nil_chk(node)) getNodeValue]]) {
        prefix = [node getLocalName];
        node = [domDocument_ createElementNSWithNSString:namespaceURI withNSString:localName];
        [((id<OrgW3cDomNode>) nil_chk(node)) setPrefixWithNSString:prefix];
        (void) [node appendChildWithOrgW3cDomNode:[domDocument_ createTextNodeWithNSString:value]];
        (void) [pNode appendChildWithOrgW3cDomNode:node];
        return YES;
      }
    }
  }
  return NO;
}


#line 180
- (jboolean)setNodeTextWithOrgW3cDomDocument:(id<OrgW3cDomDocument>)domDocument
                           withOrgW3cDomNode:(id<OrgW3cDomNode>)n
                                withNSString:(NSString *)value {
  
#line 181
  if (n == nil)
#line 182
  return NO;
  id<OrgW3cDomNode> nc = nil;
  while ((nc = [((id<OrgW3cDomNode>) nil_chk(n)) getFirstChild]) != nil) {
    (void) [n removeChildWithOrgW3cDomNode:nc];
  }
  (void) [n appendChildWithOrgW3cDomNode:[((id<OrgW3cDomDocument>) nil_chk(domDocument)) createTextNodeWithNSString:value]];
  return YES;
}


#line 194
- (IOSByteArray *)serializeDoc {
  
#line 195
  ComItextpdfTextXmlXmlDomWriter *xw = [[ComItextpdfTextXmlXmlDomWriter alloc] init];
  JavaIoByteArrayOutputStream *fout = [[JavaIoByteArrayOutputStream alloc] init];
  [xw setOutputWithJavaIoOutputStream:fout withNSString:nil];
  [fout writeWithByteArray:[((NSString *) nil_chk(ComItextpdfTextXmlXmpXmpReader_XPACKET_PI_BEGIN_)) getBytesWithCharsetName:@"UTF-8"]];
  [fout flush];
  id<OrgW3cDomNodeList> xmpmeta = [((id<OrgW3cDomDocument>) nil_chk(domDocument_)) getElementsByTagNameWithNSString:@"x:xmpmeta"];
  [xw writeWithOrgW3cDomNode:[((id<OrgW3cDomNodeList>) nil_chk(xmpmeta)) itemWithInt:0]];
  [fout flush];
  for (jint i = 0; i < 20; i++) {
    [fout writeWithByteArray:[((NSString *) nil_chk(ComItextpdfTextXmlXmpXmpReader_EXTRASPACE_)) getBytes]];
  }
  [fout writeWithByteArray:[((NSString *) nil_chk(ComItextpdfTextXmlXmpXmpReader_XPACKET_PI_END_W_)) getBytes]];
  [fout close];
  return [fout toByteArray];
}

- (void)copyAllFieldsTo:(ComItextpdfTextXmlXmpXmpReader *)other {
  [super copyAllFieldsTo:other];
  other->domDocument_ = domDocument_;
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:", "XmpReader", NULL, 0x1, "Lorg.xml.sax.SAXException;Ljava.io.IOException;" },
    { "replaceNodeWithNSString:withNSString:withNSString:", "replaceNode", "Z", 0x1, NULL },
    { "replaceDescriptionAttributeWithNSString:withNSString:withNSString:", "replaceDescriptionAttribute", "Z", 0x1, NULL },
    { "addWithNSString:withNSString:withNSString:withNSString:", "add", "Z", 0x1, NULL },
    { "setNodeTextWithOrgW3cDomDocument:withOrgW3cDomNode:withNSString:", "setNodeText", "Z", 0x1, NULL },
    { "serializeDoc", NULL, "[B", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EXTRASPACE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpReader_EXTRASPACE_,  },
    { "XPACKET_PI_BEGIN_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpReader_XPACKET_PI_BEGIN_,  },
    { "XPACKET_PI_END_W_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpReader_XPACKET_PI_END_W_,  },
    { "domDocument_", NULL, 0x2, "Lorg.w3c.dom.Document;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextXmlXmpXmpReader = { "XmpReader", "com.itextpdf.text.xml.xmp", NULL, 0x1, 6, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextXmlXmpXmpReader;
}

@end
