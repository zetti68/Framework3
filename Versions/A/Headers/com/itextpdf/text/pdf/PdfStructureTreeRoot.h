//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfStructureTreeRoot.java
//

#ifndef _ComItextpdfTextPdfPdfStructureTreeRoot_H_
#define _ComItextpdfTextPdfPdfStructureTreeRoot_H_

@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfWriter;
@class JavaUtilHashMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/interfaces/IPdfStructureElement.h"

@interface ComItextpdfTextPdfPdfStructureTreeRoot : ComItextpdfTextPdfPdfDictionary < ComItextpdfTextPdfInterfacesIPdfStructureElement > {
 @public
  JavaUtilHashMap *parentTree_;
  ComItextpdfTextPdfPdfIndirectReference *reference_;
  ComItextpdfTextPdfPdfDictionary *classMap_;
  JavaUtilHashMap *classes_;
  JavaUtilHashMap *numTree_;
  ComItextpdfTextPdfPdfWriter *writer_;
}

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)createNumTree;

- (void)mapRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)used
               withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)standard;

- (void)mapClassWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
              withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (ComItextpdfTextPdfPdfObject *)getMappedClassWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name;

- (ComItextpdfTextPdfPdfWriter *)getWriter;

- (JavaUtilHashMap *)getNumTree;

- (ComItextpdfTextPdfPdfIndirectReference *)getReference;

- (void)setPageMarkWithInt:(jint)page
withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)struc;

- (void)setAnnotationMarkWithInt:(jint)structParentIndex
withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)struc;

- (void)nodeProcessWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)struc
            withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)reference;

- (void)buildTree;

- (ComItextpdfTextPdfPdfObject *)getAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name;

- (void)setAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                  withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfStructureTreeRoot *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfStructureTreeRoot_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStructureTreeRoot, parentTree_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStructureTreeRoot, reference_, ComItextpdfTextPdfPdfIndirectReference *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStructureTreeRoot, classMap_, ComItextpdfTextPdfPdfDictionary *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStructureTreeRoot, classes_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStructureTreeRoot, numTree_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStructureTreeRoot, writer_, ComItextpdfTextPdfPdfWriter *)

#endif // _ComItextpdfTextPdfPdfStructureTreeRoot_H_