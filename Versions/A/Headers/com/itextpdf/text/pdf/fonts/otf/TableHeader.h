//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/otf/TableHeader.java
//

#ifndef _ComItextpdfTextPdfFontsOtfTableHeader_H_
#define _ComItextpdfTextPdfFontsOtfTableHeader_H_

#import "JreEmulation.h"

@interface ComItextpdfTextPdfFontsOtfTableHeader : NSObject {
 @public
  jint version__;
  jint scriptListOffset_;
  jint featureListOffset_;
  jint lookupListOffset_;
}

- (instancetype)initWithInt:(jint)version_
                    withInt:(jint)scriptListOffset
                    withInt:(jint)featureListOffset
                    withInt:(jint)lookupListOffset;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsOtfTableHeader *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfFontsOtfTableHeader_init() {}

#endif // _ComItextpdfTextPdfFontsOtfTableHeader_H_