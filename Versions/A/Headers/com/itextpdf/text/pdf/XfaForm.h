//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/XfaForm.java
//

#ifndef _ComItextpdfTextPdfXfaForm_H_
#define _ComItextpdfTextPdfXfaForm_H_

@class ComItextpdfTextPdfAcroFields;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfReader;
@class ComItextpdfTextPdfPdfWriter;
@class ComItextpdfTextPdfXfaForm_AcroFieldsSearch;
@class ComItextpdfTextPdfXfaForm_Xml2SomDatasets;
@class ComItextpdfTextPdfXfaForm_Xml2SomTemplate;
@class IOSByteArray;
@class JavaIoFile;
@class JavaIoInputStream;
@class JavaUtilHashMap;
@class OrgXmlSaxInputSource;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol OrgW3cDomDocument;
@protocol OrgW3cDomNode;

#import "JreEmulation.h"
#include "java/util/ArrayList.h"

@interface ComItextpdfTextPdfXfaForm : NSObject {
 @public
  ComItextpdfTextPdfXfaForm_Xml2SomTemplate *templateSom_;
  id<OrgW3cDomNode> templateNode_;
  ComItextpdfTextPdfXfaForm_Xml2SomDatasets *datasetsSom_;
  id<OrgW3cDomNode> datasetsNode_;
  ComItextpdfTextPdfXfaForm_AcroFieldsSearch *acroFieldsSom_;
  ComItextpdfTextPdfPdfReader *reader_;
  jboolean xfaPresent_;
  id<OrgW3cDomDocument> domDocument_;
  jboolean changed_;
}

- (instancetype)init;

+ (ComItextpdfTextPdfPdfObject *)getXfaObjectWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (void)extractNodes;

+ (id<JavaUtilMap>)extractXFANodesWithOrgW3cDomDocument:(id<OrgW3cDomDocument>)domDocument;

- (void)createDatasetsNodeWithOrgW3cDomNode:(id<OrgW3cDomNode>)n;

+ (void)setXfaWithComItextpdfTextPdfXfaForm:(ComItextpdfTextPdfXfaForm *)form
            withComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader
            withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)setXfaWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

+ (IOSByteArray *)serializeDocWithOrgW3cDomNode:(id<OrgW3cDomNode>)n;

- (jboolean)isXfaPresent;

- (id<OrgW3cDomDocument>)getDomDocument;

- (NSString *)findFieldNameWithNSString:(NSString *)name
       withComItextpdfTextPdfAcroFields:(ComItextpdfTextPdfAcroFields *)af;

- (NSString *)findDatasetsNameWithNSString:(NSString *)name;

- (id<OrgW3cDomNode>)findDatasetsNodeWithNSString:(NSString *)name;

+ (NSString *)getNodeTextWithOrgW3cDomNode:(id<OrgW3cDomNode>)n;

+ (NSString *)getNodeTextWithOrgW3cDomNode:(id<OrgW3cDomNode>)n
                              withNSString:(NSString *)name;

- (void)setNodeTextWithOrgW3cDomNode:(id<OrgW3cDomNode>)n
                        withNSString:(NSString *)text;

- (void)setXfaPresentWithBoolean:(jboolean)xfaPresent;

- (void)setDomDocumentWithOrgW3cDomDocument:(id<OrgW3cDomDocument>)domDocument;

- (ComItextpdfTextPdfPdfReader *)getReader;

- (void)setReaderWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (jboolean)isChanged;

- (void)setChangedWithBoolean:(jboolean)changed;

- (ComItextpdfTextPdfXfaForm_Xml2SomTemplate *)getTemplateSom;

- (void)setTemplateSomWithComItextpdfTextPdfXfaForm_Xml2SomTemplate:(ComItextpdfTextPdfXfaForm_Xml2SomTemplate *)templateSom;

- (ComItextpdfTextPdfXfaForm_Xml2SomDatasets *)getDatasetsSom;

- (void)setDatasetsSomWithComItextpdfTextPdfXfaForm_Xml2SomDatasets:(ComItextpdfTextPdfXfaForm_Xml2SomDatasets *)datasetsSom;

- (ComItextpdfTextPdfXfaForm_AcroFieldsSearch *)getAcroFieldsSom;

- (void)setAcroFieldsSomWithComItextpdfTextPdfXfaForm_AcroFieldsSearch:(ComItextpdfTextPdfXfaForm_AcroFieldsSearch *)acroFieldsSom;

- (id<OrgW3cDomNode>)getDatasetsNode;

- (void)fillXfaFormWithJavaIoFile:(JavaIoFile *)file;

- (void)fillXfaFormWithJavaIoFile:(JavaIoFile *)file
                      withBoolean:(jboolean)readOnly;

- (void)fillXfaFormWithJavaIoInputStream:(JavaIoInputStream *)is;

- (void)fillXfaFormWithJavaIoInputStream:(JavaIoInputStream *)is
                             withBoolean:(jboolean)readOnly;

- (void)fillXfaFormWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)is;

- (void)fillXfaFormWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)is
                                withBoolean:(jboolean)readOnly;

- (void)fillXfaFormWithOrgW3cDomNode:(id<OrgW3cDomNode>)node;

- (void)fillXfaFormWithOrgW3cDomNode:(id<OrgW3cDomNode>)node
                         withBoolean:(jboolean)readOnly;

