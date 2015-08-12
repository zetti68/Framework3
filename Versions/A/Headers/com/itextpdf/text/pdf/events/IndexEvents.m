//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/events/IndexEvents.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/events/IndexEvents.java"

#include "com/itextpdf/text/Chunk.h"
#include "com/itextpdf/text/Document.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/events/IndexEvents.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Comparator.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/TreeMap.h"


#line 66
@implementation ComItextpdfTextPdfEventsIndexEvents


#line 81
- (void)onGenericTagWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                        withComItextpdfTextDocument:(ComItextpdfTextDocument *)document
                       withComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect
                                       withNSString:(NSString *)text {
  
#line 83
  (void) [((id<JavaUtilMap>) nil_chk(indextag_)) putWithId:text withId:[JavaLangInteger valueOfWithInt:[((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) getPageNumber]]];
}


#line 106
- (ComItextpdfTextChunk *)createWithNSString:(NSString *)text
                                withNSString:(NSString *)in1
                                withNSString:(NSString *)in2
                                withNSString:(NSString *)in3 {
  
#line 109
  ComItextpdfTextChunk *chunk = [[ComItextpdfTextChunk alloc] initWithNSString:text];
  NSString *tag = JreStrcat("$J", @"idx_", indexcounter_++);
  (void) [chunk setGenericTagWithNSString:tag];
  (void) [chunk setLocalDestinationWithNSString:tag];
  ComItextpdfTextPdfEventsIndexEvents_Entry *entry_ = [[ComItextpdfTextPdfEventsIndexEvents_Entry alloc] initWithComItextpdfTextPdfEventsIndexEvents:self withNSString:in1 withNSString:in2 withNSString:in3 withNSString:tag];
  [((id<JavaUtilList>) nil_chk(indexentry_)) addWithId:entry_];
  return chunk;
}


#line 125
- (ComItextpdfTextChunk *)createWithNSString:(NSString *)text
                                withNSString:(NSString *)in1 {
  
#line 126
  return [self createWithNSString:text withNSString:in1 withNSString:@"" withNSString:@""];
}


#line 137
- (ComItextpdfTextChunk *)createWithNSString:(NSString *)text
                                withNSString:(NSString *)in1
                                withNSString:(NSString *)in2 {
  
#line 138
  return [self createWithNSString:text withNSString:in1 withNSString:in2 withNSString:@""];
}


#line 149
- (void)createWithComItextpdfTextChunk:(ComItextpdfTextChunk *)text
                          withNSString:(NSString *)in1
                          withNSString:(NSString *)in2
                          withNSString:(NSString *)in3 {
  
#line 152
  NSString *tag = JreStrcat("$J", @"idx_", indexcounter_++);
  (void) [((ComItextpdfTextChunk *) nil_chk(text)) setGenericTagWithNSString:tag];
  (void) [text setLocalDestinationWithNSString:tag];
  ComItextpdfTextPdfEventsIndexEvents_Entry *entry_ = [[ComItextpdfTextPdfEventsIndexEvents_Entry alloc] initWithComItextpdfTextPdfEventsIndexEvents:self withNSString:in1 withNSString:in2 withNSString:in3 withNSString:tag];
  [((id<JavaUtilList>) nil_chk(indexentry_)) addWithId:entry_];
}


#line 165
- (void)createWithComItextpdfTextChunk:(ComItextpdfTextChunk *)text
                          withNSString:(NSString *)in1 {
  
#line 166
  [self createWithComItextpdfTextChunk:text withNSString:in1 withNSString:@"" withNSString:@""];
}


#line 176
- (void)createWithComItextpdfTextChunk:(ComItextpdfTextChunk *)text
                          withNSString:(NSString *)in1
                          withNSString:(NSString *)in2 {
  
#line 177
  [self createWithComItextpdfTextChunk:text withNSString:in1 withNSString:in2 withNSString:@""];
}


#line 210
- (void)setComparatorWithJavaUtilComparator:(id<JavaUtilComparator>)aComparator {
  
#line 211
  comparator_ = aComparator;
}


#line 218
- (id<JavaUtilList>)getSortedEntries {
  
#line 220
  id<JavaUtilMap> grouped = [[JavaUtilHashMap alloc] init];
  
#line 222
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(indexentry_)) size]; i++) {
    ComItextpdfTextPdfEventsIndexEvents_Entry *e = [indexentry_ getWithInt:i];
    NSString *key = [((ComItextpdfTextPdfEventsIndexEvents_Entry *) nil_chk(e)) getKey];
    
#line 226
    ComItextpdfTextPdfEventsIndexEvents_Entry *master = [grouped getWithId:key];
    if (master != nil) {
      [master addPageNumberAndTagWithInt:[e getPageNumber] withNSString:[e getTag]];
    }
    else {
      
#line 230
      [e addPageNumberAndTagWithInt:[e getPageNumber] withNSString:[e getTag]];
      (void) [grouped putWithId:key withId:e];
    }
  }
  
