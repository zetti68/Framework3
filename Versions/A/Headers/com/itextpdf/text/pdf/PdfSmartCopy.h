//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfSmartCopy.java
//

#ifndef _ComItextpdfTextPdfPdfSmartCopy_H_
#define _ComItextpdfTextPdfPdfSmartCopy_H_

@class ComItextpdfTextDocument;
@class ComItextpdfTextPdfByteBuffer;
@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPRStream;
@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfImportedPage;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfReader;
@class IOSByteArray;
@class JavaIoOutputStream;
@class JavaSecurityMessageDigest;
@class JavaUtilHashMap;
@protocol ComItextpdfTextLogCounter;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfCopy.h"

@interface ComItextpdfTextPdfPdfSmartCopy : ComItextpdfTextPdfPdfCopy {
 @public
  JavaUtilHashMap *streamMap_;
  JavaUtilHashMap *serialized_;
  id<ComItextpdfTextLogCounter> COUNTER_;
}

- (id<ComItextpdfTextLogCounter>)getCounter;

- (instancetype)initWithComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                         withJavaIoOutputStream:(JavaIoOutputStream *)os;

- (ComItextpdfTextPdfPdfIndirectReference *)copyIndirectWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)inArg OBJC_METHOD_FAMILY_NONE;

- (void)freeReaderWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader;

- (void)addPageWithComItextpdfTextPdfPdfImportedPage:(ComItextpdfTextPdfPdfImportedPage *)iPage;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfSmartCopy *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfSmartCopy_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfSmartCopy, streamMap_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfSmartCopy, serialized_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfSmartCopy, COUNTER_, id<ComItextpdfTextLogCounter>)

@interface ComItextpdfTextPdfPdfSmartCopy_ByteStore : NSObject {
 @public
  IOSByteArray *b_;
  jint hash__;
  JavaSecurityMessageDigest *md5_;
}

- (void)serObjectWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj
                                         withInt:(jint)level
                withComItextpdfTextPdfByteBuffer:(ComItextpdfTextPdfByteBuffer *)bb
                             withJavaUtilHashMap:(JavaUtilHashMap *)serialized;

- (void)serDicWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dic
                                          withInt:(jint)level
                 withComItextpdfTextPdfByteBuffer:(ComItextpdfTextPdfByteBuffer *)bb
                              withJavaUtilHashMap:(JavaUtilHashMap *)serialized;

- (void)serArrayWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)array
                                       withInt:(jint)level
              withComItextpdfTextPdfByteBuffer:(ComItextpdfTextPdfByteBuffer *)bb
                           withJavaUtilHashMap:(JavaUtilHashMap *)serialized;

- (instancetype)initWithComItextpdfTextPdfPRStream:(ComItextpdfTextPdfPRStream *)str
                               withJavaUtilHashMap:(JavaUtilHashMap *)serialized;

- (instancetype)initWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dict
                                    withJavaUtilHashMap:(JavaUtilHashMap *)serialized;

+ (jint)calculateHashWithByteArray:(IOSByteArray *)b;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfSmartCopy_ByteStore *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfPdfSmartCopy_ByteStore_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfSmartCopy_ByteStore, b_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfSmartCopy_ByteStore, md5_, JavaSecurityMessageDigest *)

#endif // _ComItextpdfTextPdfPdfSmartCopy_H_