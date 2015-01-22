//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfAnnotation.java
//

#ifndef _ComItextpdfTextPdfPdfAnnotation_H_
#define _ComItextpdfTextPdfPdfAnnotation_H_

@class ComItextpdfAwtGeomAffineTransform;
@class ComItextpdfTextBaseColor;
@class ComItextpdfTextPdfPdfAction;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfBorderArray;
@class ComItextpdfTextPdfPdfBorderDictionary;
@class ComItextpdfTextPdfPdfContentByte;
@class ComItextpdfTextPdfPdfDestination;
@class ComItextpdfTextPdfPdfFileSpecification;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfString;
@class ComItextpdfTextPdfPdfTemplate;
@class ComItextpdfTextPdfPdfWriter;
@class ComItextpdfTextRectangle;
@class IOSByteArray;
@class IOSFloatArray;
@class IOSObjectArray;
@class JavaIoOutputStream;
@class JavaLangStringBuffer;
@class JavaUtilHashMap;
@class JavaUtilHashSet;
@protocol ComItextpdfTextPdfPdfOCG;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"

#define ComItextpdfTextPdfPdfAnnotation_FLAGS_HIDDEN 2
#define ComItextpdfTextPdfPdfAnnotation_FLAGS_INVISIBLE 1
#define ComItextpdfTextPdfPdfAnnotation_FLAGS_LOCKED 128
#define ComItextpdfTextPdfPdfAnnotation_FLAGS_NOROTATE 16
#define ComItextpdfTextPdfPdfAnnotation_FLAGS_NOVIEW 32
#define ComItextpdfTextPdfPdfAnnotation_FLAGS_NOZOOM 8
#define ComItextpdfTextPdfPdfAnnotation_FLAGS_PRINT 4
#define ComItextpdfTextPdfPdfAnnotation_FLAGS_READONLY 64
#define ComItextpdfTextPdfPdfAnnotation_FLAGS_TOGGLENOVIEW 256
#define ComItextpdfTextPdfPdfAnnotation_MARKUP_HIGHLIGHT 0
#define ComItextpdfTextPdfPdfAnnotation_MARKUP_SQUIGGLY 3
#define ComItextpdfTextPdfPdfAnnotation_MARKUP_STRIKEOUT 2
#define ComItextpdfTextPdfPdfAnnotation_MARKUP_UNDERLINE 1

@interface ComItextpdfTextPdfPdfAnnotation : ComItextpdfTextPdfPdfDictionary {
 @public
  ComItextpdfTextPdfPdfWriter *writer_;
  ComItextpdfTextPdfPdfIndirectReference *reference_;
  JavaUtilHashSet *templates_;
  jboolean form_;
  jboolean annotation_;
  jboolean used_;
  jint placeInPage_;
}

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                       withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect;

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                          withFloat:(jfloat)llx
                                          withFloat:(jfloat)lly
                                          withFloat:(jfloat)urx
                                          withFloat:(jfloat)ury
                    withComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)title
                    withComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)content;

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                          withFloat:(jfloat)llx
                                          withFloat:(jfloat)lly
                                          withFloat:(jfloat)urx
                                          withFloat:(jfloat)ury
                    withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action;

+ (ComItextpdfTextPdfPdfAnnotation *)createScreenWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                    withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                    withNSString:(NSString *)clipTitle
                                      withComItextpdfTextPdfPdfFileSpecification:(ComItextpdfTextPdfPdfFileSpecification *)fs
                                                                    withNSString:(NSString *)mimeType
                                                                     withBoolean:(jboolean)playOnDisplay;

- (ComItextpdfTextPdfPdfIndirectReference *)getIndirectReference;

+ (ComItextpdfTextPdfPdfAnnotation *)createTextWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                  withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                  withNSString:(NSString *)title
                                                                  withNSString:(NSString *)contents
                                                                   withBoolean:(jboolean)open
                                                                  withNSString:(NSString *)icon;

+ (ComItextpdfTextPdfPdfAnnotation *)createLinkWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                  withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                 withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)highlight;

+ (ComItextpdfTextPdfPdfAnnotation *)createLinkWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                  withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                 withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)highlight
                                               withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action;

+ (ComItextpdfTextPdfPdfAnnotation *)createLinkWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                  withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                 withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)highlight
                                                                  withNSString:(NSString *)namedDestination;

+ (ComItextpdfTextPdfPdfAnnotation *)createLinkWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                  withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                 withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)highlight
                                                                       withInt:(jint)page
                                          withComItextpdfTextPdfPdfDestination:(ComItextpdfTextPdfPdfDestination *)dest;

