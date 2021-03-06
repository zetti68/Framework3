//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/BarcodeQRCode.java
//

#ifndef _ComItextpdfTextPdfBarcodeQRCode_H_
#define _ComItextpdfTextPdfBarcodeQRCode_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextImage;
@class ComItextpdfTextPdfQrcodeByteMatrix;
@protocol JavaUtilMap;

@interface ComItextpdfTextPdfBarcodeQRCode : NSObject {
 @public
  ComItextpdfTextPdfQrcodeByteMatrix *bm_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)content
                         withInt:(jint)width
                         withInt:(jint)height
                 withJavaUtilMap:(id<JavaUtilMap>)hints;

- (ComItextpdfTextImage *)getImage;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfBarcodeQRCode)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfBarcodeQRCode, bm_, ComItextpdfTextPdfQrcodeByteMatrix *)

FOUNDATION_EXPORT void ComItextpdfTextPdfBarcodeQRCode_initWithNSString_withInt_withInt_withJavaUtilMap_(ComItextpdfTextPdfBarcodeQRCode *self, NSString *content, jint width, jint height, id<JavaUtilMap> hints);

FOUNDATION_EXPORT ComItextpdfTextPdfBarcodeQRCode *new_ComItextpdfTextPdfBarcodeQRCode_initWithNSString_withInt_withInt_withJavaUtilMap_(NSString *content, jint width, jint height, id<JavaUtilMap> hints) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfBarcodeQRCode)

#endif // _ComItextpdfTextPdfBarcodeQRCode_H_
