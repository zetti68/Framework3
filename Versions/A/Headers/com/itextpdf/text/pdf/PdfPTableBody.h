//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPTableBody.java
//

#ifndef _ComItextpdfTextPdfPdfPTableBody_H_
#define _ComItextpdfTextPdfPdfPTableBody_H_

@class ComItextpdfTextAccessibleElementId;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class JavaUtilArrayList;
@class JavaUtilHashMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/interfaces/IAccessibleElement.h"

@interface ComItextpdfTextPdfPdfPTableBody : NSObject < ComItextpdfTextPdfInterfacesIAccessibleElement > {
 @public
  ComItextpdfTextAccessibleElementId *id__;
  JavaUtilArrayList *rows_;
  ComItextpdfTextPdfPdfName *role_;
  JavaUtilHashMap *accessibleAttributes_;
}

- (instancetype)init;

- (ComItextpdfTextPdfPdfObject *)getAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key;

- (void)setAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value;

- (JavaUtilHashMap *)getAccessibleAttributes;

- (ComItextpdfTextPdfPdfName *)getRole;

- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role;

- (ComItextpdfTextAccessibleElementId *)getId;

- (void)setIdWithComItextpdfTextAccessibleElementId:(ComItextpdfTextAccessibleElementId *)id_;

- (jboolean)isInline;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfPTableBody *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfPTableBody_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfPTableBody, id__, ComItextpdfTextAccessibleElementId *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfPTableBody, rows_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfPTableBody, role_, ComItextpdfTextPdfPdfName *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfPTableBody, accessibleAttributes_, JavaUtilHashMap *)

#endif // _ComItextpdfTextPdfPdfPTableBody_H_
