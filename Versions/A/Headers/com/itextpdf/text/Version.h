//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Version.java
//

#ifndef _ComItextpdfTextVersion_H_
#define _ComItextpdfTextVersion_H_

#import "JreEmulation.h"

@interface ComItextpdfTextVersion : NSObject {
 @public
  NSString *iText_;
  NSString *release__;
  NSString *key_;
  NSString *iTextVersion_;
}

+ (ComItextpdfTextVersion *)getInstance;

- (NSString *)getProduct;

- (NSString *)getRelease;

- (NSString *)getVersion;

- (NSString *)getKey;

- (instancetype)init;

- (void)copyAllFieldsTo:(ComItextpdfTextVersion *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextVersion_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextVersion, iText_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextVersion, release__, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextVersion, key_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextVersion, iTextVersion_, NSString *)

FOUNDATION_EXPORT ComItextpdfTextVersion *ComItextpdfTextVersion_version__;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextVersion, version__, ComItextpdfTextVersion *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextVersion, version__, ComItextpdfTextVersion *)

#endif // _ComItextpdfTextVersion_H_
