//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/XfaXpathConstructor.java
//

#ifndef _ComItextpdfTextPdfXfaXpathConstructor_H_
#define _ComItextpdfTextPdfXfaXpathConstructor_H_

@class ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/security/XpathConstructor.h"
#include "java/lang/Enum.h"

@interface ComItextpdfTextPdfXfaXpathConstructor : NSObject < ComItextpdfTextPdfSecurityXpathConstructor > {
 @public
  NSString *CONFIG_;
  NSString *CONNECTIONSET_;
  NSString *DATASETS_;
  NSString *LOCALESET_;
  NSString *PDF_;
  NSString *SOURCESET_;
  NSString *STYLESHEET_;
  NSString *TEMPLATE_;
  NSString *XDC_;
  NSString *XFDF_;
  NSString *XMPMETA_;
  NSString *xpathExpression_;
}

- (instancetype)init;

- (instancetype)initWithComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum:(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)xdpPackage;

- (NSString *)getXpathExpression;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfXfaXpathConstructor *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfXfaXpathConstructor_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, CONFIG_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, CONNECTIONSET_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, DATASETS_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, LOCALESET_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, PDF_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, SOURCESET_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, STYLESHEET_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, TEMPLATE_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, XDC_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, XFDF_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, XMPMETA_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfXfaXpathConstructor, xpathExpression_, NSString *)

typedef enum {
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Config = 0,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_ConnectionSet = 1,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Datasets = 2,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_LocaleSet = 3,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Pdf = 4,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_SourceSet = 5,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Stylesheet = 6,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Template = 7,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Xdc = 8,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Xfdf = 9,
  ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Xmpmeta = 10,
} ComItextpdfTextPdfXfaXpathConstructor_XdpPackage;

@interface ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum : JavaLangEnum < NSCopying > {
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values();

+ (ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_valueOfWithNSString_(NSString *name);- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum)

FOUNDATION_EXPORT ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[];

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_Config ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Config]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, Config, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_ConnectionSet ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_ConnectionSet]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, ConnectionSet, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_Datasets ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Datasets]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, Datasets, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_LocaleSet ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_LocaleSet]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, LocaleSet, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_Pdf ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Pdf]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, Pdf, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_SourceSet ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_SourceSet]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, SourceSet, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_Stylesheet ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Stylesheet]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, Stylesheet, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_Template ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Template]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, Template, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_Xdc ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Xdc]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, Xdc, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_Xfdf ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Xfdf]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, Xfdf, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#define ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_Xmpmeta ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum_values_[ComItextpdfTextPdfXfaXpathConstructor_XdpPackage_Xmpmeta]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum, Xmpmeta, ComItextpdfTextPdfXfaXpathConstructor_XdpPackageEnum *)

#endif // _ComItextpdfTextPdfXfaXpathConstructor_H_
