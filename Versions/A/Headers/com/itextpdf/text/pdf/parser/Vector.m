//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/Vector.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/Vector.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/parser/Matrix.h"
#include "com/itextpdf/text/pdf/parser/Vector.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"


#line 58
@implementation ComItextpdfTextPdfParserVector


#line 77
- (instancetype)initWithFloat:(jfloat)x
                    withFloat:(jfloat)y
                    withFloat:(jfloat)z {
  if (self = [super init]) {
    vals_ = [IOSFloatArray arrayWithFloats:(jfloat[]){
#line 68
      0, 0, 0 } count:3];
      
#line 78
      *IOSFloatArray_GetRef(vals_, ComItextpdfTextPdfParserVector_I1) = x;
      
#line 79
      *IOSFloatArray_GetRef(vals_, ComItextpdfTextPdfParserVector_I2) = y;
      
#line 80
      *IOSFloatArray_GetRef(vals_, ComItextpdfTextPdfParserVector_I3) = z;
    }
    return self;
  }


#line 88
- (jfloat)getWithInt:(jint)index {
  
#line 89
  return IOSFloatArray_Get(nil_chk(vals_), index);
}


#line 97
- (ComItextpdfTextPdfParserVector *)crossWithComItextpdfTextPdfParserMatrix:(ComItextpdfTextPdfParserMatrix *)by {
  
#line 99
  jfloat x = IOSFloatArray_Get(nil_chk(vals_), ComItextpdfTextPdfParserVector_I1) * [((ComItextpdfTextPdfParserMatrix *) nil_chk(by)) getWithInt:ComItextpdfTextPdfParserMatrix_I11] + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) * [by getWithInt:ComItextpdfTextPdfParserMatrix_I21] + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) * [by getWithInt:ComItextpdfTextPdfParserMatrix_I31];
  jfloat y = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I1) * [by getWithInt:ComItextpdfTextPdfParserMatrix_I12] + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) * [by getWithInt:ComItextpdfTextPdfParserMatrix_I22] + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) * [by getWithInt:ComItextpdfTextPdfParserMatrix_I32];
  jfloat z = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I1) * [by getWithInt:ComItextpdfTextPdfParserMatrix_I13] + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) * [by getWithInt:ComItextpdfTextPdfParserMatrix_I23] + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) * [by getWithInt:ComItextpdfTextPdfParserMatrix_I33];
  
#line 103
  return [[ComItextpdfTextPdfParserVector alloc] initWithFloat:x withFloat:y withFloat:z];
}


#line 111
- (ComItextpdfTextPdfParserVector *)subtractWithComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)v {
  
#line 112
  jfloat x = IOSFloatArray_Get(nil_chk(vals_), ComItextpdfTextPdfParserVector_I1) - IOSFloatArray_Get(((ComItextpdfTextPdfParserVector *) nil_chk(v))->vals_, ComItextpdfTextPdfParserVector_I1);
  jfloat y = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) - IOSFloatArray_Get(v->vals_, ComItextpdfTextPdfParserVector_I2);
  jfloat z = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) - IOSFloatArray_Get(v->vals_, ComItextpdfTextPdfParserVector_I3);
  
#line 116
  return [[ComItextpdfTextPdfParserVector alloc] initWithFloat:x withFloat:y withFloat:z];
}


#line 124
- (ComItextpdfTextPdfParserVector *)crossWithComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)with {
  
#line 125
  jfloat x = IOSFloatArray_Get(nil_chk(vals_), ComItextpdfTextPdfParserVector_I2) * IOSFloatArray_Get(((ComItextpdfTextPdfParserVector *) nil_chk(with))->vals_, ComItextpdfTextPdfParserVector_I3) - IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) * IOSFloatArray_Get(with->vals_, ComItextpdfTextPdfParserVector_I2);
  jfloat y = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) * IOSFloatArray_Get(with->vals_, ComItextpdfTextPdfParserVector_I1) - IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I1) * IOSFloatArray_Get(with->vals_, ComItextpdfTextPdfParserVector_I3);
  jfloat z = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I1) * IOSFloatArray_Get(with->vals_, ComItextpdfTextPdfParserVector_I2) - IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) * IOSFloatArray_Get(with->vals_, ComItextpdfTextPdfParserVector_I1);
  
