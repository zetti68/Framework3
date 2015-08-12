//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/Type1Font.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/Type1Font.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/Document.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/io/StreamUtil.h"
#include "com/itextpdf/text/pdf/BaseFont.h"
#include "com/itextpdf/text/pdf/GlyphList.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfEncodings.h"
#include "com/itextpdf/text/pdf/PdfIndirectObject.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfRectangle.h"
#include "com/itextpdf/text/pdf/PdfStream.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/Pfm2afm.h"
#include "com/itextpdf/text/pdf/RandomAccessFileOrArray.h"
#include "com/itextpdf/text/pdf/Type1Font.h"
#include "com/itextpdf/text/pdf/fonts/FontsResourceAnchor.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Boolean.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/Exception.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/HashMap.h"
#include "java/util/StringTokenizer.h"

BOOL ComItextpdfTextPdfType1Font_initialized = NO;


#line 63
@implementation ComItextpdfTextPdfType1Font

ComItextpdfTextPdfFontsFontsResourceAnchor * ComItextpdfTextPdfType1Font_resourceAnchor_;
IOSIntArray * ComItextpdfTextPdfType1Font_PFB_TYPES_;


#line 169
- (instancetype)initWithNSString:(NSString *)afmFile
                    withNSString:(NSString *)enc
                     withBoolean:(jboolean)emb
                   withByteArray:(IOSByteArray *)ttfAfm
                   withByteArray:(IOSByteArray *)pfb
                     withBoolean:(jboolean)forceRead {
  if (self = [super init]) {
    Weight_ =
#line 81
    @"";
    ItalicAngle_ =
#line 84
    0.0f;
    IsFixedPitch_ =
#line 88
    NO;
    llx_ =
#line 94
    -50;
    lly_ =
#line 97
    -200;
    urx_ =
#line 100
    1000;
    ury_ =
#line 103
    900;
    UnderlinePosition_ =
#line 106
    -100;
    UnderlineThickness_ =
#line 109
    50;
    EncodingScheme_ =
#line 115
    @"FontSpecific";
    CapHeight_ =
#line 118
    700;
    XHeight_ =
#line 121
    480;
    Ascender_ =
#line 124
    800;
    Descender_ =
#line 127
    -200;
    StdVW_ =
#line 133
    80;
    CharMetrics_ =
#line 140
    [[JavaUtilHashMap alloc] init];
    KernPairs_ =
#line 147
    [[JavaUtilHashMap alloc] init];
    builtinFont_ =
#line 153
    NO;
    
#line 171
    if (emb && ttfAfm != nil && pfb == nil)
#line 172
    @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"two.byte.arrays.are.needed.if.the.type1.font.is.embedded" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    
#line 173
    if (emb && ttfAfm != nil)
#line 174
    self->pfb_ = pfb;
    
#line 175
    encoding_ = enc;
    
#line 176
    embedded_ = emb;
    
#line 177
    fileName_ = afmFile;
    
#line 178
    fontType_ = ComItextpdfTextPdfBaseFont_FONT_TYPE_T1;
    
#line 179
    ComItextpdfTextPdfRandomAccessFileOrArray *rf = nil;
    
#line 180
    JavaIoInputStream *is = nil;
    
#line 181
    if ([((JavaUtilHashMap *) nil_chk(ComItextpdfTextPdfBaseFont_get_BuiltinFonts14_())) containsKeyWithId:afmFile]) {
      embedded_ = NO;
      builtinFont_ = YES;
      IOSByteArray *buf = [IOSByteArray arrayWithLength:1024];
      @try {
        if (ComItextpdfTextPdfType1Font_resourceAnchor_ == nil)
#line 187
        ComItextpdfTextPdfType1Font_resourceAnchor_ = [[ComItextpdfTextPdfFontsFontsResourceAnchor alloc] init];
        is = [ComItextpdfTextIoStreamUtil getResourceStreamWithNSString:JreStrcat("$$$", ComItextpdfTextPdfBaseFont_get_RESOURCE_PATH_(), afmFile, @".afm") withJavaLangClassLoader:[[((ComItextpdfTextPdfFontsFontsResourceAnchor *) nil_chk(ComItextpdfTextPdfType1Font_resourceAnchor_)) getClass] getClassLoader]];
        if (is == nil) {
          NSString *msg = [ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.not.found.as.resource" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ afmFile } count:1 type:[IOSClass classWithClass:[NSObject class]]]];
          [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_err_())) printlnWithNSString:msg];
          @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:msg];
        }
        JavaIoByteArrayOutputStream *out = [[JavaIoByteArrayOutputStream alloc] init];
        while (YES) {
          jint size = [((JavaIoInputStream *) nil_chk(is)) readWithByteArray:buf];
          if (size < 0)
#line 198
          break;
          [out writeWithByteArray:buf withInt:0 withInt:size];
        }
        buf = [out toByteArray];
      }
      @finally {
        if (is != nil) {
          @try {
            [is close];
          }
          @catch (JavaLangException *e) {
          }
        }
      }
      
#line 213
      @try {
        rf = [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithByteArray:buf];
        [self processWithComItextpdfTextPdfRandomAccessFileOrArray:rf];
      }
      @finally {
        if (rf != nil) {
          @try {
            [rf close];
          }
          @catch (JavaLangException *e) {
          }
        }
      }
    }
    else
