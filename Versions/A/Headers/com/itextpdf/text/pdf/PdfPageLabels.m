//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPageLabels.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPageLabels.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/factories/RomanAlphabetFactory.h"
#include "com/itextpdf/text/factories/RomanNumberFactory.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfNumberTree.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfPageLabels.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/Arrays.h"
#include "java/util/HashMap.h"
#include "java/util/Set.h"

BOOL ComItextpdfTextPdfPdfPageLabels_initialized = NO;


#line 60
@implementation ComItextpdfTextPdfPdfPageLabels

IOSObjectArray * ComItextpdfTextPdfPdfPageLabels_numberingStyle_;


#line 93
- (instancetype)init {
  if (self = [super init]) {
    
#line 94
    map_ = [[JavaUtilHashMap alloc] init];
    
#line 95
    [self addPageLabelWithInt:1 withInt:ComItextpdfTextPdfPdfPageLabels_DECIMAL_ARABIC_NUMERALS withNSString:nil withInt:1];
  }
  return self;
}


#line 104
- (void)addPageLabelWithInt:(jint)page
                    withInt:(jint)numberStyle
               withNSString:(NSString *)text
                    withInt:(jint)firstPage {
  if (page < 1 || firstPage < 1)
#line 106
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"in.a.page.label.the.page.numbers.must.be.greater.or.equal.to.1" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  if (numberStyle >= 0 && numberStyle < ((IOSObjectArray *) nil_chk(ComItextpdfTextPdfPdfPageLabels_numberingStyle_))->size_)
#line 109
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_() withComItextpdfTextPdfPdfObject:IOSObjectArray_Get(ComItextpdfTextPdfPdfPageLabels_numberingStyle_, numberStyle)];
  if (text != nil)
#line 111
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_P_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:text withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
  if (firstPage != 1)
#line 113
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ST_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:firstPage]];
  (void) [((JavaUtilHashMap *) nil_chk(map_)) putWithId:[JavaLangInteger valueOfWithInt:page - 1] withId:dic];
}


#line 123
- (void)addPageLabelWithInt:(jint)page
                    withInt:(jint)numberStyle
               withNSString:(NSString *)text {
  [self addPageLabelWithInt:page withInt:numberStyle withNSString:text withInt:1];
}


#line 132
- (void)addPageLabelWithInt:(jint)page
                    withInt:(jint)numberStyle {
  
#line 133
  [self addPageLabelWithInt:page withInt:numberStyle withNSString:nil withInt:1];
}


#line 138
- (void)addPageLabelWithComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat:(ComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat *)format {
  [self addPageLabelWithInt:((ComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat *) nil_chk(format))->physicalPage_ withInt:format->numberStyle_ withNSString:format->prefix_ withInt:format->logicalPage_];
}


#line 145
- (void)removePageLabelWithInt:(jint)page {
  
#line 146
  if (page <= 1)
#line 147
  return;
  (void) [((JavaUtilHashMap *) nil_chk(map_)) removeWithId:[JavaLangInteger valueOfWithInt:page - 1]];
}

- (ComItextpdfTextPdfPdfDictionary *)getDictionaryWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer {
  
#line 155
  @try {
    return [ComItextpdfTextPdfPdfNumberTree writeTreeWithJavaUtilHashMap:map_ withComItextpdfTextPdfPdfWriter:writer];
  }
  @catch (JavaIoIOException *e) {
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:e];
  }
}


#line 168
+ (IOSObjectArray *)getPageLabelsWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader {
  
#line 170
  jint n = [((ComItextpdfTextPdfPdfReader *) nil_chk(reader)) getNumberOfPages];
  
#line 172
  ComItextpdfTextPdfPdfDictionary *dict = [reader getCatalog];
  ComItextpdfTextPdfPdfDictionary *labels = (ComItextpdfTextPdfPdfDictionary *) check_class_cast([ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfPdfDictionary *) nil_chk(dict)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELABELS_()]], [ComItextpdfTextPdfPdfDictionary class]);
  if (labels == nil)
