//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/FontFactoryImp.java
//

#ifndef _ComItextpdfTextFontFactoryImp_H_
#define _ComItextpdfTextFontFactoryImp_H_

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextFont;
@class IOSObjectArray;
@class JavaUtilHashtable;
@protocol ComItextpdfTextLogLogger;
@protocol JavaUtilSet;

#import "JreEmulation.h"
#include "com/itextpdf/text/FontProvider.h"

@interface ComItextpdfTextFontFactoryImp : NSObject < ComItextpdfTextFontProvider > {
 @public
  JavaUtilHashtable *trueTypeFonts_;
  JavaUtilHashtable *fontFamilies_;
  NSString *defaultEncoding_;
  jboolean defaultEmbedding_;
}

- (instancetype)init;

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
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size
                                     withInt:(jint)style;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                                     withInt:(jint)style;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size;

- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname;

- (void)registerFamilyWithNSString:(NSString *)familyName
                      withNSString:(NSString *)fullName
                      withNSString:(NSString *)path;

- (void)register__WithNSString:(NSString *)path;

- (void)register__WithNSString:(NSString *)path
                  withNSString:(NSString *)alias;

- (jint)registerDirectoryWithNSString:(NSString *)dir;

- (jint)registerDirectoryWithNSString:(NSString *)dir
                          withBoolean:(jboolean)scanSubdirectories;

- (jint)registerDirectories;

- (id<JavaUtilSet>)getRegisteredFonts;

- (id<JavaUtilSet>)getRegisteredFamilies;

- (jboolean)isRegisteredWithNSString:(NSString *)fontname;

- (void)copyAllFieldsTo:(ComItextpdfTextFontFactoryImp *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextFontFactoryImp_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextFontFactoryImp)

J2OBJC_FIELD_SETTER(ComItextpdfTextFontFactoryImp, trueTypeFonts_, JavaUtilHashtable *)
J2OBJC_FIELD_SETTER(ComItextpdfTextFontFactoryImp, fontFamilies_, JavaUtilHashtable *)
J2OBJC_FIELD_SETTER(ComItextpdfTextFontFactoryImp, defaultEncoding_, NSString *)

FOUNDATION_EXPORT id<ComItextpdfTextLogLogger> ComItextpdfTextFontFactoryImp_LOGGER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactoryImp, LOGGER_, id<ComItextpdfTextLogLogger>)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextFontFactoryImp_TTFamilyOrder_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactoryImp, TTFamilyOrder_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextFontFactoryImp, TTFamilyOrder_, IOSObjectArray *)

#endif // _ComItextpdfTextFontFactoryImp_H_