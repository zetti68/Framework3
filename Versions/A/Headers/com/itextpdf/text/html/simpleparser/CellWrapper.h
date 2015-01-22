//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/CellWrapper.java
//

#ifndef _ComItextpdfTextHtmlSimpleparserCellWrapper_H_
#define _ComItextpdfTextHtmlSimpleparserCellWrapper_H_

@class ComItextpdfTextHtmlSimpleparserChainedProperties;
@class ComItextpdfTextPdfPdfPCell;
@protocol ComItextpdfTextElement;
@protocol ComItextpdfTextElementListener;
@protocol JavaUtilList;

#import "JreEmulation.h"
#include "com/itextpdf/text/TextElementArray.h"

@interface ComItextpdfTextHtmlSimpleparserCellWrapper : NSObject < ComItextpdfTextTextElementArray > {
 @public
  ComItextpdfTextPdfPdfPCell *cell_;
  jfloat width_;
  jboolean percentage_;
}

- (instancetype)initWithNSString:(NSString *)tag
withComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

- (ComItextpdfTextPdfPdfPCell *)createPdfPCellWithNSString:(NSString *)tag
      withComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

- (ComItextpdfTextPdfPdfPCell *)getCell;

- (jfloat)getWidth;

- (jboolean)isPercentage;

- (jboolean)addWithComItextpdfTextElement:(id<ComItextpdfTextElement>)o;

- (id<JavaUtilList>)getChunks;

- (jboolean)isContent;

- (jboolean)isNestable;

- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener;

- (jint)type;

- (void)copyAllFieldsTo:(ComItextpdfTextHtmlSimpleparserCellWrapper *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserCellWrapper_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextHtmlSimpleparserCellWrapper, cell_, ComItextpdfTextPdfPdfPCell *)

#endif // _ComItextpdfTextHtmlSimpleparserCellWrapper_H_