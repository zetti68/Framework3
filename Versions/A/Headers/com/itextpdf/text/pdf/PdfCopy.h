//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfCopy.java
//

#ifndef _ComItextpdfTextPdfPdfCopy_H_
#define _ComItextpdfTextPdfPdfCopy_H_

@class ComItextpdfTextDocument;
@class ComItextpdfTextPdfAcroFields_Item;
@class ComItextpdfTextPdfByteBuffer;
@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPRStream;
@class ComItextpdfTextPdfPageResources;
@class ComItextpdfTextPdfPdfAnnotation;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfContents;
@class ComItextpdfTextPdfPdfCopy_ImportedPage;
@class ComItextpdfTextPdfPdfCopy_PageStamp;
@class ComItextpdfTextPdfPdfCopy_StampContent;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfFormField;
@class ComItextpdfTextPdfPdfImportedPage;
@class ComItextpdfTextPdfPdfIndirectObject;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfNumber;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfOutline;
@class ComItextpdfTextPdfPdfPage;
@class ComItextpdfTextPdfPdfReader;
@class ComItextpdfTextPdfPdfStream;
@class ComItextpdfTextPdfPdfStructTreeController;
@class ComItextpdfTextRectangle;
@class IOSIntArray;
@class JavaIoOutputStream;
@class JavaLangInteger;
@class JavaUtilArrayList;
@class JavaUtilHashMap;
@class JavaUtilHashSet;
@protocol ComItextpdfTextLogCounter;
@protocol ComItextpdfTextPdfPdfPageEvent;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"

@interface ComItextpdfTextPdfPdfCopy : ComItextpdfTextPdfPdfWriter {
 @public
  JavaUtilHashMap *indirects_;
  JavaUtilHashMap *indirectMap_;
  JavaUtilHashMap *parentObjects_;
  JavaUtilHashSet *disableIndirects_;
  ComItextpdfTextPdfPdfReader *reader_;
  IOSIntArray *namePtr_;
  jboolean rotateContents_;
  ComItextpdfTextPdfPdfArray *fieldArray_;
  JavaUtilHashSet *fieldTemplates_;
  ComItextpdfTextPdfPdfStructTreeController *structTreeController_;
  jint currentStructArrayNumber_;
  ComItextpdfTextPdfPRIndirectReference *structTreeRootReference_;
  JavaUtilHashMap *indirectObjects_;
  JavaUtilArrayList *savedObjects_;
  JavaUtilArrayList *importedPages_;
  jboolean updateRootKids_;
  jboolean mergeFields__;
  jboolean needAppearances_;
  jboolean hasSignature_;
  ComItextpdfTextPdfPdfIndirectReference *acroForm_;
  JavaUtilHashMap *tabOrder_;
  JavaUtilArrayList *calculationOrderRefs_;
  ComItextpdfTextPdfPdfDictionary *resources_;
  JavaUtilArrayList *fields_;
  JavaUtilArrayList *calculationOrder_;
  JavaUtilHashMap *fieldTree_;
  JavaUtilHashMap *unmergedMap_;
  JavaUtilHashSet *unmergedSet_;
  JavaUtilHashMap *mergedMap_;
  JavaUtilHashSet *mergedSet_;
  jboolean mergeFieldsInternalCall_;
  JavaUtilHashSet *mergedRadioButtons_;
  JavaUtilHashMap *mergedTextFields_;
}

- (id<ComItextpdfTextLogCounter>)getCounter;

- (instancetype)initWithComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                         withJavaIoOutputStream:(JavaIoOutputStream *)os;

- (void)setPageEventWithComItextpdfTextPdfPdfPageEvent:(id<ComItextpdfTextPdfPdfPageEvent>)event;

- (jboolean)isRotateContents;

- (void)setRotateContentsWithBoolean:(jboolean)rotateContents;

- (void)setMergeFields;

- (ComItextpdfTextPdfPdfImportedPage *)getImportedPageWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                                                              withInt:(jint)pageNumber;

- (ComItextpdfTextPdfPdfImportedPage *)getImportedPageWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                                                              withInt:(jint)pageNumber
                                                                          withBoolean:(jboolean)keepTaggedPdfStructure;

- (void)clearIndirectsWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (jint)checkStructureTreeRootKidsWithComItextpdfTextPdfPdfCopy_ImportedPage:(ComItextpdfTextPdfPdfCopy_ImportedPage *)newPage;

