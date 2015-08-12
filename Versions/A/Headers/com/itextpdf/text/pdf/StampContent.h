//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/StampContent.java
//

#ifndef _ComItextpdfTextPdfStampContent_H_
#define _ComItextpdfTextPdfStampContent_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"

@class ComItextpdfTextPdfPageResources;
@class ComItextpdfTextPdfPdfAction;
@class ComItextpdfTextPdfPdfAnnotation;
@class ComItextpdfTextPdfPdfStamperImp;
@class ComItextpdfTextPdfPdfStamperImp_PageStamp;

@interface ComItextpdfTextPdfStampContent : ComItextpdfTextPdfPdfContentByte {
 @public
  ComItextpdfTextPdfPdfStamperImp_PageStamp *ps_;
  ComItextpdfTextPdfPageResources *pageResources_;
}

#pragma mark Public

- (ComItextpdfTextPdfPdfContentByte *)getDuplicate;

- (void)setActionWithComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action
                                       withFloat:(jfloat)llx
                                       withFloat:(jfloat)lly
                                       withFloat:(jfloat)urx
                                       withFloat:(jfloat)ury;

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextPdfPdfStamperImp:(ComItextpdfTextPdfPdfStamperImp *)stamper
          withComItextpdfTextPdfPdfStamperImp_PageStamp:(ComItextpdfTextPdfPdfStamperImp_PageStamp *)ps;

- (void)addAnnotationWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)annot;

- (ComItextpdfTextPdfPageResources *)getPageResources;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfStampContent)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfStampContent, ps_, ComItextpdfTextPdfPdfStamperImp_PageStamp *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfStampContent, pageResources_, ComItextpdfTextPdfPageResources *)

FOUNDATION_EXPORT void ComItextpdfTextPdfStampContent_initWithComItextpdfTextPdfPdfStamperImp_withComItextpdfTextPdfPdfStamperImp_PageStamp_(ComItextpdfTextPdfStampContent *self, ComItextpdfTextPdfPdfStamperImp *stamper, ComItextpdfTextPdfPdfStamperImp_PageStamp *ps);

FOUNDATION_EXPORT ComItextpdfTextPdfStampContent *new_ComItextpdfTextPdfStampContent_initWithComItextpdfTextPdfPdfStamperImp_withComItextpdfTextPdfPdfStamperImp_PageStamp_(ComItextpdfTextPdfPdfStamperImp *stamper, ComItextpdfTextPdfPdfStamperImp_PageStamp *ps) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfStampContent)

#endif // _ComItextpdfTextPdfStampContent_H_
