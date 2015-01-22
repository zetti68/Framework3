//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Jpeg2000.java
//

#ifndef _ComItextpdfTextJpeg2000_H_
#define _ComItextpdfTextJpeg2000_H_

@class ComItextpdfTextJpeg2000_ColorSpecBox;
@class IOSByteArray;
@class JavaIoInputStream;
@class JavaNetURL;

#import "JreEmulation.h"
#include "com/itextpdf/text/Image.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"

#define ComItextpdfTextJpeg2000_JP2_BPCC 1651532643
#define ComItextpdfTextJpeg2000_JP2_COLR 1668246642
#define ComItextpdfTextJpeg2000_JP2_DBTL 1685348972
#define ComItextpdfTextJpeg2000_JP2_FTYP 1718909296
#define ComItextpdfTextJpeg2000_JP2_IHDR 1768449138
#define ComItextpdfTextJpeg2000_JP2_JP 1783636000
#define ComItextpdfTextJpeg2000_JP2_JP2 1785737760
#define ComItextpdfTextJpeg2000_JP2_JP2C 1785737827
#define ComItextpdfTextJpeg2000_JP2_JP2H 1785737832
#define ComItextpdfTextJpeg2000_JP2_URL 1970433056
#define ComItextpdfTextJpeg2000_JPIP_JPIP 1785751920

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

- (instancetype)initWithComItextpdfTextImage:(ComItextpdfTextImage *)image;

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url;

- (instancetype)initWithByteArray:(IOSByteArray *)img;

- (instancetype)initWithByteArray:(IOSByteArray *)img
                        withFloat:(jfloat)width
                        withFloat:(jfloat)height;

- (jint)cio_readWithInt:(jint)n;

- (void)jp2_read_boxhdr;

- (void)processParameters;

- (ComItextpdfTextJpeg2000_ColorSpecBox *)jp2_read_colr;

- (jint)getNumOfComps;

- (IOSByteArray *)getBpcBoxData;

- (JavaUtilArrayList *)getColorSpecBoxes;

- (jboolean)isJp2;

- (void)copyAllFieldsTo:(ComItextpdfTextJpeg2000 *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextJpeg2000_init() {}

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

@interface ComItextpdfTextJpeg2000_ColorSpecBox : JavaUtilArrayList {
 @public
  IOSByteArray *colorProfile_;
}

- (jint)getMeth;

- (jint)getPrec;

- (jint)getApprox;

- (jint)getEnumCs;

- (IOSByteArray *)getColorProfile;

- (void)setColorProfileWithByteArray:(IOSByteArray *)colorProfile;

- (instancetype)init;

- (void)copyAllFieldsTo:(ComItextpdfTextJpeg2000_ColorSpecBox *)other;


@end

__attribute__((always_inline)) inline void ComItextpdfTextJpeg2000_ColorSpecBox_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextJpeg2000_ColorSpecBox, colorProfile_, IOSByteArray *)

@interface ComItextpdfTextJpeg2000_ZeroBoxSizeException : JavaIoIOException {
}

- (instancetype)initWithComItextpdfTextJpeg2000:(ComItextpdfTextJpeg2000 *)outer$;

- (instancetype)initWithComItextpdfTextJpeg2000:(ComItextpdfTextJpeg2000 *)outer$
                                   withNSString:(NSString *)s;

@end

__attribute__((always_inline)) inline void ComItextpdfTextJpeg2000_ZeroBoxSizeException_init() {}

#endif // _ComItextpdfTextJpeg2000_H_