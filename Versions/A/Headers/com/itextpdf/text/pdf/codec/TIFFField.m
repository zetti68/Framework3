//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/TIFFField.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/TIFFField.java"

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/codec/TIFFField.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/IllegalArgumentException.h"


#line 66
@implementation ComItextpdfTextPdfCodecTIFFField


#line 119
- (instancetype)init {
  return [super init];
}


#line 157
- (instancetype)initWithInt:(jint)tag
                    withInt:(jint)type
                    withInt:(jint)count
                     withId:(id)data {
  if (self = [super init]) {
    
#line 158
    self->tag_ = tag;
    
#line 159
    self->type_ = type;
    
#line 160
    self->count_ = count;
    
#line 161
    self->data_ = data;
  }
  return self;
}


#line 167
- (jint)getTag {
  
#line 168
  return tag_;
}


#line 178
- (jint)getType {
  
#line 179
  return type_;
}


#line 185
- (jint)getCount {
  
#line 186
  return count_;
}


#line 201
- (IOSByteArray *)getAsBytes {
  
#line 202
  return (IOSByteArray *) check_class_cast(data_, [IOSByteArray class]);
}


#line 212
- (IOSCharArray *)getAsChars {
  
#line 213
  return (IOSCharArray *) check_class_cast(data_, [IOSCharArray class]);
}


#line 223
- (IOSShortArray *)getAsShorts {
  
#line 224
  return (IOSShortArray *) check_class_cast(data_, [IOSShortArray class]);
}


#line 234
- (IOSIntArray *)getAsInts {
  
#line 235
  return (IOSIntArray *) check_class_cast(data_, [IOSIntArray class]);
}


#line 245
- (IOSLongArray *)getAsLongs {
  
#line 246
  return (IOSLongArray *) check_class_cast(data_, [IOSLongArray class]);
}


#line 255
- (IOSFloatArray *)getAsFloats {
  
#line 256
  return (IOSFloatArray *) check_class_cast(data_, [IOSFloatArray class]);
}


#line 265
- (IOSDoubleArray *)getAsDoubles {
  
#line 266
  return (IOSDoubleArray *) check_class_cast(data_, [IOSDoubleArray class]);
}


#line 275
- (IOSObjectArray *)getAsSRationals {
  
#line 276
  return (IOSObjectArray *) check_class_cast(data_, [IOSObjectArray class]);
}


#line 285
- (IOSObjectArray *)getAsRationals {
  
#line 286
  return (IOSObjectArray *) check_class_cast(data_, [IOSObjectArray class]);
}


#line 302
- (jint)getAsIntWithInt:(jint)index {
  
#line 303
  switch (type_) {
    case ComItextpdfTextPdfCodecTIFFField_TIFF_BYTE:
    
#line 304
    case ComItextpdfTextPdfCodecTIFFField_TIFF_UNDEFINED:
    return IOSByteArray_Get(nil_chk(((IOSByteArray *) check_class_cast(data_, [IOSByteArray class]))), index) & (jint) 0xff;
    case ComItextpdfTextPdfCodecTIFFField_TIFF_SBYTE:
    return IOSByteArray_Get(nil_chk(((IOSByteArray *) check_class_cast(data_, [IOSByteArray class]))), index);
    case ComItextpdfTextPdfCodecTIFFField_TIFF_SHORT:
    return IOSCharArray_Get(nil_chk(((IOSCharArray *) check_class_cast(data_, [IOSCharArray class]))), index) & (jint) 0xffff;
    case ComItextpdfTextPdfCodecTIFFField_TIFF_SSHORT:
    return IOSShortArray_Get(nil_chk(((IOSShortArray *) check_class_cast(data_, [IOSShortArray class]))), index);
    case ComItextpdfTextPdfCodecTIFFField_TIFF_SLONG:
    return IOSIntArray_Get(nil_chk(((IOSIntArray *) check_class_cast(data_, [IOSIntArray class]))), index);
    default:
    @throw [[JavaLangClassCastException alloc] init];
  }
}


#line 332
- (jlong)getAsLongWithInt:(jint)index {
  
#line 333
  switch (type_) {
    case ComItextpdfTextPdfCodecTIFFField_TIFF_BYTE:
    
#line 334
    case ComItextpdfTextPdfCodecTIFFField_TIFF_UNDEFINED:
    return IOSByteArray_Get(nil_chk(((IOSByteArray *) check_class_cast(data_, [IOSByteArray class]))), index) & (jint) 0xff;
    case ComItextpdfTextPdfCodecTIFFField_TIFF_SBYTE:
    return IOSByteArray_Get(nil_chk(((IOSByteArray *) check_class_cast(data_, [IOSByteArray class]))), index);
    case ComItextpdfTextPdfCodecTIFFField_TIFF_SHORT:
    return IOSCharArray_Get(nil_chk(((IOSCharArray *) check_class_cast(data_, [IOSCharArray class]))), index) & (jint) 0xffff;
    case ComItextpdfTextPdfCodecTIFFField_TIFF_SSHORT:
    return IOSShortArray_Get(nil_chk(((IOSShortArray *) check_class_cast(data_, [IOSShortArray class]))), index);
    case ComItextpdfTextPdfCodecTIFFField_TIFF_SLONG:
    return IOSIntArray_Get(nil_chk(((IOSIntArray *) check_class_cast(data_, [IOSIntArray class]))), index);
    case ComItextpdfTextPdfCodecTIFFField_TIFF_LONG:
    return IOSLongArray_Get(nil_chk(((IOSLongArray *) check_class_cast(data_, [IOSLongArray class]))), index);
    default:
    @throw [[JavaLangClassCastException alloc] init];
  }
}


