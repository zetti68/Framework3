//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfStamperImp.java
//

#ifndef _ComItextpdfTextPdfPdfStamperImp_H_
#define _ComItextpdfTextPdfPdfStamperImp_H_

@class ComItextpdfTextImage;
@class ComItextpdfTextPdfAcroFields;
@class ComItextpdfTextPdfByteBuffer;
@class ComItextpdfTextPdfCollectionPdfCollection;
@class ComItextpdfTextPdfFdfReader;
@class ComItextpdfTextPdfIntHashtable;
@class ComItextpdfTextPdfInternalPdfViewerPreferencesImp;
@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPageResources;
@class ComItextpdfTextPdfPdfAction;
@class ComItextpdfTextPdfPdfAnnotation;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfContentByte;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfFormField;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfLayer;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfReader;
@class ComItextpdfTextPdfPdfStamperImp_PageStamp;
@class ComItextpdfTextPdfPdfTransition;
@class ComItextpdfTextPdfRandomAccessFileOrArray;
@class ComItextpdfTextPdfStampContent;
@class ComItextpdfTextRectangle;
@class IOSIntArray;
@class JavaIoOutputStream;
@class JavaUtilArrayList;
@class JavaUtilHashMap;
@class JavaUtilHashSet;
@protocol ComItextpdfTextLogCounter;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"

@interface ComItextpdfTextPdfPdfStamperImp : ComItextpdfTextPdfPdfWriter {
 @public
  JavaUtilHashMap *readers2intrefs_;
  JavaUtilHashMap *readers2file_;
  ComItextpdfTextPdfRandomAccessFileOrArray *file_;
  ComItextpdfTextPdfPdfReader *reader_;
  ComItextpdfTextPdfIntHashtable *myXref_;
  JavaUtilHashMap *pagesToContent_;
  jboolean closed_;
  jboolean rotateContents_;
  ComItextpdfTextPdfAcroFields *acroFields_;
  jboolean flat_;
  jboolean flatFreeText_;
  IOSIntArray *namePtr_;
  JavaUtilHashSet *partialFlattening_;
  jboolean useVp_;
  ComItextpdfTextPdfInternalPdfViewerPreferencesImp *viewerPreferences_;
  JavaUtilHashSet *fieldTemplates_;
  jboolean fieldsAdded_;
  jint sigFlags_;
  jboolean append_;
  ComItextpdfTextPdfIntHashtable *marked_;
  jint initialXrefSize_;
  ComItextpdfTextPdfPdfAction *openAction_;
  id<ComItextpdfTextLogCounter> COUNTER_;
}

- (id<ComItextpdfTextLogCounter>)getCounter;

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                             withJavaIoOutputStream:(JavaIoOutputStream *)os
                                           withChar:(jchar)pdfVersion
                                        withBoolean:(jboolean)append;

- (void)readColorProfile;

- (void)setViewerPreferences;

- (void)closeWithJavaUtilMap:(id<JavaUtilMap>)moreInfo;

- (void)closeWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)info
                                                withInt:(jint)skipInfo;

- (void)applyRotationWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)pageN
                        withComItextpdfTextPdfByteBuffer:(ComItextpdfTextPdfByteBuffer *)outArg;

- (void)alterContents;

- (void)alterResourcesWithComItextpdfTextPdfPdfStamperImp_PageStamp:(ComItextpdfTextPdfPdfStamperImp_PageStamp *)ps;

- (jint)getNewObjectNumberWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                                  withInt:(jint)number
                                                  withInt:(jint)generation;

- (ComItextpdfTextPdfRandomAccessFileOrArray *)getReaderFileWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (void)registerReaderWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                          withBoolean:(jboolean)openFile;

- (void)unRegisterReaderWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

+ (void)findAllObjectsWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                      withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj
                   withComItextpdfTextPdfIntHashtable:(ComItextpdfTextPdfIntHashtable *)hits;

- (void)addCommentsWithComItextpdfTextPdfFdfReader:(ComItextpdfTextPdfFdfReader *)fdf;

- (ComItextpdfTextPdfPdfStamperImp_PageStamp *)getPageStampWithInt:(jint)pageNum;

- (ComItextpdfTextPdfPdfContentByte *)getUnderContentWithInt:(jint)pageNum;

- (ComItextpdfTextPdfPdfContentByte *)getOverContentWithInt:(jint)pageNum;

- (void)correctAcroFieldPagesWithInt:(jint)page;

+ (void)moveRectangleWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dic2
                         withComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)r
                                                 withInt:(jint)pageImported
                           withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                                            withNSString:(NSString *)name;

- (void)replacePageWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)r
                                           withInt:(jint)pageImported
                                           withInt:(jint)pageReplaced;

- (void)insertPageWithInt:(jint)pageNumber
withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)mediabox;

- (jboolean)isRotateContents;

- (void)setRotateContentsWithBoolean:(jboolean)rotateContents;

