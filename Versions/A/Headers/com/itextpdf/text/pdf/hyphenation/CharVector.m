//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/CharVector.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/CharVector.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/hyphenation/CharVector.h"
#include "java/lang/System.h"


#line 27
@implementation ComItextpdfTextPdfHyphenationCharVector


#line 46
- (instancetype)init {
  return
#line 47
  [self initComItextpdfTextPdfHyphenationCharVectorWithInt:ComItextpdfTextPdfHyphenationCharVector_DEFAULT_BLOCK_SIZE];
}


#line 50
- (instancetype)initComItextpdfTextPdfHyphenationCharVectorWithInt:(jint)capacity {
  if (self = [super init]) {
    if (capacity > 0) {
      blockSize_ = capacity;
    }
    else {
      
#line 54
      blockSize_ = ComItextpdfTextPdfHyphenationCharVector_DEFAULT_BLOCK_SIZE;
    }
    
#line 56
    array_ = [IOSCharArray arrayWithLength:blockSize_];
    
#line 57
    n_ = 0;
  }
  return self;
}

- (instancetype)initWithInt:(jint)capacity {
  return [self initComItextpdfTextPdfHyphenationCharVectorWithInt:
#line 50
capacity];
}


#line 60
- (instancetype)initWithCharArray:(IOSCharArray *)a {
  if (self = [super init]) {
    
#line 61
    blockSize_ = ComItextpdfTextPdfHyphenationCharVector_DEFAULT_BLOCK_SIZE;
    
#line 62
    array_ = a;
    
#line 63
    n_ = ((IOSCharArray *) nil_chk(a))->size_;
  }
  return self;
}


#line 66
- (instancetype)initWithCharArray:(IOSCharArray *)a
                          withInt:(jint)capacity {
  if (self = [super init]) {
    
#line 67
    if (capacity > 0) {
      blockSize_ = capacity;
    }
    else {
      
#line 70
      blockSize_ = ComItextpdfTextPdfHyphenationCharVector_DEFAULT_BLOCK_SIZE;
    }
    
#line 72
    array_ = a;
    
#line 73
    n_ = ((IOSCharArray *) nil_chk(a))->size_;
  }
  return self;
}


#line 79
- (void)clear {
  
#line 80
  n_ = 0;
}


#line 83
- (id)clone {
  
#line 84
  ComItextpdfTextPdfHyphenationCharVector *cv = [[ComItextpdfTextPdfHyphenationCharVector alloc] initWithCharArray:(IOSCharArray *) check_class_cast([((IOSCharArray *) nil_chk(array_)) clone], [IOSCharArray class]) withInt:blockSize_];
  cv->n_ = self->n_;
  return cv;
}


#line 89
- (IOSCharArray *)getArray {
  
#line 90
  return array_;
}


#line 96
- (jint)length {
  
#line 97
  return n_;
}


#line 103
- (jint)capacity {
  
#line 104
  return ((IOSCharArray *) nil_chk(array_))->size_;
}


#line 107
- (void)putWithInt:(jint)index
          withChar:(jchar)val {
  
#line 108
  *IOSCharArray_GetRef(nil_chk(array_), index) = val;
}


#line 111
- (jchar)getWithInt:(jint)index {
  
#line 112
  return IOSCharArray_Get(nil_chk(array_), index);
}


#line 115
- (jint)alloc__WithInt:(jint)size {
  
#line 116
  jint index = n_;
  jint len = ((IOSCharArray *) nil_chk(array_))->size_;
  if (n_ + size >= len) {
    IOSCharArray *aux = [IOSCharArray arrayWithLength:len + blockSize_];
    [JavaLangSystem arraycopyWithId:array_ withInt:0 withId:aux withInt:0 withInt:len];
    array_ = aux;
  }
  n_ += size;
  return index;
}


#line 127
- (void)trimToSize {
  
#line 128
  if (n_ < ((IOSCharArray *) nil_chk(array_))->size_) {
    IOSCharArray *aux = [IOSCharArray arrayWithLength:n_];
    [JavaLangSystem arraycopyWithId:array_ withInt:0 withId:aux withInt:0 withInt:n_];
    array_ = aux;
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfHyphenationCharVector *)other {
  [super copyAllFieldsTo:other];
  other->array_ = array_;
  other->blockSize_ = blockSize_;
  other->n_ = n_;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CharVector", NULL, 0x1, NULL },
    { "initWithInt:", "CharVector", NULL, 0x1, NULL },
    { "initWithCharArray:", "CharVector", NULL, 0x1, NULL },
    { "initWithCharArray:withInt:", "CharVector", NULL, 0x1, NULL },
    { "clear", NULL, "V", 0x1, NULL },
    { "clone", NULL, "Ljava.lang.Object;", 0x1, NULL },
    { "getArray", NULL, "[C", 0x1, NULL },
    { "length", NULL, "I", 0x1, NULL },
    { "capacity", NULL, "I", 0x1, NULL },
    { "putWithInt:withChar:", "put", "V", 0x1, NULL },
    { "getWithInt:", "get", "C", 0x1, NULL },
    { "alloc__WithInt:", "alloc", "I", 0x1, NULL },
    { "trimToSize", NULL, "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextPdfHyphenationCharVector_serialVersionUID },
    { "DEFAULT_BLOCK_SIZE_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfHyphenationCharVector_DEFAULT_BLOCK_SIZE },
    { "blockSize_", NULL, 0x2, "I", NULL,  },
    { "array_", NULL, 0x2, "[C", NULL,  },
    { "n_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfHyphenationCharVector = { "CharVector", "com.itextpdf.text.pdf.hyphenation", NULL, 0x1, 13, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfHyphenationCharVector;
}

@end