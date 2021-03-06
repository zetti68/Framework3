//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Section.java
//

#ifndef _ComItextpdfTextSection_H_
#define _ComItextpdfTextSection_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/LargeElement.h"
#include "com/itextpdf/text/TextElementArray.h"
#include "com/itextpdf/text/api/Indentable.h"
#include "com/itextpdf/text/pdf/interfaces/IAccessibleElement.h"
#include "java/util/ArrayList.h"

@class ComItextpdfTextAccessibleElementId;
@class ComItextpdfTextMarkedSection;
@class ComItextpdfTextParagraph;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class JavaUtilHashMap;
@protocol ComItextpdfTextElement;
@protocol ComItextpdfTextElementListener;
@protocol JavaUtilCollection;
@protocol JavaUtilList;

#define ComItextpdfTextSection_NUMBERSTYLE_DOTTED 0
#define ComItextpdfTextSection_NUMBERSTYLE_DOTTED_WITHOUT_FINAL_DOT 1

@interface ComItextpdfTextSection : JavaUtilArrayList < ComItextpdfTextTextElementArray, ComItextpdfTextLargeElement, ComItextpdfTextApiIndentable, ComItextpdfTextPdfInterfacesIAccessibleElement > {
 @public
  ComItextpdfTextParagraph *title_;
  NSString *bookmarkTitle_;
  jint numberDepth_;
  jint numberStyle_;
  jfloat indentationLeft_;
  jfloat indentationRight_;
  jfloat indentation_;
  jboolean bookmarkOpen_;
  jboolean triggerNewPage_;
  jint subsections_;
  JavaUtilArrayList *numbers_;
  jboolean complete_;
  jboolean addedCompletely_;
  jboolean notAddedYet_;
}

#pragma mark Public

- (jboolean)addWithComItextpdfTextElement:(id<ComItextpdfTextElement>)element;

- (void)addWithInt:(jint)index
            withId:(id<ComItextpdfTextElement>)element;

- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;

- (ComItextpdfTextSection *)addSectionWithFloat:(jfloat)indentation
                   withComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title;

- (ComItextpdfTextSection *)addSectionWithFloat:(jfloat)indentation
                   withComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title
                                        withInt:(jint)numberDepth;

- (ComItextpdfTextSection *)addSectionWithFloat:(jfloat)indentation
                                   withNSString:(NSString *)title;

- (ComItextpdfTextSection *)addSectionWithFloat:(jfloat)indentation
                                   withNSString:(NSString *)title
                                        withInt:(jint)numberDepth;

- (ComItextpdfTextSection *)addSectionWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title;

- (ComItextpdfTextSection *)addSectionWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title
                                                           withInt:(jint)numberDepth;

- (ComItextpdfTextSection *)addSectionWithNSString:(NSString *)title;

- (ComItextpdfTextSection *)addSectionWithNSString:(NSString *)title
                                           withInt:(jint)numberDepth;

- (jboolean)addWithId:(id<ComItextpdfTextElement>)element;

+ (ComItextpdfTextParagraph *)constructTitleWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title
                                                   withJavaUtilArrayList:(JavaUtilArrayList *)numbers
                                                                 withInt:(jint)numberDepth
                                                                 withInt:(jint)numberStyle;

- (void)flushContent;

- (ComItextpdfTextPdfPdfObject *)getAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key;

- (JavaUtilHashMap *)getAccessibleAttributes;

- (ComItextpdfTextParagraph *)getBookmarkTitle;

- (id<JavaUtilList>)getChunks;

- (jint)getDepth;

- (ComItextpdfTextAccessibleElementId *)getId;

- (jfloat)getIndentation;

- (jfloat)getIndentationLeft;

- (jfloat)getIndentationRight;

- (jint)getNumberDepth;

- (jint)getNumberStyle;

- (ComItextpdfTextPdfPdfName *)getRole;

- (ComItextpdfTextParagraph *)getTitle;

- (jboolean)isBookmarkOpen;

- (jboolean)isChapter;

- (jboolean)isComplete;

- (jboolean)isContent;

- (jboolean)isInline;

- (jboolean)isNestable;

- (jboolean)isNotAddedYet;

- (jboolean)isSection;

- (jboolean)isTriggerNewPage;

- (void)newPage OBJC_METHOD_FAMILY_NONE;

- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener;

- (void)setAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value;

- (void)setBookmarkOpenWithBoolean:(jboolean)bookmarkOpen;

- (void)setBookmarkTitleWithNSString:(NSString *)bookmarkTitle;

- (void)setChapterNumberWithInt:(jint)number;

- (void)setCompleteWithBoolean:(jboolean)complete;

- (void)setIdWithComItextpdfTextAccessibleElementId:(ComItextpdfTextAccessibleElementId *)id_;

- (void)setIndentationWithFloat:(jfloat)indentation;

- (void)setIndentationLeftWithFloat:(jfloat)indentation;

- (void)setIndentationRightWithFloat:(jfloat)indentation;

- (void)setNotAddedYetWithBoolean:(jboolean)notAddedYet;

- (void)setNumberDepthWithInt:(jint)numberDepth;

- (void)setNumberStyleWithInt:(jint)numberStyle;

- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role;

- (void)setTitleWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title;

- (void)setTriggerNewPageWithBoolean:(jboolean)triggerNewPage;

- (jint)type;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title
                                         withInt:(jint)numberDepth;

- (ComItextpdfTextMarkedSection *)addMarkedSection;

- (jboolean)isAddedCompletely;

- (void)setAddedCompletelyWithBoolean:(jboolean)addedCompletely;

#pragma mark Package-Private


@end

J2OBJC_STATIC_INIT(ComItextpdfTextSection)

J2OBJC_FIELD_SETTER(ComItextpdfTextSection, title_, ComItextpdfTextParagraph *)
J2OBJC_FIELD_SETTER(ComItextpdfTextSection, bookmarkTitle_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextSection, numbers_, JavaUtilArrayList *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextSection, NUMBERSTYLE_DOTTED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextSection, NUMBERSTYLE_DOTTED_WITHOUT_FINAL_DOT, jint)

FOUNDATION_EXPORT void ComItextpdfTextSection_init(ComItextpdfTextSection *self);

FOUNDATION_EXPORT ComItextpdfTextSection *new_ComItextpdfTextSection_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextSection_initWithComItextpdfTextParagraph_withInt_(ComItextpdfTextSection *self, ComItextpdfTextParagraph *title, jint numberDepth);

FOUNDATION_EXPORT ComItextpdfTextSection *new_ComItextpdfTextSection_initWithComItextpdfTextParagraph_withInt_(ComItextpdfTextParagraph *title, jint numberDepth) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComItextpdfTextParagraph *ComItextpdfTextSection_constructTitleWithComItextpdfTextParagraph_withJavaUtilArrayList_withInt_withInt_(ComItextpdfTextParagraph *title, JavaUtilArrayList *numbers, jint numberDepth, jint numberStyle);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextSection)

#endif // _ComItextpdfTextSection_H_