- (id<OrgW3cDomNode>)getFirstElementNodeWithOrgW3cDomNode:(id<OrgW3cDomNode>)src;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfXfaForm *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfXfaForm_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm, templateSom_, ComItextpdfTextPdfXfaForm_Xml2SomTemplate *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm, templateNode_, id<OrgW3cDomNode>)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm, datasetsSom_, ComItextpdfTextPdfXfaForm_Xml2SomDatasets *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm, datasetsNode_, id<OrgW3cDomNode>)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm, acroFieldsSom_, ComItextpdfTextPdfXfaForm_AcroFieldsSearch *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm, reader_, ComItextpdfTextPdfPdfReader *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm, domDocument_, id<OrgW3cDomDocument>)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfXfaForm_XFA_DATA_SCHEMA_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaForm, XFA_DATA_SCHEMA_, NSString *)

@interface ComItextpdfTextPdfXfaForm_InverseStore : NSObject {
 @public
  JavaUtilArrayList *part_;
  JavaUtilArrayList *follow_;
}

- (NSString *)getDefaultName;

- (jboolean)isSimilarWithNSString:(NSString *)name;

- (instancetype)init;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfXfaForm_InverseStore *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfXfaForm_InverseStore_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm_InverseStore, part_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm_InverseStore, follow_, JavaUtilArrayList *)

#define ComItextpdfTextPdfXfaForm_Stack2_serialVersionUID -7451476576174095212LL

@interface ComItextpdfTextPdfXfaForm_Stack2 : JavaUtilArrayList {
}

- (id)peek;

- (id)pop;

- (id)pushWithId:(id)item;

- (jboolean)empty;

- (instancetype)init;


@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfXfaForm_Stack2_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaForm_Stack2, serialVersionUID, jlong)

@interface ComItextpdfTextPdfXfaForm_Xml2Som : NSObject {
 @public
  JavaUtilArrayList *order_;
  JavaUtilHashMap *name2Node_;
  JavaUtilHashMap *inverseSearch_;
  ComItextpdfTextPdfXfaForm_Stack2 *stack_;
  jint anform_;
}

+ (NSString *)escapeSomWithNSString:(NSString *)s;

+ (NSString *)unescapeSomWithNSString:(NSString *)s;

- (NSString *)printStack;

+ (NSString *)getShortNameWithNSString:(NSString *)s;

- (void)inverseSearchAddWithNSString:(NSString *)unstack;

+ (void)inverseSearchAddWithJavaUtilHashMap:(JavaUtilHashMap *)inverseSearch
       withComItextpdfTextPdfXfaForm_Stack2:(ComItextpdfTextPdfXfaForm_Stack2 *)stack
                               withNSString:(NSString *)unstack;

- (NSString *)inverseSearchGlobalWithJavaUtilArrayList:(JavaUtilArrayList *)parts;

+ (ComItextpdfTextPdfXfaForm_Stack2 *)splitPartsWithNSString:(NSString *)name;

- (JavaUtilArrayList *)getOrder;

- (void)setOrderWithJavaUtilArrayList:(JavaUtilArrayList *)order;

- (JavaUtilHashMap *)getName2Node;

- (void)setName2NodeWithJavaUtilHashMap:(JavaUtilHashMap *)name2Node;

- (JavaUtilHashMap *)getInverseSearch;

- (void)setInverseSearchWithJavaUtilHashMap:(JavaUtilHashMap *)inverseSearch;

- (instancetype)init;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfXfaForm_Xml2Som *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfXfaForm_Xml2Som_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm_Xml2Som, order_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm_Xml2Som, name2Node_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm_Xml2Som, inverseSearch_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm_Xml2Som, stack_, ComItextpdfTextPdfXfaForm_Stack2 *)

@interface ComItextpdfTextPdfXfaForm_Xml2SomDatasets : ComItextpdfTextPdfXfaForm_Xml2Som {
}

- (instancetype)initWithOrgW3cDomNode:(id<OrgW3cDomNode>)n;

- (id<OrgW3cDomNode>)insertNodeWithOrgW3cDomNode:(id<OrgW3cDomNode>)n
                                    withNSString:(NSString *)shortName;

+ (jboolean)hasChildrenWithOrgW3cDomNode:(id<OrgW3cDomNode>)n;

- (void)processDatasetsInternalWithOrgW3cDomNode:(id<OrgW3cDomNode>)n;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfXfaForm_Xml2SomDatasets_init() {}

@interface ComItextpdfTextPdfXfaForm_AcroFieldsSearch : ComItextpdfTextPdfXfaForm_Xml2Som {
 @public
  JavaUtilHashMap *acroShort2LongName_;
}

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)items;

- (JavaUtilHashMap *)getAcroShort2LongName;

- (void)setAcroShort2LongNameWithJavaUtilHashMap:(JavaUtilHashMap *)acroShort2LongName;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfXfaForm_AcroFieldsSearch *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfXfaForm_AcroFieldsSearch_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaForm_AcroFieldsSearch, acroShort2LongName_, JavaUtilHashMap *)

@interface ComItextpdfTextPdfXfaForm_Xml2SomTemplate : ComItextpdfTextPdfXfaForm_Xml2Som {
 @public
  jboolean dynamicForm_;
  jint templateLevel_;
}

- (instancetype)initWithOrgW3cDomNode:(id<OrgW3cDomNode>)n;

- (NSString *)getFieldTypeWithNSString:(NSString *)s;

- (void)processTemplateWithOrgW3cDomNode:(id<OrgW3cDomNode>)n
                     withJavaUtilHashMap:(JavaUtilHashMap *)ff;

- (jboolean)isDynamicForm;

- (void)setDynamicFormWithBoolean:(jboolean)dynamicForm;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfXfaForm_Xml2SomTemplate *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfXfaForm_Xml2SomTemplate_init() {}

#endif // _ComItextpdfTextPdfXfaForm_H_
