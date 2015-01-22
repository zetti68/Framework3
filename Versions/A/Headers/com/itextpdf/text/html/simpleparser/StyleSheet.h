//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/StyleSheet.java
//

#ifndef _ComItextpdfTextHtmlSimpleparserStyleSheet_H_
#define _ComItextpdfTextHtmlSimpleparserStyleSheet_H_

@class ComItextpdfTextHtmlSimpleparserChainedProperties;
@class JavaUtilHashMap;
@protocol JavaUtilMap;

#import "JreEmulation.h"

@interface ComItextpdfTextHtmlSimpleparserStyleSheet : NSObject {
 @public
  id<JavaUtilMap> tagMap_;
  id<JavaUtilMap> classMap_;
}

- (instancetype)init;

- (void)loadTagStyleWithNSString:(NSString *)tag
                 withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)loadTagStyleWithNSString:(NSString *)tag
                    withNSString:(NSString *)key
                    withNSString:(NSString *)value;

- (void)loadStyleWithNSString:(NSString *)className_
          withJavaUtilHashMap:(JavaUtilHashMap *)attrs;

- (void)loadStyleWithNSString:(NSString *)className_
                 withNSString:(NSString *)key
                 withNSString:(NSString *)value;

- (void)applyStyleWithNSString:(NSString *)tag
               withJavaUtilMap:(id<JavaUtilMap>)attrs;

+ (void)resolveStyleAttributeWithJavaUtilMap:(id<JavaUtilMap>)h
withComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

- (void)copyAllFieldsTo:(ComItextpdfTextHtmlSimpleparserStyleSheet *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserStyleSheet_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextHtmlSimpleparserStyleSheet, tagMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComItextpdfTextHtmlSimpleparserStyleSheet, classMap_, id<JavaUtilMap>)

#endif // _ComItextpdfTextHtmlSimpleparserStyleSheet_H_