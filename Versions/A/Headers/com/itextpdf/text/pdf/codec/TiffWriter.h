//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/TiffWriter.java
//

#ifndef _ComItextpdfTextPdfCodecTiffWriter_H_
#define _ComItextpdfTextPdfCodecTiffWriter_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfCodecTiffWriter_FieldBase;
@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaIoOutputStream;

@interface ComItextpdfTextPdfCodecTiffWriter : NSObject

#pragma mark Public

- (instancetype)init;

- (void)addFieldWithComItextpdfTextPdfCodecTiffWriter_FieldBase:(ComItextpdfTextPdfCodecTiffWriter_FieldBase *)field;

+ (void)compressLZWWithJavaIoOutputStream:(JavaIoOutputStream *)stream
                                  withInt:(jint)predictor
                            withByteArray:(IOSByteArray *)b
                                  withInt:(jint)height
                                  withInt:(jint)samplesPerPixel
                                  withInt:(jint)stride;

- (jint)getIfdSize;

- (void)writeFileWithJavaIoOutputStream:(JavaIoOutputStream *)stream;

+ (void)writeLongWithInt:(jint)v
  withJavaIoOutputStream:(JavaIoOutputStream *)stream;

+ (void)writeShortWithInt:(jint)v
   withJavaIoOutputStream:(JavaIoOutputStream *)stream;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecTiffWriter)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_writeShortWithInt_withJavaIoOutputStream_(jint v, JavaIoOutputStream *stream);

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_writeLongWithInt_withJavaIoOutputStream_(jint v, JavaIoOutputStream *stream);

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_compressLZWWithJavaIoOutputStream_withInt_withByteArray_withInt_withInt_withInt_(JavaIoOutputStream *stream, jint predictor, IOSByteArray *b, jint height, jint samplesPerPixel, jint stride);

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_init(ComItextpdfTextPdfCodecTiffWriter *self);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter *new_ComItextpdfTextPdfCodecTiffWriter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecTiffWriter)

@interface ComItextpdfTextPdfCodecTiffWriter_FieldBase : NSObject {
 @public
  IOSByteArray *data_;
}

#pragma mark Public

- (jint)getTag;

- (jint)getValueSize;

- (void)setOffsetWithInt:(jint)offset;

- (void)writeFieldWithJavaIoOutputStream:(JavaIoOutputStream *)stream;

- (void)writeValueWithJavaIoOutputStream:(JavaIoOutputStream *)stream;

#pragma mark Protected

- (instancetype)initWithInt:(jint)tag
                    withInt:(jint)fieldType
                    withInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecTiffWriter_FieldBase)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecTiffWriter_FieldBase, data_, IOSByteArray *)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldBase_initWithInt_withInt_withInt_(ComItextpdfTextPdfCodecTiffWriter_FieldBase *self, jint tag, jint fieldType, jint count);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecTiffWriter_FieldBase)

@interface ComItextpdfTextPdfCodecTiffWriter_FieldShort : ComItextpdfTextPdfCodecTiffWriter_FieldBase

#pragma mark Public

- (instancetype)initWithInt:(jint)tag
                    withInt:(jint)value;