+ (ComItextpdfTextPdfPdfAnnotation *)createFreeTextWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                      withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                      withNSString:(NSString *)contents
                                              withComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)defaultAppearance;

+ (ComItextpdfTextPdfPdfAnnotation *)createLineWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                  withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                  withNSString:(NSString *)contents
                                                                     withFloat:(jfloat)x1
                                                                     withFloat:(jfloat)y1
                                                                     withFloat:(jfloat)x2
                                                                     withFloat:(jfloat)y2;

+ (ComItextpdfTextPdfPdfAnnotation *)createSquareCircleWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                          withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                          withNSString:(NSString *)contents
                                                                           withBoolean:(jboolean)square;

+ (ComItextpdfTextPdfPdfAnnotation *)createMarkupWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                    withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                    withNSString:(NSString *)contents
                                                                         withInt:(jint)type
                                                                  withFloatArray:(IOSFloatArray *)quadPoints;

+ (ComItextpdfTextPdfPdfAnnotation *)createStampWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                   withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                   withNSString:(NSString *)contents
                                                                   withNSString:(NSString *)name;

+ (ComItextpdfTextPdfPdfAnnotation *)createInkWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                 withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                 withNSString:(NSString *)contents
                                                              withFloatArray2:(IOSObjectArray *)inkList;

+ (ComItextpdfTextPdfPdfAnnotation *)createFileAttachmentWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                            withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                            withNSString:(NSString *)contents
                                                                           withByteArray:(IOSByteArray *)fileStore
                                                                            withNSString:(NSString *)file
                                                                            withNSString:(NSString *)fileDisplay;

+ (ComItextpdfTextPdfPdfAnnotation *)createFileAttachmentWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                            withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                            withNSString:(NSString *)contents
                                              withComItextpdfTextPdfPdfFileSpecification:(ComItextpdfTextPdfPdfFileSpecification *)fs;

+ (ComItextpdfTextPdfPdfAnnotation *)createPopupWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                   withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                   withNSString:(NSString *)contents
                                                                    withBoolean:(jboolean)open;

+ (ComItextpdfTextPdfPdfAnnotation *)createPolygonPolylineWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                                             withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                                                             withNSString:(NSString *)contents
                                                                              withBoolean:(jboolean)polygon
                                                           withComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)vertices;

- (void)setDefaultAppearanceStringWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)cb;

- (void)setFlagsWithInt:(jint)flags;

- (void)setBorderWithComItextpdfTextPdfPdfBorderArray:(ComItextpdfTextPdfPdfBorderArray *)border;

- (void)setBorderStyleWithComItextpdfTextPdfPdfBorderDictionary:(ComItextpdfTextPdfPdfBorderDictionary *)border;

- (void)setHighlightingWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)highlight;

- (void)setAppearanceWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)ap
                 withComItextpdfTextPdfPdfTemplate:(ComItextpdfTextPdfPdfTemplate *)template_;

- (void)setAppearanceWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)ap
                                      withNSString:(NSString *)state
                 withComItextpdfTextPdfPdfTemplate:(ComItextpdfTextPdfPdfTemplate *)template_;

- (void)setAppearanceStateWithNSString:(NSString *)state;

- (void)setColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (void)setTitleWithNSString:(NSString *)title;

- (void)setPopupWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)popup;

- (void)setActionWithComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action;

- (void)setAdditionalActionsWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                          withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action;

- (jboolean)isUsed;

- (void)setUsed;

- (JavaUtilHashSet *)getTemplates;

- (jboolean)isForm;

- (jboolean)isAnnotation;

- (void)setPageWithInt:(jint)page;

- (void)setPage;

- (jint)getPlaceInPage;

- (void)setPlaceInPageWithInt:(jint)placeInPage;

- (void)setRotateWithInt:(jint)v;

- (ComItextpdfTextPdfPdfDictionary *)getMK;

- (void)setMKRotationWithInt:(jint)rotation;

+ (ComItextpdfTextPdfPdfArray *)getMKColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (void)setMKBorderColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (void)setMKBackgroundColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (void)setMKNormalCaptionWithNSString:(NSString *)caption;

- (void)setMKRolloverCaptionWithNSString:(NSString *)caption;

- (void)setMKAlternateCaptionWithNSString:(NSString *)caption;

- (void)setMKNormalIconWithComItextpdfTextPdfPdfTemplate:(ComItextpdfTextPdfPdfTemplate *)template_;

