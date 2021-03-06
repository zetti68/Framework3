//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/FontFactoryImp.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/FontFactoryImp.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/Font.h"
#include "com/itextpdf/text/FontFactory.h"
#include "com/itextpdf/text/FontFactoryImp.h"
#include "com/itextpdf/text/log/Level.h"
#include "com/itextpdf/text/log/Logger.h"
#include "com/itextpdf/text/log/LoggerFactory.h"
#include "com/itextpdf/text/pdf/BaseFont.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "java/lang/reflect/Method.h"
#include "java/util/ArrayList.h"
#include "java/util/Hashtable.h"
#include "java/util/Set.h"

BOOL ComItextpdfTextFontFactoryImp_initialized = NO;


#line 68
@implementation ComItextpdfTextFontFactoryImp

id<ComItextpdfTextLogLogger> ComItextpdfTextFontFactoryImp_LOGGER_;
IOSObjectArray * ComItextpdfTextFontFactoryImp_TTFamilyOrder_;


#line 90
- (instancetype)init {
  if (self = [super init]) {
    trueTypeFonts_ =
#line 75
    [[JavaUtilHashtable alloc] init];
    fontFamilies_ =
#line 81
    [[JavaUtilHashtable alloc] init];
    defaultEncoding_ = ComItextpdfTextPdfBaseFont_get_WINANSI_();
    defaultEmbedding_ =
#line 87
    ComItextpdfTextPdfBaseFont_NOT_EMBEDDED;
    
#line 91
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_COURIER_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_COURIER_()];
    
#line 92
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_COURIER_BOLD_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_COURIER_BOLD_()];
    
#line 93
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_COURIER_OBLIQUE_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_COURIER_OBLIQUE_()];
    
#line 94
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_COURIER_BOLDOBLIQUE_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_COURIER_BOLDOBLIQUE_()];
    
#line 96
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_HELVETICA_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_HELVETICA_()];
    
#line 97
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_HELVETICA_BOLD_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_HELVETICA_BOLD_()];
    
#line 98
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_HELVETICA_OBLIQUE_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_HELVETICA_OBLIQUE_()];
    
#line 99
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_HELVETICA_BOLDOBLIQUE_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_HELVETICA_BOLDOBLIQUE_()];
    
#line 101
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_SYMBOL_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_SYMBOL_()];
    
#line 102
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_TIMES_ROMAN_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_TIMES_ROMAN_()];
    
#line 103
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_TIMES_BOLD_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_TIMES_BOLD_()];
    
#line 104
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_TIMES_ITALIC_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_TIMES_ITALIC_()];
    
#line 105
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_TIMES_BOLDITALIC_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_TIMES_BOLDITALIC_()];
    
#line 106
    (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_ZAPFDINGBATS_())) lowercaseString] withId:ComItextpdfTextFontFactory_get_ZAPFDINGBATS_()];
    
#line 108
    JavaUtilArrayList *tmp;
    
#line 109
    tmp = [[JavaUtilArrayList alloc] init];
    
#line 110
    [tmp addWithId:ComItextpdfTextFontFactory_get_COURIER_()];
    
#line 111
    [tmp addWithId:ComItextpdfTextFontFactory_get_COURIER_BOLD_()];
    
#line 112
    [tmp addWithId:ComItextpdfTextFontFactory_get_COURIER_OBLIQUE_()];
    
#line 113
    [tmp addWithId:ComItextpdfTextFontFactory_get_COURIER_BOLDOBLIQUE_()];
    
#line 114
    (void) [fontFamilies_ putWithId:[ComItextpdfTextFontFactory_get_COURIER_() lowercaseString] withId:tmp];
    
#line 115
    tmp = [[JavaUtilArrayList alloc] init];
    
#line 116
    [tmp addWithId:ComItextpdfTextFontFactory_get_HELVETICA_()];
    
#line 117
    [tmp addWithId:ComItextpdfTextFontFactory_get_HELVETICA_BOLD_()];
    
#line 118
    [tmp addWithId:ComItextpdfTextFontFactory_get_HELVETICA_OBLIQUE_()];
    
#line 119
    [tmp addWithId:ComItextpdfTextFontFactory_get_HELVETICA_BOLDOBLIQUE_()];
    
#line 120
    (void) [fontFamilies_ putWithId:[ComItextpdfTextFontFactory_get_HELVETICA_() lowercaseString] withId:tmp];
    