#line 175
  return nil;
  
#line 177
  IOSObjectArray *labelstrings = [IOSObjectArray arrayWithLength:n type:[IOSClass classWithClass:[NSString class]]];
  
#line 179
  JavaUtilHashMap *numberTree = [ComItextpdfTextPdfPdfNumberTree readTreeWithComItextpdfTextPdfPdfDictionary:labels];
  
#line 181
  jint pagecount = 1;
  JavaLangInteger *current;
  NSString *prefix = @"";
  jchar type = 'D';
  for (jint i = 0; i < n; i++) {
    current = [JavaLangInteger valueOfWithInt:i];
    if ([((JavaUtilHashMap *) nil_chk(numberTree)) containsKeyWithId:current]) {
      ComItextpdfTextPdfPdfDictionary *d = (ComItextpdfTextPdfPdfDictionary *) check_class_cast([ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[numberTree getWithId:current]], [ComItextpdfTextPdfPdfDictionary class]);
      if ([((ComItextpdfTextPdfPdfDictionary *) nil_chk(d)) containsWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ST_()]) {
        pagecount = [((ComItextpdfTextPdfPdfNumber *) nil_chk(((ComItextpdfTextPdfPdfNumber *) check_class_cast([d getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ST_()], [ComItextpdfTextPdfPdfNumber class])))) intValue];
      }
      else {
        pagecount = 1;
      }
      if ([d containsWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_P_()]) {
        prefix = [((ComItextpdfTextPdfPdfString *) nil_chk(((ComItextpdfTextPdfPdfString *) check_class_cast([d getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_P_()], [ComItextpdfTextPdfPdfString class])))) toUnicodeString];
      }
      if ([d containsWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_()]) {
        type = [((NSString *) nil_chk([((ComItextpdfTextPdfPdfName *) nil_chk(((ComItextpdfTextPdfPdfName *) check_class_cast([d getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_()], [ComItextpdfTextPdfPdfName class])))) description])) charAtWithInt:1];
      }
      else {
        type = 'e';
      }
    }
    switch (type) {
      default:
      IOSObjectArray_Set(labelstrings, i, JreStrcat("$I", prefix, pagecount));
      break;
      case 'R':
      IOSObjectArray_Set(labelstrings, i, JreStrcat("$$", prefix, [ComItextpdfTextFactoriesRomanNumberFactory getUpperCaseStringWithInt:pagecount]));
      break;
      case 'r':
      IOSObjectArray_Set(labelstrings, i, JreStrcat("$$", prefix, [ComItextpdfTextFactoriesRomanNumberFactory getLowerCaseStringWithInt:pagecount]));
      break;
      case 'A':
      IOSObjectArray_Set(labelstrings, i, JreStrcat("$$", prefix, [ComItextpdfTextFactoriesRomanAlphabetFactory getUpperCaseStringWithInt:pagecount]));
      break;
      case 'a':
      IOSObjectArray_Set(labelstrings, i, JreStrcat("$$", prefix, [ComItextpdfTextFactoriesRomanAlphabetFactory getLowerCaseStringWithInt:pagecount]));
      break;
      case 'e':
      IOSObjectArray_Set(labelstrings, i, prefix);
      break;
    }
    pagecount++;
  }
  return labelstrings;
}

+ (IOSObjectArray *)getPageLabelFormatsWithComItextpdfTextPdfPdfReader:(ComItextpdfTextPdfPdfReader *)reader {
  
#line 237
  ComItextpdfTextPdfPdfDictionary *dict = [((ComItextpdfTextPdfPdfReader *) nil_chk(reader)) getCatalog];
  ComItextpdfTextPdfPdfDictionary *labels = (ComItextpdfTextPdfPdfDictionary *) check_class_cast([ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfPdfDictionary *) nil_chk(dict)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELABELS_()]], [ComItextpdfTextPdfPdfDictionary class]);
  if (labels == nil)
