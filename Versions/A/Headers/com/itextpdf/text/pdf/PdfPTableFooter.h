//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPTableFooter.java
//

#ifndef _ComItextpdfTextPdfPdfPTableFooter_H_
#define _ComItextpdfTextPdfPdfPTableFooter_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfPTableBody.h"

@class ComItextpdfTextPdfPdfName;

@interface ComItextpdfTextPdfPdfPTableFooter : ComItextpdfTextPdfPdfPTableBody {
 @public
  ComItextpdfTextPdfPdfName *role_PdfPTableFooter_;
}

#pragma mark Public

- (instancetype)init;

- (ComItextpdfTextPdfPdfName *)getRole;

- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfPTableFooter)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfPTableFooter, role_PdfPTableFooter_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfPTableFooter_init(ComItextpdfTextPdfPdfPTableFooter *self);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfPTableFooter *new_ComItextpdfTextPdfPdfPTableFooter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfPTableFooter)

#endif // _ComItextpdfTextPdfPdfPTableFooter_H_
