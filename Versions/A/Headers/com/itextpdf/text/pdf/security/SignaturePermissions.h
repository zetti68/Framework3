//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/SignaturePermissions.java
//

#ifndef _ComItextpdfTextPdfSecuritySignaturePermissions_H_
#define _ComItextpdfTextPdfSecuritySignaturePermissions_H_

@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfName;
@protocol JavaUtilList;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfSecuritySignaturePermissions : NSObject {
 @public
  jboolean certification_;
  jboolean fillInAllowed_;
  jboolean annotationsAllowed_;
  id<JavaUtilList> fieldLocks_;
}

- (instancetype)initWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)sigDict
     withComItextpdfTextPdfSecuritySignaturePermissions:(ComItextpdfTextPdfSecuritySignaturePermissions *)previous;

- (jboolean)isCertification;

- (jboolean)isFillInAllowed;

- (jboolean)isAnnotationsAllowed;

- (id<JavaUtilList>)getFieldLocks;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfSecuritySignaturePermissions *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfSecuritySignaturePermissions_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfSecuritySignaturePermissions, fieldLocks_, id<JavaUtilList>)

@interface ComItextpdfTextPdfSecuritySignaturePermissions_FieldLock : NSObject {
 @public
  ComItextpdfTextPdfPdfName *action_;
  ComItextpdfTextPdfPdfArray *fields_;
}

- (instancetype)initWithComItextpdfTextPdfSecuritySignaturePermissions:(ComItextpdfTextPdfSecuritySignaturePermissions *)outer$
                                         withComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)action
                                        withComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)fields;

- (ComItextpdfTextPdfPdfName *)getAction;

- (ComItextpdfTextPdfPdfArray *)getFields;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfSecuritySignaturePermissions_FieldLock *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfSecuritySignaturePermissions_FieldLock_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfSecuritySignaturePermissions_FieldLock, action_, ComItextpdfTextPdfPdfName *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfSecuritySignaturePermissions_FieldLock, fields_, ComItextpdfTextPdfPdfArray *)

#endif // _ComItextpdfTextPdfSecuritySignaturePermissions_H_