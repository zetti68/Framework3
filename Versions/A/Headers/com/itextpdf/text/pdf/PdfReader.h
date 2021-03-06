//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfReader.java
//

#ifndef _ComItextpdfTextPdfPdfReader_H_
#define _ComItextpdfTextPdfPdfReader_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/interfaces/PdfViewerPreferences.h"

@class ComItextpdfTextPdfAcroFields;
@class ComItextpdfTextPdfIntHashtable;
@class ComItextpdfTextPdfInternalPdfViewerPreferencesImp;
@class ComItextpdfTextPdfLongHashtable;
@class ComItextpdfTextPdfPRAcroForm;
@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPRStream;
@class ComItextpdfTextPdfPRTokeniser;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfEncryption;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfReaderInstance;
@class ComItextpdfTextPdfPdfReader_PageRefs;
@class ComItextpdfTextPdfPdfWriter;
@class ComItextpdfTextPdfRandomAccessFileOrArray;
@class ComItextpdfTextRectangle;
@class IOSBooleanArray;
@class IOSByteArray;
@class IOSLongArray;
@class IOSObjectArray;
@class JavaIoInputStream;
@class JavaNetURL;
@class JavaSecurityCertCertificate;
@class JavaUtilArrayList;
@class JavaUtilHashMap;
@protocol ComItextpdfTextLogCounter;
@protocol JavaSecurityKey;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface ComItextpdfTextPdfPdfReader : NSObject < ComItextpdfTextPdfInterfacesPdfViewerPreferences > {
 @public
  ComItextpdfTextPdfPRTokeniser *tokens_;
  IOSLongArray *xref_;
  JavaUtilHashMap *objStmMark_;
  ComItextpdfTextPdfLongHashtable *objStmToOffset_;
  jboolean newXrefType_;
  JavaUtilArrayList *xrefObj_;
  ComItextpdfTextPdfPdfDictionary *rootPages_;
  ComItextpdfTextPdfPdfDictionary *trailer_;
  ComItextpdfTextPdfPdfDictionary *catalog_;
  ComItextpdfTextPdfPdfReader_PageRefs *pageRefs_;
  ComItextpdfTextPdfPRAcroForm *acroForm_;
  jboolean acroFormParsed_;
  jboolean encrypted_;
  jboolean rebuilt_;
  jint freeXref_;
  jboolean tampered_;
  jlong lastXref_;
  jlong eofPos_;
  jchar pdfVersion_;
  ComItextpdfTextPdfPdfEncryption *decrypt_;
  IOSByteArray *password_;
  id<JavaSecurityKey> certificateKey_;
  JavaSecurityCertCertificate *certificate_;
  NSString *certificateKeyProvider_;
  JavaUtilArrayList *strings_;
  jboolean sharedStreams_;
  jboolean consolidateNamedDestinations__;
  jboolean remoteToLocalNamedDestinations_;
  jint rValue_;
  jint pValue_;
}

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)pdfIn;

- (instancetype)initWithByteArray:(IOSByteArray *)pdfIn
                    withByteArray:(IOSByteArray *)ownerPassword;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)is;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)is
                            withByteArray:(IOSByteArray *)ownerPassword;

- (instancetype)initWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (instancetype)initWithComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)raf
                                                    withByteArray:(IOSByteArray *)ownerPassword;

- (instancetype)initWithNSString:(NSString *)filename;

- (instancetype)initWithNSString:(NSString *)filename
                   withByteArray:(IOSByteArray *)ownerPassword;

- (instancetype)initWithNSString:(NSString *)filename
                   withByteArray:(IOSByteArray *)ownerPassword
                     withBoolean:(jboolean)partial;

- (instancetype)initWithNSString:(NSString *)filename
 withJavaSecurityCertCertificate:(JavaSecurityCertCertificate *)certificate
             withJavaSecurityKey:(id<JavaSecurityKey>)certificateKey
                    withNSString:(NSString *)certificateKeyProvider;

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url;

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url
                     withByteArray:(IOSByteArray *)ownerPassword;

- (ComItextpdfTextPdfPRIndirectReference *)addPdfObjectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (void)addViewerPreferenceWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                         withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value;

