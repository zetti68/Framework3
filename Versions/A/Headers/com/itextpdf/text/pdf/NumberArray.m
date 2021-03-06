//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/NumberArray.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/NumberArray.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/NumberArray.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "java/util/List.h"


#line 54
@implementation ComItextpdfTextPdfNumberArray


#line 60
- (instancetype)initWithFloatArray:(IOSFloatArray *)numbers {
  if (self =
#line 61
  [super init]) {
    {
      IOSFloatArray *a__ =
#line 62
      numbers;
      jfloat const *b__ = ((IOSFloatArray *) nil_chk(a__))->buffer_;
      jfloat const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        jfloat f = *b__++;
        
#line 63
        [self addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:f]];
      }
    }
  }
  return self;
}


#line 71
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)numbers {
  if (self =
#line 72
  [super init]) {
    
#line 73
    for (ComItextpdfTextPdfPdfNumber * __strong n in nil_chk(numbers)) {
      [self addWithComItextpdfTextPdfPdfObject:n];
    }
  }
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloatArray:", "NumberArray", NULL, 0x81, NULL },
    { "initWithJavaUtilList:", "NumberArray", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfNumberArray = { "NumberArray", "com.itextpdf.text.pdf", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfNumberArray;
}

@end