#line 121
    tmp = [[JavaUtilArrayList alloc] init];
    
#line 122
    [tmp addWithId:ComItextpdfTextFontFactory_get_SYMBOL_()];
    
#line 123
    (void) [fontFamilies_ putWithId:[ComItextpdfTextFontFactory_get_SYMBOL_() lowercaseString] withId:tmp];
    
#line 124
    tmp = [[JavaUtilArrayList alloc] init];
    
#line 125
    [tmp addWithId:ComItextpdfTextFontFactory_get_TIMES_ROMAN_()];
    
#line 126
    [tmp addWithId:ComItextpdfTextFontFactory_get_TIMES_BOLD_()];
    
#line 127
    [tmp addWithId:ComItextpdfTextFontFactory_get_TIMES_ITALIC_()];
    
#line 128
    [tmp addWithId:ComItextpdfTextFontFactory_get_TIMES_BOLDITALIC_()];
    
#line 129
    (void) [fontFamilies_ putWithId:[((NSString *) nil_chk(ComItextpdfTextFontFactory_get_TIMES_())) lowercaseString] withId:tmp];
    
#line 130
    (void) [fontFamilies_ putWithId:[ComItextpdfTextFontFactory_get_TIMES_ROMAN_() lowercaseString] withId:tmp];
    
#line 131
    tmp = [[JavaUtilArrayList alloc] init];
    
#line 132
    [tmp addWithId:ComItextpdfTextFontFactory_get_ZAPFDINGBATS_()];
    
#line 133
    (void) [fontFamilies_ putWithId:[ComItextpdfTextFontFactory_get_ZAPFDINGBATS_() lowercaseString] withId:tmp];
  }
  return self;
}


#line 154
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color {
  
#line 156
  return [self getFontWithNSString:fontname withNSString:encoding withBoolean:embedded withFloat:size withInt:style withComItextpdfTextBaseColor:color withBoolean:YES];
}


#line 179
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color
                                 withBoolean:(jboolean)cached {
  
#line 181
  if (fontname == nil) {
    return [[ComItextpdfTextFont alloc] initWithComItextpdfTextFont_FontFamilyEnum:ComItextpdfTextFont_FontFamilyEnum_get_UNDEFINED() withFloat:size withInt:style withComItextpdfTextBaseColor:color];
  }
  NSString *lowercasefontname = [((NSString *) nil_chk(fontname)) lowercaseString];
  JavaUtilArrayList *tmp = [((JavaUtilHashtable *) nil_chk(fontFamilies_)) getWithId:lowercasefontname];
  if (tmp != nil) {
    @synchronized(tmp) {
      
#line 189
      jint s = style == ComItextpdfTextFont_UNDEFINED ? ComItextpdfTextFont_NORMAL : style;
      jint fs = ComItextpdfTextFont_NORMAL;
      jboolean found = NO;
      for (NSString * __strong f in tmp) {
        NSString *lcf = [((NSString *) nil_chk(f)) lowercaseString];
        fs = ComItextpdfTextFont_NORMAL;
        if ([((NSString *) nil_chk(lcf)) indexOfString:@"bold"] != -1) {
          fs |= ComItextpdfTextFont_BOLD;
        }
        if ([lcf indexOfString:@"italic"] != -1 || [lcf indexOfString:@"oblique"] != -1) {
          fs |= ComItextpdfTextFont_ITALIC;
        }
        if ((s & ComItextpdfTextFont_BOLDITALIC) == fs) {
          fontname = f;
          found = YES;
          break;
        }
      }
      if (style != ComItextpdfTextFont_UNDEFINED && found) {
        style &= ~fs;
      }
    }
  }
  ComItextpdfTextPdfBaseFont *basefont = nil;
  @try {
    @try {
      
#line 216
      basefont = [ComItextpdfTextPdfBaseFont createFontWithNSString:fontname withNSString:encoding withBoolean:embedded withBoolean:cached withByteArray:nil withByteArray:nil withBoolean:YES];
    }
    @catch (
#line 217
    ComItextpdfTextDocumentException *de) {
    }
    if (basefont == nil) {
      
#line 221
      fontname = [((JavaUtilHashtable *) nil_chk(trueTypeFonts_)) getWithId:[fontname lowercaseString]];
      
#line 223
      if (fontname == nil) {
        return [[ComItextpdfTextFont alloc] initWithComItextpdfTextFont_FontFamilyEnum:ComItextpdfTextFont_FontFamilyEnum_get_UNDEFINED() withFloat:size withInt:style withComItextpdfTextBaseColor:color];
      }
      
#line 227
      basefont = [ComItextpdfTextPdfBaseFont createFontWithNSString:fontname withNSString:encoding withBoolean:embedded withBoolean:cached withByteArray:nil withByteArray:nil];
    }
  }
  @catch (
#line 229
  ComItextpdfTextDocumentException *de) {
    
#line 231
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:de];
  }
  @catch (
#line 232
  JavaIoIOException *ioe) {
    
#line 234
    return [[ComItextpdfTextFont alloc] initWithComItextpdfTextFont_FontFamilyEnum:ComItextpdfTextFont_FontFamilyEnum_get_UNDEFINED() withFloat:size withInt:style withComItextpdfTextBaseColor:color];
  }
  @catch (
#line 235
  JavaLangNullPointerException *npe) {
    
#line 237
    return [[ComItextpdfTextFont alloc] initWithComItextpdfTextFont_FontFamilyEnum:ComItextpdfTextFont_FontFamilyEnum_get_UNDEFINED() withFloat:size withInt:style withComItextpdfTextBaseColor:color];
  }
  return [[ComItextpdfTextFont alloc] initWithComItextpdfTextPdfBaseFont:basefont withFloat:size withInt:style withComItextpdfTextBaseColor:color];
}


