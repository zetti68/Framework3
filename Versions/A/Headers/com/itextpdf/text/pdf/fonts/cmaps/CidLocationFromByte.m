//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"
#include "com/itextpdf/text/io/RandomAccessSourceFactory.h"
#include "com/itextpdf/text/pdf/PRTokeniser.h"
#include "com/itextpdf/text/pdf/RandomAccessFileOrArray.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte.h"
#include "java/io/IOException.h"


#line 57
@implementation ComItextpdfTextPdfFontsCmapsCidLocationFromByte


#line 60
- (instancetype)initWithByteArray:(IOSByteArray *)data {
  if (self = [super init]) {
    
#line 61
    self->data_ = data;
  }
  return self;
}


#line 64
- (ComItextpdfTextPdfPRTokeniser *)getLocationWithNSString:(NSString *)location {
  
#line 65
  return [[ComItextpdfTextPdfPRTokeniser alloc] initWithComItextpdfTextPdfRandomAccessFileOrArray:[[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithComItextpdfTextIoRandomAccessSource:[((ComItextpdfTextIoRandomAccessSourceFactory *) [[ComItextpdfTextIoRandomAccessSourceFactory alloc] init]) createSourceWithByteArray:data_]]];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsCmapsCidLocationFromByte *)other {
  [super copyAllFieldsTo:other];
  other->data_ = data_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:", "CidLocationFromByte", NULL, 0x1, NULL },
    { "getLocationWithNSString:", "getLocation", "Lcom.itextpdf.text.pdf.PRTokeniser;", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "data_", NULL, 0x2, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsCmapsCidLocationFromByte = { "CidLocationFromByte", "com.itextpdf.text.pdf.fonts.cmaps", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfFontsCmapsCidLocationFromByte;
}

@end
