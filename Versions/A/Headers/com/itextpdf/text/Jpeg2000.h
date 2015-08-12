//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Jpeg2000.java
//

#ifndef _ComItextpdfTextJpeg2000_H_
#define _ComItextpdfTextJpeg2000_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/Image.h"
#include "java/util/ArrayList.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaNetURL;

#define ComItextpdfTextJpeg2000_JP2_JP 1783636000
#define ComItextpdfTextJpeg2000_JP2_IHDR 1768449138
#define ComItextpdfTextJpeg2000_JPIP_JPIP 1785751920
#define ComItextpdfTextJpeg2000_JP2_FTYP 1718909296
#define ComItextpdfTextJpeg2000_JP2_JP2H 1785737832
#define ComItextpdfTextJpeg2000_JP2_COLR 1668246642
#define ComItextpdfTextJpeg2000_JP2_JP2C 1785737827
#define ComItextpdfTextJpeg2000_JP2_URL 1970433056
#define ComItextpdfTextJpeg2000_JP2_DBTL 1685348972
#define ComItextpdfTextJpeg2000_JP2_BPCC 1651532643
#define ComItextpdfTextJpeg2000_JP2_JP2 1785737760

@interface ComItextpdfTextJpeg2000 : ComItextpdfTextImage {
 @public
  JavaIoInputStream *inp_;
  jint boxLength_;
  jint boxType_;
  jint numOfComps_;
  JavaUtilArrayList *colorSpecBoxes_;
  jboolean isJp2__;
  IOSByteArray *bpcBoxData_;
}

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)img;

- (instancetype)initWithByteArray:(IOSByteArray *)img
                        withFloat:(jfloat)width
                        withFloat:(jfloat)height;

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url;

- (IOSByteArray *)getBpcBoxData;

- (JavaUtilArrayList *)getColorSpecBoxes;

- (jint)getNumOfComps;

- (jboolean)isJp2;

- (void)jp2_read_boxhdr;

#pragma mark Package-Private

- (instancetype)initWithComItextpdfTextImage:(ComItextpdfTextImage *)image;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextJpeg2000)

J2OBJC_FIELD_SETTER(ComItextpdfTextJpeg2000, inp_, JavaIoInputStream *)
J2OBJC_FIELD_SETTER(ComItextpdfTextJpeg2000, colorSpecBoxes_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ComItextpdfTextJpeg2000, bpcBoxData_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_JP, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_IHDR, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JPIP_JPIP, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_FTYP, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_JP2H, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_COLR, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_JP2C, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_URL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_DBTL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_BPCC, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextJpeg2000, JP2_JP2, jint)

FOUNDATION_EXPORT void ComItextpdfTextJpeg2000_initWithComItextpdfTextImage_(ComItextpdfTextJpeg2000 *self, ComItextpdfTextImage *image);

FOUNDATION_EXPORT ComItextpdfTextJpeg2000 *new_ComItextpdfTextJpeg2000_initWithComItextpdfTextImage_(ComItextpdfTextImage *image) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextJpeg2000_initWithJavaNetURL_(ComItextpdfTextJpeg2000 *self, JavaNetURL *url);

FOUNDATION_EXPORT ComItextpdfTextJpeg2000 *new_ComItextpdfTextJpeg2000_initWithJavaNetURL_(JavaNetURL *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextJpeg2000_initWithByteArray_(ComItextpdfTextJpeg2000 *self, IOSByteArray *img);

FOUNDATION_EXPORT ComItextpdfTextJpeg2000 *new_ComItextpdfTextJpeg2000_initWithByteArray_(IOSByteArray *img) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextJpeg2000_initWithByteArray_withFloat_withFloat_(ComItextpdfTextJpeg2000 *self, IOSByteArray *img, jfloat width, jfloat height);

FOUNDATION_EXPORT ComItextpdfTextJpeg2000 *new_ComItextpdfTextJpeg2000_initWithByteArray_withFloat_withFloat_(IOSByteArray *img, jfloat width, jfloat height) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextJpeg2000)

@interface ComItextpdfTextJpeg2000_ColorSpecBox : JavaUtilArrayList

#pragma mark Public

- (instancetype)init;

- (jint)getApprox;

- (IOSByteArray *)getColorProfile;

- (jint)getEnumCs;

- (jint)getMeth;

- (jint)getPrec;

#pragma mark Package-Private

- (void)setColorProfileWithByteArray:(IOSByteArray *)colorProfile;


@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextJpeg2000_ColorSpecBox)

FOUNDATION_EXPORT void ComItextpdfTextJpeg2000_ColorSpecBox_init(ComItextpdfTextJpeg2000_ColorSpecBox *self);

FOUNDATION_EXPORT ComItextpdfTextJpeg2000_ColorSpecBox *new_ComItextpdfTextJpeg2000_ColorSpecBox_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextJpeg2000_ColorSpecBox)

#endif // _ComItextpdfTextJpeg2000_H_
