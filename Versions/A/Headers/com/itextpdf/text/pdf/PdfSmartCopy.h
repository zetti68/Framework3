//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfSmartCopy.java
//

#ifndef _ComItextpdfTextPdfPdfSmartCopy_H_
#define _ComItextpdfTextPdfPdfSmartCopy_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfCopy.h"

@class ComItextpdfTextDocument;
@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPRStream;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfImportedPage;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfReader;
@class JavaIoOutputStream;
@class JavaUtilHashMap;
@protocol ComItextpdfTextLogCounter;

@interface ComItextpdfTextPdfPdfSmartCopy : ComItextpdfTextPdfPdfCopy {
 @public
  id<ComItextpdfTextLogCounter> COUNTER_;
}

#pragma mark Public

- (instancetype)initWithComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                         withJavaIoOutputStream:(JavaIoOutputStream *)os;

- (void)addPageWithComItextpdfTextPdfPdfImportedPage:(ComItextpdfTextPdfPdfImportedPage *)iPage;

- (void)freeReaderWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

#pragma mark Protected

- (ComItextpdfTextPdfPdfIndirectReference *)copyIndirectWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)inArg OBJC_METHOD_FAMILY_NONE;

- (id<ComItextpdfTextLogCounter>)getCounter;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfSmartCopy)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfSmartCopy, COUNTER_, id<ComItextpdfTextLogCounter>)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfSmartCopy_initWithComItextpdfTextDocument_withJavaIoOutputStream_(ComItextpdfTextPdfPdfSmartCopy *self, ComItextpdfTextDocument *document, JavaIoOutputStream *os);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfSmartCopy *new_ComItextpdfTextPdfPdfSmartCopy_initWithComItextpdfTextDocument_withJavaIoOutputStream_(ComItextpdfTextDocument *document, JavaIoOutputStream *os) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfSmartCopy)

@interface ComItextpdfTextPdfPdfSmartCopy_ByteStore : NSObject

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dict
                                    withJavaUtilHashMap:(JavaUtilHashMap *)serialized;

- (instancetype)initWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)str
                               withJavaUtilHashMap:(JavaUtilHashMap *)serialized;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfSmartCopy_ByteStore)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfSmartCopy_ByteStore_initWithComItextpdfTextPdfPRStream_withJavaUtilHashMap_(ComItextpdfTextPdfPdfSmartCopy_ByteStore *self, ComItextpdfTextPdfPRStream *str, JavaUtilHashMap *serialized);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfSmartCopy_ByteStore *new_ComItextpdfTextPdfPdfSmartCopy_ByteStore_initWithComItextpdfTextPdfPRStream_withJavaUtilHashMap_(ComItextpdfTextPdfPRStream *str, JavaUtilHashMap *serialized) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfSmartCopy_ByteStore_initWithComItextpdfTextPdfPdfDictionary_withJavaUtilHashMap_(ComItextpdfTextPdfPdfSmartCopy_ByteStore *self, ComItextpdfTextPdfPdfDictionary *dict, JavaUtilHashMap *serialized);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfSmartCopy_ByteStore *new_ComItextpdfTextPdfPdfSmartCopy_ByteStore_initWithComItextpdfTextPdfPdfDictionary_withJavaUtilHashMap_(ComItextpdfTextPdfPdfDictionary *dict, JavaUtilHashMap *serialized) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfSmartCopy_ByteStore)

#endif // _ComItextpdfTextPdfPdfSmartCopy_H_
