//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPublicKeySecurityHandler.java
//

#ifndef _ComItextpdfTextPdfPdfPublicKeySecurityHandler_H_
#define _ComItextpdfTextPdfPdfPublicKeySecurityHandler_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfPdfArray;
@class ComItextpdfTextPdfPdfPublicKeyRecipient;
@class IOSByteArray;

#define ComItextpdfTextPdfPdfPublicKeySecurityHandler_SEED_LENGTH 20

@interface ComItextpdfTextPdfPdfPublicKeySecurityHandler : NSObject

#pragma mark Public

- (instancetype)init;

- (void)addRecipientWithComItextpdfTextPdfPdfPublicKeyRecipient:(ComItextpdfTextPdfPdfPublicKeyRecipient *)recipient;

- (IOSByteArray *)getEncodedRecipientWithInt:(jint)index;

- (ComItextpdfTextPdfPdfArray *)getEncodedRecipients;

- (jint)getRecipientsSize;

#pragma mark Protected

- (IOSByteArray *)getSeed;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfPublicKeySecurityHandler)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfPublicKeySecurityHandler, SEED_LENGTH, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfPublicKeySecurityHandler_init(ComItextpdfTextPdfPdfPublicKeySecurityHandler *self);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfPublicKeySecurityHandler *new_ComItextpdfTextPdfPdfPublicKeySecurityHandler_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfPublicKeySecurityHandler)

#endif // _ComItextpdfTextPdfPdfPublicKeySecurityHandler_H_