- (instancetype)initWithInt:(jint)tag
               withIntArray:(IOSIntArray *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecTiffWriter_FieldShort)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldShort_initWithInt_withInt_(ComItextpdfTextPdfCodecTiffWriter_FieldShort *self, jint tag, jint value);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldShort *new_ComItextpdfTextPdfCodecTiffWriter_FieldShort_initWithInt_withInt_(jint tag, jint value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldShort_initWithInt_withIntArray_(ComItextpdfTextPdfCodecTiffWriter_FieldShort *self, jint tag, IOSIntArray *values);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldShort *new_ComItextpdfTextPdfCodecTiffWriter_FieldShort_initWithInt_withIntArray_(jint tag, IOSIntArray *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecTiffWriter_FieldShort)

@interface ComItextpdfTextPdfCodecTiffWriter_FieldLong : ComItextpdfTextPdfCodecTiffWriter_FieldBase

#pragma mark Public

- (instancetype)initWithInt:(jint)tag
                    withInt:(jint)value;

- (instancetype)initWithInt:(jint)tag
               withIntArray:(IOSIntArray *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecTiffWriter_FieldLong)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldLong_initWithInt_withInt_(ComItextpdfTextPdfCodecTiffWriter_FieldLong *self, jint tag, jint value);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldLong *new_ComItextpdfTextPdfCodecTiffWriter_FieldLong_initWithInt_withInt_(jint tag, jint value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldLong_initWithInt_withIntArray_(ComItextpdfTextPdfCodecTiffWriter_FieldLong *self, jint tag, IOSIntArray *values);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldLong *new_ComItextpdfTextPdfCodecTiffWriter_FieldLong_initWithInt_withIntArray_(jint tag, IOSIntArray *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecTiffWriter_FieldLong)

@interface ComItextpdfTextPdfCodecTiffWriter_FieldRational : ComItextpdfTextPdfCodecTiffWriter_FieldBase

#pragma mark Public

- (instancetype)initWithInt:(jint)tag
               withIntArray:(IOSIntArray *)value;

- (instancetype)initWithInt:(jint)tag
              withIntArray2:(IOSObjectArray *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecTiffWriter_FieldRational)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldRational_initWithInt_withIntArray_(ComItextpdfTextPdfCodecTiffWriter_FieldRational *self, jint tag, IOSIntArray *value);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldRational *new_ComItextpdfTextPdfCodecTiffWriter_FieldRational_initWithInt_withIntArray_(jint tag, IOSIntArray *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldRational_initWithInt_withIntArray2_(ComItextpdfTextPdfCodecTiffWriter_FieldRational *self, jint tag, IOSObjectArray *values);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldRational *new_ComItextpdfTextPdfCodecTiffWriter_FieldRational_initWithInt_withIntArray2_(jint tag, IOSObjectArray *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecTiffWriter_FieldRational)

@interface ComItextpdfTextPdfCodecTiffWriter_FieldByte : ComItextpdfTextPdfCodecTiffWriter_FieldBase

#pragma mark Public

- (instancetype)initWithInt:(jint)tag
              withByteArray:(IOSByteArray *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecTiffWriter_FieldByte)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldByte_initWithInt_withByteArray_(ComItextpdfTextPdfCodecTiffWriter_FieldByte *self, jint tag, IOSByteArray *values);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldByte *new_ComItextpdfTextPdfCodecTiffWriter_FieldByte_initWithInt_withByteArray_(jint tag, IOSByteArray *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecTiffWriter_FieldByte)

@interface ComItextpdfTextPdfCodecTiffWriter_FieldUndefined : ComItextpdfTextPdfCodecTiffWriter_FieldBase

#pragma mark Public

- (instancetype)initWithInt:(jint)tag
              withByteArray:(IOSByteArray *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecTiffWriter_FieldUndefined)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldUndefined_initWithInt_withByteArray_(ComItextpdfTextPdfCodecTiffWriter_FieldUndefined *self, jint tag, IOSByteArray *values);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldUndefined *new_ComItextpdfTextPdfCodecTiffWriter_FieldUndefined_initWithInt_withByteArray_(jint tag, IOSByteArray *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecTiffWriter_FieldUndefined)

@interface ComItextpdfTextPdfCodecTiffWriter_FieldImage : ComItextpdfTextPdfCodecTiffWriter_FieldBase

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecTiffWriter_FieldImage)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldImage_initWithByteArray_(ComItextpdfTextPdfCodecTiffWriter_FieldImage *self, IOSByteArray *values);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldImage *new_ComItextpdfTextPdfCodecTiffWriter_FieldImage_initWithByteArray_(IOSByteArray *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecTiffWriter_FieldImage)

@interface ComItextpdfTextPdfCodecTiffWriter_FieldAscii : ComItextpdfTextPdfCodecTiffWriter_FieldBase

#pragma mark Public

- (instancetype)initWithInt:(jint)tag
               withNSString:(NSString *)values;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfCodecTiffWriter_FieldAscii)

FOUNDATION_EXPORT void ComItextpdfTextPdfCodecTiffWriter_FieldAscii_initWithInt_withNSString_(ComItextpdfTextPdfCodecTiffWriter_FieldAscii *self, jint tag, NSString *values);

FOUNDATION_EXPORT ComItextpdfTextPdfCodecTiffWriter_FieldAscii *new_ComItextpdfTextPdfCodecTiffWriter_FieldAscii_initWithInt_withNSString_(jint tag, NSString *values) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfCodecTiffWriter_FieldAscii)

#endif // _ComItextpdfTextPdfCodecTiffWriter_H_
