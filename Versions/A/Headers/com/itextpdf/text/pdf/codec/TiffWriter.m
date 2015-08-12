//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/TiffWriter.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/TiffWriter.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/codec/LZWCompressor.h"
#include "com/itextpdf/text/pdf/codec/TIFFConstants.h"
#include "com/itextpdf/text/pdf/codec/TiffWriter.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/Collection.h"
#include "java/util/TreeMap.h"


#line 54
@implementation ComItextpdfTextPdfCodecTiffWriter


#line 57
- (void)addFieldWithComItextpdfTextPdfCodecTiffWriter_FieldBase:(ComItextpdfTextPdfCodecTiffWriter_FieldBase *)field {
  
#line 58
  (void) [((JavaUtilTreeMap *) nil_chk(ifd_)) putWithId:[JavaLangInteger valueOfWithInt:[((ComItextpdfTextPdfCodecTiffWriter_FieldBase *) nil_chk(field)) getTag]] withId:field];
}


#line 61
- (jint)getIfdSize {
  
#line 62
  return 6 + [((JavaUtilTreeMap *) nil_chk(ifd_)) size] * 12;
}


#line 65
- (void)writeFileWithJavaIoOutputStream:(JavaIoOutputStream *)stream {
  
#line 66
  [((JavaIoOutputStream *) nil_chk(stream)) writeWithInt:(jint) 0x4d];
  [stream writeWithInt:(jint) 0x4d];
  [stream writeWithInt:0];
  [stream writeWithInt:42];
  [ComItextpdfTextPdfCodecTiffWriter writeLongWithInt:8 withJavaIoOutputStream:stream];
  [ComItextpdfTextPdfCodecTiffWriter writeShortWithInt:[((JavaUtilTreeMap *) nil_chk(ifd_)) size] withJavaIoOutputStream:stream];
  jint offset = 8 + [self getIfdSize];
  for (ComItextpdfTextPdfCodecTiffWriter_FieldBase * __strong field in nil_chk([ifd_ values])) {
    jint size = [((ComItextpdfTextPdfCodecTiffWriter_FieldBase *) nil_chk(field)) getValueSize];
    if (size > 4) {
      [field setOffsetWithInt:offset];
      offset += size;
    }
    [field writeFieldWithJavaIoOutputStream:stream];
  }
  [ComItextpdfTextPdfCodecTiffWriter writeLongWithInt:0 withJavaIoOutputStream:stream];
  for (ComItextpdfTextPdfCodecTiffWriter_FieldBase * __strong field in nil_chk([ifd_ values])) {
    [((ComItextpdfTextPdfCodecTiffWriter_FieldBase *) nil_chk(field)) writeValueWithJavaIoOutputStream:stream];
  }
}


#line 262
+ (void)writeShortWithInt:(jint)v
   withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  
#line 263
  [((JavaIoOutputStream *) nil_chk(stream)) writeWithInt:(RShift32(v, 8)) & (jint) 0xff];
  [stream writeWithInt:v & (jint) 0xff];
}


#line 267
+ (void)writeLongWithInt:(jint)v
  withJavaIoOutputStream:(JavaIoOutputStream *)stream {
  
#line 268
  [((JavaIoOutputStream *) nil_chk(stream)) writeWithInt:(RShift32(v, 24)) & (jint) 0xff];
  [stream writeWithInt:(RShift32(v, 16)) & (jint) 0xff];
  [stream writeWithInt:(RShift32(v, 8)) & (jint) 0xff];
  [stream writeWithInt:v & (jint) 0xff];
}


#line 274
+ (void)compressLZWWithJavaIoOutputStream:(JavaIoOutputStream *)stream
                                  withInt:(jint)predictor
                            withByteArray:(IOSByteArray *)b
                                  withInt:(jint)height
                                  withInt:(jint)samplesPerPixel
                                  withInt:(jint)stride {
  
#line 276
  ComItextpdfTextPdfCodecLZWCompressor *lzwCompressor = [[ComItextpdfTextPdfCodecLZWCompressor alloc] initWithJavaIoOutputStream:stream withInt:8 withBoolean:YES];
  jboolean usePredictor = predictor == ComItextpdfTextPdfCodecTIFFConstants_PREDICTOR_HORIZONTAL_DIFFERENCING;
  
#line 279
  if (!usePredictor) {
    [lzwCompressor compressWithByteArray:b withInt:0 withInt:((IOSByteArray *) nil_chk(b))->size_];
  }
  else {
    
#line 282
    jint off = 0;
    IOSByteArray *rowBuf = usePredictor ? [IOSByteArray arrayWithLength:stride] : nil;
    for (jint i = 0; i < height; i++) {
      [JavaLangSystem arraycopyWithId:b withInt:off withId:rowBuf withInt:0 withInt:stride];
      for (jint j = stride - 1; j >= samplesPerPixel; j--) {
        *IOSByteArray_GetRef(rowBuf, j) -= IOSByteArray_Get(rowBuf, j - samplesPerPixel);
      }
      [lzwCompressor compressWithByteArray:rowBuf withInt:0 withInt:stride];
      off += stride;
    }
  }
  
#line 294
  [lzwCompressor flush];
}

