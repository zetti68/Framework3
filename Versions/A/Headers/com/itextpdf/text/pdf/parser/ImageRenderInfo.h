//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/ImageRenderInfo.java
//

#ifndef _ComItextpdfTextPdfParserImageRenderInfo_H_
#define _ComItextpdfTextPdfParserImageRenderInfo_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfParserInlineImageInfo;
@class ComItextpdfTextPdfParserMatrix;
@class ComItextpdfTextPdfParserPdfImageObject;
@class ComItextpdfTextPdfParserVector;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfIndirectReference;

@interface ComItextpdfTextPdfParserImageRenderInfo : NSObject

#pragma mark Public

+ (ComItextpdfTextPdfParserImageRenderInfo *)createForXObjectWithComItextpdfTextPdfParserMatrix:(ComItextpdfTextPdfParserMatrix *)ctm
                                                     withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                                                            withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)colorSpaceDictionary;

- (jfloat)getArea;

- (ComItextpdfTextPdfParserPdfImageObject *)getImage;

- (ComItextpdfTextPdfParserMatrix *)getImageCTM;

- (ComItextpdfTextPdfPdfIndirectReference *)getRef;

- (ComItextpdfTextPdfParserVector *)getStartPoint;

#pragma mark Protected

+ (ComItextpdfTextPdfParserImageRenderInfo *)createForEmbeddedImageWithComItextpdfTextPdfParserMatrix:(ComItextpdfTextPdfParserMatrix *)ctm
                                                          withComItextpdfTextPdfParserInlineImageInfo:(ComItextpdfTextPdfParserInlineImageInfo *)inlineImageInfo
                                                                  withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)colorSpaceDictionary;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfParserImageRenderInfo)

FOUNDATION_EXPORT ComItextpdfTextPdfParserImageRenderInfo *ComItextpdfTextPdfParserImageRenderInfo_createForXObjectWithComItextpdfTextPdfParserMatrix_withComItextpdfTextPdfPdfIndirectReference_withComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfParserMatrix *ctm, ComItextpdfTextPdfPdfIndirectReference *ref, ComItextpdfTextPdfPdfDictionary *colorSpaceDictionary);

FOUNDATION_EXPORT ComItextpdfTextPdfParserImageRenderInfo *ComItextpdfTextPdfParserImageRenderInfo_createForEmbeddedImageWithComItextpdfTextPdfParserMatrix_withComItextpdfTextPdfParserInlineImageInfo_withComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfParserMatrix *ctm, ComItextpdfTextPdfParserInlineImageInfo *inlineImageInfo, ComItextpdfTextPdfPdfDictionary *colorSpaceDictionary);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfParserImageRenderInfo)

#endif // _ComItextpdfTextPdfParserImageRenderInfo_H_
