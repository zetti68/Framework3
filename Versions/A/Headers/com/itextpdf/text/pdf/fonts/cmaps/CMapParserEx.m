//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CMapParserEx.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CMapParserEx.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PRTokeniser.h"
#include "com/itextpdf/text/pdf/PdfContentParser.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/AbstractCMap.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/CMapParserEx.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/CidLocation.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"

BOOL ComItextpdfTextPdfFontsCmapsCMapParserEx_initialized = NO;


#line 65
@implementation ComItextpdfTextPdfFontsCmapsCMapParserEx

ComItextpdfTextPdfPdfName * ComItextpdfTextPdfFontsCmapsCMapParserEx_CMAPNAME_;
NSString * ComItextpdfTextPdfFontsCmapsCMapParserEx_DEF_ = @"def";
NSString * ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDCIDRANGE_ = @"endcidrange";
NSString * ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDCIDCHAR_ = @"endcidchar";
NSString * ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDBFRANGE_ = @"endbfrange";
NSString * ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDBFCHAR_ = @"endbfchar";
NSString * ComItextpdfTextPdfFontsCmapsCMapParserEx_USECMAP_ = @"usecmap";


#line 76
+ (void)parseCidWithNSString:(NSString *)cmapName
withComItextpdfTextPdfFontsCmapsAbstractCMap:(ComItextpdfTextPdfFontsCmapsAbstractCMap *)cmap
withComItextpdfTextPdfFontsCmapsCidLocation:(id<ComItextpdfTextPdfFontsCmapsCidLocation>)location {
  
#line 77
  [ComItextpdfTextPdfFontsCmapsCMapParserEx parseCidWithNSString:cmapName withComItextpdfTextPdfFontsCmapsAbstractCMap:cmap withComItextpdfTextPdfFontsCmapsCidLocation:location withInt:0];
}


#line 80
+ (void)parseCidWithNSString:(NSString *)cmapName
withComItextpdfTextPdfFontsCmapsAbstractCMap:(ComItextpdfTextPdfFontsCmapsAbstractCMap *)cmap
withComItextpdfTextPdfFontsCmapsCidLocation:(id<ComItextpdfTextPdfFontsCmapsCidLocation>)location
                     withInt:(jint)level {
  
#line 81
  if (level >= ComItextpdfTextPdfFontsCmapsCMapParserEx_MAXLEVEL)
#line 82
  return;
  ComItextpdfTextPdfPRTokeniser *inp = [((id<ComItextpdfTextPdfFontsCmapsCidLocation>) nil_chk(location)) getLocationWithNSString:cmapName];
  @try {
    JavaUtilArrayList *list = [[JavaUtilArrayList alloc] init];
    ComItextpdfTextPdfPdfContentParser *cp = [[ComItextpdfTextPdfPdfContentParser alloc] initWithComItextpdfTextPdfPRTokeniser:inp];
    jint maxExc = 50;
    while (YES) {
      @try {
        (void) [cp parseWithJavaUtilArrayList:list];
      }
      @catch (JavaLangException *ex) {
        if (--maxExc < 0)
#line 94
        break;
        continue;
      }
      if ([list isEmpty])
#line 98
      break;
      NSString *last = [((ComItextpdfTextPdfPdfObject *) nil_chk([list getWithInt:[list size] - 1])) description];
      if (level == 0 && [list size] == 3 && [((NSString *) nil_chk(last)) isEqual:ComItextpdfTextPdfFontsCmapsCMapParserEx_DEF_]) {
        ComItextpdfTextPdfPdfObject *key = [list getWithInt:0];
        if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_REGISTRY_())) isEqual:key])
#line 103
        [((ComItextpdfTextPdfFontsCmapsAbstractCMap *) nil_chk(cmap)) setRegistryWithNSString:[((ComItextpdfTextPdfPdfObject *) nil_chk([list getWithInt:1])) description]];
        else if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_ORDERING_())) isEqual:key])
#line 105
        [((ComItextpdfTextPdfFontsCmapsAbstractCMap *) nil_chk(cmap)) setOrderingWithNSString:[((ComItextpdfTextPdfPdfObject *) nil_chk([list getWithInt:1])) description]];
        else if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfFontsCmapsCMapParserEx_CMAPNAME_)) isEqual:key])
#line 107
        [((ComItextpdfTextPdfFontsCmapsAbstractCMap *) nil_chk(cmap)) setNameWithNSString:[((ComItextpdfTextPdfPdfObject *) nil_chk([list getWithInt:1])) description]];
        else if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_SUPPLEMENT_())) isEqual:key]) {
          @try {
            [((ComItextpdfTextPdfFontsCmapsAbstractCMap *) nil_chk(cmap)) setSupplementWithInt:[((ComItextpdfTextPdfPdfNumber *) nil_chk(((ComItextpdfTextPdfPdfNumber *) check_class_cast([list getWithInt:1], [ComItextpdfTextPdfPdfNumber class])))) intValue]];
          }
          @catch (JavaLangException *ex) {
          }
        }
      }
      else
