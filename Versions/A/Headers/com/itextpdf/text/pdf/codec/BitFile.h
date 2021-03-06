//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/BitFile.java
//

#ifndef _ComItextpdfTextPdfCodecBitFile_H_
#define _ComItextpdfTextPdfCodecBitFile_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class JavaIoOutputStream;

@interface ComItextpdfTextPdfCodecBitFile : NSObject {
 @public
  JavaIoOutputStream *output__;
  IOSByteArray *buffer__;
  jint index__;
  jint bitsLeft__;
  jboolean blocks__;
}

#pragma mark Public

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)output
                               withBoolean:(jboolean)blocks;

- (void)flush;

- (void)writeBitsWithInt:(jint)bits
                 withInt:(jint)numbits;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecBitFile)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecBitFile, output__, JavaIoOutputStream *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecBitFile, buffer__, IOSByteArray *)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecBitFile_initWithJavaIoOutputStream_withBoolean_(ComItextpdfTextPdfCodecBitFile *self, JavaIoOutputStream *output, jboolean blocks);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecBitFile *new_ComItextpdfTextPdfCodecBitFile_initWithJavaIoOutputStream_withBoolean_(JavaIoOutputStream *output, jboolean blocks) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecBitFile)

#endif // _ComItextpdfTextPdfCodecBitFile_H_