+ (IOSByteArray *)ASCII85DecodeWithByteArray:(IOSByteArray *)inArg;

+ (IOSByteArray *)ASCIIHexDecodeWithByteArray:(IOSByteArray *)inArg;

- (void)close;

- (IOSByteArray *)computeUserPassword;

- (void)consolidateNamedDestinations;

- (jint)createFakeFontSubsets;

+ (IOSByteArray *)decodeBytesWithByteArray:(IOSByteArray *)b
       withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)streamDictionary;

+ (IOSByteArray *)decodeBytesWithByteArray:(IOSByteArray *)b
       withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)streamDictionary
                           withJavaUtilMap:(id<JavaUtilMap>)filterHandlers;

+ (IOSByteArray *)decodePredictorWithByteArray:(IOSByteArray *)inArg
               withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)dicPar;

- (jdouble)dumpPerc;

- (void)eliminateSharedStreams;

+ (IOSByteArray *)FlateDecodeWithByteArray:(IOSByteArray *)inArg;

+ (IOSByteArray *)FlateDecodeWithByteArray:(IOSByteArray *)inArg
                               withBoolean:(jboolean)strict;

- (ComItextpdfTextPdfAcroFields *)getAcroFields;

- (ComItextpdfTextPdfPRAcroForm *)getAcroForm;

- (ComItextpdfTextRectangle *)getBoxSizeWithInt:(jint)index
                                   withNSString:(NSString *)boxName;

- (ComItextpdfTextPdfPdfDictionary *)getCatalog;

- (jint)getCertificationLevel;

- (ComItextpdfTextRectangle *)getCropBoxWithInt:(jint)index;

- (jint)getCryptoMode;

- (jlong)getEofPos;

- (jlong)getFileLength;

- (JavaUtilHashMap *)getInfo;

- (NSString *)getJavaScript;

- (NSString *)getJavaScriptWithComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)file;

- (jlong)getLastXref;

- (JavaUtilArrayList *)getLinksWithInt:(jint)page;

- (IOSByteArray *)getMetadata;

- (JavaUtilHashMap *)getNamedDestination;

- (JavaUtilHashMap *)getNamedDestinationWithBoolean:(jboolean)keepNames;

- (JavaUtilHashMap *)getNamedDestinationFromNames;

- (JavaUtilHashMap *)getNamedDestinationFromNamesWithBoolean:(jboolean)keepNames;

- (JavaUtilHashMap *)getNamedDestinationFromStrings;

+ (ComItextpdfTextRectangle *)getNormalizedRectangleWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)box;

- (jint)getNumberOfPages;

- (IOSByteArray *)getPageContentWithInt:(jint)pageNum;

- (IOSByteArray *)getPageContentWithInt:(jint)pageNum
withComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)file;

+ (IOSByteArray *)getPageContentWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)page;

- (ComItextpdfTextPdfPdfDictionary *)getPageNWithInt:(jint)pageNum;

- (ComItextpdfTextPdfPdfDictionary *)getPageNReleaseWithInt:(jint)pageNum;

- (ComItextpdfTextPdfPRIndirectReference *)getPageOrigRefWithInt:(jint)pageNum;

- (ComItextpdfTextPdfPdfDictionary *)getPageResourcesWithInt:(jint)pageNum;

- (ComItextpdfTextPdfPdfDictionary *)getPageResourcesWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)pageDict;

- (jint)getPageRotationWithInt:(jint)index;

- (ComItextpdfTextRectangle *)getPageSizeWithInt:(jint)index;

- (ComItextpdfTextRectangle *)getPageSizeWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)page;

- (ComItextpdfTextRectangle *)getPageSizeWithRotationWithInt:(jint)index;

- (ComItextpdfTextRectangle *)getPageSizeWithRotationWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)page;

- (ComItextpdfTextPdfPdfObject *)getPdfObjectWithInt:(jint)idx;

+ (ComItextpdfTextPdfPdfObject *)getPdfObjectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

+ (ComItextpdfTextPdfPdfObject *)getPdfObjectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj
                                             withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)parent;

- (ComItextpdfTextPdfPdfObject *)getPdfObjectReleaseWithInt:(jint)idx;