- (jboolean)isContentWritten;

- (ComItextpdfTextPdfAcroFields *)getAcroFields;

- (void)setFormFlatteningWithBoolean:(jboolean)flat;

- (void)setFreeTextFlatteningWithBoolean:(jboolean)flat;

- (jboolean)partialFormFlatteningWithNSString:(NSString *)name;

- (void)flatFields;

- (void)eliminateAcroformObjects;

- (void)sweepKidsWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (void)flatFreeTextFields;

- (ComItextpdfTextPdfPdfIndirectReference *)getPageReferenceWithInt:(jint)page;

- (void)addAnnotationWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)annot;

- (void)addDocumentFieldWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref;

- (void)addFieldResources;

- (void)expandFieldsWithComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)field
                                 withJavaUtilArrayList:(JavaUtilArrayList *)allAnnots;

- (void)addAnnotationWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)annot
                     withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)pageN;

- (void)addAnnotationWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)annot
                                                 withInt:(jint)page;

- (void)outlineTravelWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)outline;

- (void)deleteOutlines;

- (void)setJavaScript;

- (void)addFileAttachments;

- (void)makePackageWithComItextpdfTextPdfCollectionPdfCollection:(ComItextpdfTextPdfCollectionPdfCollection *)collection;

- (void)setOutlines;

- (void)setViewerPreferencesWithInt:(jint)preferences;

- (void)addViewerPreferenceWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                         withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value;

- (void)setSigFlagsWithInt:(jint)f;

- (void)setPageActionWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)actionType
                   withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action;

- (void)setPageActionWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)actionType
                   withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action
                                           withInt:(jint)page;

- (void)setDurationWithInt:(jint)seconds;

- (void)setTransitionWithComItextpdfTextPdfPdfTransition:(ComItextpdfTextPdfPdfTransition *)transition;

- (void)setDurationWithInt:(jint)seconds
                   withInt:(jint)page;

- (void)setTransitionWithComItextpdfTextPdfPdfTransition:(ComItextpdfTextPdfPdfTransition *)transition
                                                 withInt:(jint)page;

- (void)markUsedWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (void)markUsedWithInt:(jint)num;

- (jboolean)isAppend;

- (void)setAdditionalActionWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)actionType
                         withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action;

- (void)setOpenActionWithComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action;

- (void)setOpenActionWithNSString:(NSString *)name;

- (void)setThumbnailWithComItextpdfTextImage:(ComItextpdfTextImage *)image;

- (void)setThumbnailWithComItextpdfTextImage:(ComItextpdfTextImage *)image
                                     withInt:(jint)page;

- (ComItextpdfTextPdfPdfContentByte *)getDirectContentUnder;

- (ComItextpdfTextPdfPdfContentByte *)getDirectContent;

- (void)readOCProperties;

- (void)addOrderWithComItextpdfTextPdfPdfLayer:(ComItextpdfTextPdfPdfLayer *)parent
                withComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)arr
                               withJavaUtilMap:(id<JavaUtilMap>)ocgmap;

- (id<JavaUtilMap>)getPdfLayers;

- (void)createXmpMetadata;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfStamperImp *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfStamperImp_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, readers2intrefs_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, readers2file_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, file_, ComItextpdfTextPdfRandomAccessFileOrArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, reader_, ComItextpdfTextPdfPdfReader *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, myXref_, ComItextpdfTextPdfIntHashtable *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, pagesToContent_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, acroFields_, ComItextpdfTextPdfAcroFields *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, namePtr_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, partialFlattening_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, viewerPreferences_, ComItextpdfTextPdfInternalPdfViewerPreferencesImp *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, fieldTemplates_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, marked_, ComItextpdfTextPdfIntHashtable *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, openAction_, ComItextpdfTextPdfPdfAction *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp, COUNTER_, id<ComItextpdfTextLogCounter>)

@interface ComItextpdfTextPdfPdfStamperImp_PageStamp : NSObject {
 @public
  ComItextpdfTextPdfPdfDictionary *pageN_;
  ComItextpdfTextPdfStampContent *under_;
  ComItextpdfTextPdfStampContent *over_;
  ComItextpdfTextPdfPageResources *pageResources_;
  jint replacePoint_;
}

- (instancetype)initWithComItextpdfTextPdfPdfStamperImp:(ComItextpdfTextPdfPdfStamperImp *)stamper
                        withComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                    withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)pageN;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfStamperImp_PageStamp *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfStamperImp_PageStamp_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp_PageStamp, pageN_, ComItextpdfTextPdfPdfDictionary *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp_PageStamp, under_, ComItextpdfTextPdfStampContent *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp_PageStamp, over_, ComItextpdfTextPdfStampContent *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfStamperImp_PageStamp, pageResources_, ComItextpdfTextPdfPageResources *)

#endif // _ComItextpdfTextPdfPdfStamperImp_H_