- (void)fixStructureTreeRootWithJavaUtilHashSet:(JavaUtilHashSet *)activeKeys
                            withJavaUtilHashSet:(JavaUtilHashSet *)activeClassMaps;

- (ComItextpdfTextPdfPdfImportedPage *)getImportedPageImplWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                                                                  withInt:(jint)pageNumber;

- (ComItextpdfTextPdfPdfIndirectReference *)copyIndirectWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)inArg
                                                                                      withBoolean:(jboolean)keepStructure
                                                                                      withBoolean:(jboolean)directRootKids OBJC_METHOD_FAMILY_NONE;

- (ComItextpdfTextPdfPdfIndirectReference *)copyIndirectWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)inArg OBJC_METHOD_FAMILY_NONE;

- (ComItextpdfTextPdfPdfDictionary *)copyDictionaryWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)inArg
                                                                           withBoolean:(jboolean)keepStruct
                                                                           withBoolean:(jboolean)directRootKids OBJC_METHOD_FAMILY_NONE;

- (ComItextpdfTextPdfPdfDictionary *)copyDictionaryWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)inArg OBJC_METHOD_FAMILY_NONE;

- (ComItextpdfTextPdfPdfStream *)copyStreamWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)inArg OBJC_METHOD_FAMILY_NONE;

- (ComItextpdfTextPdfPdfArray *)copyArrayWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)inArg
                                                            withBoolean:(jboolean)keepStruct
                                                            withBoolean:(jboolean)directRootKids OBJC_METHOD_FAMILY_NONE;

- (ComItextpdfTextPdfPdfArray *)copyArrayWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)inArg OBJC_METHOD_FAMILY_NONE;

- (ComItextpdfTextPdfPdfObject *)copyObjectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)inArg
                                                               withBoolean:(jboolean)keepStruct
                                                               withBoolean:(jboolean)directRootKids OBJC_METHOD_FAMILY_NONE;

- (ComItextpdfTextPdfPdfObject *)copyObjectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)inArg OBJC_METHOD_FAMILY_NONE;

- (jint)setFromIPageWithComItextpdfTextPdfPdfImportedPage:(ComItextpdfTextPdfPdfImportedPage *)iPage;

- (void)setFromReaderWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (void)addPageWithComItextpdfTextPdfPdfImportedPage:(ComItextpdfTextPdfPdfImportedPage *)iPage;

- (void)addPageWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                    withInt:(jint)rotation;

- (void)addDocumentWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                  withJavaUtilList:(id<JavaUtilList>)pagesToKeep;

- (void)addDocumentWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (ComItextpdfTextPdfPdfIndirectObject *)addToBodyWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object
                                       withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref;

- (ComItextpdfTextPdfPdfIndirectObject *)addToBodyWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object
                                       withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                                                                      withBoolean:(jboolean)formBranching;

- (ComItextpdfTextPdfPdfIndirectObject *)addToBodyWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (void)flushTaggedObjects;

- (void)flushAcroFields;

- (void)fixTaggedStructure;

- (void)removeInactiveReferencesWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)array
                                           withJavaUtilHashSet:(JavaUtilHashSet *)activeKeys;

- (jboolean)containsInactivePgWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dict
                                              withJavaUtilHashSet:(JavaUtilHashSet *)activeKeys;

- (JavaUtilArrayList *)findActiveParentsWithJavaUtilHashSet:(JavaUtilHashSet *)activeKeys;

- (void)fixPgKeyWithJavaUtilArrayList:(JavaUtilArrayList *)newRefs
                  withJavaUtilHashSet:(JavaUtilHashSet *)activeKeys;

- (void)findActivesWithJavaUtilArrayList:(JavaUtilArrayList *)actives
                     withJavaUtilHashSet:(JavaUtilHashSet *)activeKeys
                     withJavaUtilHashSet:(JavaUtilHashSet *)activeClassMaps;

- (void)findActivesFromReferenceWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)iref
                                                     withJavaUtilArrayList:(JavaUtilArrayList *)actives
                                                       withJavaUtilHashSet:(JavaUtilHashSet *)activeKeys;

- (void)findActivesFromArrayWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)array
                                     withJavaUtilArrayList:(JavaUtilArrayList *)actives
                                       withJavaUtilHashSet:(JavaUtilHashSet *)activeKeys
                                       withJavaUtilHashSet:(JavaUtilHashSet *)activeClassMaps;

- (void)findActivesFromDictWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dict
                                         withJavaUtilArrayList:(JavaUtilArrayList *)actives
                                           withJavaUtilHashSet:(JavaUtilHashSet *)activeKeys
                                           withJavaUtilHashSet:(JavaUtilHashSet *)activeClassMaps;