- (instancetype)init {
  if (self = [super init]) {
    ifd_ =
#line 55
    [[JavaUtilTreeMap alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecTiffWriter *)other {
  [super copyAllFieldsTo:other];
  other->ifd_ = ifd_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addFieldWithComItextpdfTextPdfCodecTiffWriter_FieldBase:", "addField", "V", 0x1, NULL },
    { "getIfdSize", NULL, "I", 0x1, NULL },
    { "writeFileWithJavaIoOutputStream:", "writeFile", "V", 0x1, "Ljava.io.IOException;" },
    { "writeShortWithInt:withJavaIoOutputStream:", "writeShort", "V", 0x9, "Ljava.io.IOException;" },
    { "writeLongWithInt:withJavaIoOutputStream:", "writeLong", "V", 0x9, "Ljava.io.IOException;" },
    { "compressLZWWithJavaIoOutputStream:withInt:withByteArray:withInt:withInt:withInt:", "compressLZW", "V", 0x9, "Ljava.io.IOException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ifd_", NULL, 0x2, "Ljava.util.TreeMap;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTiffWriter = { "TiffWriter", "com.itextpdf.text.pdf.codec", NULL, 0x1, 7, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfCodecTiffWriter;
}

@end


#line 91
@implementation ComItextpdfTextPdfCodecTiffWriter_FieldBase


#line 98
- (instancetype)initWithInt:(jint)tag
                    withInt:(jint)fieldType
                    withInt:(jint)count {
  if (self = [super init]) {
    
#line 99
    self->tag_ = tag;
    
#line 100
    self->fieldType_ = fieldType;
    
#line 101
    self->count_ = count;
  }
  return self;
}


#line 104
- (jint)getValueSize {
  
#line 105
  return (((IOSByteArray *) nil_chk(data_))->size_ + 1) & (jint) 0xfffffffe;
}


#line 108
- (jint)getTag {
  
#line 109
  return tag_;
}


#line 112
- (void)setOffsetWithInt:(jint)offset {
  
#line 113
  self->offset_ = offset;
}


#line 116
- (void)writeFieldWithJavaIoOutputStream:(JavaIoOutputStream *)stream {
  
#line 117
  [ComItextpdfTextPdfCodecTiffWriter writeShortWithInt:tag_ withJavaIoOutputStream:stream];
  [ComItextpdfTextPdfCodecTiffWriter writeShortWithInt:fieldType_ withJavaIoOutputStream:stream];
  [ComItextpdfTextPdfCodecTiffWriter writeLongWithInt:count_ withJavaIoOutputStream:stream];
  if (((IOSByteArray *) nil_chk(data_))->size_ <= 4) {
    [((JavaIoOutputStream *) nil_chk(stream)) writeWithByteArray:data_];
    for (jint k = data_->size_; k < 4; ++k) {
      [stream writeWithInt:0];
    }
  }
  else {
    [ComItextpdfTextPdfCodecTiffWriter writeLongWithInt:offset_ withJavaIoOutputStream:stream];
  }
}


#line 131
- (void)writeValueWithJavaIoOutputStream:(JavaIoOutputStream *)stream {
  
#line 132
  if (((IOSByteArray *) nil_chk(data_))->size_ <= 4)
#line 133
  return;
  [((JavaIoOutputStream *) nil_chk(stream)) writeWithByteArray:data_];
  if ((data_->size_ & 1) == 1)
#line 136
  [stream writeWithInt:0];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecTiffWriter_FieldBase *)other {
  [super copyAllFieldsTo:other];
  other->count_ = count_;
  other->data_ = data_;
  other->fieldType_ = fieldType_;
  other->offset_ = offset_;
  other->tag_ = tag_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withInt:", "FieldBase", NULL, 0x4, NULL },
    { "getValueSize", NULL, "I", 0x1, NULL },
    { "getTag", NULL, "I", 0x1, NULL },
    { "setOffsetWithInt:", "setOffset", "V", 0x1, NULL },
    { "writeFieldWithJavaIoOutputStream:", "writeField", "V", 0x1, "Ljava.io.IOException;" },
    { "writeValueWithJavaIoOutputStream:", "writeValue", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "tag_", NULL, 0x2, "I", NULL,  },
    { "fieldType_", NULL, 0x2, "I", NULL,  },
    { "count_", NULL, 0x2, "I", NULL,  },
    { "data_", NULL, 0x4, "[B", NULL,  },
    { "offset_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTiffWriter_FieldBase = { "FieldBase", "com.itextpdf.text.pdf.codec", "TiffWriter", 0x409, 6, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfCodecTiffWriter_FieldBase;
}

@end


#line 144
@implementation ComItextpdfTextPdfCodecTiffWriter_FieldShort


#line 145
- (instancetype)initWithInt:(jint)tag
                    withInt:(jint)value {
  if (self =
#line 146
  [super initWithInt:tag withInt:3 withInt:1]) {
    
#line 147
    data_ = [IOSByteArray arrayWithLength:2];
    
#line 148
    *IOSByteArray_GetRef(data_, 0) = (jbyte) (RShift32(value, 8));
    
#line 149
    *IOSByteArray_GetRef(data_, 1) = (jbyte) value;
  }
  return self;
}


#line 152
- (instancetype)initWithInt:(jint)tag
               withIntArray:(IOSIntArray *)values {
  if (self =
#line 153
  [super initWithInt:tag withInt:3 withInt:((IOSIntArray *) nil_chk(values))->size_]) {
    
#line 154
    data_ = [IOSByteArray arrayWithLength:values->size_ * 2];
    
#line 155
    jint ptr = 0;
    {
      IOSIntArray *a__ =
#line 156
      values;
      jint const *b__ = a__->buffer_;
      jint const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        jint value = *b__++;
        
#line 157
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(value, 8));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) value;
      }
    }
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "FieldShort", NULL, 0x1, NULL },
    { "initWithInt:withIntArray:", "FieldShort", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTiffWriter_FieldShort = { "FieldShort", "com.itextpdf.text.pdf.codec", "TiffWriter", 0x9, 2, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfCodecTiffWriter_FieldShort;
}

@end


#line 167
@implementation ComItextpdfTextPdfCodecTiffWriter_FieldLong


#line 168
- (instancetype)initWithInt:(jint)tag
                    withInt:(jint)value {
  if (self =
#line 169
  [super initWithInt:tag withInt:4 withInt:1]) {
    
#line 170
    data_ = [IOSByteArray arrayWithLength:4];
    
#line 171
    *IOSByteArray_GetRef(data_, 0) = (jbyte) (RShift32(value, 24));
    
#line 172
    *IOSByteArray_GetRef(data_, 1) = (jbyte) (RShift32(value, 16));
    
#line 173
    *IOSByteArray_GetRef(data_, 2) = (jbyte) (RShift32(value, 8));
    
#line 174
    *IOSByteArray_GetRef(data_, 3) = (jbyte) value;
  }
  return self;
}


#line 177
- (instancetype)initWithInt:(jint)tag
               withIntArray:(IOSIntArray *)values {
  if (self =
#line 178
  [super initWithInt:tag withInt:4 withInt:((IOSIntArray *) nil_chk(values))->size_]) {
    
#line 179
    data_ = [IOSByteArray arrayWithLength:values->size_ * 4];
    
#line 180
    jint ptr = 0;
    {
      IOSIntArray *a__ =
#line 181
      values;
      jint const *b__ = a__->buffer_;
      jint const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        jint value = *b__++;
        
#line 182
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(value, 24));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(value, 16));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(value, 8));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) value;
      }
    }
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "FieldLong", NULL, 0x1, NULL },
    { "initWithInt:withIntArray:", "FieldLong", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTiffWriter_FieldLong = { "FieldLong", "com.itextpdf.text.pdf.codec", "TiffWriter", 0x9, 2, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfCodecTiffWriter_FieldLong;
}

@end


#line 194
@implementation ComItextpdfTextPdfCodecTiffWriter_FieldRational


#line 195
- (instancetype)initWithInt:(jint)tag
               withIntArray:(IOSIntArray *)value {
  return
#line 196
  [self initComItextpdfTextPdfCodecTiffWriter_FieldRationalWithInt:tag withIntArray2:[IOSObjectArray arrayWithObjects:(id[]){ value } count:1 type:[IOSIntArray iosClass]]];
}


#line 199
- (instancetype)initComItextpdfTextPdfCodecTiffWriter_FieldRationalWithInt:(jint)tag
                                                             withIntArray2:(IOSObjectArray *)values {
  if (self =
#line 200
  [super initWithInt:tag withInt:5 withInt:((IOSObjectArray *) nil_chk(values))->size_]) {
    data_ = [IOSByteArray arrayWithLength:values->size_ * 8];
    
#line 202
    jint ptr = 0;
    {
      IOSObjectArray *a__ =
#line 203
      values;
      IOSIntArray * const *b__ = a__->buffer_;
      IOSIntArray * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        IOSIntArray *value = *b__++;
        
#line 204
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(IOSIntArray_Get(nil_chk(value), 0), 24));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(IOSIntArray_Get(value, 0), 16));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(IOSIntArray_Get(value, 0), 8));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) IOSIntArray_Get(value, 0);
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(IOSIntArray_Get(value, 1), 24));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(IOSIntArray_Get(value, 1), 16));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) (RShift32(IOSIntArray_Get(value, 1), 8));
        *IOSByteArray_GetRef(data_, ptr++) = (jbyte) IOSIntArray_Get(value, 1);
      }
    }
  }
  return self;
}

