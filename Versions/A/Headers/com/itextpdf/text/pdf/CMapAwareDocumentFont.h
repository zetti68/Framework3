//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/CMapAwareDocumentFont.java
//

#ifndef _ComItextpdfTextPdfCMapAwareDocumentFont_H_
#define _ComItextpdfTextPdfCMapAwareDocumentFont_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/DocumentFont.h"

@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPdfDictionary;
@class IOSByteArray;

@interface ComItextpdfTextPdfCMapAwareDocumentFont : ComItextpdfTextPdfDocumentFont

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)font;

- (instancetype)initWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)refFont;

- (NSString *)decodeWithByteArray:(IOSByteArray *)cidbytes
                          withInt:(jint)offset
                          withInt:(jint)len;

- (NSString *)encodeWithByteArray:(IOSByteArray *)bytes
                          withInt:(jint)offset
                          withInt:(jint)len;

- (jint)getWidthWithInt:(jint)char1;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCMapAwareDocumentFont)

FOUNDATION_EXPORT void ComItextpdfTextPdfCMapAwareDocumentFont_initWithComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfCMapAwareDocumentFont *self, ComItextpdfTextPdfPdfDictionary *font);

FOUNDATION_EXPORT ComItextpdfTextPdfCMapAwareDocumentFont *new_ComItextpdfTextPdfCMapAwareDocumentFont_initWithComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfPdfDictionary *font) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfCMapAwareDocumentFont_initWithComItextpdfTextPdfPRIndirectReference_(ComItextpdfTextPdfCMapAwareDocumentFont *self, ComItextpdfTextPdfPRIndirectReference *refFont);

FOUNDATION_EXPORT ComItextpdfTextPdfCMapAwareDocumentFont *new_ComItextpdfTextPdfCMapAwareDocumentFont_initWithComItextpdfTextPdfPRIndirectReference_(ComItextpdfTextPdfPRIndirectReference *refFont) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCMapAwareDocumentFont)

#endif // _ComItextpdfTextPdfCMapAwareDocumentFont_H_