#line 228
    if ([((NSString *) nil_chk([((NSString *) nil_chk(afmFile)) lowercaseString])) hasSuffix:@".afm"]) {
      @try {
        if (ttfAfm == nil)
#line 231
        rf = [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithNSString:afmFile withBoolean:forceRead withBoolean:ComItextpdfTextDocument_get_plainRandomAccess_()];
        else
#line 233
        rf = [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithByteArray:ttfAfm];
        [self processWithComItextpdfTextPdfRandomAccessFileOrArray:rf];
      }
      @finally {
        if (rf != nil) {
          @try {
            [rf close];
          }
          @catch (JavaLangException *e) {
          }
        }
      }
    }
    else
#line 247
    if ([((NSString *) nil_chk([afmFile lowercaseString])) hasSuffix:@".pfm"]) {
      @try {
        JavaIoByteArrayOutputStream *ba = [[JavaIoByteArrayOutputStream alloc] init];
        if (ttfAfm == nil)
#line 251
        rf = [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithNSString:afmFile withBoolean:forceRead withBoolean:ComItextpdfTextDocument_get_plainRandomAccess_()];
        else
#line 253
        rf = [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithByteArray:ttfAfm];
        [ComItextpdfTextPdfPfm2afm convertWithComItextpdfTextPdfRandomAccessFileOrArray:rf withJavaIoOutputStream:ba];
        [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf)) close];
        rf = [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithByteArray:[ba toByteArray]];
        [self processWithComItextpdfTextPdfRandomAccessFileOrArray:rf];
      }
      @finally {
        if (rf != nil) {
          @try {
            [rf close];
          }
          @catch (JavaLangException *e) {
          }
        }
      }
    }
    else
#line 271
    @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.is.not.an.afm.or.pfm.font.file" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ afmFile } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    
#line 273
    EncodingScheme_ = [EncodingScheme_ trim];
    
#line 274
    if ([((NSString *) nil_chk(EncodingScheme_)) isEqual:@"AdobeStandardEncoding"] || [EncodingScheme_ isEqual:@"StandardEncoding"]) {
      fontSpecific_ = NO;
    }
    
#line 277
    if (![((NSString *) nil_chk(encoding_)) hasPrefix:@"#"])
#line 278
    (void) [ComItextpdfTextPdfPdfEncodings convertToBytesWithNSString:@" " withNSString:enc];
    
#line 279
    [self createEncoding];
  }
  return self;
}


#line 290
- (jint)getRawWidthWithInt:(jint)c
              withNSString:(NSString *)name {
  
#line 291
  IOSObjectArray *metrics;
  if (name == nil) {
    metrics = [((JavaUtilHashMap *) nil_chk(CharMetrics_)) getWithId:[JavaLangInteger valueOfWithInt:c]];
  }
  else {
    if ([name isEqual:@".notdef"])
#line 297
    return 0;
    metrics = [((JavaUtilHashMap *) nil_chk(CharMetrics_)) getWithId:name];
  }
  if (metrics != nil)
#line 301
  return [((JavaLangInteger *) nil_chk(((JavaLangInteger *) check_class_cast(IOSObjectArray_Get(metrics, 1), [JavaLangInteger class])))) intValue];
  return 0;
}


#line 313
- (jint)getKerningWithInt:(jint)char1
                  withInt:(jint)char2 {
  
#line 315
  NSString *first = [ComItextpdfTextPdfGlyphList unicodeToNameWithInt:char1];
  if (first == nil)
#line 317
  return 0;
  NSString *second = [ComItextpdfTextPdfGlyphList unicodeToNameWithInt:char2];
  if (second == nil)
#line 320
  return 0;
  IOSObjectArray *obj = [((JavaUtilHashMap *) nil_chk(KernPairs_)) getWithId:first];
  if (obj == nil)
#line 323
  return 0;
  for (jint k = 0; k < ((IOSObjectArray *) nil_chk(obj))->size_; k += 2) {
    if ([((NSString *) nil_chk(second)) isEqual:IOSObjectArray_Get(obj, k)])
#line 326
    return [((JavaLangInteger *) nil_chk(((JavaLangInteger *) check_class_cast(IOSObjectArray_Get(obj, k + 1), [JavaLangInteger class])))) intValue];
  }
  return 0;
}

