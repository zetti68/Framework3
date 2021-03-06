//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/GF256.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/GF256.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/qrcode/GF256.h"
#include "com/itextpdf/text/pdf/qrcode/GF256Poly.h"
#include "java/lang/ArithmeticException.h"
#include "java/lang/IllegalArgumentException.h"

BOOL ComItextpdfTextPdfQrcodeGF256_initialized = NO;


#line 30
@implementation ComItextpdfTextPdfQrcodeGF256

ComItextpdfTextPdfQrcodeGF256 * ComItextpdfTextPdfQrcodeGF256_QR_CODE_FIELD_;
ComItextpdfTextPdfQrcodeGF256 * ComItextpdfTextPdfQrcodeGF256_DATA_MATRIX_FIELD_;


#line 47
- (instancetype)initWithInt:(jint)primitive {
  if (self = [super init]) {
    
#line 48
    expTable_ = [IOSIntArray arrayWithLength:256];
    
#line 49
    logTable_ = [IOSIntArray arrayWithLength:256];
    
#line 50
    jint x = 1;
    
#line 51
    for (jint i = 0; i < 256; i++) {
      *IOSIntArray_GetRef(expTable_, i) = x;
      LShiftAssignInt(&x, 1);
      if (x >= (jint) 0x100) {
        x ^= primitive;
      }
    }
    
#line 58
    for (jint i = 0; i < 255; i++) {
      *IOSIntArray_GetRef(logTable_, IOSIntArray_Get(expTable_, i)) = i;
    }
    
#line 62
    zero_ = [[ComItextpdfTextPdfQrcodeGF256Poly alloc] initWithComItextpdfTextPdfQrcodeGF256:self withIntArray:[IOSIntArray arrayWithInts:(jint[]){ 0 } count:1]];
    
#line 63
    one_ = [[ComItextpdfTextPdfQrcodeGF256Poly alloc] initWithComItextpdfTextPdfQrcodeGF256:self withIntArray:[IOSIntArray arrayWithInts:(jint[]){ 1 } count:1]];
  }
  return self;
}


#line 66
- (ComItextpdfTextPdfQrcodeGF256Poly *)getZero {
  
#line 67
  return zero_;
}


#line 70
- (ComItextpdfTextPdfQrcodeGF256Poly *)getOne {
  
#line 71
  return one_;
}


#line 77
- (ComItextpdfTextPdfQrcodeGF256Poly *)buildMonomialWithInt:(jint)degree
                                                    withInt:(jint)coefficient {
  
#line 78
  if (degree < 0) {
    @throw [[JavaLangIllegalArgumentException alloc] init];
  }
  if (coefficient == 0) {
    return zero_;
  }
  IOSIntArray *coefficients = [IOSIntArray arrayWithLength:degree + 1];
  *IOSIntArray_GetRef(coefficients, 0) = coefficient;
  return [[ComItextpdfTextPdfQrcodeGF256Poly alloc] initWithComItextpdfTextPdfQrcodeGF256:self withIntArray:coefficients];
}


#line 94
+ (jint)addOrSubtractWithInt:(jint)a
                     withInt:(jint)b {
  
#line 95
  return a ^ b;
}

- (jint)expWithInt:(jint)a {
  
#line 102
  return IOSIntArray_Get(nil_chk(expTable_), a);
}


#line 108
- (jint)logWithInt:(jint)a {
  
#line 109
  if (a == 0) {
    @throw [[JavaLangIllegalArgumentException alloc] init];
  }
  return IOSIntArray_Get(nil_chk(logTable_), a);
}


#line 118
- (jint)inverseWithInt:(jint)a {
  
#line 119
  if (a == 0) {
    @throw [[JavaLangArithmeticException alloc] init];
  }
  return IOSIntArray_Get(nil_chk(expTable_), 255 - IOSIntArray_Get(nil_chk(logTable_), a));
}


#line 130
- (jint)multiplyWithInt:(jint)a
                withInt:(jint)b {
  
#line 131
  if (a == 0 || b == 0) {
    return 0;
  }
  if (a == 1) {
    return b;
  }
  if (b == 1) {
    return a;
  }
  return IOSIntArray_Get(nil_chk(expTable_), (IOSIntArray_Get(nil_chk(logTable_), a) + IOSIntArray_Get(logTable_, b)) % 255);
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfQrcodeGF256 *)other {
  [super copyAllFieldsTo:other];
  other->expTable_ = expTable_;
  other->logTable_ = logTable_;
  other->one_ = one_;
  other->zero_ = zero_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfQrcodeGF256 class]) {
    ComItextpdfTextPdfQrcodeGF256_QR_CODE_FIELD_ =
#line 32
    [[ComItextpdfTextPdfQrcodeGF256 alloc] initWithInt:(jint) 0x011D];
    ComItextpdfTextPdfQrcodeGF256_DATA_MATRIX_FIELD_ =
#line 33
    [[ComItextpdfTextPdfQrcodeGF256 alloc] initWithInt:(jint) 0x012D];
    ComItextpdfTextPdfQrcodeGF256_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "GF256", NULL, 0x2, NULL },
    { "getZero", NULL, "Lcom.itextpdf.text.pdf.qrcode.GF256Poly;", 0x0, NULL },
    { "getOne", NULL, "Lcom.itextpdf.text.pdf.qrcode.GF256Poly;", 0x0, NULL },
    { "buildMonomialWithInt:withInt:", "buildMonomial", "Lcom.itextpdf.text.pdf.qrcode.GF256Poly;", 0x0, NULL },
    { "addOrSubtractWithInt:withInt:", "addOrSubtract", "I", 0x8, NULL },
    { "expWithInt:", "exp", "I", 0x0, NULL },
    { "logWithInt:", "log", "I", 0x0, NULL },
    { "inverseWithInt:", "inverse", "I", 0x0, NULL },
    { "multiplyWithInt:withInt:", "multiply", "I", 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "QR_CODE_FIELD_", NULL, 0x19, "Lcom.itextpdf.text.pdf.qrcode.GF256;", &ComItextpdfTextPdfQrcodeGF256_QR_CODE_FIELD_,  },
    { "DATA_MATRIX_FIELD_", NULL, 0x19, "Lcom.itextpdf.text.pdf.qrcode.GF256;", &ComItextpdfTextPdfQrcodeGF256_DATA_MATRIX_FIELD_,  },
    { "expTable_", NULL, 0x12, "[I", NULL,  },
    { "logTable_", NULL, 0x12, "[I", NULL,  },
    { "zero_", NULL, 0x12, "Lcom.itextpdf.text.pdf.qrcode.GF256Poly;", NULL,  },
    { "one_", NULL, 0x12, "Lcom.itextpdf.text.pdf.qrcode.GF256Poly;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfQrcodeGF256 = { "GF256", "com.itextpdf.text.pdf.qrcode", NULL, 0x11, 9, methods, 6, fields, 0, NULL};
  return &_ComItextpdfTextPdfQrcodeGF256;
}

@end
