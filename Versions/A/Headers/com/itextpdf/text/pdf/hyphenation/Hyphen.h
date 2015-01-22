//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/Hyphen.java
//

#ifndef _ComItextpdfTextPdfHyphenationHyphen_H_
#define _ComItextpdfTextPdfHyphenationHyphen_H_

#import "JreEmulation.h"
#include "java/io/Serializable.h"

#define ComItextpdfTextPdfHyphenationHyphen_serialVersionUID -7666138517324763063LL

@interface ComItextpdfTextPdfHyphenationHyphen : NSObject < JavaIoSerializable > {
 @public
  NSString *preBreak_;
  NSString *noBreak_;
  NSString *postBreak_;
}

- (instancetype)initWithNSString:(NSString *)pre
                    withNSString:(NSString *)no
                    withNSString:(NSString *)post;

- (instancetype)initWithNSString:(NSString *)pre;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfHyphenationHyphen *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfHyphenationHyphen_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfHyphenationHyphen, preBreak_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfHyphenationHyphen, noBreak_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfHyphenationHyphen, postBreak_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfHyphenationHyphen, serialVersionUID, jlong)

#endif // _ComItextpdfTextPdfHyphenationHyphen_H_