#line 115
      if (([((NSString *) nil_chk(last)) isEqual:ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDCIDCHAR_] || [last isEqual:ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDBFCHAR_]) && [list size] >= 3) {
        jint lmax = [list size] - 2;
        for (jint k = 0; k < lmax; k += 2) {
          if ([[list getWithInt:k] isKindOfClass:[ComItextpdfTextPdfPdfString class]]) {
            [((ComItextpdfTextPdfFontsCmapsAbstractCMap *) nil_chk(cmap)) addCharWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *) check_class_cast([list getWithInt:k], [ComItextpdfTextPdfPdfString class]) withComItextpdfTextPdfPdfObject:[list getWithInt:k + 1]];
          }
        }
      }
      else if (([last isEqual:ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDCIDRANGE_] || [last isEqual:ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDBFRANGE_]) && [list size] >= 4) {
        jint lmax = [list size] - 3;
        for (jint k = 0; k < lmax; k += 3) {
          if ([[list getWithInt:k] isKindOfClass:[ComItextpdfTextPdfPdfString class]] && [[list getWithInt:k + 1] isKindOfClass:[ComItextpdfTextPdfPdfString class]]) {
            [((ComItextpdfTextPdfFontsCmapsAbstractCMap *) nil_chk(cmap)) addRangeWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *) check_class_cast([list getWithInt:k], [ComItextpdfTextPdfPdfString class]) withComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *) check_class_cast([list getWithInt:k + 1], [ComItextpdfTextPdfPdfString class]) withComItextpdfTextPdfPdfObject:[list getWithInt:k + 2]];
          }
        }
      }
      else if ([last isEqual:ComItextpdfTextPdfFontsCmapsCMapParserEx_USECMAP_] && [list size] == 2 && [[list getWithInt:0] isKindOfClass:[ComItextpdfTextPdfPdfName class]]) {
        [ComItextpdfTextPdfFontsCmapsCMapParserEx parseCidWithNSString:[ComItextpdfTextPdfPdfName decodeNameWithNSString:[((ComItextpdfTextPdfPdfObject *) nil_chk([list getWithInt:0])) description]] withComItextpdfTextPdfFontsCmapsAbstractCMap:cmap withComItextpdfTextPdfFontsCmapsCidLocation:location withInt:level + 1];
      }
    }
  }
  @finally {
    [((ComItextpdfTextPdfPRTokeniser *) nil_chk(inp)) close];
  }
}


#line 141
+ (void)encodeSequenceWithInt:(jint)size
                withByteArray:(IOSByteArray *)seqs
                     withChar:(jchar)cid
        withJavaUtilArrayList:(JavaUtilArrayList *)planes {
  
#line 142
  --size;
  jint nextPlane = 0;
  for (jint idx = 0; idx < size; ++idx) {
    IOSCharArray *plane = [((JavaUtilArrayList *) nil_chk(planes)) getWithInt:nextPlane];
    jint one = IOSByteArray_Get(nil_chk(seqs), idx) & (jint) 0xff;
    jchar c = IOSCharArray_Get(nil_chk(plane), one);
    if (c != 0 && (c & (jint) 0x8000) == 0)
#line 149
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"inconsistent.mapping" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    if (c == 0) {
      [planes addWithId:[IOSCharArray arrayWithLength:256]];
      c = (jchar) (([planes size] - 1) | (jint) 0x8000);
      *IOSCharArray_GetRef(plane, one) = c;
    }
    nextPlane = c & (jint) 0x7fff;
  }
  IOSCharArray *plane = [((JavaUtilArrayList *) nil_chk(planes)) getWithInt:nextPlane];
  jint one = IOSByteArray_Get(nil_chk(seqs), size) & (jint) 0xff;
  jchar c = IOSCharArray_Get(nil_chk(plane), one);
  if ((c & (jint) 0x8000) != 0)
#line 161
  @throw [[JavaLangRuntimeException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"inconsistent.mapping" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  *IOSCharArray_GetRef(plane, one) = cid;
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfFontsCmapsCMapParserEx class]) {
    ComItextpdfTextPdfFontsCmapsCMapParserEx_CMAPNAME_ =
#line 67
    [[ComItextpdfTextPdfPdfName alloc] initWithNSString:@"CMapName"];
    ComItextpdfTextPdfFontsCmapsCMapParserEx_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseCidWithNSString:withComItextpdfTextPdfFontsCmapsAbstractCMap:withComItextpdfTextPdfFontsCmapsCidLocation:", "parseCid", "V", 0x9, "Ljava.io.IOException;" },
    { "parseCidWithNSString:withComItextpdfTextPdfFontsCmapsAbstractCMap:withComItextpdfTextPdfFontsCmapsCidLocation:withInt:", "parseCid", "V", 0xa, "Ljava.io.IOException;" },
    { "encodeSequenceWithInt:withByteArray:withChar:withJavaUtilArrayList:", "encodeSequence", "V", 0xa, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CMAPNAME_", NULL, 0x1a, "Lcom.itextpdf.text.pdf.PdfName;", &ComItextpdfTextPdfFontsCmapsCMapParserEx_CMAPNAME_,  },
    { "DEF_", NULL, 0x1a, "Ljava.lang.String;", &ComItextpdfTextPdfFontsCmapsCMapParserEx_DEF_,  },
    { "ENDCIDRANGE_", NULL, 0x1a, "Ljava.lang.String;", &ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDCIDRANGE_,  },
    { "ENDCIDCHAR_", NULL, 0x1a, "Ljava.lang.String;", &ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDCIDCHAR_,  },
    { "ENDBFRANGE_", NULL, 0x1a, "Ljava.lang.String;", &ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDBFRANGE_,  },
    { "ENDBFCHAR_", NULL, 0x1a, "Ljava.lang.String;", &ComItextpdfTextPdfFontsCmapsCMapParserEx_ENDBFCHAR_,  },
    { "USECMAP_", NULL, 0x1a, "Ljava.lang.String;", &ComItextpdfTextPdfFontsCmapsCMapParserEx_USECMAP_,  },
    { "MAXLEVEL_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfFontsCmapsCMapParserEx_MAXLEVEL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsCmapsCMapParserEx = { "CMapParserEx", "com.itextpdf.text.pdf.fonts.cmaps", NULL, 0x1, 4, methods, 8, fields, 0, NULL};
  return &_ComItextpdfTextPdfFontsCmapsCMapParserEx;
}

@end