+ (ComItextpdfTextPdfPdfObject *)getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

+ (ComItextpdfTextPdfPdfObject *)getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj
                                                    withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)parent;

- (jchar)getPdfVersion;

- (jint)getPermissions;

- (ComItextpdfTextPdfRandomAccessFileOrArray *)getSafeFile;

- (jint)getSimpleViewerPreferences;

+ (IOSByteArray *)getStreamBytesWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream;

+ (IOSByteArray *)getStreamBytesWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream
                 withComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)file;

+ (IOSByteArray *)getStreamBytesRawWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream;

+ (IOSByteArray *)getStreamBytesRawWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream
                    withComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)file;

- (ComItextpdfTextPdfPdfDictionary *)getTrailer;

- (jint)getXrefSize;

- (jboolean)hasUsageRights;

- (jboolean)is128Key;

- (jboolean)isAppendable;

- (jboolean)isEncrypted;

- (jboolean)isHybridXref;

- (jboolean)isMetadataEncrypted;

- (jboolean)isNewXrefType;

- (jboolean)isOpenedWithFullPermissions;

- (jboolean)isRebuilt;

- (jboolean)isTagged;

- (jboolean)isTampered;

+ (ComItextpdfTextPdfPdfObject *)killIndirectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

+ (IOSByteArray *)LZWDecodeWithByteArray:(IOSByteArray *)inArg;

- (void)makeRemoteNamedDestinationsLocal;

- (void)releaseLastXrefPartial;

+ (void)releaseLastXrefPartialWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (void)releasePageWithInt:(jint)pageNum;

- (void)removeAnnotations;

- (void)removeFields;

- (jint)removeUnusedObjects;

- (void)removeUsageRights;

- (void)resetLastXrefPartial;

- (void)resetReleasePage;

- (void)selectPagesWithJavaUtilList:(id<JavaUtilList>)pagesToKeep;

- (void)selectPagesWithNSString:(NSString *)ranges;

- (void)setAppendableWithBoolean:(jboolean)appendable;

- (void)setPageContentWithInt:(jint)pageNum
                withByteArray:(IOSByteArray *)content;

- (void)setPageContentWithInt:(jint)pageNum
                withByteArray:(IOSByteArray *)content
                      withInt:(jint)compressionLevel;

- (void)setTamperedWithBoolean:(jboolean)tampered;

- (void)setViewerPreferencesWithInt:(jint)preferences;

- (void)setViewerPreferencesWithComItextpdfTextPdfInternalPdfViewerPreferencesImp:(ComItextpdfTextPdfInternalPdfViewerPreferencesImp *)vp;

- (jint)shuffleSubsetNames;

#pragma mark Protected

+ (ComItextpdfTextPdfPdfDictionary *)duplicatePdfDictionaryWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)original
                                                           withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)copy_
                                                               withComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)newReader;

+ (ComItextpdfTextPdfPdfObject *)duplicatePdfObjectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)original
                                                   withComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)newReader;

- (id<ComItextpdfTextLogCounter>)getCounter;

- (ComItextpdfTextPdfPdfReaderInstance *)getPdfReaderInstanceWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer;

- (void)killXrefWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (ComItextpdfTextPdfPdfArray *)readArray;

- (ComItextpdfTextPdfPdfDictionary *)readDictionary;

- (void)readDocObj;

- (void)readDocObjPartial;

- (void)readObjStmWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream
              withComItextpdfTextPdfIntHashtable:(ComItextpdfTextPdfIntHashtable *)map;

- (ComItextpdfTextPdfPdfObject *)readOneObjStmWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)stream
                                                                     withInt:(jint)idx;

- (void)readPages;

- (void)readPdf;

- (void)readPdfPartial;

- (ComItextpdfTextPdfPdfObject *)readPRObject;

- (ComItextpdfTextPdfPdfObject *)readSingleObjectWithInt:(jint)k;

- (void)readXref;

- (ComItextpdfTextPdfPdfDictionary *)readXrefSection;

- (jboolean)readXRefStreamWithLong:(jlong)ptr;

- (void)rebuildXref;

