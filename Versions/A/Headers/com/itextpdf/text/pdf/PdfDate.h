//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfDate.java
//

#ifndef _ComItextpdfTextPdfPdfDate_H_
#define _ComItextpdfTextPdfPdfDate_H_

@class IOSIntArray;
@class JavaUtilCalendar;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/PdfString.h"

@interface ComItextpdfTextPdfPdfDate : ComItextpdfTextPdfPdfString {
}

- (instancetype)initWithJavaUtilCalendar:(JavaUtilCalendar *)d;

- (instancetype)init;

- (NSString *)setLengthWithInt:(jint)i
                       withInt:(jint)length;

- (NSString *)getW3CDate;

+ (NSString *)getW3CDateWithNSString:(NSString *)d;

+ (JavaUtilCalendar *)decodeWithNSString:(NSString *)s;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfPdfDate_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfPdfDate)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextPdfPdfDate_DATE_SPACE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfDate, DATE_SPACE_, IOSIntArray *)

#endif // _ComItextpdfTextPdfPdfDate_H_