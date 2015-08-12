//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/MarkedObject.java
//

#ifndef _ComItextpdfTextMarkedObject_H_
#define _ComItextpdfTextMarkedObject_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/Element.h"

@class JavaUtilProperties;
@protocol ComItextpdfTextElementListener;
@protocol JavaUtilList;

@interface ComItextpdfTextMarkedObject : NSObject < ComItextpdfTextElement > {
 @public
  id<ComItextpdfTextElement> element_;
  JavaUtilProperties *markupAttributes_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextElement:(id<ComItextpdfTextElement>)element;

- (id<JavaUtilList>)getChunks;

- (JavaUtilProperties *)getMarkupAttributes;

- (jboolean)isContent;

- (jboolean)isNestable;

- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener;

- (void)setMarkupAttributeWithNSString:(NSString *)key
                          withNSString:(NSString *)value;

- (jint)type;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextMarkedObject)

J2OBJC_FIELD_SETTER(ComItextpdfTextMarkedObject, element_, id<ComItextpdfTextElement>)
J2OBJC_FIELD_SETTER(ComItextpdfTextMarkedObject, markupAttributes_, JavaUtilProperties *)

FOUNDATION_EXPORT void ComItextpdfTextMarkedObject_init(ComItextpdfTextMarkedObject *self);

FOUNDATION_EXPORT ComItextpdfTextMarkedObject *new_ComItextpdfTextMarkedObject_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextMarkedObject_initWithComItextpdfTextElement_(ComItextpdfTextMarkedObject *self, id<ComItextpdfTextElement> element);

FOUNDATION_EXPORT ComItextpdfTextMarkedObject *new_ComItextpdfTextMarkedObject_initWithComItextpdfTextElement_(id<ComItextpdfTextElement> element) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextMarkedObject)

#endif // _ComItextpdfTextMarkedObject_H_
