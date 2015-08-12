//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/BitArray.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/BitArray.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/qrcode/BitArray.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuffer.h"


#line 25
@implementation ComItextpdfTextPdfQrcodeBitArray


#line 34
- (instancetype)initWithInt:(jint)size {
  if (self = [super init]) {
    
#line 35
    if (size < 1) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"size must be at least 1"];
    }
    
#line 38
    self->size_ = size;
    
#line 39
    self->bits_ = [ComItextpdfTextPdfQrcodeBitArray makeArrayWithInt:size];
  }
  return self;
}


#line 42
- (jint)getSize {
  
#line 43
  return size_;
}


#line 50
- (jboolean)getWithInt:(jint)i {
  
#line 51
  return (IOSIntArray_Get(nil_chk(bits_), RShift32(i, 5)) & (LShift32(1, (i & (jint) 0x1F)))) != 0;
}


#line 59
- (void)setWithInt:(jint)i {
  
#line 60
  *IOSIntArray_GetRef(nil_chk(bits_), RShift32(i, 5)) |= LShift32(1, (i & (jint) 0x1F));
}


#line 68
- (void)flipWithInt:(jint)i {
  
#line 69
  *IOSIntArray_GetRef(nil_chk(bits_), RShift32(i, 5)) ^= LShift32(1, (i & (jint) 0x1F));
}


#line 79
- (void)setBulkWithInt:(jint)i
               withInt:(jint)newBits {
  
#line 80
  *IOSIntArray_GetRef(nil_chk(bits_), RShift32(i, 5)) = newBits;
}

- (void)clear {
  
#line 87
  jint max = ((IOSIntArray *) nil_chk(bits_))->size_;
  for (jint i = 0; i < max; i++) {
    *IOSIntArray_GetRef(bits_, i) = 0;
  }
}


#line 102
- (jboolean)isRangeWithInt:(jint)start
                   withInt:(jint)end
               withBoolean:(jboolean)value {
  
#line 103
  if (end < start) {
    @throw [[JavaLangIllegalArgumentException alloc] init];
  }
  if (end == start) {
    return YES;
  }
  end--;
  jint firstInt = RShift32(start, 5);
  jint lastInt = RShift32(end, 5);
  for (jint i = firstInt; i <= lastInt; i++) {
    jint firstBit = i > firstInt ? 0 : start & (jint) 0x1F;
    jint lastBit = i < lastInt ? 31 : end & (jint) 0x1F;
    jint mask;
    if (firstBit == 0 && lastBit == 31) {
      mask = -1;
    }
    else {
      
#line 119
      mask = 0;
      for (jint j = firstBit; j <= lastBit; j++) {
        mask |= LShift32(1, j);
      }
    }
    
#line 127
    if ((IOSIntArray_Get(nil_chk(bits_), i) & mask) != (value ? mask : 0)) {
      return NO;
    }
  }
  return YES;
}


#line 138
- (IOSIntArray *)getBitArray {
  
#line 139
  return bits_;
}


#line 145
- (void)reverse {
  
#line 146
  IOSIntArray *newBits = [IOSIntArray arrayWithLength:((IOSIntArray *) nil_chk(bits_))->size_];
  jint size = self->size_;
  for (jint i = 0; i < size; i++) {
    if ([self getWithInt:size - i - 1]) {
      *IOSIntArray_GetRef(newBits, RShift32(i, 5)) |= LShift32(1, (i & (jint) 0x1F));
    }
  }
  bits_ = newBits;
}


#line 156
+ (IOSIntArray *)makeArrayWithInt:(jint)size {
  
#line 157
  jint arraySize = RShift32(size, 5);
  if ((size & (jint) 0x1F) != 0) {
    arraySize++;
  }
  return [IOSIntArray arrayWithLength:arraySize];
}

- (NSString *)description {
  
#line 165
  JavaLangStringBuffer *result = [[JavaLangStringBuffer alloc] initWithInt:size_];
  for (jint i = 0; i < size_; i++) {
    if ((i & (jint) 0x07) == 0) {
      (void) [result appendWithChar:' '];
    }
    (void) [result appendWithChar:[self getWithInt:i] ? 'X' : '.'];
  }
  return [result description];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfQrcodeBitArray *)other {
  [super copyAllFieldsTo:other];
  other->bits_ = bits_;
  other->size_ = size_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "BitArray", NULL, 0x1, NULL },
    { "getSize", NULL, "I", 0x1, NULL },
    { "getWithInt:", "get", "Z", 0x1, NULL },
    { "setWithInt:", "set", "V", 0x1, NULL },
    { "flipWithInt:", "flip", "V", 0x1, NULL },
    { "setBulkWithInt:withInt:", "setBulk", "V", 0x1, NULL },
    { "clear", NULL, "V", 0x1, NULL },
    { "isRangeWithInt:withInt:withBoolean:", "isRange", "Z", 0x1, NULL },
    { "getBitArray", NULL, "[I", 0x1, NULL },
    { "reverse", NULL, "V", 0x1, NULL },
    { "makeArrayWithInt:", "makeArray", "[I", 0xa, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bits_", NULL, 0x1, "[I", NULL,  },
    { "size_", NULL, 0x11, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfQrcodeBitArray = { "BitArray", "com.itextpdf.text.pdf.qrcode", NULL, 0x11, 12, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfQrcodeBitArray;
}

@end
