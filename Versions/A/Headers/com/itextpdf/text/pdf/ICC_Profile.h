//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/ICC_Profile.java
//

#ifndef _ComItextpdfTextPdfICC_Profile_H_
#define _ComItextpdfTextPdfICC_Profile_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class JavaIoInputStream;

@interface ComItextpdfTextPdfICC_Profile : NSObject {
 @public
  IOSByteArray *data_;
  jint numComponents_;
}

#pragma mark Public

- (IOSByteArray *)getData;

+ (ComItextpdfTextPdfICC_Profile *)getInstanceWithByteArray:(IOSByteArray *)data;

+ (ComItextpdfTextPdfICC_Profile *)getInstanceWithByteArray:(IOSByteArray *)data
                                                    withInt:(jint)numComponents;

+ (ComItextpdfTextPdfICC_Profile *)getInstanceWithJavaIoInputStream:(JavaIoInputStream *)file;

+ (ComItextpdfTextPdfICC_Profile *)GetInstanceWithNSString:(NSString *)fname;

- (jint)getNumComponents;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(ComItextpdfTextPdfICC_Profile)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfICC_Profile, data_, IOSByteArray *)

FOUNDATION_EXPORT void ComItextpdfTextPdfICC_Profile_init(ComItextpdfTextPdfICC_Profile *self);

FOUNDATION_EXPORT ComItextpdfTextPdfICC_Profile *new_ComItextpdfTextPdfICC_Profile_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComItextpdfTextPdfICC_Profile *ComItextpdfTextPdfICC_Profile_getInstanceWithByteArray_withInt_(IOSByteArray *data, jint numComponents);

FOUNDATION_EXPORT ComItextpdfTextPdfICC_Profile *ComItextpdfTextPdfICC_Profile_getInstanceWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT ComItextpdfTextPdfICC_Profile *ComItextpdfTextPdfICC_Profile_getInstanceWithJavaIoInputStream_(JavaIoInputStream *file);

FOUNDATION_EXPORT ComItextpdfTextPdfICC_Profile *ComItextpdfTextPdfICC_Profile_GetInstanceWithNSString_(NSString *fname);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfICC_Profile)

#endif // _ComItextpdfTextPdfICC_Profile_H_
