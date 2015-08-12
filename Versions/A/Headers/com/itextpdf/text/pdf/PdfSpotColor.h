//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfSpotColor.java
//

#ifndef _ComItextpdfTextPdfPdfSpotColor_H_
#define _ComItextpdfTextPdfPdfSpotColor_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfWriter;

@interface ComItextpdfTextPdfPdfSpotColor : NSObject {
 @public
  ComItextpdfTextPdfPdfName *name_;
  ComItextpdfTextBaseColor *altcs_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
    withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)altcs;

- (jboolean)isEqual:(id)obj;

- (ComItextpdfTextBaseColor *)getAlternativeCS;

#pragma mark Protected

- (ComItextpdfTextPdfPdfObject *)getSpotObjectWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfSpotColor)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfSpotColor, name_, ComItextpdfTextPdfPdfName *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfSpotColor, altcs_, ComItextpdfTextBaseColor *)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfSpotColor_initWithNSString_withComItextpdfTextBaseColor_(ComItextpdfTextPdfPdfSpotColor *self, NSString *name, ComItextpdfTextBaseColor *altcs);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfSpotColor *new_ComItextpdfTextPdfPdfSpotColor_initWithNSString_withComItextpdfTextBaseColor_(NSString *name, ComItextpdfTextBaseColor *altcs) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfSpotColor)

#endif // _ComItextpdfTextPdfPdfSpotColor_H_
