//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPIteratorImpl.java
//

#ifndef _ComItextpdfXmpImplXMPIteratorImpl_H_
#define _ComItextpdfXmpImplXMPIteratorImpl_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/xmp/XMPIterator.h"

@class ComItextpdfXmpImplXMPMetaImpl;
@class ComItextpdfXmpOptionsIteratorOptions;

@interface ComItextpdfXmpImplXMPIteratorImpl : NSObject < ComItextpdfXmpXMPIterator > {
 @public
  jboolean skipSiblings__;
  jboolean skipSubtree__;
}

#pragma mark Public

- (instancetype)initWithComItextpdfXmpImplXMPMetaImpl:(ComItextpdfXmpImplXMPMetaImpl *)xmp
                                         withNSString:(NSString *)schemaNS
                                         withNSString:(NSString *)propPath
             withComItextpdfXmpOptionsIteratorOptions:(ComItextpdfXmpOptionsIteratorOptions *)options;

- (jboolean)hasNext;

- (id)next;

- (void)remove;

- (void)skipSiblings;

- (void)skipSubtree;

#pragma mark Protected

- (NSString *)getBaseNS;

- (ComItextpdfXmpOptionsIteratorOptions *)getOptions;

- (void)setBaseNSWithNSString:(NSString *)baseNS;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfXmpImplXMPIteratorImpl)

FOUNDATION_EXPORT void ComItextpdfXmpImplXMPIteratorImpl_initWithComItextpdfXmpImplXMPMetaImpl_withNSString_withNSString_withComItextpdfXmpOptionsIteratorOptions_(ComItextpdfXmpImplXMPIteratorImpl *self, ComItextpdfXmpImplXMPMetaImpl *xmp, NSString *schemaNS, NSString *propPath, ComItextpdfXmpOptionsIteratorOptions *options);

FOUNDATION_EXPORT ComItextpdfXmpImplXMPIteratorImpl *new_ComItextpdfXmpImplXMPIteratorImpl_initWithComItextpdfXmpImplXMPMetaImpl_withNSString_withNSString_withComItextpdfXmpOptionsIteratorOptions_(ComItextpdfXmpImplXMPMetaImpl *xmp, NSString *schemaNS, NSString *propPath, ComItextpdfXmpOptionsIteratorOptions *options) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfXmpImplXMPIteratorImpl)

#endif // _ComItextpdfXmpImplXMPIteratorImpl_H_
