//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfLayerMembership.java
//

#ifndef _ComItextpdfTextPdfPdfLayerMembership_H_
#define _ComItextpdfTextPdfPdfLayerMembership_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfOCG.h"

@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfLayer;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfVisibilityExpression;
@class ComItextpdfTextPdfPdfWriter;
@class JavaUtilHashSet;
@protocol JavaUtilCollection;

@interface ComItextpdfTextPdfPdfLayerMembership : ComItextpdfTextPdfPdfDictionary < ComItextpdfTextPdfPdfOCG > {
 @public
  ComItextpdfTextPdfPdfIndirectReference *ref_;
  ComItextpdfTextPdfPdfArray *members_;
  JavaUtilHashSet *layers_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)addMemberWithComItextpdfTextPdfPdfLayer:(ComItextpdfTextPdfPdfLayer *)layer;

- (id<JavaUtilCollection>)getLayers;

- (ComItextpdfTextPdfPdfObject *)getPdfObject;

- (ComItextpdfTextPdfPdfIndirectReference *)getRef;

- (void)setVisibilityExpressionWithComItextpdfTextPdfPdfVisibilityExpression:(ComItextpdfTextPdfPdfVisibilityExpression *)ve;

- (void)setVisibilityPolicyWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)type;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfPdfLayerMembership)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfLayerMembership, ref_, ComItextpdfTextPdfPdfIndirectReference *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfLayerMembership, members_, ComItextpdfTextPdfPdfArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfLayerMembership, layers_, JavaUtilHashSet *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfLayerMembership_ALLON_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfLayerMembership, ALLON_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfLayerMembership_ANYON_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfLayerMembership, ANYON_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfLayerMembership_ANYOFF_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfLayerMembership, ANYOFF_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfLayerMembership_ALLOFF_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfLayerMembership, ALLOFF_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfLayerMembership_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfLayerMembership *self, ComItextpdfTextPdfPdfWriter *writer);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfLayerMembership *new_ComItextpdfTextPdfPdfLayerMembership_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfWriter *writer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfLayerMembership)

#endif // _ComItextpdfTextPdfPdfLayerMembership_H_
