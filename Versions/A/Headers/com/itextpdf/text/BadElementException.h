//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/BadElementException.java
//

#ifndef _ComItextpdfTextBadElementException_H_
#define _ComItextpdfTextBadElementException_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/DocumentException.h"

@class JavaLangException;

@interface ComItextpdfTextBadElementException : ComItextpdfTextDocumentException

#pragma mark Public

- (instancetype)initWithJavaLangException:(JavaLangException *)ex;

- (instancetype)initWithNSString:(NSString *)message;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextBadElementException)

FOUNDATION_EXPORT void ComItextpdfTextBadElementException_initWithJavaLangException_(ComItextpdfTextBadElementException *self, JavaLangException *ex);

FOUNDATION_EXPORT ComItextpdfTextBadElementException *new_ComItextpdfTextBadElementException_initWithJavaLangException_(JavaLangException *ex) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextBadElementException_init(ComItextpdfTextBadElementException *self);

FOUNDATION_EXPORT ComItextpdfTextBadElementException *new_ComItextpdfTextBadElementException_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextBadElementException_initWithNSString_(ComItextpdfTextBadElementException *self, NSString *message);

FOUNDATION_EXPORT ComItextpdfTextBadElementException *new_ComItextpdfTextBadElementException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextBadElementException)

#endif // _ComItextpdfTextBadElementException_H_