- (void)processWithComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)rf {
  
#line 339
  NSString *line;
  jboolean isMetrics = NO;
  while ((line = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf)) readLine]) != nil) {
    
#line 343
    JavaUtilStringTokenizer *tok = [[JavaUtilStringTokenizer alloc] initWithNSString:line withNSString:@" ,\n\x0d\t\x0c"];
    if (![tok hasMoreTokens])
#line 345
    continue;
    NSString *ident = [tok nextToken];
    if ([((NSString *) nil_chk(ident)) isEqual:@"FontName"])
#line 348
    FontName_ = [((NSString *) nil_chk([tok nextTokenWithNSString:@"\u00ff"])) substring:1];
    else if ([ident isEqual:@"FullName"])
#line 350
    FullName_ = [((NSString *) nil_chk([tok nextTokenWithNSString:@"\u00ff"])) substring:1];
    else if ([ident isEqual:@"FamilyName"])
#line 352
    FamilyName_ = [((NSString *) nil_chk([tok nextTokenWithNSString:@"\u00ff"])) substring:1];
    else if ([ident isEqual:@"Weight"])
#line 354
    Weight_ = [((NSString *) nil_chk([tok nextTokenWithNSString:@"\u00ff"])) substring:1];
    else if ([ident isEqual:@"ItalicAngle"])
#line 356
    ItalicAngle_ = [JavaLangFloat parseFloatWithNSString:[tok nextToken]];
    else if ([ident isEqual:@"IsFixedPitch"])
#line 358
    IsFixedPitch_ = [((NSString *) nil_chk([tok nextToken])) isEqual:@"true"];
    else if ([ident isEqual:@"CharacterSet"])
#line 360
    CharacterSet_ = [((NSString *) nil_chk([tok nextTokenWithNSString:@"\u00ff"])) substring:1];
    else if ([ident isEqual:@"FontBBox"]) {
      
#line 363
      llx_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
      lly_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
      urx_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
      ury_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
    }
    else if ([ident isEqual:@"UnderlinePosition"])
#line 369
    UnderlinePosition_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
    else if ([ident isEqual:@"UnderlineThickness"])
#line 371
    UnderlineThickness_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
    else if ([ident isEqual:@"EncodingScheme"])
#line 373
    EncodingScheme_ = [((NSString *) nil_chk([tok nextTokenWithNSString:@"\u00ff"])) substring:1];
    else if ([ident isEqual:@"CapHeight"])
#line 375
    CapHeight_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
    else if ([ident isEqual:@"XHeight"])
#line 377
    XHeight_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
    else if ([ident isEqual:@"Ascender"])
#line 379
    Ascender_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
    else if ([ident isEqual:@"Descender"])
#line 381
    Descender_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
    else if ([ident isEqual:@"StdHW"])
#line 383
    StdHW_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
    else if ([ident isEqual:@"StdVW"])
#line 385
    StdVW_ = J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]]);
    else if ([ident isEqual:@"StartCharMetrics"]) {
      
#line 388
      isMetrics = YES;
      break;
    }
  }
  if (!isMetrics)
#line 393
  @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"missing.startcharmetrics.in.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ fileName_ } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
  while ((line = [rf readLine]) != nil) {
    
#line 396
    JavaUtilStringTokenizer *tok = [[JavaUtilStringTokenizer alloc] initWithNSString:line];
    if (![tok hasMoreTokens])
#line 398
    continue;
    NSString *ident = [tok nextToken];
    if ([((NSString *) nil_chk(ident)) isEqual:@"EndCharMetrics"]) {
      
#line 402
      isMetrics = NO;
      break;
    }
    JavaLangInteger *C = [JavaLangInteger valueOfWithInt:-1];
    JavaLangInteger *WX = [JavaLangInteger valueOfWithInt:250];
    NSString *N = @"";
    IOSIntArray *B = nil;
    
#line 410
    tok = [[JavaUtilStringTokenizer alloc] initWithNSString:line withNSString:@";"];
    while ([tok hasMoreTokens]) {
      
#line 413
      JavaUtilStringTokenizer *tokc = [[JavaUtilStringTokenizer alloc] initWithNSString:[tok nextToken]];
      if (![tokc hasMoreTokens])
#line 415
      continue;
      ident = [tokc nextToken];
      if ([((NSString *) nil_chk(ident)) isEqual:@"C"])
#line 418
      C = [JavaLangInteger valueOfWithNSString:[tokc nextToken]];
      else if ([ident isEqual:@"WX"])
#line 420
      WX = [JavaLangInteger valueOfWithInt:J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tokc nextToken]])];
      else if ([ident isEqual:@"N"])
#line 422
      N = [tokc nextToken];
      else if ([ident isEqual:@"B"]) {
        B = [IOSIntArray arrayWithInts:(jint[]){ [JavaLangInteger parseIntWithNSString:[tokc nextToken]],
#line 425
        [JavaLangInteger parseIntWithNSString:[tokc nextToken]],
#line 426
        [JavaLangInteger parseIntWithNSString:[tokc nextToken]],
#line 427
        [JavaLangInteger parseIntWithNSString:[tokc nextToken]] } count:4];
      }
    }
    IOSObjectArray *metrics = [IOSObjectArray arrayWithObjects:(id[]){ C, WX, N, B } count:4 type:[IOSClass classWithClass:[NSObject class]]];
    if ([C intValue] >= 0)