- (void)setMKRolloverIconWithComItextpdfTextPdfPdfTemplate:(ComItextpdfTextPdfPdfTemplate *)template_;

- (void)setMKAlternateIconWithComItextpdfTextPdfPdfTemplate:(ComItextpdfTextPdfPdfTemplate *)template_;

- (void)setMKIconFitWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)scale_
                    withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)scalingType
                                        withFloat:(jfloat)leftoverLeft
                                        withFloat:(jfloat)leftoverBottom
                                      withBoolean:(jboolean)fitInBounds;

- (void)setMKTextPositionWithInt:(jint)tp;

- (void)setLayerWithComItextpdfTextPdfPdfOCG:(id<ComItextpdfTextPdfPdfOCG>)layer;

- (void)setNameWithNSString:(NSString *)name;

- (void)applyCTMWithComItextpdfAwtGeomAffineTransform:(ComItextpdfAwtGeomAffineTransform *)ctm;

- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfAnnotation *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfPdfAnnotation_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfPdfAnnotation)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfAnnotation, writer_, ComItextpdfTextPdfPdfWriter *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfAnnotation, reference_, ComItextpdfTextPdfPdfIndirectReference *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfAnnotation, templates_, JavaUtilHashSet *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_HIGHLIGHT_NONE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, HIGHLIGHT_NONE_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_HIGHLIGHT_INVERT_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, HIGHLIGHT_INVERT_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_HIGHLIGHT_OUTLINE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, HIGHLIGHT_OUTLINE_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_HIGHLIGHT_PUSH_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, HIGHLIGHT_PUSH_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_HIGHLIGHT_TOGGLE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, HIGHLIGHT_TOGGLE_, ComItextpdfTextPdfPdfName *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, FLAGS_INVISIBLE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, FLAGS_HIDDEN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, FLAGS_PRINT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, FLAGS_NOZOOM, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, FLAGS_NOROTATE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, FLAGS_NOVIEW, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, FLAGS_READONLY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, FLAGS_LOCKED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, FLAGS_TOGGLENOVIEW, jint)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_APPEARANCE_NORMAL_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, APPEARANCE_NORMAL_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_APPEARANCE_ROLLOVER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, APPEARANCE_ROLLOVER_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_APPEARANCE_DOWN_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, APPEARANCE_DOWN_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_ENTER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_ENTER_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_EXIT_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_EXIT_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_DOWN_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_DOWN_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_UP_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_UP_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_FOCUS_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_FOCUS_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_BLUR_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_BLUR_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_JS_KEY_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_JS_KEY_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_JS_FORMAT_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_JS_FORMAT_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_JS_CHANGE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_JS_CHANGE_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfAnnotation_AA_JS_OTHER_CHANGE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, AA_JS_OTHER_CHANGE_, ComItextpdfTextPdfPdfName *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, MARKUP_HIGHLIGHT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, MARKUP_UNDERLINE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, MARKUP_STRIKEOUT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAnnotation, MARKUP_SQUIGGLY, jint)

@interface ComItextpdfTextPdfPdfAnnotation_PdfImportedLink : NSObject {
 @public
  jfloat llx_, lly_, urx_, ury_;
  JavaUtilHashMap *parameters_;
  ComItextpdfTextPdfPdfArray *destination_;
  jint newPage_;
}

- (instancetype)initWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)annotation;

- (jboolean)isInternal;

- (jint)getDestinationPage;

- (void)setDestinationPageWithInt:(jint)newPage;

- (void)transformDestinationWithFloat:(jfloat)a
                            withFloat:(jfloat)b
                            withFloat:(jfloat)c
                            withFloat:(jfloat)d
                            withFloat:(jfloat)e
                            withFloat:(jfloat)f;

- (void)transformRectWithFloat:(jfloat)a
                     withFloat:(jfloat)b
                     withFloat:(jfloat)c
                     withFloat:(jfloat)d
                     withFloat:(jfloat)e
                     withFloat:(jfloat)f;

- (ComItextpdfTextPdfPdfAnnotation *)createAnnotationWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (NSString *)description;

- (void)appendDictionaryWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
                             withJavaUtilHashMap:(JavaUtilHashMap *)dict;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfAnnotation_PdfImportedLink *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfAnnotation_PdfImportedLink_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfAnnotation_PdfImportedLink, parameters_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfAnnotation_PdfImportedLink, destination_, ComItextpdfTextPdfPdfArray *)

#endif // _ComItextpdfTextPdfPdfAnnotation_H_
