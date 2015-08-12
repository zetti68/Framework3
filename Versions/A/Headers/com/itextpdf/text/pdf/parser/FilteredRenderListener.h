//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/FilteredRenderListener.java
//

#ifndef _ComItextpdfTextPdfParserFilteredRenderListener_H_
#define _ComItextpdfTextPdfParserFilteredRenderListener_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/parser/RenderListener.h"

@class ComItextpdfTextPdfParserImageRenderInfo;
@class ComItextpdfTextPdfParserTextRenderInfo;
@class IOSObjectArray;

@interface ComItextpdfTextPdfParserFilteredRenderListener : NSObject < ComItextpdfTextPdfParserRenderListener >

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfParserRenderListener:(id<ComItextpdfTextPdfParserRenderListener>)delegate
                 withComItextpdfTextPdfParserRenderFilterArray:(IOSObjectArray *)filters;

- (void)beginTextBlock;

- (void)endTextBlock;

- (void)renderImageWithComItextpdfTextPdfParserImageRenderInfo:(ComItextpdfTextPdfParserImageRenderInfo *)renderInfo;

- (void)renderTextWithComItextpdfTextPdfParserTextRenderInfo:(ComItextpdfTextPdfParserTextRenderInfo *)renderInfo;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfParserFilteredRenderListener)

FOUNDATION_EXPORT void ComItextpdfTextPdfParserFilteredRenderListener_initWithComItextpdfTextPdfParserRenderListener_withComItextpdfTextPdfParserRenderFilterArray_(ComItextpdfTextPdfParserFilteredRenderListener *self, id<ComItextpdfTextPdfParserRenderListener> delegate, IOSObjectArray *filters);

FOUNDATION_EXPORT ComItextpdfTextPdfParserFilteredRenderListener *new_ComItextpdfTextPdfParserFilteredRenderListener_initWithComItextpdfTextPdfParserRenderListener_withComItextpdfTextPdfParserRenderFilterArray_(id<ComItextpdfTextPdfParserRenderListener> delegate, IOSObjectArray *filters) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfParserFilteredRenderListener)

#endif // _ComItextpdfTextPdfParserFilteredRenderListener_H_
