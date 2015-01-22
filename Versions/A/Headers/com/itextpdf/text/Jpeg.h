//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Jpeg.java
//

#ifndef _ComItextpdfTextJpeg_H_
#define _ComItextpdfTextJpeg_H_

@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaIoInputStream;
@class JavaNetURL;

#import "JreEmulation.h"
#include "com/itextpdf/text/Image.h"

#define ComItextpdfTextJpeg_M_APP0 224
#define ComItextpdfTextJpeg_M_APP2 226
#define ComItextpdfTextJpeg_M_APPD 237
#define ComItextpdfTextJpeg_M_APPE 238
#define ComItextpdfTextJpeg_NOPARAM_MARKER 2
#define ComItextpdfTextJpeg_NOT_A_MARKER -1
#define ComItextpdfTextJpeg_UNSUPPORTED_MARKER 1
#define ComItextpdfTextJpeg_VALID_MARKER 0

@interface ComItextpdfTextJpeg : ComItextpdfTextImage {
 @public
  IOSObjectArray *icc_;
}

- (instancetype)initWithComItextpdfTextImage:(ComItextpdfTextImage *)image;

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url;

- (instancetype)initWithByteArray:(IOSByteArray *)img;

- (instancetype)initWithByteArray:(IOSByteArray *)img
                        withFloat:(jfloat)width
                        withFloat:(jfloat)height;

+ (jint)getShortWithJavaIoInputStream:(JavaIoInputStream *)is;

+ (jint)markerWithInt:(jint)marker;

- (void)processParameters;

- (void)copyAllFieldsTo:(ComItextpdfTextJpeg *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextJpeg_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextJpeg)

J2OBJC_FIELD_SETTER(ComItextpdfTextJpeg, icc_, IOSObjectArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, NOT_A_MARKER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, VALID_MARKER, jint)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextJpeg_VALID_MARKERS_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, VALID_MARKERS_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, UNSUPPORTED_MARKER, jint)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextJpeg_UNSUPPORTED_MARKERS_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, UNSUPPORTED_MARKERS_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, NOPARAM_MARKER, jint)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextJpeg_NOPARAM_MARKERS_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, NOPARAM_MARKERS_, IOSIntArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, M_APP0, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, M_APP2, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, M_APPE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, M_APPD, jint)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextJpeg_JFIF_ID_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, JFIF_ID_, IOSByteArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextJpeg_PS_8BIM_RESO_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg, PS_8BIM_RESO_, IOSByteArray *)

#endif // _ComItextpdfTextJpeg_H_