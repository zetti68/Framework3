//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/factories/GreekAlphabetFactory.java
//

#ifndef _ComItextpdfTextFactoriesGreekAlphabetFactory_H_
#define _ComItextpdfTextFactoriesGreekAlphabetFactory_H_

#import "JreEmulation.h"

@interface ComItextpdfTextFactoriesGreekAlphabetFactory : NSObject {
}

+ (NSString *)getStringWithInt:(jint)index;

+ (NSString *)getLowerCaseStringWithInt:(jint)index;

+ (NSString *)getUpperCaseStringWithInt:(jint)index;

+ (NSString *)getStringWithInt:(jint)index
                   withBoolean:(jboolean)lowercase;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextFactoriesGreekAlphabetFactory_init() {}

#endif // _ComItextpdfTextFactoriesGreekAlphabetFactory_H_