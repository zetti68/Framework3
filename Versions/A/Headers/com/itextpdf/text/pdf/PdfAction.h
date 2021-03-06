//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfAction.java
//

#ifndef _ComItextpdfTextPdfPdfAction_H_
#define _ComItextpdfTextPdfPdfAction_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"

@class ComItextpdfTextPdfCollectionPdfTargetDictionary;
@class ComItextpdfTextPdfPdfAnnotation;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfDestination;
@class ComItextpdfTextPdfPdfFileSpecification;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfWriter;
@class IOSObjectArray;
@class JavaIoOutputStream;
@class JavaNetURL;
@class JavaUtilArrayList;

#define ComItextpdfTextPdfPdfAction_FIRSTPAGE 1
#define ComItextpdfTextPdfPdfAction_PREVPAGE 2
#define ComItextpdfTextPdfPdfAction_NEXTPAGE 3
#define ComItextpdfTextPdfPdfAction_LASTPAGE 4
#define ComItextpdfTextPdfPdfAction_PRINTDIALOG 5
#define ComItextpdfTextPdfPdfAction_SUBMIT_EXCLUDE 1
#define ComItextpdfTextPdfPdfAction_SUBMIT_INCLUDE_NO_VALUE_FIELDS 2
#define ComItextpdfTextPdfPdfAction_SUBMIT_HTML_FORMAT 4
#define ComItextpdfTextPdfPdfAction_SUBMIT_HTML_GET 8
#define ComItextpdfTextPdfPdfAction_SUBMIT_COORDINATES 16
#define ComItextpdfTextPdfPdfAction_SUBMIT_XFDF 32
#define ComItextpdfTextPdfPdfAction_SUBMIT_INCLUDE_APPEND_SAVES 64
#define ComItextpdfTextPdfPdfAction_SUBMIT_INCLUDE_ANNOTATIONS 128
#define ComItextpdfTextPdfPdfAction_SUBMIT_PDF 256
#define ComItextpdfTextPdfPdfAction_SUBMIT_CANONICAL_FORMAT 512
#define ComItextpdfTextPdfPdfAction_SUBMIT_EXCL_NON_USER_ANNOTS 1024
#define ComItextpdfTextPdfPdfAction_SUBMIT_EXCL_F_KEY 2048
#define ComItextpdfTextPdfPdfAction_SUBMIT_EMBED_FORM 8196
#define ComItextpdfTextPdfPdfAction_RESET_EXCLUDE 1

@interface ComItextpdfTextPdfPdfAction : ComItextpdfTextPdfPdfDictionary

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)named;

- (instancetype)initWithNSString:(NSString *)url;

- (instancetype)initWithNSString:(NSString *)url
                     withBoolean:(jboolean)isMap;

- (instancetype)initWithNSString:(NSString *)filename
                         withInt:(jint)page;

- (instancetype)initWithNSString:(NSString *)filename
                    withNSString:(NSString *)name;

- (instancetype)initWithNSString:(NSString *)application
                    withNSString:(NSString *)parameters
                    withNSString:(NSString *)operation
                    withNSString:(NSString *)defaultDir;

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url;

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url
                       withBoolean:(jboolean)isMap;

+ (ComItextpdfTextPdfPdfAction *)createHideWithNSObjectArray:(IOSObjectArray *)names
                                                 withBoolean:(jboolean)hide;

+ (ComItextpdfTextPdfPdfAction *)createHideWithComItextpdfTextPdfPdfAnnotation:(ComItextpdfTextPdfPdfAnnotation *)annot
                                                                   withBoolean:(jboolean)hide;

+ (ComItextpdfTextPdfPdfAction *)createHideWithNSString:(NSString *)name
                                            withBoolean:(jboolean)hide;

+ (ComItextpdfTextPdfPdfAction *)createImportDataWithNSString:(NSString *)file;

+ (ComItextpdfTextPdfPdfAction *)createLaunchWithNSString:(NSString *)application
                                             withNSString:(NSString *)parameters
                                             withNSString:(NSString *)operation
                                             withNSString:(NSString *)defaultDir;

+ (ComItextpdfTextPdfPdfAction *)createResetFormWithNSObjectArray:(IOSObjectArray *)names
                                                          withInt:(jint)flags;