- (void)removeUnusedNodeWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj
                                       withBooleanArray:(IOSBooleanArray *)hits;

- (void)selectPagesWithJavaUtilList:(id<JavaUtilList>)pagesToKeep
                        withBoolean:(jboolean)removeUnused;

#pragma mark Package-Private

+ (jboolean)equalsnWithByteArray:(IOSByteArray *)a1
                   withByteArray:(IOSByteArray *)a2;

+ (jboolean)existsNameWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dic
                            withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)value;

- (ComItextpdfTextPdfPdfIndirectReference *)getCryptoRef;

- (ComItextpdfTextPdfPdfEncryption *)getDecrypt;

+ (NSString *)getFontNameWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dic;

- (jint)getPageRotationWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)page;

+ (NSString *)getSubsetPrefixWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dic;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfPdfReader)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, tokens_, ComItextpdfTextPdfPRTokeniser *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, xref_, IOSLongArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, objStmMark_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, objStmToOffset_, ComItextpdfTextPdfLongHashtable *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, xrefObj_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, rootPages_, ComItextpdfTextPdfPdfDictionary *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, trailer_, ComItextpdfTextPdfPdfDictionary *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, catalog_, ComItextpdfTextPdfPdfDictionary *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, pageRefs_, ComItextpdfTextPdfPdfReader_PageRefs *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, acroForm_, ComItextpdfTextPdfPRAcroForm *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, decrypt_, ComItextpdfTextPdfPdfEncryption *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, password_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, certificateKey_, id<JavaSecurityKey>)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, certificate_, JavaSecurityCertCertificate *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, certificateKeyProvider_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, strings_, JavaUtilArrayList *)

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfPdfReader_unethicalreading_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfReader, unethicalreading_, jboolean)
J2OBJC_STATIC_FIELD_REF_GETTER(ComItextpdfTextPdfPdfReader, unethicalreading_, jboolean)

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfPdfReader_debugmode_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfReader, debugmode_, jboolean)
J2OBJC_STATIC_FIELD_REF_GETTER(ComItextpdfTextPdfPdfReader, debugmode_, jboolean)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfPdfReader_pageInhCandidates_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfReader, pageInhCandidates_, IOSObjectArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_endstream_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfReader, endstream_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_endobj_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfReader, endobj_, IOSByteArray *)