- (instancetype)initWithInt:(jint)tag
              withIntArray2:(IOSObjectArray *)values {
  return [self initComItextpdfTextPdfCodecTiffWriter_FieldRationalWithInt:
#line 199
tag withIntArray2:values];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withIntArray:", "FieldRational", NULL, 0x1, NULL },
    { "initWithInt:withIntArray2:", "FieldRational", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTiffWriter_FieldRational = { "FieldRational", "com.itextpdf.text.pdf.codec", "TiffWriter", 0x9, 2, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfCodecTiffWriter_FieldRational;
}

@end


#line 220
@implementation ComItextpdfTextPdfCodecTiffWriter_FieldByte


#line 221
- (instancetype)initWithInt:(jint)tag
              withByteArray:(IOSByteArray *)values {
  if (self =
#line 222
  [super initWithInt:tag withInt:1 withInt:((IOSByteArray *) nil_chk(values))->size_]) {
    
#line 223
    data_ = values;
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withByteArray:", "FieldByte", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTiffWriter_FieldByte = { "FieldByte", "com.itextpdf.text.pdf.codec", "TiffWriter", 0x9, 1, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfCodecTiffWriter_FieldByte;
}

@end


#line 231
@implementation ComItextpdfTextPdfCodecTiffWriter_FieldUndefined


#line 232
- (instancetype)initWithInt:(jint)tag
              withByteArray:(IOSByteArray *)values {
  if (self =
#line 233
  [super initWithInt:tag withInt:7 withInt:((IOSByteArray *) nil_chk(values))->size_]) {
    
#line 234
    data_ = values;
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withByteArray:", "FieldUndefined", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTiffWriter_FieldUndefined = { "FieldUndefined", "com.itextpdf.text.pdf.codec", "TiffWriter", 0x9, 1, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfCodecTiffWriter_FieldUndefined;
}

@end


#line 242
@implementation ComItextpdfTextPdfCodecTiffWriter_FieldImage


#line 243
- (instancetype)initWithByteArray:(IOSByteArray *)values {
  if (self =
#line 244
  [super initWithInt:ComItextpdfTextPdfCodecTIFFConstants_TIFFTAG_STRIPOFFSETS withInt:4 withInt:1]) {
    
#line 245
    data_ = values;
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:", "FieldImage", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTiffWriter_FieldImage = { "FieldImage", "com.itextpdf.text.pdf.codec", "TiffWriter", 0x9, 1, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfCodecTiffWriter_FieldImage;
}

@end


#line 253
@implementation ComItextpdfTextPdfCodecTiffWriter_FieldAscii


#line 254
- (instancetype)initWithInt:(jint)tag
               withNSString:(NSString *)values {
  if (self =
#line 255
  [super initWithInt:tag withInt:2 withInt:((IOSByteArray *) nil_chk([((NSString *) nil_chk(values)) getBytes]))->size_ + 1]) {
    
#line 256
    IOSByteArray *b = [values getBytes];
    
#line 257
    data_ = [IOSByteArray arrayWithLength:((IOSByteArray *) nil_chk(b))->size_ + 1];
    
#line 258
    [JavaLangSystem arraycopyWithId:b withInt:0 withId:data_ withInt:0 withInt:b->size_];
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withNSString:", "FieldAscii", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTiffWriter_FieldAscii = { "FieldAscii", "com.itextpdf.text.pdf.codec", "TiffWriter", 0x9, 1, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfCodecTiffWriter_FieldAscii;
}

@end