#line 432
    (void) [((JavaUtilHashMap *) nil_chk(CharMetrics_)) putWithId:C withId:metrics];
    (void) [((JavaUtilHashMap *) nil_chk(CharMetrics_)) putWithId:N withId:metrics];
  }
  if (isMetrics)
#line 436
  @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"missing.endcharmetrics.in.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ fileName_ } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
  if (![((JavaUtilHashMap *) nil_chk(CharMetrics_)) containsKeyWithId:@"nonbreakingspace"]) {
    IOSObjectArray *space = [CharMetrics_ getWithId:@"space"];
    if (space != nil)
#line 440
    (void) [CharMetrics_ putWithId:@"nonbreakingspace" withId:space];
  }
  while ((line = [rf readLine]) != nil) {
    
#line 444
    JavaUtilStringTokenizer *tok = [[JavaUtilStringTokenizer alloc] initWithNSString:line];
    if (![tok hasMoreTokens])
#line 446
    continue;
    NSString *ident = [tok nextToken];
    if ([((NSString *) nil_chk(ident)) isEqual:@"EndFontMetrics"])
#line 449
    return;
    if ([ident isEqual:@"StartKernPairs"]) {
      
#line 452
      isMetrics = YES;
      break;
    }
  }
  if (!isMetrics)
#line 457
  @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"missing.endfontmetrics.in.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ fileName_ } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
  while ((line = [rf readLine]) != nil) {
    
#line 460
    JavaUtilStringTokenizer *tok = [[JavaUtilStringTokenizer alloc] initWithNSString:line];
    if (![tok hasMoreTokens])
#line 462
    continue;
    NSString *ident = [tok nextToken];
    if ([((NSString *) nil_chk(ident)) isEqual:@"KPX"]) {
      
#line 466
      NSString *first = [tok nextToken];
      NSString *second = [tok nextToken];
      JavaLangInteger *width = [JavaLangInteger valueOfWithInt:J2ObjCFpToInt([JavaLangFloat parseFloatWithNSString:[tok nextToken]])];
      IOSObjectArray *relates = [((JavaUtilHashMap *) nil_chk(KernPairs_)) getWithId:first];
      if (relates == nil)
#line 471
      (void) [KernPairs_ putWithId:first withId:[IOSObjectArray arrayWithObjects:(id[]){ second, width } count:2 type:[IOSClass classWithClass:[NSObject class]]]];
      else {
        
#line 474
        jint n = relates->size_;
        IOSObjectArray *relates2 = [IOSObjectArray arrayWithLength:n + 2 type:[IOSClass classWithClass:[NSObject class]]];
        [JavaLangSystem arraycopyWithId:relates withInt:0 withId:relates2 withInt:0 withInt:n];
        IOSObjectArray_Set(relates2, n, second);
        IOSObjectArray_Set(relates2, n + 1, width);
        (void) [KernPairs_ putWithId:first withId:relates2];
      }
    }
    else if ([ident isEqual:@"EndKernPairs"]) {
      
#line 484
      isMetrics = NO;
      break;
    }
  }
  if (isMetrics)
#line 489
  @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"missing.endkernpairs.in.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ fileName_ } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
  [rf close];
}


#line 501
- (ComItextpdfTextPdfPdfStream *)getFullFontStream {
  
#line 503
  if (builtinFont_ || !embedded_)
#line 504
  return nil;
  ComItextpdfTextPdfRandomAccessFileOrArray *rf = nil;
  @try {
    NSString *filePfb = JreStrcat("$$", [fileName_ substring:0 endIndex:((jint) [((NSString *) nil_chk(fileName_)) length]) - 3], @"pfb");
    if (pfb_ == nil)
#line 509
    rf = [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithNSString:filePfb withBoolean:YES withBoolean:ComItextpdfTextDocument_get_plainRandomAccess_()];
    else
#line 511
    rf = [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithByteArray:pfb_];
    jint fileLength = (jint) [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(rf)) length];
    IOSByteArray *st = [IOSByteArray arrayWithLength:fileLength - 18];
    IOSIntArray *lengths = [IOSIntArray arrayWithLength:3];
    jint bytePtr = 0;
    for (jint k = 0; k < 3; ++k) {
      if ([rf read] != (jint) 0x80)
#line 518
      @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"start.marker.missing.in.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ filePfb } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
      if ([rf read] != IOSIntArray_Get(nil_chk(ComItextpdfTextPdfType1Font_PFB_TYPES_), k))
#line 520
      @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"incorrect.segment.type.in.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ filePfb } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
      jint size = [rf read];
      size += LShift32([rf read], 8);
      size += LShift32([rf read], 16);
      size += LShift32([rf read], 24);
      *IOSIntArray_GetRef(lengths, k) = size;
      while (size != 0) {
        jint got = [rf readWithByteArray:st withInt:bytePtr withInt:size];
        if (got < 0)
#line 529
        @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"premature.end.in.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ filePfb } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
        bytePtr += got;
        size -= got;
      }
    }
    return [[ComItextpdfTextPdfBaseFont_StreamFont alloc] initWithByteArray:st withIntArray:lengths withInt:compressionLevel_];
  }
  @catch (JavaLangException *e) {
    @throw [[ComItextpdfTextDocumentException alloc] initWithJavaLangException:e];
  }
  @finally {
    if (rf != nil) {
      @try {
        [rf close];
      }
      @catch (JavaLangException *e) {
      }
    }
  }
}


