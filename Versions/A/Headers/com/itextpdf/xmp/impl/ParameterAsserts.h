//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/ParameterAsserts.java
//

#ifndef _ComItextpdfXmpImplParameterAsserts_H_
#define _ComItextpdfXmpImplParameterAsserts_H_

@protocol ComItextpdfXmpXMPMeta;

#import "JreEmulation.h"
#include "com/itextpdf/xmp/XMPConst.h"

@interface ComItextpdfXmpImplParameterAsserts : NSObject < ComItextpdfXmpXMPConst > {
}

- (instancetype)init;

+ (void)assertArrayNameWithNSString:(NSString *)arrayName;

+ (void)assertPropNameWithNSString:(NSString *)propName;

+ (void)assertSchemaNSWithNSString:(NSString *)schemaNS;

+ (void)assertPrefixWithNSString:(NSString *)prefix;

+ (void)assertSpecificLangWithNSString:(NSString *)specificLang;

+ (void)assertStructNameWithNSString:(NSString *)structName;

+ (void)assertNotNullWithId:(id)param;

+ (void)assertImplementationWithComItextpdfXmpXMPMeta:(id<ComItextpdfXmpXMPMeta>)xmp;

@end

__attribute__((always_inline)) inline void ComItextpdfXmpImplParameterAsserts_init() {}

#endif // _ComItextpdfXmpImplParameterAsserts_H_
