//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/XmpArray.java
//

#ifndef _ComItextpdfTextXmlXmpXmpArray_H_
#define _ComItextpdfTextXmlXmpXmpArray_H_

#import "JreEmulation.h"
#include "java/util/ArrayList.h"

#define ComItextpdfTextXmlXmpXmpArray_serialVersionUID 5722854116328732742LL

@interface ComItextpdfTextXmlXmpXmpArray : JavaUtilArrayList {
 @public
  NSString *type_;
}

- (instancetype)initWithNSString:(NSString *)type;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfTextXmlXmpXmpArray *)other;


@end

__attribute__((always_inline)) inline void ComItextpdfTextXmlXmpXmpArray_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextXmlXmpXmpArray, type_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpXmpArray, serialVersionUID, jlong)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpXmpArray_UNORDERED_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpXmpArray, UNORDERED_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpXmpArray_ORDERED_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpXmpArray, ORDERED_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextXmlXmpXmpArray_ALTERNATIVE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlXmpXmpArray, ALTERNATIVE_, NSString *)

#endif // _ComItextpdfTextXmlXmpXmpArray_H_