- (void)flushIndirectObjects;

- (void)writeObjectToBodyWithComItextpdfTextPdfPdfIndirectObject:(ComItextpdfTextPdfPdfIndirectObject *)object;

- (void)updateAnnotationReferencesWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (void)updateCalculationOrderWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

+ (NSString *)getCONameWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
             withComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)ref;

- (void)mergeFields;

- (void)addPageOffsetToFieldWithJavaUtilMap:(id<JavaUtilMap>)fd
                                    withInt:(jint)pageOffset;

- (void)mergeWithMasterWithJavaUtilMap:(id<JavaUtilMap>)fd;

- (void)mergeFieldWithNSString:(NSString *)name
withComItextpdfTextPdfAcroFields_Item:(ComItextpdfTextPdfAcroFields_Item *)item;

- (void)createWidgetsWithJavaUtilArrayList:(JavaUtilArrayList *)list
     withComItextpdfTextPdfAcroFields_Item:(ComItextpdfTextPdfAcroFields_Item *)item;

- (ComItextpdfTextPdfPdfObject *)propagateWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (void)createAcroForms;

- (void)updateReferencesWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (ComItextpdfTextPdfPdfArray *)branchFormWithJavaUtilHashMap:(JavaUtilHashMap *)level
                   withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)parent
                                                 withNSString:(NSString *)fname;

- (void)adjustTabOrderWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)annots
          withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ind
                     withComItextpdfTextPdfPdfNumber:(ComItextpdfTextPdfPdfNumber *)nn;

- (ComItextpdfTextPdfPdfDictionary *)getCatalogWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)rootObj;

- (jboolean)isStructTreeRootReferenceWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)prRef;

- (void)addFieldResourcesWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)catalog;

- (void)close;

- (ComItextpdfTextPdfPdfIndirectReference *)addWithComItextpdfTextPdfPdfOutline:(ComItextpdfTextPdfPdfOutline *)outline;

- (void)addAnnotationWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)annot;

- (ComItextpdfTextPdfPdfIndirectReference *)addWithComItextpdfTextPdfPdfPage:(ComItextpdfTextPdfPdfPage *)page
                                           withComItextpdfTextPdfPdfContents:(ComItextpdfTextPdfPdfContents *)contents;

- (void)freeReaderWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (ComItextpdfTextPdfPdfName *)getOffStateNameWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)widget;

+ (JavaLangInteger *)getFlagsWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)field;

+ (jboolean)isCheckButtonWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)field;

+ (jboolean)isRadioButtonWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)field;

+ (jboolean)isTextFieldWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)field;

- (ComItextpdfTextPdfPdfCopy_PageStamp *)createPageStampWithComItextpdfTextPdfPdfImportedPage:(ComItextpdfTextPdfPdfImportedPage *)iPage;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfCopy *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfPdfCopy_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfPdfCopy)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, indirects_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, indirectMap_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, parentObjects_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, disableIndirects_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, reader_, ComItextpdfTextPdfPdfReader *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, namePtr_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, fieldArray_, ComItextpdfTextPdfPdfArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, fieldTemplates_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, structTreeController_, ComItextpdfTextPdfPdfStructTreeController *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, structTreeRootReference_, ComItextpdfTextPdfPRIndirectReference *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, indirectObjects_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, savedObjects_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, importedPages_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, acroForm_, ComItextpdfTextPdfPdfIndirectReference *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, tabOrder_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, calculationOrderRefs_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, resources_, ComItextpdfTextPdfPdfDictionary *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, fields_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, calculationOrder_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, fieldTree_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, unmergedMap_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, unmergedSet_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, mergedMap_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, mergedSet_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, mergedRadioButtons_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, mergedTextFields_, JavaUtilHashMap *)

FOUNDATION_EXPORT id<ComItextpdfTextLogCounter> ComItextpdfTextPdfPdfCopy_COUNTER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfCopy, COUNTER_, id<ComItextpdfTextLogCounter>)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, COUNTER_, id<ComItextpdfTextLogCounter>)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfCopy_annotId_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfCopy, annotId_, ComItextpdfTextPdfPdfName *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy, annotId_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT jint ComItextpdfTextPdfPdfCopy_annotIdCnt_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfCopy, annotIdCnt_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(ComItextpdfTextPdfPdfCopy, annotIdCnt_, jint)