FOUNDATION_EXPORT id<ComItextpdfTextLogCounter> ComItextpdfTextPdfPdfReader_COUNTER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfReader, COUNTER_, id<ComItextpdfTextLogCounter>)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfPdfReader, COUNTER_, id<ComItextpdfTextLogCounter>)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithNSString_(ComItextpdfTextPdfPdfReader *self, NSString *filename);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithNSString_(NSString *filename) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithNSString_withByteArray_(ComItextpdfTextPdfPdfReader *self, NSString *filename, IOSByteArray *ownerPassword);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithNSString_withByteArray_(NSString *filename, IOSByteArray *ownerPassword) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithNSString_withByteArray_withBoolean_(ComItextpdfTextPdfPdfReader *self, NSString *filename, IOSByteArray *ownerPassword, jboolean partial);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithNSString_withByteArray_withBoolean_(NSString *filename, IOSByteArray *ownerPassword, jboolean partial) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithByteArray_(ComItextpdfTextPdfPdfReader *self, IOSByteArray *pdfIn);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithByteArray_(IOSByteArray *pdfIn) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithByteArray_withByteArray_(ComItextpdfTextPdfPdfReader *self, IOSByteArray *pdfIn, IOSByteArray *ownerPassword);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithByteArray_withByteArray_(IOSByteArray *pdfIn, IOSByteArray *ownerPassword) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithNSString_withJavaSecurityCertCertificate_withJavaSecurityKey_withNSString_(ComItextpdfTextPdfPdfReader *self, NSString *filename, JavaSecurityCertCertificate *certificate, id<JavaSecurityKey> certificateKey, NSString *certificateKeyProvider);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithNSString_withJavaSecurityCertCertificate_withJavaSecurityKey_withNSString_(NSString *filename, JavaSecurityCertCertificate *certificate, id<JavaSecurityKey> certificateKey, NSString *certificateKeyProvider) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithJavaNetURL_(ComItextpdfTextPdfPdfReader *self, JavaNetURL *url);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithJavaNetURL_(JavaNetURL *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithJavaNetURL_withByteArray_(ComItextpdfTextPdfPdfReader *self, JavaNetURL *url, IOSByteArray *ownerPassword);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithJavaNetURL_withByteArray_(JavaNetURL *url, IOSByteArray *ownerPassword) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithJavaIoInputStream_withByteArray_(ComItextpdfTextPdfPdfReader *self, JavaIoInputStream *is, IOSByteArray *ownerPassword);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithJavaIoInputStream_withByteArray_(JavaIoInputStream *is, IOSByteArray *ownerPassword) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithJavaIoInputStream_(ComItextpdfTextPdfPdfReader *self, JavaIoInputStream *is);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithJavaIoInputStream_(JavaIoInputStream *is) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithComItextpdfTextPdfRandomAccessFileOrArray_withByteArray_(ComItextpdfTextPdfPdfReader *self, ComItextpdfTextPdfRandomAccessFileOrArray *raf, IOSByteArray *ownerPassword);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithComItextpdfTextPdfRandomAccessFileOrArray_withByteArray_(ComItextpdfTextPdfRandomAccessFileOrArray *raf, IOSByteArray *ownerPassword) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_initWithComItextpdfTextPdfPdfReader_(ComItextpdfTextPdfPdfReader *self, ComItextpdfTextPdfPdfReader *reader);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader *new_ComItextpdfTextPdfPdfReader_initWithComItextpdfTextPdfPdfReader_(ComItextpdfTextPdfPdfReader *reader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComItextpdfTextRectangle *ComItextpdfTextPdfPdfReader_getNormalizedRectangleWithComItextpdfTextPdfPdfArray_(ComItextpdfTextPdfPdfArray *box);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfObject *ComItextpdfTextPdfPdfReader_getPdfObjectReleaseWithComItextpdfTextPdfPdfObject_(ComItextpdfTextPdfPdfObject *obj);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfObject *ComItextpdfTextPdfPdfReader_getPdfObjectWithComItextpdfTextPdfPdfObject_(ComItextpdfTextPdfPdfObject *obj);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfObject *ComItextpdfTextPdfPdfReader_getPdfObjectReleaseWithComItextpdfTextPdfPdfObject_withComItextpdfTextPdfPdfObject_(ComItextpdfTextPdfPdfObject *obj, ComItextpdfTextPdfPdfObject *parent);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfObject *ComItextpdfTextPdfPdfReader_getPdfObjectWithComItextpdfTextPdfPdfObject_withComItextpdfTextPdfPdfObject_(ComItextpdfTextPdfPdfObject *obj, ComItextpdfTextPdfPdfObject *parent);

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_releaseLastXrefPartialWithComItextpdfTextPdfPdfObject_(ComItextpdfTextPdfPdfObject *obj);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfObject *ComItextpdfTextPdfPdfReader_killIndirectWithComItextpdfTextPdfPdfObject_(ComItextpdfTextPdfPdfObject *obj);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_FlateDecodeWithByteArray_(IOSByteArray *inArg);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_decodePredictorWithByteArray_withComItextpdfTextPdfPdfObject_(IOSByteArray *inArg, ComItextpdfTextPdfPdfObject *dicPar);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_FlateDecodeWithByteArray_withBoolean_(IOSByteArray *inArg, jboolean strict);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_ASCIIHexDecodeWithByteArray_(IOSByteArray *inArg);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_ASCII85DecodeWithByteArray_(IOSByteArray *inArg);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_LZWDecodeWithByteArray_(IOSByteArray *inArg);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_getPageContentWithComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfPdfDictionary *page);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_decodeBytesWithByteArray_withComItextpdfTextPdfPdfDictionary_(IOSByteArray *b, ComItextpdfTextPdfPdfDictionary *streamDictionary);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_decodeBytesWithByteArray_withComItextpdfTextPdfPdfDictionary_withJavaUtilMap_(IOSByteArray *b, ComItextpdfTextPdfPdfDictionary *streamDictionary, id<JavaUtilMap> filterHandlers);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_getStreamBytesWithComItextpdfTextPdfPRStream_withComItextpdfTextPdfRandomAccessFileOrArray_(ComItextpdfTextPdfPRStream *stream, ComItextpdfTextPdfRandomAccessFileOrArray *file);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_getStreamBytesWithComItextpdfTextPdfPRStream_(ComItextpdfTextPdfPRStream *stream);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_getStreamBytesRawWithComItextpdfTextPdfPRStream_withComItextpdfTextPdfRandomAccessFileOrArray_(ComItextpdfTextPdfPRStream *stream, ComItextpdfTextPdfRandomAccessFileOrArray *file);

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfPdfReader_getStreamBytesRawWithComItextpdfTextPdfPRStream_(ComItextpdfTextPdfPRStream *stream);

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfPdfReader_equalsnWithByteArray_withByteArray_(IOSByteArray *a1, IOSByteArray *a2);

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfPdfReader_existsNameWithComItextpdfTextPdfPdfDictionary_withComItextpdfTextPdfPdfName_withComItextpdfTextPdfPdfName_(ComItextpdfTextPdfPdfDictionary *dic, ComItextpdfTextPdfPdfName *key, ComItextpdfTextPdfPdfName *value);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfPdfReader_getFontNameWithComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfPdfDictionary *dic);

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfPdfReader_getSubsetPrefixWithComItextpdfTextPdfPdfDictionary_(ComItextpdfTextPdfPdfDictionary *dic);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfDictionary *ComItextpdfTextPdfPdfReader_duplicatePdfDictionaryWithComItextpdfTextPdfPdfDictionary_withComItextpdfTextPdfPdfDictionary_withComItextpdfTextPdfPdfReader_(ComItextpdfTextPdfPdfDictionary *original, ComItextpdfTextPdfPdfDictionary *copy_, ComItextpdfTextPdfPdfReader *newReader);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfObject *ComItextpdfTextPdfPdfReader_duplicatePdfObjectWithComItextpdfTextPdfPdfObject_withComItextpdfTextPdfPdfReader_(ComItextpdfTextPdfPdfObject *original, ComItextpdfTextPdfPdfReader *newReader);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfReader)