+ (ComItextpdfTextPdfPdfAction *)createSubmitFormWithNSString:(NSString *)file
                                            withNSObjectArray:(IOSObjectArray *)names
                                                      withInt:(jint)flags;

+ (ComItextpdfTextPdfPdfAction *)gotoEmbeddedWithNSString:(NSString *)filename
      withComItextpdfTextPdfCollectionPdfTargetDictionary:(ComItextpdfTextPdfCollectionPdfTargetDictionary *)target
                          withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)dest
                                              withBoolean:(jboolean)newWindow;

+ (ComItextpdfTextPdfPdfAction *)gotoEmbeddedWithNSString:(NSString *)filename
      withComItextpdfTextPdfCollectionPdfTargetDictionary:(ComItextpdfTextPdfCollectionPdfTargetDictionary *)target
                                             withNSString:(NSString *)dest
                                              withBoolean:(jboolean)isName
                                              withBoolean:(jboolean)newWindow;

+ (ComItextpdfTextPdfPdfAction *)gotoLocalPageWithInt:(jint)page
                 withComItextpdfTextPdfPdfDestination:(ComItextpdfTextPdfPdfDestination *)dest
                      withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

+ (ComItextpdfTextPdfPdfAction *)gotoLocalPageWithNSString:(NSString *)dest
                                               withBoolean:(jboolean)isName;

+ (ComItextpdfTextPdfPdfAction *)gotoRemotePageWithNSString:(NSString *)filename
                                               withNSString:(NSString *)dest
                                                withBoolean:(jboolean)isName
                                                withBoolean:(jboolean)newWindow;

+ (ComItextpdfTextPdfPdfAction *)javaScriptWithNSString:(NSString *)code
                        withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

+ (ComItextpdfTextPdfPdfAction *)javaScriptWithNSString:(NSString *)code
                        withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                                            withBoolean:(jboolean)unicode;

- (void)nextWithComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)na;

+ (ComItextpdfTextPdfPdfAction *)renditionWithNSString:(NSString *)file
            withComItextpdfTextPdfPdfFileSpecification:(ComItextpdfTextPdfPdfFileSpecification *)fs
                                          withNSString:(NSString *)mimeType
            withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref;

+ (ComItextpdfTextPdfPdfAction *)setOCGstateWithJavaUtilArrayList:(JavaUtilArrayList *)state
                                                      withBoolean:(jboolean)preserveRB;

- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os;

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)destination;

+ (ComItextpdfTextPdfPdfArray *)buildArrayWithNSObjectArray:(IOSObjectArray *)names;

