//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/RefKey.java
//

#ifndef _ComItextpdfTextPdfRefKey_H_
#define _ComItextpdfTextPdfRefKey_H_

@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPdfIndirectReference;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfRefKey : NSObject {
 @public
  jint num_;
  jint gen_;
}

- (instancetype)initWithInt:(jint)num
                    withInt:(jint)gen;

- (instancetype)initWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref;

- (instancetype)initWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)ref;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)o;

- (NSString *)description;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfRefKey *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfRefKey_init() {}

#endif // _ComItextpdfTextPdfRefKey_H_