#line 556
- (ComItextpdfTextPdfPdfDictionary *)getFontDescriptorWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)fontStream {
  
#line 558
  if (builtinFont_)
#line 559
  return nil;
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FONTDESCRIPTOR_()];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ASCENT_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:Ascender_]];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_CAPHEIGHT_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:CapHeight_]];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_DESCENT_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:Descender_]];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FONTBBOX_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfRectangle alloc] initWithFloat:llx_ withFloat:lly_ withFloat:urx_ withFloat:ury_]];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FONTNAME_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:FontName_]];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ITALICANGLE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:ItalicAngle_]];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_STEMV_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:StdVW_]];
  if (fontStream != nil)
#line 569
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FONTFILE_() withComItextpdfTextPdfPdfObject:fontStream];
  jint flags = 0;
  if (IsFixedPitch_)
#line 572
  flags |= 1;
  flags |= fontSpecific_ ? 4 : 32;
  if (ItalicAngle_ < 0)
#line 575
  flags |= 64;
  if ([((NSString *) nil_chk(FontName_)) indexOfString:@"Caps"] >= 0 || [FontName_ hasSuffix:@"SC"])
#line 577
  flags |= 131072;
  if ([((NSString *) nil_chk(Weight_)) isEqual:@"Bold"])
#line 579
  flags |= 262144;
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FLAGS_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:flags]];
  
#line 582
  return dic;
}


#line 592
- (ComItextpdfTextPdfPdfDictionary *)getFontBaseTypeWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)fontDescriptor
                                                                                       withInt:(jint)firstChar
                                                                                       withInt:(jint)lastChar
                                                                                 withByteArray:(IOSByteArray *)shortTag {
  
#line 594
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FONT_()];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_TYPE1_()];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_BASEFONT_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:FontName_]];
  jboolean stdEncoding = [((NSString *) nil_chk(encoding_)) isEqual:@"Cp1252"] || [encoding_ isEqual:@"MacRoman"];
  if (!fontSpecific_ || specialMap_ != nil) {
    for (jint k = firstChar; k <= lastChar; ++k) {
      if (![((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(differences_), k))) isEqual:ComItextpdfTextPdfBaseFont_get_notdef_()]) {
        firstChar = k;
        break;
      }
    }
    if (stdEncoding)
#line 606
    [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ENCODING_() withComItextpdfTextPdfPdfObject:[encoding_ isEqual:@"Cp1252"] ? ComItextpdfTextPdfPdfName_get_WIN_ANSI_ENCODING_() : ComItextpdfTextPdfPdfName_get_MAC_ROMAN_ENCODING_()];
    else {
      ComItextpdfTextPdfPdfDictionary *enc = [[ComItextpdfTextPdfPdfDictionary alloc] initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ENCODING_()];
      ComItextpdfTextPdfPdfArray *dif = [[ComItextpdfTextPdfPdfArray alloc] init];
      jboolean gap = YES;
      for (jint k = firstChar; k <= lastChar; ++k) {
        if (IOSByteArray_Get(nil_chk(shortTag), k) != 0) {
          if (gap) {
            [dif addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:k]];
            gap = NO;
          }
          [dif addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:IOSObjectArray_Get(nil_chk(differences_), k)]];
        }
        else
#line 620
        gap = YES;
      }
      [enc putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_DIFFERENCES_() withComItextpdfTextPdfPdfObject:dif];
      [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ENCODING_() withComItextpdfTextPdfPdfObject:enc];
    }
  }
  if (specialMap_ != nil || forceWidthsOutput_ || !(builtinFont_ && (fontSpecific_ || stdEncoding))) {
    [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FIRSTCHAR_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:firstChar]];
    [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LASTCHAR_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:lastChar]];
    ComItextpdfTextPdfPdfArray *wd = [[ComItextpdfTextPdfPdfArray alloc] init];
    for (jint k = firstChar; k <= lastChar; ++k) {
      if (IOSByteArray_Get(nil_chk(shortTag), k) == 0)
#line 632
      [wd addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:0]];
      else
#line 634
      [wd addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:IOSIntArray_Get(nil_chk(widths_), k)]];
    }
    [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_WIDTHS_() withComItextpdfTextPdfPdfObject:wd];
  }
  if (!builtinFont_ && fontDescriptor != nil)
