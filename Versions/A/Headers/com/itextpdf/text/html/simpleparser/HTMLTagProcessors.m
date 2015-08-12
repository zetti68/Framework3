//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/HTMLTagProcessors.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/HTMLTagProcessors.java"

#include "IOSClass.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/Image.h"
#include "com/itextpdf/text/List.h"
#include "com/itextpdf/text/ListItem.h"
#include "com/itextpdf/text/html/HtmlTags.h"
#include "com/itextpdf/text/html/simpleparser/CellWrapper.h"
#include "com/itextpdf/text/html/simpleparser/HTMLTagProcessor.h"
#include "com/itextpdf/text/html/simpleparser/HTMLTagProcessors.h"
#include "com/itextpdf/text/html/simpleparser/HTMLWorker.h"
#include "com/itextpdf/text/html/simpleparser/TableWrapper.h"
#include "com/itextpdf/text/pdf/draw/LineSeparator.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"

BOOL ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_initialized = NO;


#line 59
@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors

id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_A_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_BR_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_UL_OL_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_HR_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_SPAN_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_LI_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_PRE_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_DIV_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TABLE_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TR_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TD_;
id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_IMG_;


#line 64
- (instancetype)init {
  if (self =
#line 65
  [super init]) {
    
#line 66
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_A_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_A_];
    
#line 67
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_B_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_];
    
#line 68
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_BODY_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_DIV_];
    
#line 69
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_BR_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_BR_];
    
#line 70
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_DIV_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_DIV_];
    
#line 71
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_EM_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_];
    
#line 72
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_FONT_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_SPAN_];
    
#line 73
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_H1_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_];
    
#line 74
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_H2_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_];
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_H3_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_];
    
#line 76
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_H4_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_];
    
#line 77
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_H5_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_];
    
#line 78
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_H6_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_];
    
#line 79
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_HR_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_HR_];
    
#line 80
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_I_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_];
    
#line 81
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_IMG_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_IMG_];
    
#line 82
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_LI_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_LI_];
    
#line 83
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_OL_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_UL_OL_];
    
#line 84
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_P_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_DIV_];
    
#line 85
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_PRE_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_PRE_];
    
#line 86
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_S_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_];
    
#line 87
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_SPAN_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_SPAN_];
    
#line 88
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_STRIKE_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_];
    
#line 89
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_STRONG_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_];
    
#line 90
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_SUB_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_];
    
#line 91
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_SUP_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_];
    
#line 92
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_TABLE_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TABLE_];
    
#line 93
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_TD_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TD_];
    
#line 94
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_TH_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TD_];
    
#line 95
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_TR_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TR_];
    
#line 96
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_U_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_];
    
#line 97
    (void) [self putWithId:ComItextpdfTextHtmlHtmlTags_get_UL_() withId:ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_UL_OL_];
  }
  return self;
}

+ (void)initialize {
  if (self == [ComItextpdfTextHtmlSimpleparserHTMLTagProcessors class]) {
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_ =
#line 104
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$1 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_A_ =
#line 141
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$2 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_BR_ =
#line 161
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$3 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_UL_OL_ =
#line 176
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$4 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_HR_ =
#line 204
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$5 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_SPAN_ =
#line 216
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$6 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_ =
#line 234
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$7 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_LI_ =
#line 258
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$8 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_PRE_ =
#line 286
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$9 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_DIV_ =
#line 311
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$10 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TABLE_ =
#line 332
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$11 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TR_ =
#line 368
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$12 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TD_ =
#line 397
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$13 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_IMG_ =
#line 425
    [[ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$14 alloc] init];
    ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "HTMLTagProcessors", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EM_STRONG_STRIKE_SUP_SUP_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_,  },
    { "A_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_A_,  },
    { "BR_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_BR_,  },
    { "UL_OL_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_UL_OL_,  },
    { "HR_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_HR_,  },
    { "SPAN_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_SPAN_,  },
    { "H_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_,  },
    { "LI_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_LI_,  },
    { "PRE_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_PRE_,  },
    { "DIV_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_DIV_,  },
    { "TABLE_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TABLE_,  },
    { "TR_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TR_,  },
    { "TD_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TD_,  },
    { "IMG_", NULL, 0x19, "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;", &ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_IMG_,  },
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_serialVersionUID },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.String;", "Lcom.itextpdf.text.html.simpleparser.HTMLTagProcessor;"};
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors = { "HTMLTagProcessors", "com.itextpdf.text.html.simpleparser", NULL, 0x1, 1, methods, 15, fields, 2, superclass_type_args};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$1


#line 108
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 109
  tag = [self mapTagWithNSString:tag];
  (void) [((id<JavaUtilMap>) nil_chk(attrs)) putWithId:tag withId:nil];
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) updateChainWithNSString:tag withJavaUtilMap:attrs];
}


#line 116
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  
#line 117
  tag = [self mapTagWithNSString:tag];
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) updateChainWithNSString:tag];
}


#line 126
- (NSString *)mapTagWithNSString:(NSString *)tag {
  
#line 127
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_EM_())) equalsIgnoreCase:tag])
#line 128
  return ComItextpdfTextHtmlHtmlTags_get_I_();
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_STRONG_())) equalsIgnoreCase:tag])
#line 130
  return ComItextpdfTextHtmlHtmlTags_get_B_();
  if ([((NSString *) nil_chk(ComItextpdfTextHtmlHtmlTags_get_STRIKE_())) equalsIgnoreCase:tag])