#line 258
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size
                                     withInt:(jint)style {
  
#line 260
  return [self getFontWithNSString:fontname withNSString:encoding withBoolean:embedded withFloat:size withInt:style withComItextpdfTextBaseColor:nil];
}


#line 277
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded
                                   withFloat:(jfloat)size {
  
#line 279
  return [self getFontWithNSString:fontname withNSString:encoding withBoolean:embedded withFloat:size withInt:ComItextpdfTextFont_UNDEFINED withComItextpdfTextBaseColor:nil];
}


#line 294
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                 withBoolean:(jboolean)embedded {
  
#line 295
  return [self getFontWithNSString:fontname withNSString:encoding withBoolean:embedded withFloat:ComItextpdfTextFont_UNDEFINED withInt:ComItextpdfTextFont_UNDEFINED withComItextpdfTextBaseColor:nil];
}


#line 314
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color {
  
#line 316
  return [self getFontWithNSString:fontname withNSString:encoding withBoolean:defaultEmbedding_ withFloat:size withInt:style withComItextpdfTextBaseColor:color];
}


#line 333
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size
                                     withInt:(jint)style {
  
#line 335
  return [self getFontWithNSString:fontname withNSString:encoding withBoolean:defaultEmbedding_ withFloat:size withInt:style withComItextpdfTextBaseColor:nil];
}


#line 350
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding
                                   withFloat:(jfloat)size {
  
#line 351
  return [self getFontWithNSString:fontname withNSString:encoding withBoolean:defaultEmbedding_ withFloat:size withInt:ComItextpdfTextFont_UNDEFINED withComItextpdfTextBaseColor:nil];
}


#line 367
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color {
  
#line 368
  return [self getFontWithNSString:fontname withNSString:defaultEncoding_ withBoolean:defaultEmbedding_ withFloat:size withInt:ComItextpdfTextFont_UNDEFINED withComItextpdfTextBaseColor:color];
}


#line 381
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                withNSString:(NSString *)encoding {
  
#line 382
  return [self getFontWithNSString:fontname withNSString:encoding withBoolean:defaultEmbedding_ withFloat:ComItextpdfTextFont_UNDEFINED withInt:ComItextpdfTextFont_UNDEFINED withComItextpdfTextBaseColor:nil];
}


#line 399
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                                     withInt:(jint)style
                withComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)color {
  
#line 401
  return [self getFontWithNSString:fontname withNSString:defaultEncoding_ withBoolean:defaultEmbedding_ withFloat:size withInt:style withComItextpdfTextBaseColor:color];
}


#line 416
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size
                                     withInt:(jint)style {
  
#line 417
  return [self getFontWithNSString:fontname withNSString:defaultEncoding_ withBoolean:defaultEmbedding_ withFloat:size withInt:style withComItextpdfTextBaseColor:nil];
}


#line 430
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname
                                   withFloat:(jfloat)size {
  
#line 431
  return [self getFontWithNSString:fontname withNSString:defaultEncoding_ withBoolean:defaultEmbedding_ withFloat:size withInt:ComItextpdfTextFont_UNDEFINED withComItextpdfTextBaseColor:nil];
}


