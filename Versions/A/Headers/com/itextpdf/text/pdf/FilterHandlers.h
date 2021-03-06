//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/FilterHandlers.java
//

#ifndef _ComItextpdfTextPdfFilterHandlers_H_
#define _ComItextpdfTextPdfFilterHandlers_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class IOSByteArray;
@protocol JavaUtilMap;

@interface ComItextpdfTextPdfFilterHandlers : NSObject

#pragma mark Public

- (instancetype)init;

+ (id<JavaUtilMap>)getDefaultFilterHandlers;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfFilterHandlers)

FOUNDATION_EXPORT id<JavaUtilMap> ComItextpdfTextPdfFilterHandlers_getDefaultFilterHandlers();

FOUNDATION_EXPORT void ComItextpdfTextPdfFilterHandlers_init(ComItextpdfTextPdfFilterHandlers *self);

FOUNDATION_EXPORT ComItextpdfTextPdfFilterHandlers *new_ComItextpdfTextPdfFilterHandlers_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfFilterHandlers)

@protocol ComItextpdfTextPdfFilterHandlers_FilterHandler < NSObject, JavaObject >

- (IOSByteArray *)decodeWithByteArray:(IOSByteArray *)b
        withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)filterName
      withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)decodeParams
  withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)streamDictionary;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfFilterHandlers_FilterHandler)

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfFilterHandlers_FilterHandler)

#endif // _ComItextpdfTextPdfFilterHandlers_H_
