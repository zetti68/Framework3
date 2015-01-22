//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ListBody.java
//

#ifndef _ComItextpdfTextListBody_H_
#define _ComItextpdfTextListBody_H_

@class ComItextpdfTextAccessibleElementId;
@class ComItextpdfTextListItem;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class JavaUtilHashMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/interfaces/IAccessibleElement.h"

@interface ComItextpdfTextListBody : NSObject < ComItextpdfTextPdfInterfacesIAccessibleElement > {
 @public
  ComItextpdfTextPdfPdfName *role_;
  ComItextpdfTextAccessibleElementId *id__;
  JavaUtilHashMap *accessibleAttributes_;
  ComItextpdfTextListItem *parentItem_;
}

- (instancetype)initWithComItextpdfTextListItem:(ComItextpdfTextListItem *)parentItem;

- (ComItextpdfTextPdfPdfObject *)getAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key;

- (void)setAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value;

- (JavaUtilHashMap *)getAccessibleAttributes;

- (ComItextpdfTextPdfPdfName *)getRole;

- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role;

- (ComItextpdfTextAccessibleElementId *)getId;

- (void)setIdWithComItextpdfTextAccessibleElementId:(ComItextpdfTextAccessibleElementId *)id_;

- (jboolean)isInline;

- (void)copyAllFieldsTo:(ComItextpdfTextListBody *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextListBody_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextListBody, role_, ComItextpdfTextPdfPdfName *)
J2OBJC_FIELD_SETTER(ComItextpdfTextListBody, id__, ComItextpdfTextAccessibleElementId *)
J2OBJC_FIELD_SETTER(ComItextpdfTextListBody, accessibleAttributes_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextListBody, parentItem_, ComItextpdfTextListItem *)

#endif // _ComItextpdfTextListBody_H_