#line 129
  return [[ComItextpdfTextPdfParserVector alloc] initWithFloat:x withFloat:y withFloat:z];
}


#line 137
- (ComItextpdfTextPdfParserVector *)normalize {
  
#line 138
  jfloat l = [self length];
  jfloat x = IOSFloatArray_Get(nil_chk(vals_), ComItextpdfTextPdfParserVector_I1) / l;
  jfloat y = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) / l;
  jfloat z = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) / l;
  return [[ComItextpdfTextPdfParserVector alloc] initWithFloat:x withFloat:y withFloat:z];
}


#line 151
- (ComItextpdfTextPdfParserVector *)multiplyWithFloat:(jfloat)by {
  
#line 152
  jfloat x = IOSFloatArray_Get(nil_chk(vals_), ComItextpdfTextPdfParserVector_I1) * by;
  jfloat y = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) * by;
  jfloat z = IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) * by;
  return [[ComItextpdfTextPdfParserVector alloc] initWithFloat:x withFloat:y withFloat:z];
}


#line 163
- (jfloat)dotWithComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)with {
  
#line 164
  return IOSFloatArray_Get(nil_chk(vals_), ComItextpdfTextPdfParserVector_I1) * IOSFloatArray_Get(((ComItextpdfTextPdfParserVector *) nil_chk(with))->vals_, ComItextpdfTextPdfParserVector_I1) + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) * IOSFloatArray_Get(with->vals_, ComItextpdfTextPdfParserVector_I2) + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) * IOSFloatArray_Get(with->vals_, ComItextpdfTextPdfParserVector_I3);
}


#line 180
- (jfloat)length {
  
#line 181
  return (jfloat) [JavaLangMath sqrtWithDouble:[self lengthSquared]];
}


#line 194
- (jfloat)lengthSquared {
  
#line 195
  return IOSFloatArray_Get(nil_chk(vals_), ComItextpdfTextPdfParserVector_I1) * IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I1) + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) * IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2) + IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3) * IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3);
}

- (NSString *)description {
  
#line 203
  return JreStrcat("FCFCF", IOSFloatArray_Get(nil_chk(vals_), ComItextpdfTextPdfParserVector_I1), ',', IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I2), ',', IOSFloatArray_Get(vals_, ComItextpdfTextPdfParserVector_I3));
}

- (NSUInteger)hash {
  
#line 211
  jint prime = 31;
  jint result = 1;
  result = prime * result + [JavaUtilArrays hashCodeWithFloatArray:vals_];
  return result;
}

- (jboolean)isEqual:(id)obj {
  
#line 222
  if (self == obj) {
    return YES;
  }
  if (obj == nil) {
    return NO;
  }
  if ([self getClass] != [nil_chk(obj) getClass]) {
    return NO;
  }
  ComItextpdfTextPdfParserVector *other = (ComItextpdfTextPdfParserVector *) check_class_cast(obj, [ComItextpdfTextPdfParserVector class]);
  if (![JavaUtilArrays equalsWithFloatArray:vals_ withFloatArray:other->vals_]) {
    return NO;
  }
  return YES;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserVector *)other {
  [super copyAllFieldsTo:other];
  other->vals_ = vals_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:withFloat:withFloat:", "Vector", NULL, 0x1, NULL },
    { "getWithInt:", "get", "F", 0x1, NULL },
    { "crossWithComItextpdfTextPdfParserMatrix:", "cross", "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "subtractWithComItextpdfTextPdfParserVector:", "subtract", "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "crossWithComItextpdfTextPdfParserVector:", "cross", "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "normalize", NULL, "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "multiplyWithFloat:", "multiply", "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "dotWithComItextpdfTextPdfParserVector:", "dot", "F", 0x1, NULL },
    { "length", NULL, "F", 0x1, NULL },
    { "lengthSquared", NULL, "F", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "hash", "hashCode", "I", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "I1_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfParserVector_I1 },
    { "I2_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfParserVector_I2 },
    { "I3_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfParserVector_I3 },
    { "vals_", NULL, 0x12, "[F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserVector = { "Vector", "com.itextpdf.text.pdf.parser", NULL, 0x1, 13, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfParserVector;
}

@end