//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/otf/TableHeader.java
//

#ifndef _ComItextpdfTextPdfFontsOtfTableHeader_H_
#define _ComItextpdfTextPdfFontsOtfTableHeader_H_

#include "J2ObjC_header.h"

@interface ComItextpdfTextPdfFontsOtfTableHeader : NSObject {
 @public
  jint version__;
  jint scriptListOffset_;
  jint featureListOffset_;
  jint lookupListOffset_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)version_
                    withInt:(jint)scriptListOffset
                    withInt:(jint)featureListOffset
                    withInt:(jint)lookupListOffset;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfFontsOtfTableHeader)

FOUNDATION_EXPORT void ComItextpdfTextPdfFontsOtfTableHeader_initWithInt_withInt_withInt_withInt_(ComItextpdfTextPdfFontsOtfTableHeader *self, jint version_, jint scriptListOffset, jint featureListOffset, jint lookupListOffset);

FOUNDATION_EXPORT ComItextpdfTextPdfFontsOtfTableHeader *new_ComItextpdfTextPdfFontsOtfTableHeader_initWithInt_withInt_withInt_withInt_(jint version_, jint scriptListOffset, jint featureListOffset, jint lookupListOffset) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfFontsOtfTableHeader)

#endif // _ComItextpdfTextPdfFontsOtfTableHeader_H_
