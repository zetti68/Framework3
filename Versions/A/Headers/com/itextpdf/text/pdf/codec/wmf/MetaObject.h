//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/wmf/MetaObject.java
//

#ifndef _ComItextpdfTextPdfCodecWmfMetaObject_H_
#define _ComItextpdfTextPdfCodecWmfMetaObject_H_

#include "J2ObjC_header.h"

#define ComItextpdfTextPdfCodecWmfMetaObject_META_NOT_SUPPORTED 0
#define ComItextpdfTextPdfCodecWmfMetaObject_META_PEN 1
#define ComItextpdfTextPdfCodecWmfMetaObject_META_BRUSH 2
#define ComItextpdfTextPdfCodecWmfMetaObject_META_FONT 3

@interface ComItextpdfTextPdfCodecWmfMetaObject : NSObject {
 @public
  jint type_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)type;

- (jint)getType;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecWmfMetaObject)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecWmfMetaObject, META_NOT_SUPPORTED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecWmfMetaObject, META_PEN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecWmfMetaObject, META_BRUSH, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecWmfMetaObject, META_FONT, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecWmfMetaObject_init(ComItextpdfTextPdfCodecWmfMetaObject *self);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecWmfMetaObject *new_ComItextpdfTextPdfCodecWmfMetaObject_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecWmfMetaObject_initWithInt_(ComItextpdfTextPdfCodecWmfMetaObject *self, jint type);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecWmfMetaObject *new_ComItextpdfTextPdfCodecWmfMetaObject_initWithInt_(jint type) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecWmfMetaObject)

#endif // _ComItextpdfTextPdfCodecWmfMetaObject_H_
