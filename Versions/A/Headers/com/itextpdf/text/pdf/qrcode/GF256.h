//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/GF256.java
//

#ifndef _ComItextpdfTextPdfQrcodeGF256_H_
#define _ComItextpdfTextPdfQrcodeGF256_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfQrcodeGF256Poly;

@interface ComItextpdfTextPdfQrcodeGF256 : NSObject

#pragma mark Package-Private

+ (jint)addOrSubtractWithInt:(jint)a
                     withInt:(jint)b;

- (ComItextpdfTextPdfQrcodeGF256Poly *)buildMonomialWithInt:(jint)degree
                                                    withInt:(jint)coefficient;

- (jint)expWithInt:(jint)a;

- (ComItextpdfTextPdfQrcodeGF256Poly *)getOne;

- (ComItextpdfTextPdfQrcodeGF256Poly *)getZero;

- (jint)inverseWithInt:(jint)a;

- (jint)logWithInt:(jint)a;

- (jint)multiplyWithInt:(jint)a
                withInt:(jint)b;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfQrcodeGF256)

FOUNDATION_EXPORT ComItextpdfTextPdfQrcodeGF256 *ComItextpdfTextPdfQrcodeGF256_QR_CODE_FIELD_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfQrcodeGF256, QR_CODE_FIELD_, ComItextpdfTextPdfQrcodeGF256 *)

FOUNDATION_EXPORT ComItextpdfTextPdfQrcodeGF256 *ComItextpdfTextPdfQrcodeGF256_DATA_MATRIX_FIELD_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfQrcodeGF256, DATA_MATRIX_FIELD_, ComItextpdfTextPdfQrcodeGF256 *)

FOUNDATION_EXPORT jint ComItextpdfTextPdfQrcodeGF256_addOrSubtractWithInt_withInt_(jint a, jint b);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfQrcodeGF256)

#endif // _ComItextpdfTextPdfQrcodeGF256_H_
