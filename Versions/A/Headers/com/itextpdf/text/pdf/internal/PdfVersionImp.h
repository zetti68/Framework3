//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/internal/PdfVersionImp.java
//

#ifndef _ComItextpdfTextPdfInternalPdfVersionImp_H_
#define _ComItextpdfTextPdfInternalPdfVersionImp_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/interfaces/PdfVersion.h"

@class ComItextpdfTextPdfOutputStreamCounter;
@class ComItextpdfTextPdfPdfDeveloperExtension;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfName;
@class IOSByteArray;
@class IOSObjectArray;

@interface ComItextpdfTextPdfInternalPdfVersionImp : NSObject < ComItextpdfTextPdfInterfacesPdfVersion > {
 @public
  jboolean headerWasWritten_;
  jboolean appendmode_;
  jchar header_version_;
  ComItextpdfTextPdfPdfName *catalog_version_;
  jchar version__;
  ComItextpdfTextPdfPdfDictionary *extensions_;
}

#pragma mark Public

- (instancetype)init;

- (void)addDeveloperExtensionWithComItextpdfTextPdfPdfDeveloperExtension:(ComItextpdfTextPdfPdfDeveloperExtension *)de;

- (void)addToCatalogWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)catalog;

- (jchar)getVersion;

- (IOSByteArray *)getVersionAsByteArrayWithChar:(jchar)version_;

- (ComItextpdfTextPdfPdfName *)getVersionAsNameWithChar:(jchar)version_;

- (void)setAppendmodeWithBoolean:(jboolean)appendmode;

- (void)setAtLeastPdfVersionWithChar:(jchar)version_;

- (void)setPdfVersionWithChar:(jchar)version_;

- (void)setPdfVersionWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)version_;

- (void)writeHeaderWithComItextpdfTextPdfOutputStreamCounter:(ComItextpdfTextPdfOutputStreamCounter *)os;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfInternalPdfVersionImp)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfInternalPdfVersionImp, catalog_version_, ComItextpdfTextPdfPdfName *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfInternalPdfVersionImp, extensions_, ComItextpdfTextPdfPdfDictionary *)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfInternalPdfVersionImp_HEADER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfInternalPdfVersionImp, HEADER_, IOSObjectArray *)

FOUNDATION_EXPORT void ComItextpdfTextPdfInternalPdfVersionImp_init(ComItextpdfTextPdfInternalPdfVersionImp *self);

FOUNDATION_EXPORT ComItextpdfTextPdfInternalPdfVersionImp *new_ComItextpdfTextPdfInternalPdfVersionImp_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfInternalPdfVersionImp)

#endif // _ComItextpdfTextPdfInternalPdfVersionImp_H_