#line 442
- (ComItextpdfTextFont *)getFontWithNSString:(NSString *)fontname {
  
#line 443
  return [self getFontWithNSString:fontname withNSString:defaultEncoding_ withBoolean:defaultEmbedding_ withFloat:ComItextpdfTextFont_UNDEFINED withInt:ComItextpdfTextFont_UNDEFINED withComItextpdfTextBaseColor:
#line 444
  nil];
}


#line 457
- (void)registerFamilyWithNSString:(NSString *)familyName
                      withNSString:(NSString *)fullName
                      withNSString:(NSString *)path {
  
#line 458
  if (path != nil) {
    (void) [((JavaUtilHashtable *) nil_chk(trueTypeFonts_)) putWithId:fullName withId:path];
  }
  JavaUtilArrayList *tmp;
  @synchronized(fontFamilies_) {
    tmp = [((JavaUtilHashtable *) nil_chk(fontFamilies_)) getWithId:familyName];
    if (tmp == nil) {
      tmp = [[JavaUtilArrayList alloc] init];
      (void) [fontFamilies_ putWithId:familyName withId:tmp];
    }
  }
  @synchronized(tmp) {
    if (![((JavaUtilArrayList *) nil_chk(tmp)) containsWithId:fullName]) {
      jint fullNameLength = ((jint) [((NSString *) nil_chk(fullName)) length]);
      jboolean inserted = NO;
      for (jint j = 0; j < [tmp size]; ++j) {
        if (((jint) [((NSString *) nil_chk([tmp getWithInt:j])) length]) >= fullNameLength) {
          [tmp addWithInt:j withId:fullName];
          inserted = YES;
          break;
        }
      }
      if (!inserted) {
        [tmp addWithId:fullName];
      }
    }
  }
}


#line 494
- (void)register__WithNSString:(NSString *)path {
  
#line 495
  [self register__WithNSString:path withNSString:nil];
}


#line 507
- (void)register__WithNSString:(NSString *)path
                  withNSString:(NSString *)alias {
  
#line 508
  @try {
    if ([((NSString *) nil_chk([((NSString *) nil_chk(path)) lowercaseString])) hasSuffix:@".ttf"] || [((NSString *) nil_chk([path lowercaseString])) hasSuffix:@".otf"] ||
#line 510
    [((NSString *) nil_chk([path lowercaseString])) indexOfString:@".ttc,"] > 0) {
      IOSObjectArray *allNames = [ComItextpdfTextPdfBaseFont getAllFontNamesWithNSString:path withNSString:ComItextpdfTextPdfBaseFont_get_WINANSI_() withByteArray:nil];
      (void) [((JavaUtilHashtable *) nil_chk(trueTypeFonts_)) putWithId:[((NSString *) nil_chk(((NSString *) check_class_cast(IOSObjectArray_Get(nil_chk(allNames), 0), [NSString class])))) lowercaseString] withId:path];
      if (alias != nil) {
        (void) [trueTypeFonts_ putWithId:[alias lowercaseString] withId:path];
      }
      
#line 517
      IOSObjectArray *names = (IOSObjectArray *) check_class_cast(IOSObjectArray_Get(allNames, 2), [IOSObjectArray class]);
      {
        IOSObjectArray *a__ =
#line 518
        names;
        IOSObjectArray * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        IOSObjectArray * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          IOSObjectArray *name = *b__++;
          
#line 519
          (void) [trueTypeFonts_ putWithId:[((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(name), 3))) lowercaseString] withId:path];
        }
      }
      
#line 521
      NSString *fullName = nil;
      NSString *familyName = nil;
      names = (IOSObjectArray *) check_class_cast(IOSObjectArray_Get(allNames, 1), [IOSObjectArray class]);
      for (jint k = 0; k < ((IOSObjectArray *) nil_chk(ComItextpdfTextFontFactoryImp_TTFamilyOrder_))->size_; k += 3) {
        {
          IOSObjectArray *a__ =
#line 525
          names;
          IOSObjectArray * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          IOSObjectArray * const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            IOSObjectArray *name = *b__++;
            
#line 526
            if ([((NSString *) nil_chk(IOSObjectArray_Get(ComItextpdfTextFontFactoryImp_TTFamilyOrder_, k))) isEqual:IOSObjectArray_Get(nil_chk(name), 0)] && [((NSString *) nil_chk(IOSObjectArray_Get(ComItextpdfTextFontFactoryImp_TTFamilyOrder_, k + 1))) isEqual:IOSObjectArray_Get(name, 1)] &&
#line 527
            [((NSString *) nil_chk(IOSObjectArray_Get(ComItextpdfTextFontFactoryImp_TTFamilyOrder_, k + 2))) isEqual:IOSObjectArray_Get(name, 2)]) {
              familyName = [((NSString *) nil_chk(IOSObjectArray_Get(name, 3))) lowercaseString];
              k = ComItextpdfTextFontFactoryImp_TTFamilyOrder_->size_;
              break;
            }
          }
        }
      }
      
