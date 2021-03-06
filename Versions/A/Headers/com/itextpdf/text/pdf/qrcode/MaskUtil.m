//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/MaskUtil.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/MaskUtil.java"

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/qrcode/ByteMatrix.h"
#include "com/itextpdf/text/pdf/qrcode/MaskUtil.h"
#include "com/itextpdf/text/pdf/qrcode/QRCode.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"


#line 24
@implementation ComItextpdfTextPdfQrcodeMaskUtil

- (instancetype)init {
  return [super init];
}


#line 32
+ (jint)applyMaskPenaltyRule1WithComItextpdfTextPdfQrcodeByteMatrix:(ComItextpdfTextPdfQrcodeByteMatrix *)matrix {
  
#line 33
  return [ComItextpdfTextPdfQrcodeMaskUtil applyMaskPenaltyRule1InternalWithComItextpdfTextPdfQrcodeByteMatrix:matrix withBoolean:YES] + [ComItextpdfTextPdfQrcodeMaskUtil applyMaskPenaltyRule1InternalWithComItextpdfTextPdfQrcodeByteMatrix:matrix withBoolean:NO];
}

+ (jint)applyMaskPenaltyRule2WithComItextpdfTextPdfQrcodeByteMatrix:(ComItextpdfTextPdfQrcodeByteMatrix *)matrix {
  
#line 39
  jint penalty = 0;
  IOSObjectArray *array = [((ComItextpdfTextPdfQrcodeByteMatrix *) nil_chk(matrix)) getArray];
  jint width = [matrix getWidth];
  jint height = [matrix getHeight];
  for (jint y = 0; y < height - 1; ++y) {
    for (jint x = 0; x < width - 1; ++x) {
      jint value = IOSByteArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(array), y)), x);
      if (value == IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 1) && value == IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 1)), x) && value == IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 1)), x + 1)) {
        penalty += 3;
      }
    }
  }
  return penalty;
}


#line 57
+ (jint)applyMaskPenaltyRule3WithComItextpdfTextPdfQrcodeByteMatrix:(ComItextpdfTextPdfQrcodeByteMatrix *)matrix {
  
#line 58
  jint penalty = 0;
  IOSObjectArray *array = [((ComItextpdfTextPdfQrcodeByteMatrix *) nil_chk(matrix)) getArray];
  jint width = [matrix getWidth];
  jint height = [matrix getHeight];
  for (jint y = 0; y < height; ++y) {
    for (jint x = 0; x < width; ++x) {
      
#line 65
      if (x + 6 < width &&
#line 66
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(array), y)), x) == 1 &&
#line 67
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 1) == 0 &&
#line 68
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 2) == 1 &&
#line 69
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 3) == 1 &&
#line 70
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 4) == 1 &&
#line 71
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 5) == 0 &&
#line 72
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 6) == 1 &&
#line 73
      ((x + 10 < width &&
#line 74
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 7) == 0 &&
#line 75
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 8) == 0 &&
#line 76
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 9) == 0 &&
#line 77
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x + 10) == 0) ||
#line 78
      (x - 4 >= 0 &&
#line 79
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x - 1) == 0 &&
#line 80
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x - 2) == 0 &&
#line 81
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x - 3) == 0 &&
#line 82
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y)), x - 4) == 0))) {
        penalty += 40;
      }
      if (y + 6 < height &&
#line 86
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(array), y)), x) == 1 &&
#line 87
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 1)), x) == 0 &&
#line 88
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 2)), x) == 1 &&
#line 89
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 3)), x) == 1 &&
#line 90
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 4)), x) == 1 &&
#line 91
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 5)), x) == 0 &&
#line 92
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 6)), x) == 1 &&
#line 93
      ((y + 10 < height &&
#line 94
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 7)), x) == 0 &&
#line 95
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 8)), x) == 0 &&
#line 96
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 9)), x) == 0 &&
#line 97
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y + 10)), x) == 0) ||
#line 98
      (y - 4 >= 0 &&
#line 99
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y - 1)), x) == 0 &&
#line 100
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y - 2)), x) == 0 &&
#line 101
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y - 3)), x) == 0 &&
#line 102
      IOSByteArray_Get(nil_chk(IOSObjectArray_Get(array, y - 4)), x) == 0))) {
        penalty += 40;
      }
    }
  }
  return penalty;
}


#line 119
+ (jint)applyMaskPenaltyRule4WithComItextpdfTextPdfQrcodeByteMatrix:(ComItextpdfTextPdfQrcodeByteMatrix *)matrix {
  
#line 120
  jint numDarkCells = 0;
  IOSObjectArray *array = [((ComItextpdfTextPdfQrcodeByteMatrix *) nil_chk(matrix)) getArray];
  jint width = [matrix getWidth];
  jint height = [matrix getHeight];
  for (jint y = 0; y < height; ++y) {
    for (jint x = 0; x < width; ++x) {
      if (IOSByteArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(array), y)), x) == 1) {
        numDarkCells += 1;
      }
    }
  }
  jint numTotalCells = [matrix getHeight] * [matrix getWidth];
  jdouble darkRatio = (jdouble) numDarkCells / numTotalCells;
  return [JavaLangMath absWithInt:J2ObjCFpToInt((darkRatio * 100 - 50))] / 5 * 10;
}

