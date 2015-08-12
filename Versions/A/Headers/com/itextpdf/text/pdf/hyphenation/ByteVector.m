//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/ByteVector.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/ByteVector.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/hyphenation/ByteVector.h"
#include "java/lang/System.h"


#line 27
@implementation ComItextpdfTextPdfHyphenationByteVector


#line 46
- (instancetype)init {
  return
#line 47
  [self initComItextpdfTextPdfHyphenationByteVectorWithInt:ComItextpdfTextPdfHyphenationByteVector_DEFAULT_BLOCK_SIZE];
}


#line 50
- (instancetype)initComItextpdfTextPdfHyphenationByteVectorWithInt:(jint)capacity {
  if (self = [super init]) {
    if (capacity > 0) {
      blockSize_ = capacity;
    }
    else {
      
#line 54
      blockSize_ = ComItextpdfTextPdfHyphenationByteVector_DEFAULT_BLOCK_SIZE;
    }
    
#line 56
    array_ = [IOSByteArray arrayWithLength:blockSize_];
    
#line 57
    n_ = 0;
  }
  return self;
}

- (instancetype)initWithInt:(jint)capacity {
  return [self initComItextpdfTextPdfHyphenationByteVectorWithInt:
#line 50
capacity];
}


#line 60
- (instancetype)initWithByteArray:(IOSByteArray *)a {
  if (self = [super init]) {
    
#line 61
    blockSize_ = ComItextpdfTextPdfHyphenationByteVector_DEFAULT_BLOCK_SIZE;
    
#line 62
    array_ = a;
    
#line 63
    n_ = 0;
  }
  return self;
}


#line 66
- (instancetype)initWithByteArray:(IOSByteArray *)a
                          withInt:(jint)capacity {
  if (self = [super init]) {
    
#line 67
    if (capacity > 0) {
      blockSize_ = capacity;
    }
    else {
      
#line 70
      blockSize_ = ComItextpdfTextPdfHyphenationByteVector_DEFAULT_BLOCK_SIZE;
    }
    
#line 72
    array_ = a;
    
#line 73
    n_ = 0;
  }
  return self;
}


#line 76
- (IOSByteArray *)getArray {
  
#line 77
  return array_;
}


#line 83
- (jint)length {
  
#line 84
  return n_;
}


#line 90
- (jint)capacity {
  
#line 91
  return ((IOSByteArray *) nil_chk(array_))->size_;
}


#line 94
- (void)putWithInt:(jint)index
          withByte:(jbyte)val {
  
#line 95
  *IOSByteArray_GetRef(nil_chk(array_), index) = val;
}


#line 98
- (jbyte)getWithInt:(jint)index {
  
#line 99
  return IOSByteArray_Get(nil_chk(array_), index);
}


#line 105
- (jint)alloc__WithInt:(jint)size {
  
#line 106
  jint index = n_;
  jint len = ((IOSByteArray *) nil_chk(array_))->size_;
  if (n_ + size >= len) {
    IOSByteArray *aux = [IOSByteArray arrayWithLength:len + blockSize_];
    [JavaLangSystem arraycopyWithId:array_ withInt:0 withId:aux withInt:0 withInt:len];
    array_ = aux;
  }
  n_ += size;
  return index;
}


#line 117
- (void)trimToSize {
  
#line 118
  if (n_ < ((IOSByteArray *) nil_chk(array_))->size_) {
    IOSByteArray *aux = [IOSByteArray arrayWithLength:n_];
    [JavaLangSystem arraycopyWithId:array_ withInt:0 withId:aux withInt:0 withInt:n_];
    array_ = aux;
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfHyphenationByteVector *)other {
  [super copyAllFieldsTo:other];
  other->array_ = array_;
  other->blockSize_ = blockSize_;
  other->n_ = n_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ByteVector", NULL, 0x1, NULL },
    { "initWithInt:", "ByteVector", NULL, 0x1, NULL },
    { "initWithByteArray:", "ByteVector", NULL, 0x1, NULL },
    { "initWithByteArray:withInt:", "ByteVector", NULL, 0x1, NULL },
    { "getArray", NULL, "[B", 0x1, NULL },
    { "length", NULL, "I", 0x1, NULL },
    { "capacity", NULL, "I", 0x1, NULL },
    { "putWithInt:withByte:", "put", "V", 0x1, NULL },
    { "getWithInt:", "get", "B", 0x1, NULL },
    { "alloc__WithInt:", "alloc", "I", 0x1, NULL },
    { "trimToSize", NULL, "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextPdfHyphenationByteVector_serialVersionUID },
    { "DEFAULT_BLOCK_SIZE_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfHyphenationByteVector_DEFAULT_BLOCK_SIZE },
    { "blockSize_", NULL, 0x2, "I", NULL,  },
    { "array_", NULL, 0x2, "[B", NULL,  },
    { "n_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfHyphenationByteVector = { "ByteVector", "com.itextpdf.text.pdf.hyphenation", NULL, 0x1, 11, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfHyphenationByteVector;
}

@end
