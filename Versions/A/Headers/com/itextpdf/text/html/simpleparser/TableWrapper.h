//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/TableWrapper.java
//

#ifndef _ComItextpdfTextHtmlSimpleparserTableWrapper_H_
#define _ComItextpdfTextHtmlSimpleparserTableWrapper_H_

@class ComItextpdfTextPdfPdfPTable;
@class IOSFloatArray;
@protocol ComItextpdfTextElementListener;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/Element.h"

@interface ComItextpdfTextHtmlSimpleparserTableWrapper : NSObject < ComItextpdfTextElement > {
 @public
  id<JavaUtilMap> styles_;
  id<JavaUtilList> rows_;
  IOSFloatArray *colWidths_;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)addRowWithJavaUtilList:(id<JavaUtilList>)row;

- (void)setColWidthsWithFloatArray:(IOSFloatArray *)colWidths;

- (ComItextpdfTextPdfPdfPTable *)createTable;

- (id<JavaUtilList>)getChunks;

- (jboolean)isContent;

- (jboolean)isNestable;

- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener;

- (jint)type;

- (void)copyAllFieldsTo:(ComItextpdfTextHtmlSimpleparserTableWrapper *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserTableWrapper_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextHtmlSimpleparserTableWrapper, styles_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComItextpdfTextHtmlSimpleparserTableWrapper, rows_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ComItextpdfTextHtmlSimpleparserTableWrapper, colWidths_, IOSFloatArray *)

#endif // _ComItextpdfTextHtmlSimpleparserTableWrapper_H_