//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"


#line 48
@implementation ComItextpdfTextPdfFontsCmapsCMapToUnicode


#line 56
- (instancetype)init {
  if (self = [super init]) {
    singleByteMappings_ =
#line 50
    [[JavaUtilHashMap alloc] init];
    doubleByteMappings_ =
#line 51
    [[JavaUtilHashMap alloc] init];
  }
  return self;
}


#line 65
- (jboolean)hasOneByteMappings {
  
#line 66
  return ![((id<JavaUtilMap>) nil_chk(singleByteMappings_)) isEmpty];
}


#line 74
- (jboolean)hasTwoByteMappings {
  
#line 75
  return ![((id<JavaUtilMap>) nil_chk(doubleByteMappings_)) isEmpty];
}


#line 87
- (NSString *)lookupWithByteArray:(IOSByteArray *)code
                          withInt:(jint)offset
                          withInt:(jint)length {
  
#line 89
  NSString *result = nil;
  JavaLangInteger *key = nil;
  if (length == 1) {
    
#line 93
    key = [JavaLangInteger valueOfWithInt:IOSByteArray_Get(nil_chk(code), offset) & (jint) 0xff];
    result = [((id<JavaUtilMap>) nil_chk(singleByteMappings_)) getWithId:key];
  }
  else
#line 95
  if (length == 2) {
    jint intKey = IOSByteArray_Get(nil_chk(code), offset) & (jint) 0xff;
    LShiftAssignInt(&intKey, 8);
    intKey += IOSByteArray_Get(code, offset + 1) & (jint) 0xff;
    key = [JavaLangInteger valueOfWithInt:intKey];
    
#line 101
    result = [((id<JavaUtilMap>) nil_chk(doubleByteMappings_)) getWithId:key];
  }
  
#line 104
  return result;
}


#line 107
- (id<JavaUtilMap>)createReverseMapping {
  
#line 108
  id<JavaUtilMap> result = [[JavaUtilHashMap alloc] init];
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(singleByteMappings_)) entrySet])) {
    (void) [result putWithId:[JavaLangInteger valueOfWithInt:[self convertToIntWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue]]] withId:[entry_ getKey]];
  }
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(doubleByteMappings_)) entrySet])) {
    (void) [result putWithId:[JavaLangInteger valueOfWithInt:[self convertToIntWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue]]] withId:[entry_ getKey]];
  }
  return result;
}


#line 118
- (id<JavaUtilMap>)createDirectMapping {
  
#line 119
  id<JavaUtilMap> result = [[JavaUtilHashMap alloc] init];
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(singleByteMappings_)) entrySet])) {
    (void) [result putWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey] withId:[JavaLangInteger valueOfWithInt:[self convertToIntWithNSString:[entry_ getValue]]]];
  }
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(doubleByteMappings_)) entrySet])) {
    (void) [result putWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey] withId:[JavaLangInteger valueOfWithInt:[self convertToIntWithNSString:[entry_ getValue]]]];
  }
  return result;
}


#line 129
- (jint)convertToIntWithNSString:(NSString *)s {
  
#line 130
  IOSByteArray *b = [((NSString *) nil_chk(s)) getBytesWithCharsetName:@"UTF-16BE"];
  jint value = 0;
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(b))->size_ - 1; i++) {
    value += IOSByteArray_Get(b, i) & (jint) 0xff;
    LShiftAssignInt(&value, 8);
  }
  value += IOSByteArray_Get(b, b->size_ - 1) & (jint) 0xff;
  return value;
}


#line 140
- (void)addCharWithInt:(jint)cid
          withNSString:(NSString *)uni {
  
#line 141
  (void) [((id<JavaUtilMap>) nil_chk(doubleByteMappings_)) putWithId:[JavaLangInteger valueOfWithInt:cid] withId:uni];
}


#line 145
- (void)addCharWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)mark
               withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)code {
  
#line 146
  @try {
    IOSByteArray *src = [((ComItextpdfTextPdfPdfString *) nil_chk(mark)) getBytes];
    NSString *dest = [self createStringFromBytesWithByteArray:[((ComItextpdfTextPdfPdfObject *) nil_chk(code)) getBytes]];
    if (((IOSByteArray *) nil_chk(src))->size_ == 1) {
      (void) [((id<JavaUtilMap>) nil_chk(singleByteMappings_)) putWithId:[JavaLangInteger valueOfWithInt:IOSByteArray_Get(src, 0) & (jint) 0xff] withId:dest];
    }
    else
#line 151
    if (src->size_ == 2) {
      jint intSrc = IOSByteArray_Get(src, 0) & (jint) 0xFF;
      LShiftAssignInt(&intSrc, 8);
      intSrc |= IOSByteArray_Get(src, 1) & (jint) 0xFF;
      (void) [((id<JavaUtilMap>) nil_chk(doubleByteMappings_)) putWithId:[JavaLangInteger valueOfWithInt:intSrc] withId:dest];
    }
    else {
      
#line 157
      @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"mapping.code.should.be.1.or.two.bytes.and.not.1" withInt:src->size_]];
    }
  }
  @catch (JavaLangException *ex) {
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:ex];
  }
}


#line 165
- (NSString *)createStringFromBytesWithByteArray:(IOSByteArray *)bytes {
  
#line 166
  NSString *retval = nil;
  if (((IOSByteArray *) nil_chk(bytes))->size_ == 1) {
    retval = [NSString stringWithBytes:bytes];
  }
  else {
    
#line 170
    retval = [NSString stringWithBytes:bytes charsetName:@"UTF-16BE"];
  }
  return retval;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsCmapsCMapToUnicode *)other {
  [super copyAllFieldsTo:other];
  other->doubleByteMappings_ = doubleByteMappings_;
  other->singleByteMappings_ = singleByteMappings_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CMapToUnicode", NULL, 0x1, NULL },
    { "hasOneByteMappings", NULL, "Z", 0x1, NULL },
    { "hasTwoByteMappings", NULL, "Z", 0x1, NULL },
    { "lookupWithByteArray:withInt:withInt:", "lookup", "Ljava.lang.String;", 0x1, NULL },
    { "createReverseMapping", NULL, "Ljava.util.Map;", 0x1, "Ljava.io.IOException;" },
    { "createDirectMapping", NULL, "Ljava.util.Map;", 0x1, "Ljava.io.IOException;" },
    { "convertToIntWithNSString:", "convertToInt", "I", 0x2, "Ljava.io.IOException;" },
    { "addCharWithInt:withNSString:", "addChar", "V", 0x0, NULL },
    { "addCharWithComItextpdfTextPdfPdfString:withComItextpdfTextPdfPdfObject:", "addChar", "V", 0x0, NULL },
    { "createStringFromBytesWithByteArray:", "createStringFromBytes", "Ljava.lang.String;", 0x2, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "singleByteMappings_", NULL, 0x2, "Ljava.util.Map;", NULL,  },
    { "doubleByteMappings_", NULL, 0x2, "Ljava.util.Map;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsCmapsCMapToUnicode = { "CMapToUnicode", "com.itextpdf.text.pdf.fonts.cmaps", NULL, 0x1, 10, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfFontsCmapsCMapToUnicode;
}

@end