+ (ComItextpdfTextPdfPdfAction *)createHideWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj
                                                               withBoolean:(jboolean)hide;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfAction)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, FIRSTPAGE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, PREVPAGE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, NEXTPAGE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, LASTPAGE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, PRINTDIALOG, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_EXCLUDE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_INCLUDE_NO_VALUE_FIELDS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_HTML_FORMAT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_HTML_GET, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_COORDINATES, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_XFDF, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_INCLUDE_APPEND_SAVES, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_INCLUDE_ANNOTATIONS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_PDF, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_CANONICAL_FORMAT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_EXCL_NON_USER_ANNOTS, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_EXCL_F_KEY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, SUBMIT_EMBED_FORM, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfAction, RESET_EXCLUDE, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_init(ComItextpdfTextPdfPdfAction *self);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_initWithJavaNetURL_(ComItextpdfTextPdfPdfAction *self, JavaNetURL *url);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_initWithJavaNetURL_(JavaNetURL *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_initWithJavaNetURL_withBoolean_(ComItextpdfTextPdfPdfAction *self, JavaNetURL *url, jboolean isMap);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_initWithJavaNetURL_withBoolean_(JavaNetURL *url, jboolean isMap) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_initWithNSString_(ComItextpdfTextPdfPdfAction *self, NSString *url);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_initWithNSString_(NSString *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_initWithNSString_withBoolean_(ComItextpdfTextPdfPdfAction *self, NSString *url, jboolean isMap);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_initWithNSString_withBoolean_(NSString *url, jboolean isMap) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_initWithComItextpdfTextPdfPdfIndirectReference_(ComItextpdfTextPdfPdfAction *self, ComItextpdfTextPdfPdfIndirectReference *destination);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_initWithComItextpdfTextPdfPdfIndirectReference_(ComItextpdfTextPdfPdfIndirectReference *destination) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_initWithNSString_withNSString_(ComItextpdfTextPdfPdfAction *self, NSString *filename, NSString *name);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_initWithNSString_withNSString_(NSString *filename, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_initWithNSString_withInt_(ComItextpdfTextPdfPdfAction *self, NSString *filename, jint page);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_initWithNSString_withInt_(NSString *filename, jint page) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_initWithInt_(ComItextpdfTextPdfPdfAction *self, jint named);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_initWithInt_(jint named) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfAction_initWithNSString_withNSString_withNSString_withNSString_(ComItextpdfTextPdfPdfAction *self, NSString *application, NSString *parameters, NSString *operation, NSString *defaultDir);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *new_ComItextpdfTextPdfPdfAction_initWithNSString_withNSString_withNSString_withNSString_(NSString *application, NSString *parameters, NSString *operation, NSString *defaultDir) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_createLaunchWithNSString_withNSString_withNSString_withNSString_(NSString *application, NSString *parameters, NSString *operation, NSString *defaultDir);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_renditionWithNSString_withComItextpdfTextPdfPdfFileSpecification_withNSString_withComItextpdfTextPdfPdfIndirectReference_(NSString *file, ComItextpdfTextPdfPdfFileSpecification *fs, NSString *mimeType, ComItextpdfTextPdfPdfIndirectReference *ref);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_javaScriptWithNSString_withComItextpdfTextPdfPdfWriter_withBoolean_(NSString *code, ComItextpdfTextPdfPdfWriter *writer, jboolean unicode);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_javaScriptWithNSString_withComItextpdfTextPdfPdfWriter_(NSString *code, ComItextpdfTextPdfPdfWriter *writer);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_createHideWithComItextpdfTextPdfPdfObject_withBoolean_(ComItextpdfTextPdfPdfObject *obj, jboolean hide);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_createHideWithComItextpdfTextPdfPdfAnnotation_withBoolean_(ComItextpdfTextPdfPdfAnnotation *annot, jboolean hide);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_createHideWithNSString_withBoolean_(NSString *name, jboolean hide);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfArray *ComItextpdfTextPdfPdfAction_buildArrayWithNSObjectArray_(IOSObjectArray *names);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_createHideWithNSObjectArray_withBoolean_(IOSObjectArray *names, jboolean hide);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_createSubmitFormWithNSString_withNSObjectArray_withInt_(NSString *file, IOSObjectArray *names, jint flags);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_createResetFormWithNSObjectArray_withInt_(IOSObjectArray *names, jint flags);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_createImportDataWithNSString_(NSString *file);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_gotoLocalPageWithInt_withComItextpdfTextPdfPdfDestination_withComItextpdfTextPdfPdfWriter_(jint page, ComItextpdfTextPdfPdfDestination *dest, ComItextpdfTextPdfPdfWriter *writer);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_gotoLocalPageWithNSString_withBoolean_(NSString *dest, jboolean isName);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_gotoRemotePageWithNSString_withNSString_withBoolean_withBoolean_(NSString *filename, NSString *dest, jboolean isName, jboolean newWindow);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_gotoEmbeddedWithNSString_withComItextpdfTextPdfCollectionPdfTargetDictionary_withNSString_withBoolean_withBoolean_(NSString *filename, ComItextpdfTextPdfCollectionPdfTargetDictionary *target, NSString *dest, jboolean isName, jboolean newWindow);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_gotoEmbeddedWithNSString_withComItextpdfTextPdfCollectionPdfTargetDictionary_withComItextpdfTextPdfPdfObject_withBoolean_(NSString *filename, ComItextpdfTextPdfCollectionPdfTargetDictionary *target, ComItextpdfTextPdfPdfObject *dest, jboolean newWindow);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfAction *ComItextpdfTextPdfPdfAction_setOCGstateWithJavaUtilArrayList_withBoolean_(JavaUtilArrayList *state, jboolean preserveRB);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfAction)

#endif // _ComItextpdfTextPdfPdfAction_H_
