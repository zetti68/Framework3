//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/Vector.java
//

#ifndef _ComItextpdfTextPdfParserVector_H_
#define _ComItextpdfTextPdfParserVector_H_

@class ComItextpdfTextPdfParserMatrix;
@class IOSFloatArray;

#import "JreEmulation.h"

#define ComItextpdfTextPdfParserVector_I1 0
#define ComItextpdfTextPdfParserVector_I2 1
#define ComItextpdfTextPdfParserVector_I3 2

@interface ComItextpdfTextPdfParserVector : NSObject {
 @public
  IOSFloatArray *vals_;
}

- (instancetype)initWithFloat:(jfloat)x
                    withFloat:(jfloat)y
                    withFloat:(jfloat)z;

- (jfloat)getWithInt:(jint)index;

- (ComItextpdfTextPdfParserVector *)crossWithComItextpdfTextPdfParserMatrix:(ComItextpdfTextPdfParserMatrix *)by;

- (ComItextpdfTextPdfParserVector *)subtractWithComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)v;

- (ComItextpdfTextPdfParserVector *)crossWithComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)with;

- (ComItextpdfTextPdfParserVector *)normalize;

- (ComItextpdfTextPdfParserVector *)multiplyWithFloat:(jfloat)by;

- (jfloat)dotWithComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)with;

- (jfloat)length;

- (jfloat)lengthSquared;

- (NSString *)description;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)obj;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserVector *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfParserVector_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfParserVector, vals_, IOSFloatArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfParserVector, I1, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfParserVector, I2, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfParserVector, I3, jint)

#endif // _ComItextpdfTextPdfParserVector_H_