#line 639
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FONTDESCRIPTOR_() withComItextpdfTextPdfPdfObject:fontDescriptor];
  return dic;
}


#line 651
- (void)writeFontWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
      withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref
                               withNSObjectArray:(IOSObjectArray *)params {
  jint firstChar = [((JavaLangInteger *) nil_chk(((JavaLangInteger *) check_class_cast(IOSObjectArray_Get(nil_chk(params), 0), [JavaLangInteger class])))) intValue];
  jint lastChar = [((JavaLangInteger *) nil_chk(((JavaLangInteger *) check_class_cast(IOSObjectArray_Get(params, 1), [JavaLangInteger class])))) intValue];
  IOSByteArray *shortTag = (IOSByteArray *) check_class_cast(IOSObjectArray_Get(params, 2), [IOSByteArray class]);
  jboolean subsetp = [((JavaLangBoolean *) nil_chk(((JavaLangBoolean *) check_class_cast(IOSObjectArray_Get(params, 3), [JavaLangBoolean class])))) booleanValue] && subset_;
  if (!subsetp) {
    firstChar = 0;
    lastChar = ((IOSByteArray *) nil_chk(shortTag))->size_ - 1;
    for (jint k = 0; k < shortTag->size_; ++k)
#line 660
    *IOSByteArray_GetRef(shortTag, k) = 1;
  }
  ComItextpdfTextPdfPdfIndirectReference *ind_font = nil;
  ComItextpdfTextPdfPdfObject *pobj = nil;
  ComItextpdfTextPdfPdfIndirectObject *obj = nil;
  pobj = [self getFullFontStream];
  if (pobj != nil) {
    obj = [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) addToBodyWithComItextpdfTextPdfPdfObject:pobj];
    ind_font = [((ComItextpdfTextPdfPdfIndirectObject *) nil_chk(obj)) getIndirectReference];
  }
  pobj = [self getFontDescriptorWithComItextpdfTextPdfPdfIndirectReference:ind_font];
  if (pobj != nil) {
    obj = [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) addToBodyWithComItextpdfTextPdfPdfObject:pobj];
    ind_font = [((ComItextpdfTextPdfPdfIndirectObject *) nil_chk(obj)) getIndirectReference];
  }
  pobj = [self getFontBaseTypeWithComItextpdfTextPdfPdfIndirectReference:ind_font withInt:firstChar withInt:lastChar withByteArray:shortTag];
  (void) [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) addToBodyWithComItextpdfTextPdfPdfObject:pobj withComItextpdfTextPdfPdfIndirectReference:ref];
}


#line 688
- (jfloat)getFontDescriptorWithInt:(jint)key
                         withFloat:(jfloat)fontSize {
  
#line 689
  switch (key) {
    case ComItextpdfTextPdfBaseFont_AWT_ASCENT:
    case ComItextpdfTextPdfBaseFont_ASCENT:
    return Ascender_ * fontSize / 1000;
    case ComItextpdfTextPdfBaseFont_CAPHEIGHT:
    return CapHeight_ * fontSize / 1000;
    case ComItextpdfTextPdfBaseFont_AWT_DESCENT:
    case ComItextpdfTextPdfBaseFont_DESCENT:
    return Descender_ * fontSize / 1000;
    case ComItextpdfTextPdfBaseFont_ITALICANGLE:
    return ItalicAngle_;
    case ComItextpdfTextPdfBaseFont_BBOXLLX:
    return llx_ * fontSize / 1000;
    case ComItextpdfTextPdfBaseFont_BBOXLLY:
    return lly_ * fontSize / 1000;
    case ComItextpdfTextPdfBaseFont_BBOXURX:
    return urx_ * fontSize / 1000;
    case ComItextpdfTextPdfBaseFont_BBOXURY:
    return ury_ * fontSize / 1000;
    case ComItextpdfTextPdfBaseFont_AWT_LEADING:
    return 0;
    case ComItextpdfTextPdfBaseFont_AWT_MAXADVANCE:
    return (urx_ - llx_) * fontSize / 1000;
    case ComItextpdfTextPdfBaseFont_UNDERLINE_POSITION:
    return UnderlinePosition_ * fontSize / 1000;
    case ComItextpdfTextPdfBaseFont_UNDERLINE_THICKNESS:
    return UnderlineThickness_ * fontSize / 1000;
  }
  return 0;
}


#line 729
- (void)setFontDescriptorWithInt:(jint)key
                       withFloat:(jfloat)value {
  
#line 730
  switch (key) {
    case ComItextpdfTextPdfBaseFont_AWT_ASCENT:
    case ComItextpdfTextPdfBaseFont_ASCENT:
    Ascender_ = J2ObjCFpToInt(value);
    break;
    case ComItextpdfTextPdfBaseFont_AWT_DESCENT:
    case ComItextpdfTextPdfBaseFont_DESCENT:
    Descender_ = J2ObjCFpToInt(value);
    break;
    default:
    break;
  }
}