#line 534
      if (familyName != nil) {
        NSString *lastName = @"";
        names = (IOSObjectArray *) check_class_cast(IOSObjectArray_Get(allNames, 2), [IOSObjectArray class]);
        {
          IOSObjectArray *a__ =
#line 537
          names;
          IOSObjectArray * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          IOSObjectArray * const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            IOSObjectArray *name = *b__++;
            
#line 538
            for (jint k = 0; k < ComItextpdfTextFontFactoryImp_TTFamilyOrder_->size_; k += 3) {
              if ([((NSString *) nil_chk(IOSObjectArray_Get(ComItextpdfTextFontFactoryImp_TTFamilyOrder_, k))) isEqual:IOSObjectArray_Get(nil_chk(name), 0)] && [((NSString *) nil_chk(IOSObjectArray_Get(ComItextpdfTextFontFactoryImp_TTFamilyOrder_, k + 1))) isEqual:IOSObjectArray_Get(name, 1)] &&
#line 540
              [((NSString *) nil_chk(IOSObjectArray_Get(ComItextpdfTextFontFactoryImp_TTFamilyOrder_, k + 2))) isEqual:IOSObjectArray_Get(name, 2)]) {
                fullName = IOSObjectArray_Get(name, 3);
                if ([((NSString *) nil_chk(fullName)) isEqual:lastName]) {
                  continue;
                }
                lastName = fullName;
                [self registerFamilyWithNSString:familyName withNSString:fullName withNSString:nil];
                break;
              }
            }
          }
        }
      }
    }
    else
#line 552
    if ([((NSString *) nil_chk([path lowercaseString])) hasSuffix:@".ttc"]) {
      if (alias != nil) {
        [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextFontFactoryImp_LOGGER_)) errorWithNSString:@"You can't define an alias for a true type collection."];
      }
      IOSObjectArray *names = [ComItextpdfTextPdfBaseFont enumerateTTCNamesWithNSString:path];
      for (jint i = 0; i < ((IOSObjectArray *) nil_chk(names))->size_; i++) {
        [self register__WithNSString:JreStrcat("$CI", path, ',', i)];
      }
    }
    else
#line 560
    if ([((NSString *) nil_chk([path lowercaseString])) hasSuffix:@".afm"] || [((NSString *) nil_chk([path lowercaseString])) hasSuffix:@".pfm"]) {
      ComItextpdfTextPdfBaseFont *bf = [ComItextpdfTextPdfBaseFont createFontWithNSString:path withNSString:ComItextpdfTextPdfBaseFont_get_CP1252_() withBoolean:NO];
      NSString *fullName = [((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(nil_chk([((ComItextpdfTextPdfBaseFont *) nil_chk(bf)) getFullFontName]), 0)), 3))) lowercaseString];
      NSString *familyName = [((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(nil_chk([bf getFamilyFontName]), 0)), 3))) lowercaseString];
      NSString *psName = [((NSString *) nil_chk([bf getPostscriptFontName])) lowercaseString];
      [self registerFamilyWithNSString:familyName withNSString:fullName withNSString:nil];
      (void) [((JavaUtilHashtable *) nil_chk(trueTypeFonts_)) putWithId:psName withId:path];
      (void) [trueTypeFonts_ putWithId:fullName withId:path];
    }
    if ([((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextFontFactoryImp_LOGGER_)) isLoggingWithComItextpdfTextLogLevelEnum:ComItextpdfTextLogLevelEnum_get_TRACE()]) {
      [ComItextpdfTextFontFactoryImp_LOGGER_ traceWithNSString:[NSString formatWithNSString:@"Registered %s" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ path } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
  }
  @catch (
#line 572
  ComItextpdfTextDocumentException *de) {
    
#line 574
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:de];
  }
  @catch (
#line 575
  JavaIoIOException *ioe) {
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:ioe];
  }
}