#line 132
  return ComItextpdfTextHtmlHtmlTags_get_S_();
  return tag;
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, NULL },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, NULL },
    { "mapTagWithNSString:", "mapTag", "Ljava.lang.String;", 0x2, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$1 = { "$1", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 4, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$1;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$2


#line 145
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 146
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) updateChainWithNSString:tag withJavaUtilMap:attrs];
  [worker flushContent];
}


#line 152
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  
#line 153
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) processLink];
  [worker updateChainWithNSString:tag];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, NULL },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$2 = { "$2", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$2;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$3


#line 165
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 166
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) newLine];
}


#line 171
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, NULL },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$3 = { "$3", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$3;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$4


#line 181
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 182
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  if ([worker isPendingLI])
#line 184
  [worker endElementWithNSString:ComItextpdfTextHtmlHtmlTags_get_LI_()];
  [worker setSkipTextWithBoolean:YES];
  [worker updateChainWithNSString:tag withJavaUtilMap:attrs];
  
#line 186
  ;
  [worker pushToStackWithComItextpdfTextElement:[worker createListWithNSString:tag]];
}


#line 193
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  
#line 194
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  if ([worker isPendingLI])
#line 196
  [worker endElementWithNSString:ComItextpdfTextHtmlHtmlTags_get_LI_()];
  [worker setSkipTextWithBoolean:NO];
  [worker updateChainWithNSString:tag];
  [worker processList];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$4 = { "$4", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$4;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$5


#line 206
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 207
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  [worker pushToStackWithComItextpdfTextElement:[worker createLineSeparatorWithJavaUtilMap:attrs]];
}


#line 211
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$5 = { "$5", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$5;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$6


#line 221
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 222
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) updateChainWithNSString:tag withJavaUtilMap:attrs];
}


#line 228
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) updateChainWithNSString:tag];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, NULL },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$6 = { "$6", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$6;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$7


#line 239
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 240
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  if (![((id<JavaUtilMap>) nil_chk(attrs)) containsKeyWithId:ComItextpdfTextHtmlHtmlTags_get_SIZE_()]) {
    jint v = 7 - [JavaLangInteger parseIntWithNSString:[((NSString *) nil_chk(tag)) substring:1]];
    (void) [attrs putWithId:ComItextpdfTextHtmlHtmlTags_get_SIZE_() withId:[JavaLangInteger toStringWithInt:v]];
  }
  [worker updateChainWithNSString:tag withJavaUtilMap:attrs];
}


#line 251
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  [worker updateChainWithNSString:tag];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$7 = { "$7", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$7;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$8


#line 263
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 264
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  if ([worker isPendingLI])
#line 266
  [worker endElementWithNSString:tag];
  [worker setSkipTextWithBoolean:NO];
  [worker setPendingLIWithBoolean:YES];
  [worker updateChainWithNSString:tag withJavaUtilMap:attrs];
  [worker pushToStackWithComItextpdfTextElement:[worker createListItem]];
}


