//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/MarkedObject.java
//

#ifndef _ComItextpdfTextMarkedObject_H_
#define _ComItextpdfTextMarkedObject_H_

@class JavaUtilProperties;
@protocol ComItextpdfTextElementListener;
@protocol JavaUtilList;

#import "JreEmulation.h"
#include "com/itextpdf/text/Element.h"

@interface ComItextpdfTextMarkedObject : NSObject < ComItextpdfTextElement > {
 @public
  id<ComItextpdfTextElement> element_;
  JavaUtilProperties *markupAttributes_;
}

- (instancetype)init;

- (instancetype)initWithComItextpdfTextElement:(id<ComItextpdfTextElement>)element;

- (id<JavaUtilList>)getChunks;

- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener;

- (jint)type;

- (jboolean)isContent;

- (jboolean)isNestable;

- (JavaUtilProperties *)getMarkupAttributes;

- (void)setMarkupAttributeWithNSString:(NSString *)key
                          withNSString:(NSString *)value;

- (void)copyAllFieldsTo:(ComItextpdfTextMarkedObject *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextMarkedObject_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextMarkedObject, element_, id<ComItextpdfTextElement>)
J2OBJC_FIELD_SETTER(ComItextpdfTextMarkedObject, markupAttributes_, JavaUtilProperties *)

#endif // _ComItextpdfTextMarkedObject_H_