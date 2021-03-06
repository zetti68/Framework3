//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/AbstractCMap.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/AbstractCMap.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfEncodings.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/AbstractCMap.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"


#line 57
@implementation ComItextpdfTextPdfFontsCmapsAbstractCMap


#line 64
- (NSString *)getName {
  
#line 65
  return cmapName_;
}


#line 68
- (void)setNameWithNSString:(NSString *)cmapName {
  
#line 69
  self->cmapName_ = cmapName;
}


#line 72
- (NSString *)getOrdering {
  
#line 73
  return ordering_;
}


#line 76
- (void)setOrderingWithNSString:(NSString *)ordering {
  
#line 77
  self->ordering_ = ordering;
}


#line 80
- (NSString *)getRegistry {
  
#line 81
  return registry_;
}


#line 84
- (void)setRegistryWithNSString:(NSString *)registry {
  
#line 85
  self->registry_ = registry;
}


#line 88
- (jint)getSupplement {
  
#line 89
  return supplement_;
}


#line 92
- (void)setSupplementWithInt:(jint)supplement {
  
#line 93
  self->supplement_ = supplement;
}


#line 96
- (void)addCharWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)mark
               withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)code {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}


#line 98
- (void)addRangeWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)from
                withComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)to
                withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)code {
  
#line 99
  IOSByteArray *a1 = [ComItextpdfTextPdfFontsCmapsAbstractCMap decodeStringToByteWithComItextpdfTextPdfPdfString:from];
  IOSByteArray *a2 = [ComItextpdfTextPdfFontsCmapsAbstractCMap decodeStringToByteWithComItextpdfTextPdfPdfString:to];
  if (((IOSByteArray *) nil_chk(a1))->size_ != ((IOSByteArray *) nil_chk(a2))->size_ || a1->size_ == 0)
#line 102
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Invalid map."];
  IOSByteArray *sout = nil;
  if ([code isKindOfClass:[ComItextpdfTextPdfPdfString class]])
#line 105
  sout = [ComItextpdfTextPdfFontsCmapsAbstractCMap decodeStringToByteWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *) check_class_cast(code, [ComItextpdfTextPdfPdfString class])];
  jint start = IOSByteArray_Get(a1, a1->size_ - 1) & (jint) 0xff;
  jint end = IOSByteArray_Get(a2, a2->size_ - 1) & (jint) 0xff;
  for (jint k = start; k <= end; ++k) {
    *IOSByteArray_GetRef(a1, a1->size_ - 1) = (jbyte) k;
    ComItextpdfTextPdfPdfString *s = [[ComItextpdfTextPdfPdfString alloc] initWithByteArray:a1];
    (void) [s setHexWritingWithBoolean:YES];
    if ([code isKindOfClass:[ComItextpdfTextPdfPdfArray class]]) {
      [self addCharWithComItextpdfTextPdfPdfString:s withComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfPdfArray *) nil_chk(((ComItextpdfTextPdfPdfArray *) check_class_cast(code, [ComItextpdfTextPdfPdfArray class])))) getPdfObjectWithInt:k - start]];
    }
    else if ([code isKindOfClass:[ComItextpdfTextPdfPdfNumber class]]) {
      jint nn = [((ComItextpdfTextPdfPdfNumber *) nil_chk(((ComItextpdfTextPdfPdfNumber *) check_class_cast(code, [ComItextpdfTextPdfPdfNumber class])))) intValue] + k - start;
      [self addCharWithComItextpdfTextPdfPdfString:s withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:nn]];
    }
    else if ([code isKindOfClass:[ComItextpdfTextPdfPdfString class]]) {
      ComItextpdfTextPdfPdfString *s1 = [[ComItextpdfTextPdfPdfString alloc] initWithByteArray:sout];
      (void) [s1 setHexWritingWithBoolean:YES];
      ++(*IOSByteArray_GetRef(sout, ((IOSByteArray *) nil_chk(sout))->size_ - 1));
      [self addCharWithComItextpdfTextPdfPdfString:s withComItextpdfTextPdfPdfObject:s1];
    }
  }
}


#line 128
+ (IOSByteArray *)decodeStringToByteWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)s {
  
#line 129
  IOSByteArray *b = [((ComItextpdfTextPdfPdfString *) nil_chk(s)) getBytes];
  IOSByteArray *br = [IOSByteArray arrayWithLength:((IOSByteArray *) nil_chk(b))->size_];
  [JavaLangSystem arraycopyWithId:b withInt:0 withId:br withInt:0 withInt:b->size_];
  return br;
}


#line 135
- (NSString *)decodeStringToUnicodeWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)ps {
  
#line 136
  if ([((ComItextpdfTextPdfPdfString *) nil_chk(ps)) isHexWriting])
#line 137
  return [ComItextpdfTextPdfPdfEncodings convertToStringWithByteArray:[ps getBytes] withNSString:@"UnicodeBigUnmarked"];
  else
#line 139
  return [ps toUnicodeString];
}

- (instancetype)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsCmapsAbstractCMap *)other {
  [super copyAllFieldsTo:other];
  other->cmapName_ = cmapName_;
  other->ordering_ = ordering_;
  other->registry_ = registry_;
  other->supplement_ = supplement_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setNameWithNSString:", "setName", "V", 0x0, NULL },
    { "getOrdering", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setOrderingWithNSString:", "setOrdering", "V", 0x0, NULL },
    { "getRegistry", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setRegistryWithNSString:", "setRegistry", "V", 0x0, NULL },
    { "getSupplement", NULL, "I", 0x1, NULL },
    { "setSupplementWithInt:", "setSupplement", "V", 0x0, NULL },
    { "addCharWithComItextpdfTextPdfPdfString:withComItextpdfTextPdfPdfObject:", "addChar", "V", 0x400, NULL },
    { "addRangeWithComItextpdfTextPdfPdfString:withComItextpdfTextPdfPdfString:withComItextpdfTextPdfPdfObject:", "addRange", "V", 0x0, NULL },
    { "decodeStringToByteWithComItextpdfTextPdfPdfString:", "decodeStringToByte", "[B", 0x9, NULL },
    { "decodeStringToUnicodeWithComItextpdfTextPdfPdfString:", "decodeStringToUnicode", "Ljava.lang.String;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "cmapName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "registry_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "ordering_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "supplement_", NULL, 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsCmapsAbstractCMap = { "AbstractCMap", "com.itextpdf.text.pdf.fonts.cmaps", NULL, 0x401, 13, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfFontsCmapsAbstractCMap;
}

@end