#line 236
  id<JavaUtilList> sorted = [[JavaUtilArrayList alloc] initWithJavaUtilCollection:[grouped values]];
  [JavaUtilCollections sortWithJavaUtilList:sorted withJavaUtilComparator:comparator_];
  return sorted;
}

- (instancetype)init {
  if (self = [super init]) {
    indextag_ =
#line 71
    [[JavaUtilTreeMap alloc] init];
    indexcounter_ =
#line 90
    0;
    indexentry_ =
#line 95
    [[JavaUtilArrayList alloc] init];
    comparator_ =
#line 183
    [[ComItextpdfTextPdfEventsIndexEvents_$1 alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfEventsIndexEvents *)other {
  [super copyAllFieldsTo:other];
  other->comparator_ = comparator_;
  other->indexcounter_ = indexcounter_;
  other->indexentry_ = indexentry_;
  other->indextag_ = indextag_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onGenericTagWithComItextpdfTextPdfPdfWriter:withComItextpdfTextDocument:withComItextpdfTextRectangle:withNSString:", "onGenericTag", "V", 0x1, NULL },
    { "createWithNSString:withNSString:withNSString:withNSString:", "create", "Lcom.itextpdf.text.Chunk;", 0x1, NULL },
    { "createWithNSString:withNSString:", "create", "Lcom.itextpdf.text.Chunk;", 0x1, NULL },
    { "createWithNSString:withNSString:withNSString:", "create", "Lcom.itextpdf.text.Chunk;", 0x1, NULL },
    { "createWithComItextpdfTextChunk:withNSString:withNSString:withNSString:", "create", "V", 0x1, NULL },
    { "createWithComItextpdfTextChunk:withNSString:", "create", "V", 0x1, NULL },
    { "createWithComItextpdfTextChunk:withNSString:withNSString:", "create", "V", 0x1, NULL },
    { "setComparatorWithJavaUtilComparator:", "setComparator", "V", 0x1, NULL },
    { "getSortedEntries", NULL, "Ljava.util.List;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "indextag_", NULL, 0x2, "Ljava.util.Map;", NULL,  },
    { "indexcounter_", NULL, 0x2, "J", NULL,  },
    { "indexentry_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "comparator_", NULL, 0x2, "Ljava.util.Comparator;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfEventsIndexEvents = { "IndexEvents", "com.itextpdf.text.pdf.events", NULL, 0x1, 10, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfEventsIndexEvents;
}

@end


#line 249
@implementation ComItextpdfTextPdfEventsIndexEvents_Entry


#line 288
- (instancetype)initWithComItextpdfTextPdfEventsIndexEvents:(ComItextpdfTextPdfEventsIndexEvents *)outer$
                                               withNSString:(NSString *)aIn1
                                               withNSString:(NSString *)aIn2
                                               withNSString:(NSString *)aIn3
                                               withNSString:(NSString *)aTag {
  this$0_ = outer$;
  if (self = [super init]) {
    pagenumbers_ =
#line 274
    [[JavaUtilArrayList alloc] init];
    tags_ =
#line 279
    [[JavaUtilArrayList alloc] init];
    
#line 290
    in1_ = aIn1;
    
#line 291
    in2_ = aIn2;
    
#line 292
    in3_ = aIn3;
    
#line 293
    tag_ = aTag;
  }
  return self;
}


#line 300
- (NSString *)getIn1 {
  
#line 301
  return in1_;
}


#line 308
- (NSString *)getIn2 {
  
#line 309
  return in2_;
}


#line 316
- (NSString *)getIn3 {
  
#line 317
  return in3_;
}


#line 324
- (NSString *)getTag {
  
#line 325
  return tag_;
}


#line 332
- (jint)getPageNumber {
  
#line 333
  jint rt = -1;
  JavaLangInteger *i = [((id<JavaUtilMap>) nil_chk(this$0_->indextag_)) getWithId:tag_];
  if (i != nil) {
    rt = [i intValue];
  }
  return rt;
}


#line 346
- (void)addPageNumberAndTagWithInt:(jint)number
                      withNSString:(NSString *)tag {
  
#line 347
  [((id<JavaUtilList>) nil_chk(pagenumbers_)) addWithId:[JavaLangInteger valueOfWithInt:number]];
  [((id<JavaUtilList>) nil_chk(tags_)) addWithId:tag];
}


#line 355
- (NSString *)getKey {
  
#line 356
  return JreStrcat("$C$C$", in1_, '!', in2_, '!', in3_);
}


#line 363
- (id<JavaUtilList>)getPagenumbers {
  
#line 364
  return pagenumbers_;
}


#line 371
- (id<JavaUtilList>)getTags {
  
#line 372
  return tags_;
}

- (NSString *)description {
  
#line 381
  JavaLangStringBuffer *buf = [[JavaLangStringBuffer alloc] init];
  (void) [((JavaLangStringBuffer *) nil_chk([buf appendWithNSString:in1_])) appendWithChar:' '];
  (void) [((JavaLangStringBuffer *) nil_chk([buf appendWithNSString:in2_])) appendWithChar:' '];
  (void) [((JavaLangStringBuffer *) nil_chk([buf appendWithNSString:in3_])) appendWithChar:' '];
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(pagenumbers_)) size]; i++) {
    (void) [((JavaLangStringBuffer *) nil_chk([buf appendWithId:[pagenumbers_ getWithInt:i]])) appendWithChar:' '];
  }
  return [buf description];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfEventsIndexEvents_Entry *)other {
  [super copyAllFieldsTo:other];
  other->in1_ = in1_;
  other->in2_ = in2_;
  other->in3_ = in3_;
  other->pagenumbers_ = pagenumbers_;
  other->tag_ = tag_;
  other->tags_ = tags_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfEventsIndexEvents:withNSString:withNSString:withNSString:withNSString:", "Entry", NULL, 0x1, NULL },
    { "getIn1", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getIn2", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getIn3", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getTag", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getPageNumber", NULL, "I", 0x1, NULL },
    { "addPageNumberAndTagWithInt:withNSString:", "addPageNumberAndTag", "V", 0x1, NULL },
    { "getKey", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getPagenumbers", NULL, "Ljava.util.List;", 0x1, NULL },
    { "getTags", NULL, "Ljava.util.List;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.itextpdf.text.pdf.events.IndexEvents;", NULL,  },
    { "in1_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "in2_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "in3_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "tag_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "pagenumbers_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "tags_", NULL, 0x2, "Ljava.util.List;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfEventsIndexEvents_Entry = { "Entry", "com.itextpdf.text.pdf.events", "IndexEvents", 0x1, 11, methods, 7, fields, 0, NULL};
  return &_ComItextpdfTextPdfEventsIndexEvents_Entry;
}

@end

@implementation ComItextpdfTextPdfEventsIndexEvents_$1


#line 185
- (jint)compareWithId:(ComItextpdfTextPdfEventsIndexEvents_Entry *)en1
               withId:(ComItextpdfTextPdfEventsIndexEvents_Entry *)en2 {
  
#line 186
  jint rt = 0;
  if ([((ComItextpdfTextPdfEventsIndexEvents_Entry *) nil_chk(en1)) getIn1] != nil && [((ComItextpdfTextPdfEventsIndexEvents_Entry *) nil_chk(en2)) getIn1] != nil) {
    if ((rt = [((NSString *) nil_chk([en1 getIn1])) compareToIgnoreCase:[en2 getIn1]]) == 0) {
      
#line 190
      if ([en1 getIn2] != nil && [en2 getIn2] != nil) {
        if ((rt = [((NSString *) nil_chk([en1 getIn2])) compareToIgnoreCase:
#line 192
        [en2 getIn2]]) == 0) {
          
#line 194
          if ([en1 getIn3] != nil && [en2 getIn3] != nil) {
            rt = [((NSString *) nil_chk([en1 getIn3])) compareToIgnoreCase:
#line 196
            [en2 getIn3]];
          }
        }
      }
    }
  }
  return rt;
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "compareWithComItextpdfTextPdfEventsIndexEvents_Entry:withComItextpdfTextPdfEventsIndexEvents_Entry:", "compare", "I", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfEventsIndexEvents_$1 = { "$1", "com.itextpdf.text.pdf.events", "IndexEvents", 0x8000, 2, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfEventsIndexEvents_$1;
}

@end
