//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/FontFactory.java
//

#ifndef _ComItextpdfTextFontFactory_H_
#define _ComItextpdfTextFontFactory_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextFont;
@class ComItextpdfTextFontFactoryImp;
@protocol JavaUtilSet;

@interface ComItextpdfTextFontFactory : NSObject

#pragma mark Public

+ (jboolean)containsWithNSString:(NSString *)fontname;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                                     withInt:(jint)style;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color
                                 withBoolean:(jboolean)cached;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size
                                     withInt:(jint)style;

+ (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color;

+ (ComItextpdfTextFontFactoryImp *)getFontImp;

+ (id<JavaUtilSet>)getRegisteredFamilies;

+ (id<JavaUtilSet>)getRegisteredFonts;

+ (jboolean)isRegisteredWithNSString:(NSString *)fontname;

+ (void)register__WithNSString:(NSString *)path;

+ (void)register__WithNSString:(NSString *)path
                  withNSString:(NSString *)alias;

+ (jint)registerDirectories;

+ (jint)registerDirectoryWithNSString:(NSString *)dir;

+ (jint)registerDirectoryWithNSString:(NSString *)dir
                          withBoolean:(jboolean)scanSubdirectories;

+ (void)registerFamilyWithNSString:(NSString *)familyName
                      withNSString:(NSString *)fullName
                      withNSString:(NSString *)path;

+ (void)setFontImpWithComItextpdfTextFontFactoryImp:(ComItextpdfTextFontFactoryImp *)fontImp;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextFontFactory)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_COURIER_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, COURIER_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_COURIER_BOLD_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, COURIER_BOLD_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_COURIER_OBLIQUE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, COURIER_OBLIQUE_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_COURIER_BOLDOBLIQUE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, COURIER_BOLDOBLIQUE_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_HELVETICA_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, HELVETICA_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_HELVETICA_BOLD_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, HELVETICA_BOLD_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_HELVETICA_OBLIQUE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, HELVETICA_OBLIQUE_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_HELVETICA_BOLDOBLIQUE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, HELVETICA_BOLDOBLIQUE_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_SYMBOL_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, SYMBOL_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_TIMES_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, TIMES_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_TIMES_ROMAN_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, TIMES_ROMAN_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_TIMES_BOLD_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, TIMES_BOLD_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_TIMES_ITALIC_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, TIMES_ITALIC_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_TIMES_BOLDITALIC_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, TIMES_BOLDITALIC_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_ZAPFDINGBATS_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, ZAPFDINGBATS_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextFontFactory_defaultEncoding_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, defaultEncoding_, NSString *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextFontFactory, defaultEncoding_, NSString *)

FOUNDATION_EXPORT jboolean ComItextpdfTextFontFactory_defaultEmbedding_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextFontFactory, defaultEmbedding_, jboolean)
J2OBJC_STATIC_FIELD_REF_GETTER(ComItextpdfTextFontFactory, defaultEmbedding_, jboolean)

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withNSString_withBoolean_withFloat_withInt_withComItextpdfTextBaseColor_(NSString *fontname, NSString *encoding, jboolean embedded, jfloat size, jint style, ComItextpdfTextBaseColor *color);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withNSString_withBoolean_withFloat_withInt_withComItextpdfTextBaseColor_withBoolean_(NSString *fontname, NSString *encoding, jboolean embedded, jfloat size, jint style, ComItextpdfTextBaseColor *color, jboolean cached);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withNSString_withBoolean_withFloat_withInt_(NSString *fontname, NSString *encoding, jboolean embedded, jfloat size, jint style);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withNSString_withBoolean_withFloat_(NSString *fontname, NSString *encoding, jboolean embedded, jfloat size);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withNSString_withBoolean_(NSString *fontname, NSString *encoding, jboolean embedded);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withNSString_withFloat_withInt_withComItextpdfTextBaseColor_(NSString *fontname, NSString *encoding, jfloat size, jint style, ComItextpdfTextBaseColor *color);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withNSString_withFloat_withInt_(NSString *fontname, NSString *encoding, jfloat size, jint style);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withNSString_withFloat_(NSString *fontname, NSString *encoding, jfloat size);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withNSString_(NSString *fontname, NSString *encoding);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withFloat_withInt_withComItextpdfTextBaseColor_(NSString *fontname, jfloat size, jint style, ComItextpdfTextBaseColor *color);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withFloat_withComItextpdfTextBaseColor_(NSString *fontname, jfloat size, ComItextpdfTextBaseColor *color);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withFloat_withInt_(NSString *fontname, jfloat size, jint style);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_withFloat_(NSString *fontname, jfloat size);

FOUNDATION_EXPORT ComItextpdfTextFont *ComItextpdfTextFontFactory_getFontWithNSString_(NSString *fontname);

FOUNDATION_EXPORT void ComItextpdfTextFontFactory_registerFamilyWithNSString_withNSString_withNSString_(NSString *familyName, NSString *fullName, NSString *path);

FOUNDATION_EXPORT void ComItextpdfTextFontFactory_register__WithNSString_(NSString *path);

FOUNDATION_EXPORT void ComItextpdfTextFontFactory_register__WithNSString_withNSString_(NSString *path, NSString *alias);

FOUNDATION_EXPORT jint ComItextpdfTextFontFactory_registerDirectoryWithNSString_(NSString *dir);

FOUNDATION_EXPORT jint ComItextpdfTextFontFactory_registerDirectoryWithNSString_withBoolean_(NSString *dir, jboolean scanSubdirectories);

FOUNDATION_EXPORT jint ComItextpdfTextFontFactory_registerDirectories();

FOUNDATION_EXPORT id<JavaUtilSet> ComItextpdfTextFontFactory_getRegisteredFonts();

FOUNDATION_EXPORT id<JavaUtilSet> ComItextpdfTextFontFactory_getRegisteredFamilies();

FOUNDATION_EXPORT jboolean ComItextpdfTextFontFactory_containsWithNSString_(NSString *fontname);

FOUNDATION_EXPORT jboolean ComItextpdfTextFontFactory_isRegisteredWithNSString_(NSString *fontname);

FOUNDATION_EXPORT ComItextpdfTextFontFactoryImp *ComItextpdfTextFontFactory_getFontImp();

FOUNDATION_EXPORT void ComItextpdfTextFontFactory_setFontImpWithComItextpdfTextFontFactoryImp_(ComItextpdfTextFontFactoryImp *fontImp);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextFontFactory)

#endif // _ComItextpdfTextFontFactory_H_