+ (jboolean)getDataMaskBitWithInt:(jint)maskPattern
                          withInt:(jint)x
                          withInt:(jint)y {
  
#line 139
  if (![ComItextpdfTextPdfQrcodeQRCode isValidMaskPatternWithInt:maskPattern]) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Invalid mask pattern"];
  }
  jint intermediate, temp;
  switch (maskPattern) {
    case 0:
    intermediate = (y + x) & (jint) 0x1;
    break;
    case 1:
    intermediate = y & (jint) 0x1;
    break;
    case 2:
    intermediate = x % 3;
    break;
    case 3:
    intermediate = (y + x) % 3;
    break;
    case 4:
    intermediate = ((URShift32(y, 1)) + (x / 3)) & (jint) 0x1;
    break;
    case 5:
    temp = y * x;
    intermediate = (temp & (jint) 0x1) + (temp % 3);
    break;
    case 6:
    temp = y * x;
    intermediate = (((temp & (jint) 0x1) + (temp % 3)) & (jint) 0x1);
    break;
    case 7:
    temp = y * x;
    intermediate = (((temp % 3) + ((y + x) & (jint) 0x1)) & (jint) 0x1);
    break;
    default:
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"Invalid mask pattern: ", maskPattern)];
  }
  return intermediate == 0;
}


#line 179
+ (jint)applyMaskPenaltyRule1InternalWithComItextpdfTextPdfQrcodeByteMatrix:(ComItextpdfTextPdfQrcodeByteMatrix *)matrix
                                                                withBoolean:(jboolean)isHorizontal {
  
#line 180
  jint penalty = 0;
  jint numSameBitCells = 0;
  jint prevBit = -1;
  
#line 191
  jint iLimit = isHorizontal ? [((ComItextpdfTextPdfQrcodeByteMatrix *) nil_chk(matrix)) getHeight] : [((ComItextpdfTextPdfQrcodeByteMatrix *) nil_chk(matrix)) getWidth];
  jint jLimit = isHorizontal ? [((ComItextpdfTextPdfQrcodeByteMatrix *) nil_chk(matrix)) getWidth] : [((ComItextpdfTextPdfQrcodeByteMatrix *) nil_chk(matrix)) getHeight];
  IOSObjectArray *array = [((ComItextpdfTextPdfQrcodeByteMatrix *) nil_chk(matrix)) getArray];
  for (jint i = 0; i < iLimit; ++i) {
    for (jint j = 0; j < jLimit; ++j) {
      jint bit = isHorizontal ? IOSByteArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(array), i)), j) : IOSByteArray_Get(nil_chk(IOSObjectArray_Get(nil_chk(array), j)), i);
      if (bit == prevBit) {
        numSameBitCells += 1;
        
#line 201
        if (numSameBitCells == 5) {
          penalty += 3;
        }
        else
#line 203
        if (numSameBitCells > 5) {
          
#line 206
          penalty += 1;
        }
      }
      else {
        
#line 209
        numSameBitCells = 1;
        prevBit = bit;
      }
    }
    numSameBitCells = 0;
  }
  return penalty;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "MaskUtil", NULL, 0x2, NULL },
    { "applyMaskPenaltyRule1WithComItextpdfTextPdfQrcodeByteMatrix:", "applyMaskPenaltyRule1", "I", 0x9, NULL },
    { "applyMaskPenaltyRule2WithComItextpdfTextPdfQrcodeByteMatrix:", "applyMaskPenaltyRule2", "I", 0x9, NULL },
    { "applyMaskPenaltyRule3WithComItextpdfTextPdfQrcodeByteMatrix:", "applyMaskPenaltyRule3", "I", 0x9, NULL },
    { "applyMaskPenaltyRule4WithComItextpdfTextPdfQrcodeByteMatrix:", "applyMaskPenaltyRule4", "I", 0x9, NULL },
    { "getDataMaskBitWithInt:withInt:withInt:", "getDataMaskBit", "Z", 0x9, NULL },
    { "applyMaskPenaltyRule1InternalWithComItextpdfTextPdfQrcodeByteMatrix:withBoolean:", "applyMaskPenaltyRule1Internal", "I", 0xa, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfQrcodeMaskUtil = { "MaskUtil", "com.itextpdf.text.pdf.qrcode", NULL, 0x11, 7, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfQrcodeMaskUtil;
}

@end
