//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/QRCodeWriter.java
//

#ifndef _ComItextpdfTextPdfQrcodeQRCodeWriter_H_
#define _ComItextpdfTextPdfQrcodeQRCodeWriter_H_

@class ComItextpdfTextPdfQrcodeByteMatrix;
@class ComItextpdfTextPdfQrcodeQRCode;
@class IOSByteArray;
@protocol JavaUtilMap;

#import "JreEmulation.h"

#define ComItextpdfTextPdfQrcodeQRCodeWriter_QUIET_ZONE_SIZE 4

@interface ComItextpdfTextPdfQrcodeQRCodeWriter : NSObject {
}

- (ComItextpdfTextPdfQrcodeByteMatrix *)encodeWithNSString:(NSString *)contents
                                                   withInt:(jint)width
                                                   withInt:(jint)height;

- (ComItextpdfTextPdfQrcodeByteMatrix *)encodeWithNSString:(NSString *)contents
                                                   withInt:(jint)width
                                                   withInt:(jint)height
                                           withJavaUtilMap:(id<JavaUtilMap>)hints;

+ (ComItextpdfTextPdfQrcodeByteMatrix *)renderResultWithComItextpdfTextPdfQrcodeQRCode:(ComItextpdfTextPdfQrcodeQRCode *)code
                                                                               withInt:(jint)width
                                                                               withInt:(jint)height;

+ (void)setRowColorWithByteArray:(IOSByteArray *)row
                        withByte:(jbyte)value;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfQrcodeQRCodeWriter_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfQrcodeQRCodeWriter, QUIET_ZONE_SIZE, jint)

#endif // _ComItextpdfTextPdfQrcodeQRCodeWriter_H_
