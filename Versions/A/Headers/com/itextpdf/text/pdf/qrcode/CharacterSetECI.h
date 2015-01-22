//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/CharacterSetECI.java
//

#ifndef _ComItextpdfTextPdfQrcodeCharacterSetECI_H_
#define _ComItextpdfTextPdfQrcodeCharacterSetECI_H_

@class IOSObjectArray;
@class JavaUtilHashMap;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfQrcodeCharacterSetECI : NSObject {
 @public
  NSString *encodingName_;
  jint value_;
}

+ (void)initialize__ OBJC_METHOD_FAMILY_NONE;

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)encodingName;

- (NSString *)getEncodingName;

- (jint)getValue;

+ (void)addCharacterSetWithInt:(jint)value
                  withNSString:(NSString *)encodingName
           withJavaUtilHashMap:(JavaUtilHashMap *)n;

+ (void)addCharacterSetWithInt:(jint)value
             withNSStringArray:(IOSObjectArray *)encodingNames
           withJavaUtilHashMap:(JavaUtilHashMap *)n;

+ (ComItextpdfTextPdfQrcodeCharacterSetECI *)getCharacterSetECIByNameWithNSString:(NSString *)name;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfQrcodeCharacterSetECI *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfQrcodeCharacterSetECI_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfQrcodeCharacterSetECI, encodingName_, NSString *)

FOUNDATION_EXPORT JavaUtilHashMap *ComItextpdfTextPdfQrcodeCharacterSetECI_NAME_TO_ECI_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfQrcodeCharacterSetECI, NAME_TO_ECI_, JavaUtilHashMap *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfQrcodeCharacterSetECI, NAME_TO_ECI_, JavaUtilHashMap *)

#endif // _ComItextpdfTextPdfQrcodeCharacterSetECI_H_
