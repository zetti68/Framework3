//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CMapSequence.java
//

#ifndef _ComItextpdfTextPdfFontsCmapsCMapSequence_H_
#define _ComItextpdfTextPdfFontsCmapsCMapSequence_H_

#include "J2ObjC_header.h"

@class IOSByteArray;

@interface ComItextpdfTextPdfFontsCmapsCMapSequence : NSObject {
 @public
  IOSByteArray *seq_;
  jint off_;
  jint len_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithByteArray:(IOSByteArray *)seq
                          withInt:(jint)off
                          withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfFontsCmapsCMapSequence)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFontsCmapsCMapSequence, seq_, IOSByteArray *)

FOUNDATION_EXPORT void ComItextpdfTextPdfFontsCmapsCMapSequence_init(ComItextpdfTextPdfFontsCmapsCMapSequence *self);

FOUNDATION_EXPORT ComItextpdfTextPdfFontsCmapsCMapSequence *new_ComItextpdfTextPdfFontsCmapsCMapSequence_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfFontsCmapsCMapSequence_initWithByteArray_withInt_withInt_(ComItextpdfTextPdfFontsCmapsCMapSequence *self, IOSByteArray *seq, jint off, jint len);

FOUNDATION_EXPORT ComItextpdfTextPdfFontsCmapsCMapSequence *new_ComItextpdfTextPdfFontsCmapsCMapSequence_initWithByteArray_withInt_withInt_(IOSByteArray *seq, jint off, jint len) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfFontsCmapsCMapSequence)

#endif // _ComItextpdfTextPdfFontsCmapsCMapSequence_H_