#line 587
- (jint)registerDirectoryWithNSString:(NSString *)dir {
  
#line 588
  return [self registerDirectoryWithNSString:dir withBoolean:NO];
}


#line 601
- (jint)registerDirectoryWithNSString:(NSString *)dir
                          withBoolean:(jboolean)scanSubdirectories {
  
#line 602
  if ([((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextFontFactoryImp_LOGGER_)) isLoggingWithComItextpdfTextLogLevelEnum:ComItextpdfTextLogLevelEnum_get_DEBUG_()]) {
    [ComItextpdfTextFontFactoryImp_LOGGER_ debugWithNSString:[NSString formatWithNSString:@"Registering directory %s, looking for fonts" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ dir } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  jint count = 0;
  @try {
    JavaIoFile *file = [[JavaIoFile alloc] initWithNSString:dir];
    if (![file exists] || ![file isDirectory]) {
      return 0;
    }
    IOSObjectArray *files = [file list];
    if (files == nil) {
      return 0;
    }
    for (jint k = 0; k < ((IOSObjectArray *) nil_chk(files))->size_; ++k) {
      @try {
        file = [[JavaIoFile alloc] initWithNSString:dir withNSString:IOSObjectArray_Get(files, k)];
        if ([file isDirectory]) {
          if (scanSubdirectories) {
            count += [self registerDirectoryWithNSString:[file getAbsolutePath] withBoolean:YES];
          }
        }
        else {
          
#line 623
          NSString *name = [file getPath];
          NSString *suffix = ((jint) [((NSString *) nil_chk(name)) length]) < 4 ? nil : [((NSString *) nil_chk([name substring:((jint) [name length]) - 4])) lowercaseString];
          
#line 626
          if ([@".afm" isEqual:suffix] || [@".pfm" isEqual:suffix]) {
            
#line 628
            JavaIoFile *pfb = [[JavaIoFile alloc] initWithNSString:JreStrcat("$$", [name substring:0 endIndex:((jint) [name length]) - 4], @".pfb")];
            if ([pfb exists]) {
              [self register__WithNSString:name withNSString:nil];
              ++count;
            }
          }
          else
#line 633
          if ([@".ttf" isEqual:suffix] || [@".otf" isEqual:suffix] || [@".ttc" isEqual:suffix]) {
            [self register__WithNSString:name withNSString:nil];
            ++count;
          }
        }
      }
      @catch (
#line 638
      JavaLangException *e) {
      }
    }
  }
  @catch (JavaLangException *e) {
  }
  
#line 645
  return count;
}


#line 654
- (jint)registerDirectories {
  
#line 655
  jint count = 0;
  
#line 657
  @try {
    JavaLangReflectMethod *method = [[IOSClass classWithClass:[JavaLangSystem class]] getMethod:@"getenv" parameterTypes:[IOSObjectArray arrayWithObjects:(id[]){ [IOSClass classWithClass:[NSString class]] } count:1 type:[IOSClass classWithClass:[IOSClass class]]]];
    id windir = [((JavaLangReflectMethod *) nil_chk(method)) invokeWithId:nil withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ @"windir" } count:1 type:[IOSClass classWithClass:[NSObject class]]]];
    NSString *fileseparator = [JavaLangSystem getPropertyWithNSString:@"file.separator"];
    if (windir != nil && fileseparator != nil) {
      count += [self registerDirectoryWithNSString:JreStrcat("$$$", [windir description], fileseparator, @"fonts")];
    }
  }
  @catch (
#line 664
  JavaLangException *e) {
  }
  
#line 667
  count += [self registerDirectoryWithNSString:@"/usr/share/X11/fonts" withBoolean:YES];
  count += [self registerDirectoryWithNSString:@"/usr/X/lib/X11/fonts" withBoolean:YES];
  count += [self registerDirectoryWithNSString:@"/usr/openwin/lib/X11/fonts" withBoolean:YES];
  count += [self registerDirectoryWithNSString:@"/usr/share/fonts" withBoolean:YES];
  count += [self registerDirectoryWithNSString:@"/usr/X11R6/lib/X11/fonts" withBoolean:YES];
  count += [self registerDirectoryWithNSString:@"/Library/Fonts"];
  count += [self registerDirectoryWithNSString:@"/System/Library/Fonts"];
  return count;
}


