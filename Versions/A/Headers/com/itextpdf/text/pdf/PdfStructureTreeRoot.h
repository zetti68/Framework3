//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfStructureTreeRoot.java
//

#ifndef _ComItextpdfTextPdfPdfStructureTreeRoot_H_
#define _ComItextpdfTextPdfPdfStructureTreeRoot_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/interfaces/IPdfStructureElement.h"

@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfWriter;
@class JavaUtilHashMap;

@interface ComItextpdfTextPdfPdfStructureTreeRoot : ComItextpdfTextPdfPdfDictionary < ComItextpdfTextPdfInterfacesIPdfStructureElement > {
 @public
  JavaUtilHashMap *classes_;
}

#pragma mark Public

- (ComItextpdfTextPdfPdfObject *)getAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name;

- (ComItextpdfTextPdfPdfObject *)getMappedClassWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name;

- (JavaUtilHashMap *)getNumTree;

- (ComItextpdfTextPdfPdfIndirectReference *)getReference;

- (ComItextpdfTextPdfPdfWriter *)getWriter;

- (void)mapClassWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
              withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (void)mapRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)used
               withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)standard;

- (void)setAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                  withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)buildTree;

- (void)setAnnotationMarkWithInt:(jint)structParentIndex
withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)struc;

- (void)setPageMarkWithInt:(jint)page
withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)struc;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfStructureTreeRoot)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStructureTreeRoot, classes_, JavaUtilHashMap *)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfStructureTreeRoot_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfStructureTreeRoot *self, ComItextpdfTextPdfPdfWriter *writer);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfStructureTreeRoot *new_ComItextpdfTextPdfPdfStructureTreeRoot_initWithComItextpdfTextPdfPdfWriter_(ComItextpdfTextPdfPdfWriter *writer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfStructureTreeRoot)

#endif // _ComItextpdfTextPdfPdfStructureTreeRoot_H_