#line 276
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  
#line 277
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  [worker setPendingLIWithBoolean:NO];
  [worker setSkipTextWithBoolean:YES];
  [worker updateChainWithNSString:tag];
  [worker processListItem];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$8 = { "$8", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$8;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$9


#line 291
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 292
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  if (![((id<JavaUtilMap>) nil_chk(attrs)) containsKeyWithId:ComItextpdfTextHtmlHtmlTags_get_FACE_()]) {
    (void) [attrs putWithId:ComItextpdfTextHtmlHtmlTags_get_FACE_() withId:@"Courier"];
  }
  [worker updateChainWithNSString:tag withJavaUtilMap:attrs];
  [worker setInsidePREWithBoolean:YES];
}


#line 303
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  [worker updateChainWithNSString:tag];
  [worker setInsidePREWithBoolean:NO];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$9 = { "$9", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$9;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$10


#line 316
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 317
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  [worker updateChainWithNSString:tag withJavaUtilMap:attrs];
}


#line 324
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  [worker updateChainWithNSString:tag];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$10 = { "$10", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$10;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$11


#line 338
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 339
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  ComItextpdfTextHtmlSimpleparserTableWrapper *table = [[ComItextpdfTextHtmlSimpleparserTableWrapper alloc] initWithJavaUtilMap:attrs];
  [worker pushToStackWithComItextpdfTextElement:table];
  [worker pushTableState];
  [worker setPendingTDWithBoolean:NO];
  [worker setPendingTRWithBoolean:NO];
  [worker setSkipTextWithBoolean:YES];
  
#line 347
  (void) [((id<JavaUtilMap>) nil_chk(attrs)) removeWithId:ComItextpdfTextHtmlHtmlTags_get_ALIGN_()];
  
#line 349
  (void) [attrs putWithId:ComItextpdfTextHtmlHtmlTags_get_COLSPAN_() withId:@"1"];
  (void) [attrs putWithId:ComItextpdfTextHtmlHtmlTags_get_ROWSPAN_() withId:@"1"];
  [worker updateChainWithNSString:tag withJavaUtilMap:attrs];
}


#line 357
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  
#line 358
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  if ([worker isPendingTR])
#line 360
  [worker endElementWithNSString:ComItextpdfTextHtmlHtmlTags_get_TR_()];
  [worker updateChainWithNSString:tag];
  [worker processTable];
  [worker popTableState];
  [worker setSkipTextWithBoolean:NO];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$11 = { "$11", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$11;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$12


#line 374
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 375
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  if ([worker isPendingTR])
#line 377
  [worker endElementWithNSString:tag];
  [worker setSkipTextWithBoolean:YES];
  [worker setPendingTRWithBoolean:YES];
  [worker updateChainWithNSString:tag withJavaUtilMap:attrs];
}


#line 386
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  
#line 387
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  if ([worker isPendingTD])
#line 389
  [worker endElementWithNSString:ComItextpdfTextHtmlHtmlTags_get_TD_()];
  [worker setPendingTRWithBoolean:NO];
  [worker updateChainWithNSString:tag];
  [worker processRow];
  [worker setSkipTextWithBoolean:YES];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$12 = { "$12", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$12;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$13


#line 403
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 404
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  if ([worker isPendingTD])
#line 406
  [worker endElementWithNSString:tag];
  [worker setSkipTextWithBoolean:NO];
  [worker setPendingTDWithBoolean:YES];
  [worker updateChainWithNSString:ComItextpdfTextHtmlHtmlTags_get_TD_() withJavaUtilMap:attrs];
  [worker pushToStackWithComItextpdfTextElement:[worker createCellWithNSString:tag]];
}


#line 416
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
  
#line 417
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) carriageReturn];
  [worker setPendingTDWithBoolean:NO];
  [worker updateChainWithNSString:ComItextpdfTextHtmlHtmlTags_get_TD_()];
  [worker setSkipTextWithBoolean:YES];
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$13 = { "$13", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$13;
}

@end

@implementation ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$14


#line 430
- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 431
  [((ComItextpdfTextHtmlSimpleparserHTMLWorker *) nil_chk(worker)) updateChainWithNSString:tag withJavaUtilMap:attrs];
  [worker processImageWithComItextpdfTextImage:[worker createImageWithJavaUtilMap:attrs] withJavaUtilMap:attrs];
  [worker updateChainWithNSString:tag];
}


#line 439
- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag {
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:withJavaUtilMap:", "startElement", "V", 0x1, "Lcom.itextpdf.text.DocumentException;Ljava.io.IOException;" },
    { "endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:withNSString:", "endElement", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$14 = { "$14", "com.itextpdf.text.html.simpleparser", "HTMLTagProcessors", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$14;
}

@end