#line 362
- (jfloat)getAsFloatWithInt:(jint)index {
  {
    
#line 381
    IOSIntArray *ivalue;
    
#line 384
    IOSLongArray *lvalue;
    
#line 363
    switch (type_) {
      case ComItextpdfTextPdfCodecTIFFField_TIFF_BYTE:
      return IOSByteArray_Get(nil_chk(((IOSByteArray *) check_class_cast(data_, [IOSByteArray class]))), index) & (jint) 0xff;
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SBYTE:
      return IOSByteArray_Get(nil_chk(((IOSByteArray *) check_class_cast(data_, [IOSByteArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SHORT:
      return IOSCharArray_Get(nil_chk(((IOSCharArray *) check_class_cast(data_, [IOSCharArray class]))), index) & (jint) 0xffff;
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SSHORT:
      return IOSShortArray_Get(nil_chk(((IOSShortArray *) check_class_cast(data_, [IOSShortArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SLONG:
      return IOSIntArray_Get(nil_chk(((IOSIntArray *) check_class_cast(data_, [IOSIntArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_LONG:
      return IOSLongArray_Get(nil_chk(((IOSLongArray *) check_class_cast(data_, [IOSLongArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_FLOAT:
      return IOSFloatArray_Get(nil_chk(((IOSFloatArray *) check_class_cast(data_, [IOSFloatArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_DOUBLE:
      return (jfloat) IOSDoubleArray_Get(nil_chk(((IOSDoubleArray *) check_class_cast(data_, [IOSDoubleArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SRATIONAL:
      ivalue = [self getAsSRationalWithInt:index];
      return (jfloat) ((jdouble) IOSIntArray_Get(nil_chk(ivalue), 0) / IOSIntArray_Get(ivalue, 1));
      case ComItextpdfTextPdfCodecTIFFField_TIFF_RATIONAL:
      lvalue = [self getAsRationalWithInt:index];
      return (jfloat) ((jdouble) IOSLongArray_Get(nil_chk(lvalue), 0) / IOSLongArray_Get(lvalue, 1));
      default:
      @throw [[JavaLangClassCastException alloc] init];
    }
  }
}


#line 400
- (jdouble)getAsDoubleWithInt:(jint)index {
  {
    
#line 419
    IOSIntArray *ivalue;
    
#line 422
    IOSLongArray *lvalue;
    
#line 401
    switch (type_) {
      case ComItextpdfTextPdfCodecTIFFField_TIFF_BYTE:
      return IOSByteArray_Get(nil_chk(((IOSByteArray *) check_class_cast(data_, [IOSByteArray class]))), index) & (jint) 0xff;
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SBYTE:
      return IOSByteArray_Get(nil_chk(((IOSByteArray *) check_class_cast(data_, [IOSByteArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SHORT:
      return IOSCharArray_Get(nil_chk(((IOSCharArray *) check_class_cast(data_, [IOSCharArray class]))), index) & (jint) 0xffff;
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SSHORT:
      return IOSShortArray_Get(nil_chk(((IOSShortArray *) check_class_cast(data_, [IOSShortArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SLONG:
      return IOSIntArray_Get(nil_chk(((IOSIntArray *) check_class_cast(data_, [IOSIntArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_LONG:
      return IOSLongArray_Get(nil_chk(((IOSLongArray *) check_class_cast(data_, [IOSLongArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_FLOAT:
      return IOSFloatArray_Get(nil_chk(((IOSFloatArray *) check_class_cast(data_, [IOSFloatArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_DOUBLE:
      return IOSDoubleArray_Get(nil_chk(((IOSDoubleArray *) check_class_cast(data_, [IOSDoubleArray class]))), index);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_SRATIONAL:
      ivalue = [self getAsSRationalWithInt:index];
      return (jdouble) IOSIntArray_Get(nil_chk(ivalue), 0) / IOSIntArray_Get(ivalue, 1);
      case ComItextpdfTextPdfCodecTIFFField_TIFF_RATIONAL:
      lvalue = [self getAsRationalWithInt:index];
      return (jdouble) IOSLongArray_Get(nil_chk(lvalue), 0) / IOSLongArray_Get(lvalue, 1);
      default:
      @throw [[JavaLangClassCastException alloc] init];
    }
  }
}


#line 435
- (NSString *)getAsStringWithInt:(jint)index {
  
#line 436
  return IOSObjectArray_Get(nil_chk(((IOSObjectArray *) check_class_cast(data_, [IOSObjectArray class]))), index);
}


#line 446
- (IOSIntArray *)getAsSRationalWithInt:(jint)index {
  
#line 447
  return IOSObjectArray_Get(nil_chk(((IOSObjectArray *) check_class_cast(data_, [IOSObjectArray class]))), index);
}


#line 457
- (IOSLongArray *)getAsRationalWithInt:(jint)index {
  
#line 458
  if (type_ == ComItextpdfTextPdfCodecTIFFField_TIFF_LONG)
#line 459
  return [self getAsLongs];
  return IOSObjectArray_Get(nil_chk(((IOSObjectArray *) check_class_cast(data_, [IOSObjectArray class]))), index);
}


#line 472
- (jint)compareToWithId:(ComItextpdfTextPdfCodecTIFFField *)o {
  if (o != nil && ![o isKindOfClass:[ComItextpdfTextPdfCodecTIFFField class]]) {
    @throw [[JavaLangClassCastException alloc] init];
  }
  
#line 473
  if (o == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] init];
  }
  
#line 477
  jint oTag = [((ComItextpdfTextPdfCodecTIFFField *) nil_chk(o)) getTag];
  
#line 479
  if (tag_ < oTag) {
    return -1;
  }
  else
#line 481
  if (tag_ > oTag) {
    return 1;
  }
  else {
    
#line 484
    return 0;
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecTIFFField *)other {
  [super copyAllFieldsTo:other];
  other->count_ = count_;
  other->data_ = data_;
  other->tag_ = tag_;
  other->type_ = type_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TIFFField", NULL, 0x0, NULL },
    { "initWithInt:withInt:withInt:withId:", "TIFFField", NULL, 0x1, NULL },
    { "getTag", NULL, "I", 0x1, NULL },
    { "getType", NULL, "I", 0x1, NULL },
    { "getCount", NULL, "I", 0x1, NULL },
    { "getAsBytes", NULL, "[B", 0x1, NULL },
    { "getAsChars", NULL, "[C", 0x1, NULL },
    { "getAsShorts", NULL, "[S", 0x1, NULL },
    { "getAsInts", NULL, "[I", 0x1, NULL },
    { "getAsLongs", NULL, "[J", 0x1, NULL },
    { "getAsFloats", NULL, "[F", 0x1, NULL },
    { "getAsDoubles", NULL, "[D", 0x1, NULL },
    { "getAsSRationals", NULL, "[[I", 0x1, NULL },
    { "getAsRationals", NULL, "[[J", 0x1, NULL },
    { "getAsIntWithInt:", "getAsInt", "I", 0x1, NULL },
    { "getAsLongWithInt:", "getAsLong", "J", 0x1, NULL },
    { "getAsFloatWithInt:", "getAsFloat", "F", 0x1, NULL },
    { "getAsDoubleWithInt:", "getAsDouble", "D", 0x1, NULL },
    { "getAsStringWithInt:", "getAsString", "Ljava.lang.String;", 0x1, NULL },
    { "getAsSRationalWithInt:", "getAsSRational", "[I", 0x1, NULL },
    { "getAsRationalWithInt:", "getAsRational", "[J", 0x1, NULL },
    { "compareToWithComItextpdfTextPdfCodecTIFFField:", "compareTo", "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextPdfCodecTIFFField_serialVersionUID },
    { "TIFF_BYTE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_BYTE },
    { "TIFF_ASCII_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_ASCII },
    { "TIFF_SHORT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_SHORT },
    { "TIFF_LONG_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_LONG },
    { "TIFF_RATIONAL_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_RATIONAL },
    { "TIFF_SBYTE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_SBYTE },
    { "TIFF_UNDEFINED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_UNDEFINED },
    { "TIFF_SSHORT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_SSHORT },
    { "TIFF_SLONG_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_SLONG },
    { "TIFF_SRATIONAL_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_SRATIONAL },
    { "TIFF_FLOAT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_FLOAT },
    { "TIFF_DOUBLE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecTIFFField_TIFF_DOUBLE },
    { "tag_", NULL, 0x0, "I", NULL,  },
    { "type_", NULL, 0x0, "I", NULL,  },
    { "count_", NULL, 0x0, "I", NULL,  },
    { "data_", NULL, 0x0, "Ljava.lang.Object;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecTIFFField = { "TIFFField", "com.itextpdf.text.pdf.codec", NULL, 0x1, 22, methods, 17, fields, 0, NULL};
  return &_ComItextpdfTextPdfCodecTIFFField;
}

@end