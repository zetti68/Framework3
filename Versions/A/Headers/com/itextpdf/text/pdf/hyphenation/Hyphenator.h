//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/Hyphenator.java
//

#ifndef _ComItextpdfTextPdfHyphenationHyphenator_H_
#define _ComItextpdfTextPdfHyphenationHyphenator_H_

@class ComItextpdfTextPdfHyphenationHyphenation;
@class ComItextpdfTextPdfHyphenationHyphenationTree;
@class IOSCharArray;
@class JavaUtilHashtable;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfHyphenationHyphenator : NSObject {
 @public
  ComItextpdfTextPdfHyphenationHyphenationTree *hyphenTree_;
  jint remainCharCount_;
  jint pushCharCount_;
}

- (instancetype)initWithNSString:(NSString *)lang
                    withNSString:(NSString *)country
                         withInt:(jint)leftMin
                         withInt:(jint)rightMin;

+ (ComItextpdfTextPdfHyphenationHyphenationTree *)getHyphenationTreeWithNSString:(NSString *)lang
                                                                    withNSString:(NSString *)country;

+ (ComItextpdfTextPdfHyphenationHyphenationTree *)getResourceHyphenationTreeWithNSString:(NSString *)key;

+ (ComItextpdfTextPdfHyphenationHyphenationTree *)getFileHyphenationTreeWithNSString:(NSString *)key;

+ (ComItextpdfTextPdfHyphenationHyphenation *)hyphenateWithNSString:(NSString *)lang
                                                       withNSString:(NSString *)country
                                                       withNSString:(NSString *)word
                                                            withInt:(jint)leftMin
                                                            withInt:(jint)rightMin;

+ (ComItextpdfTextPdfHyphenationHyphenation *)hyphenateWithNSString:(NSString *)lang
                                                       withNSString:(NSString *)country
                                                      withCharArray:(IOSCharArray *)word
                                                            withInt:(jint)offset
                                                            withInt:(jint)len
                                                            withInt:(jint)leftMin
                                                            withInt:(jint)rightMin;

- (void)setMinRemainCharCountWithInt:(jint)min;

- (void)setMinPushCharCountWithInt:(jint)min;

- (void)setLanguageWithNSString:(NSString *)lang
                   withNSString:(NSString *)country;

- (ComItextpdfTextPdfHyphenationHyphenation *)hyphenateWithCharArray:(IOSCharArray *)word
                                                             withInt:(jint)offset
                                                             withInt:(jint)len;

- (ComItextpdfTextPdfHyphenationHyphenation *)hyphenateWithNSString:(NSString *)word;

+ (NSString *)getHyphenDir;

+ (void)setHyphenDirWithNSString:(NSString *)_hyphenDir;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfHyphenationHyphenator *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfHyphenationHyphenator_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfHyphenationHyphenator)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfHyphenationHyphenator, hyphenTree_, ComItextpdfTextPdfHyphenationHyphenationTree *)

FOUNDATION_EXPORT JavaUtilHashtable *ComItextpdfTextPdfHyphenationHyphenator_hyphenTrees_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfHyphenationHyphenator, hyphenTrees_, JavaUtilHashtable *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfHyphenationHyphenator, hyphenTrees_, JavaUtilHashtable *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfHyphenationHyphenator_defaultHyphLocation_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfHyphenationHyphenator, defaultHyphLocation_, NSString *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfHyphenationHyphenator_hyphenDir_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfHyphenationHyphenator, hyphenDir_, NSString *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfHyphenationHyphenator, hyphenDir_, NSString *)

#endif // _ComItextpdfTextPdfHyphenationHyphenator_H_