#line 748
- (NSString *)getPostscriptFontName {
  
#line 749
  return FontName_;
}


#line 761
- (IOSObjectArray *)getFullFontName {
  
#line 762
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ @"", @"", @"", FullName_ } count:4 type:[IOSClass classWithClass:[NSString class]]] } count:1 type:[IOSObjectArray iosClassWithType:[IOSClass classWithClass:[NSString class]]]];
}


#line 774
- (IOSObjectArray *)getAllNameEntries {
  
#line 775
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ @"4", @"", @"", @"", FullName_ } count:5 type:[IOSClass classWithClass:[NSString class]]] } count:1 type:[IOSObjectArray iosClassWithType:[IOSClass classWithClass:[NSString class]]]];
}


#line 787
- (IOSObjectArray *)getFamilyFontName {
  
#line 788
  return [IOSObjectArray arrayWithObjects:(id[]){ [IOSObjectArray arrayWithObjects:(id[]){ @"", @"", @"", FamilyName_ } count:4 type:[IOSClass classWithClass:[NSString class]]] } count:1 type:[IOSObjectArray iosClassWithType:[IOSClass classWithClass:[NSString class]]]];
}


#line 795
- (jboolean)hasKernPairs {
  
#line 796
  return ![((JavaUtilHashMap *) nil_chk(KernPairs_)) isEmpty];
}


#line 805
- (void)setPostscriptFontNameWithNSString:(NSString *)name {
  
#line 806
  FontName_ = name;
}


#line 817
- (jboolean)setKerningWithInt:(jint)char1
                      withInt:(jint)char2
                      withInt:(jint)kern {
  
#line 818
  NSString *first = [ComItextpdfTextPdfGlyphList unicodeToNameWithInt:char1];
  if (first == nil)
#line 820
  return NO;
  NSString *second = [ComItextpdfTextPdfGlyphList unicodeToNameWithInt:char2];
  if (second == nil)
#line 823
  return NO;
  IOSObjectArray *obj = [((JavaUtilHashMap *) nil_chk(KernPairs_)) getWithId:first];
  if (obj == nil) {
    obj = [IOSObjectArray arrayWithObjects:(id[]){ second, [JavaLangInteger valueOfWithInt:kern] } count:2 type:[IOSClass classWithClass:[NSObject class]]];
    (void) [KernPairs_ putWithId:first withId:obj];
    return YES;
  }
  for (jint k = 0; k < ((IOSObjectArray *) nil_chk(obj))->size_; k += 2) {
    if ([((NSString *) nil_chk(second)) isEqual:IOSObjectArray_Get(obj, k)]) {
      IOSObjectArray_Set(obj, k + 1, [JavaLangInteger valueOfWithInt:kern]);
      return YES;
    }
  }
  jint size = obj->size_;
  IOSObjectArray *obj2 = [IOSObjectArray arrayWithLength:size + 2 type:[IOSClass classWithClass:[NSObject class]]];
  [JavaLangSystem arraycopyWithId:obj withInt:0 withId:obj2 withInt:0 withInt:size];
  IOSObjectArray_Set(obj2, size, second);
  IOSObjectArray_Set(obj2, size + 1, [JavaLangInteger valueOfWithInt:kern]);
  (void) [KernPairs_ putWithId:first withId:obj2];
  return YES;
}


