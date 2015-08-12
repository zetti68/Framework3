//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ListBody.java
//

#ifndef _ComItextpdfTextListBody_H_
#define _ComItextpdfTextListBody_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/interfaces/IAccessibleElement.h"

@class ComItextpdfTextAccessibleElementId;
@class ComItextpdfTextListItem;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class JavaUtilHashMap;

@interface ComItextpdfTextListBody : NSObject < ComItextpdfTextPdfInterfacesIAccessibleElement > {
 @public
  ComItextpdfTextPdfPdfName *role_;
  JavaUtilHashMap *accessibleAttributes_;
  ComItextpdfTextListItem *parentItem_;
}

#pragma mark Public

- (ComItextpdfTextPdfPdfObject *)getAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key;

- (JavaUtilHashMap *)getAccessibleAttributes;

- (ComItextpdfTextAccessibleElementId *)getId;

- (ComItextpdfTextPdfPdfName *)getRole;

- (jboolean)isInline;

- (void)setAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value;

- (void)setIdWithComItextpdfTextAccessibleElementId:(ComItextpdfTextAccessibleElementId *)id_;

- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role;

#pragma mark Protected

- (instancetype)initWithComItextpdfTextListItem:(ComItextpdfTextListItem *)parentItem;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextListBody)

J2OBJC_FIELD_SETTER(ComItextpdfTextListBody, role_, ComItextpdfTextPdfPdfName *)
J2OBJC_FIELD_SETTER(ComItextpdfTextListBody, accessibleAttributes_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextListBody, parentItem_, ComItextpdfTextListItem *)

FOUNDATION_EXPORT void ComItextpdfTextListBody_initWithComItextpdfTextListItem_(ComItextpdfTextListBody *self, ComItextpdfTextListItem *parentItem);

FOUNDATION_EXPORT ComItextpdfTextListBody *new_ComItextpdfTextListBody_initWithComItextpdfTextListItem_(ComItextpdfTextListItem *parentItem) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextListBody)

#endif // _ComItextpdfTextListBody_H_