@interface ComItextpdfTextPdfPdfReader_PageRefs : NSObject

#pragma mark Public

- (ComItextpdfTextPdfPdfDictionary *)getPageNWithInt:(jint)pageNum;

- (ComItextpdfTextPdfPdfDictionary *)getPageNReleaseWithInt:(jint)pageNum;

- (ComItextpdfTextPdfPRIndirectReference *)getPageOrigRefWithInt:(jint)pageNum;

- (ComItextpdfTextPdfPRIndirectReference *)getPageOrigRefReleaseWithInt:(jint)pageNum;

- (void)releasePageWithInt:(jint)pageNum;

- (void)resetReleasePage;

#pragma mark Protected

- (ComItextpdfTextPdfPRIndirectReference *)getSinglePageWithInt:(jint)n;

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextPdfPdfReader_PageRefs:(ComItextpdfTextPdfPdfReader_PageRefs *)other
                             withComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (void)insertPageWithInt:(jint)pageNum
withComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)ref;

- (void)keepPages;

- (void)readPages;

- (void)reReadPages;

- (jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfReader_PageRefs)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfReader_PageRefs_initWithComItextpdfTextPdfPdfReader_PageRefs_withComItextpdfTextPdfPdfReader_(ComItextpdfTextPdfPdfReader_PageRefs *self, ComItextpdfTextPdfPdfReader_PageRefs *other, ComItextpdfTextPdfPdfReader *reader);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfReader_PageRefs *new_ComItextpdfTextPdfPdfReader_PageRefs_initWithComItextpdfTextPdfPdfReader_PageRefs_withComItextpdfTextPdfPdfReader_(ComItextpdfTextPdfPdfReader_PageRefs *other, ComItextpdfTextPdfPdfReader *reader) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfReader_PageRefs)

#endif // _ComItextpdfTextPdfPdfReader_H_