#line 846
- (IOSIntArray *)getRawCharBBoxWithInt:(jint)c
                          withNSString:(NSString *)name {
  
#line 847
  IOSObjectArray *metrics;
  if (name == nil) {
    metrics = [((JavaUtilHashMap *) nil_chk(CharMetrics_)) getWithId:[JavaLangInteger valueOfWithInt:c]];
  }
  else {
    if ([name isEqual:@".notdef"])
#line 853
    return nil;
    metrics = [((JavaUtilHashMap *) nil_chk(CharMetrics_)) getWithId:name];
  }
  if (metrics != nil)
#line 857
  return (IOSIntArray *) check_class_cast(IOSObjectArray_Get(metrics, 3), [IOSIntArray class]);
  return nil;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfType1Font *)other {
  [super copyAllFieldsTo:other];
  other->Ascender_ = Ascender_;
  other->CapHeight_ = CapHeight_;
  other->CharMetrics_ = CharMetrics_;
  other->CharacterSet_ = CharacterSet_;
  other->Descender_ = Descender_;
  other->EncodingScheme_ = EncodingScheme_;
  other->FamilyName_ = FamilyName_;
  other->FontName_ = FontName_;
  other->FullName_ = FullName_;
  other->IsFixedPitch_ = IsFixedPitch_;
  other->ItalicAngle_ = ItalicAngle_;
  other->KernPairs_ = KernPairs_;
  other->StdHW_ = StdHW_;
  other->StdVW_ = StdVW_;
  other->UnderlinePosition_ = UnderlinePosition_;
  other->UnderlineThickness_ = UnderlineThickness_;
  other->Weight_ = Weight_;
  other->XHeight_ = XHeight_;
  other->builtinFont_ = builtinFont_;
  other->fileName_ = fileName_;
  other->llx_ = llx_;
  other->lly_ = lly_;
  other->pfb_ = pfb_;
  other->urx_ = urx_;
  other->ury_ = ury_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfType1Font class]) {
    ComItextpdfTextPdfType1Font_PFB_TYPES_ = [IOSIntArray arrayWithInts:(jint[]){
#line 157
      1, 2, 1 } count:3];
      ComItextpdfTextPdfType1Font_initialized = YES;
    }
  }

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withBoolean:withByteArray:withByteArray:withBoolean:", "Type1Font", NULL, 0x0, "Lcom.itextpdf.text.DocumentException;Ljava.io.IOException;" },
    { "getRawWidthWithInt:withNSString:", "getRawWidth", "I", 0x0, NULL },
    { "getKerningWithInt:withInt:", "getKerning", "I", 0x1, NULL },
    { "processWithComItextpdfTextPdfRandomAccessFileOrArray:", "process", "V", 0x1, "Lcom.itextpdf.text.DocumentException;Ljava.io.IOException;" },
    { "getFullFontStream", NULL, "Lcom.itextpdf.text.pdf.PdfStream;", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "getFontDescriptorWithComItextpdfTextPdfPdfIndirectReference:", "getFontDescriptor", "Lcom.itextpdf.text.pdf.PdfDictionary;", 0x2, NULL },
    { "getFontBaseTypeWithComItextpdfTextPdfPdfIndirectReference:withInt:withInt:withByteArray:", "getFontBaseType", "Lcom.itextpdf.text.pdf.PdfDictionary;", 0x2, NULL },
    { "writeFontWithComItextpdfTextPdfPdfWriter:withComItextpdfTextPdfPdfIndirectReference:withNSObjectArray:", "writeFont", "V", 0x0, "Lcom.itextpdf.text.DocumentException;Ljava.io.IOException;" },
    { "getFontDescriptorWithInt:withFloat:", "getFontDescriptor", "F", 0x1, NULL },
    { "setFontDescriptorWithInt:withFloat:", "setFontDescriptor", "V", 0x1, NULL },
    { "getPostscriptFontName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getFullFontName", NULL, "[[Ljava.lang.String;", 0x1, NULL },
    { "getAllNameEntries", NULL, "[[Ljava.lang.String;", 0x1, NULL },
    { "getFamilyFontName", NULL, "[[Ljava.lang.String;", 0x1, NULL },
    { "hasKernPairs", NULL, "Z", 0x1, NULL },
    { "setPostscriptFontNameWithNSString:", "setPostscriptFontName", "V", 0x1, NULL },
    { "setKerningWithInt:withInt:withInt:", "setKerning", "Z", 0x1, NULL },
    { "getRawCharBBoxWithInt:withNSString:", "getRawCharBBox", "[I", 0x4, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "resourceAnchor_", NULL, 0xa, "Lcom.itextpdf.text.pdf.fonts.FontsResourceAnchor;", &ComItextpdfTextPdfType1Font_resourceAnchor_,  },
    { "pfb_", NULL, 0x4, "[B", NULL,  },
    { "FontName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "FullName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "FamilyName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "Weight_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "ItalicAngle_", NULL, 0x2, "F", NULL,  },
    { "IsFixedPitch_", NULL, 0x2, "Z", NULL,  },
    { "CharacterSet_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "llx_", NULL, 0x2, "I", NULL,  },
    { "lly_", NULL, 0x2, "I", NULL,  },
    { "urx_", NULL, 0x2, "I", NULL,  },
    { "ury_", NULL, 0x2, "I", NULL,  },
    { "UnderlinePosition_", NULL, 0x2, "I", NULL,  },
    { "UnderlineThickness_", NULL, 0x2, "I", NULL,  },
    { "EncodingScheme_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "CapHeight_", NULL, 0x2, "I", NULL,  },
    { "XHeight_", NULL, 0x2, "I", NULL,  },
    { "Ascender_", NULL, 0x2, "I", NULL,  },
    { "Descender_", NULL, 0x2, "I", NULL,  },
    { "StdHW_", NULL, 0x2, "I", NULL,  },
    { "StdVW_", NULL, 0x2, "I", NULL,  },
    { "CharMetrics_", NULL, 0x2, "Ljava.util.HashMap;", NULL,  },
    { "KernPairs_", NULL, 0x2, "Ljava.util.HashMap;", NULL,  },
    { "fileName_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "builtinFont_", NULL, 0x2, "Z", NULL,  },
    { "PFB_TYPES_", NULL, 0x1a, "[I", &ComItextpdfTextPdfType1Font_PFB_TYPES_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfType1Font = { "Type1Font", "com.itextpdf.text.pdf", NULL, 0x0, 18, methods, 27, fields, 0, NULL};
  return &_ComItextpdfTextPdfType1Font;
}

@end
