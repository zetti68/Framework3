//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/XmlSignatureAppearance.java
//

#ifndef _ComItextpdfTextPdfXmlSignatureAppearance_H_
#define _ComItextpdfTextPdfXmlSignatureAppearance_H_

@class ComItextpdfTextPdfPdfStamper;
@class ComItextpdfTextPdfPdfStamperImp;
@class JavaSecurityCertCertificate;
@class JavaUtilCalendar;
@protocol ComItextpdfTextPdfSecurityXmlLocator;
@protocol ComItextpdfTextPdfSecurityXpathConstructor;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfXmlSignatureAppearance : NSObject {
 @public
  ComItextpdfTextPdfPdfStamperImp *writer_;
  ComItextpdfTextPdfPdfStamper *stamper_;
  JavaSecurityCertCertificate *signCertificate_;
  id<ComItextpdfTextPdfSecurityXmlLocator> xmlLocator_;
  id<ComItextpdfTextPdfSecurityXpathConstructor> xpathConstructor_;
  JavaUtilCalendar *signDate_;
  NSString *description__;
  NSString *mimeType_;
}

- (instancetype)initWithComItextpdfTextPdfPdfStamperImp:(ComItextpdfTextPdfPdfStamperImp *)writer;

- (ComItextpdfTextPdfPdfStamperImp *)getWriter;

- (ComItextpdfTextPdfPdfStamper *)getStamper;

- (void)setStamperWithComItextpdfTextPdfPdfStamper:(ComItextpdfTextPdfPdfStamper *)stamper;

- (void)setCertificateWithJavaSecurityCertCertificate:(JavaSecurityCertCertificate *)signCertificate;

- (JavaSecurityCertCertificate *)getCertificate;

- (void)setDescriptionWithNSString:(NSString *)description_;

- (NSString *)getDescription;

- (NSString *)getMimeType;

- (void)setMimeTypeWithNSString:(NSString *)mimeType;

- (JavaUtilCalendar *)getSignDate;

- (void)setSignDateWithJavaUtilCalendar:(JavaUtilCalendar *)signDate;

- (id<ComItextpdfTextPdfSecurityXmlLocator>)getXmlLocator;

- (void)setXmlLocatorWithComItextpdfTextPdfSecurityXmlLocator:(id<ComItextpdfTextPdfSecurityXmlLocator>)xmlLocator;

- (id<ComItextpdfTextPdfSecurityXpathConstructor>)getXpathConstructor;

- (void)setXpathConstructorWithComItextpdfTextPdfSecurityXpathConstructor:(id<ComItextpdfTextPdfSecurityXpathConstructor>)xpathConstructor;

- (void)close;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfXmlSignatureAppearance *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfXmlSignatureAppearance_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXmlSignatureAppearance, writer_, ComItextpdfTextPdfPdfStamperImp *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXmlSignatureAppearance, stamper_, ComItextpdfTextPdfPdfStamper *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXmlSignatureAppearance, signCertificate_, JavaSecurityCertCertificate *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXmlSignatureAppearance, xmlLocator_, id<ComItextpdfTextPdfSecurityXmlLocator>)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXmlSignatureAppearance, xpathConstructor_, id<ComItextpdfTextPdfSecurityXpathConstructor>)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXmlSignatureAppearance, signDate_, JavaUtilCalendar *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXmlSignatureAppearance, description__, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXmlSignatureAppearance, mimeType_, NSString *)

#endif // _ComItextpdfTextPdfXmlSignatureAppearance_H_