FOUNDATION_EXPORT ComItextpdfTextPdfPdfName *ComItextpdfTextPdfPdfCopy_iTextTag_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfCopy, iTextTag_, ComItextpdfTextPdfPdfName *)

FOUNDATION_EXPORT JavaLangInteger *ComItextpdfTextPdfPdfCopy_zero_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfCopy, zero_, JavaLangInteger *)

FOUNDATION_EXPORT JavaUtilHashSet *ComItextpdfTextPdfPdfCopy_widgetKeys_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfCopy, widgetKeys_, JavaUtilHashSet *)

FOUNDATION_EXPORT JavaUtilHashSet *ComItextpdfTextPdfPdfCopy_fieldKeys_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfCopy, fieldKeys_, JavaUtilHashSet *)

@interface ComItextpdfTextPdfPdfCopy_IndirectReferences : NSObject {
 @public
  ComItextpdfTextPdfPdfIndirectReference *theRef_;
  jboolean hasCopied_;
}

- (instancetype)initWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref;

- (void)setCopied;

- (void)setNotCopied;

- (jboolean)getCopied;

- (ComItextpdfTextPdfPdfIndirectReference *)getRef;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfCopy_IndirectReferences *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfCopy_IndirectReferences_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_IndirectReferences, theRef_, ComItextpdfTextPdfPdfIndirectReference *)

@interface ComItextpdfTextPdfPdfCopy_ImportedPage : NSObject {
 @public
  jint pageNumber_;
  ComItextpdfTextPdfPdfReader *reader_;
  ComItextpdfTextPdfPdfArray *mergedFields_;
}

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                                            withInt:(jint)pageNumber
                                        withBoolean:(jboolean)keepFields;

- (jboolean)isEqual:(id)o;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfCopy_ImportedPage *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfCopy_ImportedPage_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_ImportedPage, reader_, ComItextpdfTextPdfPdfReader *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_ImportedPage, mergedFields_, ComItextpdfTextPdfPdfArray *)

@interface ComItextpdfTextPdfPdfCopy_PageStamp : NSObject {
 @public
  ComItextpdfTextPdfPdfDictionary *pageN_;
  ComItextpdfTextPdfPdfCopy_StampContent *under_;
  ComItextpdfTextPdfPdfCopy_StampContent *over_;
  ComItextpdfTextPdfPageResources *pageResources_;
  ComItextpdfTextPdfPdfReader *reader_;
  ComItextpdfTextPdfPdfCopy *cstp_;
}

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
                withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)pageN
                      withComItextpdfTextPdfPdfCopy:(ComItextpdfTextPdfPdfCopy *)cstp;

- (ComItextpdfTextPdfPdfContentByte *)getUnderContent;

- (ComItextpdfTextPdfPdfContentByte *)getOverContent;

- (void)alterContents;

- (void)applyRotationWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)pageN
                        withComItextpdfTextPdfByteBuffer:(ComItextpdfTextPdfByteBuffer *)outArg;

- (void)addDocumentFieldWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref;

- (void)expandFieldsWithComItextpdfTextPdfPdfFormField:(ComItextpdfTextPdfPdfFormField *)field
                                 withJavaUtilArrayList:(JavaUtilArrayList *)allAnnots;

- (void)addAnnotationWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)annot;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfCopy_PageStamp *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfCopy_PageStamp_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_PageStamp, pageN_, ComItextpdfTextPdfPdfDictionary *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_PageStamp, under_, ComItextpdfTextPdfPdfCopy_StampContent *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_PageStamp, over_, ComItextpdfTextPdfPdfCopy_StampContent *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_PageStamp, pageResources_, ComItextpdfTextPdfPageResources *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_PageStamp, reader_, ComItextpdfTextPdfPdfReader *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_PageStamp, cstp_, ComItextpdfTextPdfPdfCopy *)

@interface ComItextpdfTextPdfPdfCopy_StampContent : ComItextpdfTextPdfPdfContentByte {
 @public
  ComItextpdfTextPdfPageResources *pageResources_;
}

- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                withComItextpdfTextPdfPageResources:(ComItextpdfTextPdfPageResources *)pageResources;

- (ComItextpdfTextPdfPdfContentByte *)getDuplicate;

- (ComItextpdfTextPdfPageResources *)getPageResources;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfCopy_StampContent *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfCopy_StampContent_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfCopy_StampContent, pageResources_, ComItextpdfTextPdfPageResources *)

#endif // _ComItextpdfTextPdfPdfCopy_H_
