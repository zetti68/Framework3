//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte.java
//

#ifndef _ComItextpdfTextPdfFontsCmapsCidLocationFromByte_H_
#define _ComItextpdfTextPdfFontsCmapsCidLocationFromByte_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/CidLocation.h"

@class ComItextpdfTextPdfPRTokeniser;
@class IOSByteArray;

@interface ComItextpdfTextPdfFontsCmapsCidLocationFromByte : NSObject < ComItextpdfTextPdfFontsCmapsCidLocation >

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (ComItextpdfTextPdfPRTokeniser *)getLocationWithNSString:(NSString *)location;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfFontsCmapsCidLocationFromByte)

FOUNDATION_EXPORT void ComItextpdfTextPdfFontsCmapsCidLocationFromByte_initWithByteArray_(ComItextpdfTextPdfFontsCmapsCidLocationFromByte *self, IOSByteArray *data);

FOUNDATION_EXPORT ComItextpdfTextPdfFontsCmapsCidLocationFromByte *new_ComItextpdfTextPdfFontsCmapsCidLocationFromByte_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfFontsCmapsCidLocationFromByte)

#endif // _ComItextpdfTextPdfFontsCmapsCidLocationFromByte_H_