#line 683
- (id<JavaUtilSet>)getRegisteredFonts {
  return [((JavaUtilHashtable *) nil_chk(trueTypeFonts_)) keySet];
}


#line 693
- (id<JavaUtilSet>)getRegisteredFamilies {
  
#line 694
  return [((JavaUtilHashtable *) nil_chk(fontFamilies_)) keySet];
}


#line 705
- (jboolean)isRegisteredWithNSString:(NSString *)fontname {
  
#line 706
  return [((JavaUtilHashtable *) nil_chk(trueTypeFonts_)) containsKeyWithId:[((NSString *) nil_chk(fontname)) lowercaseString]];
}

- (void)copyAllFieldsTo:(ComItextpdfTextFontFactoryImp *)other {
  [super copyAllFieldsTo:other];
  other->defaultEmbedding_ = defaultEmbedding_;
  other->defaultEncoding_ = defaultEncoding_;
  other->fontFamilies_ = fontFamilies_;
  other->trueTypeFonts_ = trueTypeFonts_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextFontFactoryImp class]) {
    ComItextpdfTextFontFactoryImp_LOGGER_ =
#line 70
    [ComItextpdfTextLogLoggerFactory getLoggerWithIOSClass:[IOSClass classWithClass:[ComItextpdfTextFontFactoryImp class]]];
    ComItextpdfTextFontFactoryImp_TTFamilyOrder_ = [IOSObjectArray arrayWithObjects:(id[]){
#line 77
      @"3", @"1", @"1033", @"3", @"0", @"1033", @"1", @"0", @"0", @"0",
#line 78
      @"3", @"0" } count:12 type:[IOSClass classWithClass:[NSString class]]];
      ComItextpdfTextFontFactoryImp_initialized = YES;
    }
  }

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "FontFactoryImp", NULL, 0x1, NULL },
    { "getFontWithNSString:withNSString:withBoolean:withFloat:withInt:withComItextpdfTextBaseColor:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withNSString:withBoolean:withFloat:withInt:withComItextpdfTextBaseColor:withBoolean:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withNSString:withBoolean:withFloat:withInt:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withNSString:withBoolean:withFloat:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withNSString:withBoolean:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withNSString:withFloat:withInt:withComItextpdfTextBaseColor:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withNSString:withFloat:withInt:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withNSString:withFloat:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withFloat:withComItextpdfTextBaseColor:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withNSString:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withFloat:withInt:withComItextpdfTextBaseColor:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withFloat:withInt:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:withFloat:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "getFontWithNSString:", "getFont", "Lcom.itextpdf.text.Font;", 0x1, NULL },
    { "registerFamilyWithNSString:withNSString:withNSString:", "registerFamily", "V", 0x1, NULL },
    { "register__WithNSString:", "register", "V", 0x1, NULL },
    { "register__WithNSString:withNSString:", "register", "V", 0x1, NULL },
    { "registerDirectoryWithNSString:", "registerDirectory", "I", 0x1, NULL },
    { "registerDirectoryWithNSString:withBoolean:", "registerDirectory", "I", 0x1, NULL },
    { "registerDirectories", NULL, "I", 0x1, NULL },
    { "getRegisteredFonts", NULL, "Ljava.util.Set;", 0x1, NULL },
    { "getRegisteredFamilies", NULL, "Ljava.util.Set;", 0x1, NULL },
    { "isRegisteredWithNSString:", "isRegistered", "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LOGGER_", NULL, 0x1a, "Lcom.itextpdf.text.log.Logger;", &ComItextpdfTextFontFactoryImp_LOGGER_,  },
    { "trueTypeFonts_", NULL, 0x12, "Ljava.util.Hashtable;", NULL,  },
    { "TTFamilyOrder_", NULL, 0xa, "[Ljava.lang.String;", &ComItextpdfTextFontFactoryImp_TTFamilyOrder_,  },
    { "fontFamilies_", NULL, 0x12, "Ljava.util.Hashtable;", NULL,  },
    { "defaultEncoding_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "defaultEmbedding_", NULL, 0x1, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextFontFactoryImp = { "FontFactoryImp", "com.itextpdf.text", NULL, 0x1, 24, methods, 6, fields, 0, NULL};
  return &_ComItextpdfTextFontFactoryImp;
}

@end
