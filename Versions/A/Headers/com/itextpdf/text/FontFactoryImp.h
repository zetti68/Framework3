//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/FontFactoryImp.java
//

#ifndef _ComItextpdfTextFontFactoryImp_H_
#define _ComItextpdfTextFontFactoryImp_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/FontProvider.h"

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextFont;
@protocol JavaUtilSet;

@interface ComItextpdfTextFontFactoryImp : NSObject < ComItextpdfTextFontProvider > {
 @public
  NSString *defaultEncoding_;
  jboolean defaultEmbedding_;
}

#pragma mark Public

- (instancetype)init;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                                     withInt:(jint)style;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color
                                 withBoolean:(jboolean)cached;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size
                                     withInt:(jint)style;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (id<JavaUtilSet>)getRegisteredFamilies;

- (id<JavaUtilSet>)getRegisteredFonts;

- (jboolean)isRegisteredWithNSString:(NSString *)fontname;

- (void)register__WithNSString:(NSString *)path;

- (void)register__WithNSString:(NSString *)path
                  withNSString:(NSString *)alias;

- (jint)registerDirectories;

- (jint)registerDirectoryWithNSString:(NSString *)dir;

- (jint)registerDirectoryWithNSString:(NSString *)dir
                          withBoolean:(jboolean)scanSubdirectories;

- (void)registerFamilyWithNSString:(NSString *)familyName
                      withNSString:(NSString *)fullName
                      withNSString:(NSString *)path;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextFontFactoryImp)

J2OBJC_FIELD_SETTER(ComItextpdfTextFontFactoryImp, defaultEncoding_, NSString *)

FOUNDATION_EXPORT void ComItextpdfTextFontFactoryImp_init(ComItextpdfTextFontFactoryImp *self);

FOUNDATION_EXPORT ComItextpdfTextFontFactoryImp *new_ComItextpdfTextFontFactoryImp_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextFontFactoryImp)

#endif // _ComItextpdfTextFontFactoryImp_H_
