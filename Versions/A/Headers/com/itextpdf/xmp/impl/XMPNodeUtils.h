//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPNodeUtils.java
//

#ifndef _ComItextpdfXmpImplXMPNodeUtils_H_
#define _ComItextpdfXmpImplXMPNodeUtils_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/xmp/XMPConst.h"

@class ComItextpdfXmpImplXMPNode;
@class ComItextpdfXmpImplXpathXMPPath;
@class ComItextpdfXmpOptionsPropertyOptions;
@class IOSObjectArray;

#define ComItextpdfXmpImplXMPNodeUtils_CLT_NO_VALUES 0
#define ComItextpdfXmpImplXMPNodeUtils_CLT_SPECIFIC_MATCH 1
#define ComItextpdfXmpImplXMPNodeUtils_CLT_SINGLE_GENERIC 2
#define ComItextpdfXmpImplXMPNodeUtils_CLT_MULTIPLE_GENERIC 3
#define ComItextpdfXmpImplXMPNodeUtils_CLT_XDEFAULT 4
#define ComItextpdfXmpImplXMPNodeUtils_CLT_FIRST_ITEM 5

@interface ComItextpdfXmpImplXMPNodeUtils : NSObject < ComItextpdfXmpXMPConst >

#pragma mark Package-Private

+ (void)appendLangItemWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode
                                       withNSString:(NSString *)itemLang
                                       withNSString:(NSString *)itemValue;

+ (IOSObjectArray *)chooseLocalizedTextWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode
                                                        withNSString:(NSString *)genericLang
                                                        withNSString:(NSString *)specificLang;

+ (void)deleteNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)node;

+ (void)detectAltTextWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode;

+ (ComItextpdfXmpImplXMPNode *)findChildNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)parent
                                                             withNSString:(NSString *)childName
                                                              withBoolean:(jboolean)createNodes;

+ (ComItextpdfXmpImplXMPNode *)findNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)xmpTree
                                  withComItextpdfXmpImplXpathXMPPath:(ComItextpdfXmpImplXpathXMPPath *)xpath
                                                         withBoolean:(jboolean)createNodes
                            withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)leafOptions;

+ (ComItextpdfXmpImplXMPNode *)findSchemaNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree
                                                              withNSString:(NSString *)namespaceURI
                                                               withBoolean:(jboolean)createNodes;

+ (ComItextpdfXmpImplXMPNode *)findSchemaNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree
                                                              withNSString:(NSString *)namespaceURI
                                                              withNSString:(NSString *)suggestedPrefix
                                                               withBoolean:(jboolean)createNodes;

+ (jint)lookupLanguageItemWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode
                                           withNSString:(NSString *)language;

+ (void)normalizeLangArrayWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode;

+ (NSString *)serializeNodeValueWithId:(id)value;

+ (void)setNodeValueWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)node
                                           withId:(id)value;

+ (ComItextpdfXmpOptionsPropertyOptions *)verifySetOptionsWithComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options
                                                                                            withId:(id)itemValue;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfXmpImplXMPNodeUtils)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPNodeUtils, CLT_NO_VALUES, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPNodeUtils, CLT_SPECIFIC_MATCH, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPNodeUtils, CLT_SINGLE_GENERIC, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPNodeUtils, CLT_MULTIPLE_GENERIC, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPNodeUtils, CLT_XDEFAULT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfXmpImplXMPNodeUtils, CLT_FIRST_ITEM, jint)

FOUNDATION_EXPORT ComItextpdfXmpImplXMPNode *ComItextpdfXmpImplXMPNodeUtils_findSchemaNodeWithComItextpdfXmpImplXMPNode_withNSString_withBoolean_(ComItextpdfXmpImplXMPNode *tree, NSString *namespaceURI, jboolean createNodes);

FOUNDATION_EXPORT ComItextpdfXmpImplXMPNode *ComItextpdfXmpImplXMPNodeUtils_findSchemaNodeWithComItextpdfXmpImplXMPNode_withNSString_withNSString_withBoolean_(ComItextpdfXmpImplXMPNode *tree, NSString *namespaceURI, NSString *suggestedPrefix, jboolean createNodes);

FOUNDATION_EXPORT ComItextpdfXmpImplXMPNode *ComItextpdfXmpImplXMPNodeUtils_findChildNodeWithComItextpdfXmpImplXMPNode_withNSString_withBoolean_(ComItextpdfXmpImplXMPNode *parent, NSString *childName, jboolean createNodes);

FOUNDATION_EXPORT ComItextpdfXmpImplXMPNode *ComItextpdfXmpImplXMPNodeUtils_findNodeWithComItextpdfXmpImplXMPNode_withComItextpdfXmpImplXpathXMPPath_withBoolean_withComItextpdfXmpOptionsPropertyOptions_(ComItextpdfXmpImplXMPNode *xmpTree, ComItextpdfXmpImplXpathXMPPath *xpath, jboolean createNodes, ComItextpdfXmpOptionsPropertyOptions *leafOptions);

FOUNDATION_EXPORT void ComItextpdfXmpImplXMPNodeUtils_deleteNodeWithComItextpdfXmpImplXMPNode_(ComItextpdfXmpImplXMPNode *node);

FOUNDATION_EXPORT void ComItextpdfXmpImplXMPNodeUtils_setNodeValueWithComItextpdfXmpImplXMPNode_withId_(ComItextpdfXmpImplXMPNode *node, id value);

FOUNDATION_EXPORT ComItextpdfXmpOptionsPropertyOptions *ComItextpdfXmpImplXMPNodeUtils_verifySetOptionsWithComItextpdfXmpOptionsPropertyOptions_withId_(ComItextpdfXmpOptionsPropertyOptions *options, id itemValue);

FOUNDATION_EXPORT NSString *ComItextpdfXmpImplXMPNodeUtils_serializeNodeValueWithId_(id value);

FOUNDATION_EXPORT void ComItextpdfXmpImplXMPNodeUtils_normalizeLangArrayWithComItextpdfXmpImplXMPNode_(ComItextpdfXmpImplXMPNode *arrayNode);

FOUNDATION_EXPORT void ComItextpdfXmpImplXMPNodeUtils_detectAltTextWithComItextpdfXmpImplXMPNode_(ComItextpdfXmpImplXMPNode *arrayNode);

FOUNDATION_EXPORT void ComItextpdfXmpImplXMPNodeUtils_appendLangItemWithComItextpdfXmpImplXMPNode_withNSString_withNSString_(ComItextpdfXmpImplXMPNode *arrayNode, NSString *itemLang, NSString *itemValue);

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfXmpImplXMPNodeUtils_chooseLocalizedTextWithComItextpdfXmpImplXMPNode_withNSString_withNSString_(ComItextpdfXmpImplXMPNode *arrayNode, NSString *genericLang, NSString *specificLang);

FOUNDATION_EXPORT jint ComItextpdfXmpImplXMPNodeUtils_lookupLanguageItemWithComItextpdfXmpImplXMPNode_withNSString_(ComItextpdfXmpImplXMPNode *arrayNode, NSString *language);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfXmpImplXMPNodeUtils)

#endif // _ComItextpdfXmpImplXMPNodeUtils_H_