#line 240
  return nil;
  JavaUtilHashMap *numberTree = [ComItextpdfTextPdfPdfNumberTree readTreeWithComItextpdfTextPdfPdfDictionary:labels];
  IOSObjectArray *numbers = [IOSObjectArray arrayWithLength:[((JavaUtilHashMap *) nil_chk(numberTree)) size] type:[IOSClass classWithClass:[JavaLangInteger class]]];
  numbers = [((id<JavaUtilSet>) nil_chk([numberTree keySet])) toArrayWithNSObjectArray:numbers];
  [JavaUtilArrays sortWithNSObjectArray:numbers];
  IOSObjectArray *formats = [IOSObjectArray arrayWithLength:[numberTree size] type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat class]]];
  NSString *prefix;
  jint numberStyle;
  jint pagecount;
  for (jint k = 0; k < ((IOSObjectArray *) nil_chk(numbers))->size_; ++k) {
    JavaLangInteger *key = IOSObjectArray_Get(numbers, k);
    ComItextpdfTextPdfPdfDictionary *d = (ComItextpdfTextPdfPdfDictionary *) check_class_cast([ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[numberTree getWithId:key]], [ComItextpdfTextPdfPdfDictionary class]);
    if ([((ComItextpdfTextPdfPdfDictionary *) nil_chk(d)) containsWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ST_()]) {
      pagecount = [((ComItextpdfTextPdfPdfNumber *) nil_chk(((ComItextpdfTextPdfPdfNumber *) check_class_cast([d getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ST_()], [ComItextpdfTextPdfPdfNumber class])))) intValue];
    }
    else {
      
#line 255
      pagecount = 1;
    }
    if ([d containsWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_P_()]) {
      prefix = [((ComItextpdfTextPdfPdfString *) nil_chk(((ComItextpdfTextPdfPdfString *) check_class_cast([d getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_P_()], [ComItextpdfTextPdfPdfString class])))) toUnicodeString];
    }
    else {
      
#line 260
      prefix = @"";
    }
    if ([d containsWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_()]) {
      jchar type = [((NSString *) nil_chk([((ComItextpdfTextPdfPdfName *) nil_chk(((ComItextpdfTextPdfPdfName *) check_class_cast([d getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_S_()], [ComItextpdfTextPdfPdfName class])))) description])) charAtWithInt:1];
      switch (type) {
        case 'R':
        
#line 265
        numberStyle = ComItextpdfTextPdfPdfPageLabels_UPPERCASE_ROMAN_NUMERALS;
        
#line 265
        break;
        case 'r':
        
#line 266
        numberStyle = ComItextpdfTextPdfPdfPageLabels_LOWERCASE_ROMAN_NUMERALS;
        
#line 266
        break;
        case 'A':
        
#line 267
        numberStyle = ComItextpdfTextPdfPdfPageLabels_UPPERCASE_LETTERS;
        
#line 267
        break;
        case 'a':
        
#line 268
        numberStyle = ComItextpdfTextPdfPdfPageLabels_LOWERCASE_LETTERS;
        
#line 268
        break;
        default:
        
#line 269
        numberStyle = ComItextpdfTextPdfPdfPageLabels_DECIMAL_ARABIC_NUMERALS;
        
#line 269
        break;
      }
    }
    else {
      
#line 272
      numberStyle = ComItextpdfTextPdfPdfPageLabels_EMPTY;
    }
    IOSObjectArray_SetAndConsume(formats, k, [[ComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat alloc] initWithInt:[((JavaLangInteger *) nil_chk(key)) intValue] + 1 withInt:numberStyle withNSString:prefix withInt:pagecount]);
  }
  return formats;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfPageLabels *)other {
  [super copyAllFieldsTo:other];
  other->map_ = map_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfPdfPageLabels class]) {
    ComItextpdfTextPdfPdfPageLabels_numberingStyle_ = [IOSObjectArray arrayWithObjects:(id[]){ ComItextpdfTextPdfPdfName_get_D_(), ComItextpdfTextPdfPdfName_get_R_(),
#line 86
    [[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"r"], ComItextpdfTextPdfPdfName_get_A_(), [[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"a"] } count:5 type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfName class]]];
    ComItextpdfTextPdfPdfPageLabels_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PdfPageLabels", NULL, 0x1, NULL },
    { "addPageLabelWithInt:withInt:withNSString:withInt:", "addPageLabel", "V", 0x1, NULL },
    { "addPageLabelWithInt:withInt:withNSString:", "addPageLabel", "V", 0x1, NULL },
    { "addPageLabelWithInt:withInt:", "addPageLabel", "V", 0x1, NULL },
    { "addPageLabelWithComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat:", "addPageLabel", "V", 0x1, NULL },
    { "removePageLabelWithInt:", "removePageLabel", "V", 0x1, NULL },
    { "getDictionaryWithComItextpdfTextPdfPdfWriter:", "getDictionary", "Lcom.itextpdf.text.pdf.PdfDictionary;", 0x1, NULL },
    { "getPageLabelsWithComItextpdfTextPdfPdfReader:", "getPageLabels", "[Ljava.lang.String;", 0x9, NULL },
    { "getPageLabelFormatsWithComItextpdfTextPdfPdfReader:", "getPageLabelFormats", "[Lcom.itextpdf.text.pdf.PdfPageLabels$PdfPageLabelFormat;", 0x9, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DECIMAL_ARABIC_NUMERALS_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPageLabels_DECIMAL_ARABIC_NUMERALS },
    { "UPPERCASE_ROMAN_NUMERALS_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPageLabels_UPPERCASE_ROMAN_NUMERALS },
    { "LOWERCASE_ROMAN_NUMERALS_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPageLabels_LOWERCASE_ROMAN_NUMERALS },
    { "UPPERCASE_LETTERS_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPageLabels_UPPERCASE_LETTERS },
    { "LOWERCASE_LETTERS_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPageLabels_LOWERCASE_LETTERS },
    { "EMPTY_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPageLabels_EMPTY },
    { "numberingStyle_", NULL, 0x8, "[Lcom.itextpdf.text.pdf.PdfName;", &ComItextpdfTextPdfPdfPageLabels_numberingStyle_,  },
    { "map_", NULL, 0x2, "Ljava.util.HashMap;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfPageLabels = { "PdfPageLabels", "com.itextpdf.text.pdf", NULL, 0x1, 9, methods, 8, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfPageLabels;
}

@end


#line 279
@implementation ComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat


#line 292
- (instancetype)initWithInt:(jint)physicalPage
                    withInt:(jint)numberStyle
               withNSString:(NSString *)prefix
                    withInt:(jint)logicalPage {
  if (self = [super init]) {
    
#line 293
    self->physicalPage_ = physicalPage;
    
#line 294
    self->numberStyle_ = numberStyle;
    
#line 295
    self->prefix_ = prefix;
    
#line 296
    self->logicalPage_ = logicalPage;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat *)other {
  [super copyAllFieldsTo:other];
  other->logicalPage_ = logicalPage_;
  other->numberStyle_ = numberStyle_;
  other->physicalPage_ = physicalPage_;
  other->prefix_ = prefix_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:withNSString:withInt:", "PdfPageLabelFormat", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "physicalPage_", NULL, 0x1, "I", NULL,  },
    { "numberStyle_", NULL, 0x1, "I", NULL,  },
    { "prefix_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "logicalPage_", NULL, 0x1, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat = { "PdfPageLabelFormat", "com.itextpdf.text.pdf", "PdfPageLabels", 0x9, 1, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfPageLabels_PdfPageLabelFormat;
}

@end