//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/List.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/List.java"

#include "com/itextpdf/text/AccessibleElementId.h"
#include "com/itextpdf/text/Chunk.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ElementListener.h"
#include "com/itextpdf/text/Font.h"
#include "com/itextpdf/text/List.h"
#include "com/itextpdf/text/ListItem.h"
#include "com/itextpdf/text/factories/RomanAlphabetFactory.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuffer.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"


#line 101
@implementation ComItextpdfTextList


#line 163
- (instancetype)init {
  return
#line 164
  [self initComItextpdfTextListWithBoolean:NO withBoolean:NO];
}


#line 172
- (instancetype)initWithFloat:(jfloat)symbolIndent {
  if (self = [super init]) {
    list_ =
#line 121
    [[JavaUtilArrayList alloc] init];
    numbered_ =
#line 124
    NO;
    lettered_ =
#line 126
    NO;
    lowercase_ =
#line 128
    NO;
    autoindent_ =
#line 130
    NO;
    alignindent_ =
#line 132
    NO;
    first_ =
#line 135
    1;
    symbol_ =
#line 137
    [[ComItextpdfTextChunk alloc] initWithNSString:@"- "];
    preSymbol_ =
#line 142
    @"";
    postSymbol_ =
#line 147
    @". ";
    indentationLeft_ =
#line 150
    0;
    indentationRight_ =
#line 152
    0;
    symbolIndent_ =
#line 154
    0;
    role_ = ComItextpdfTextPdfPdfName_get_L_();
    accessibleAttributes_ =
#line 157
    nil;
    id__ =
#line 158
    nil;
    
#line 173
    self->symbolIndent_ = symbolIndent;
  }
  return self;
}


#line 180
- (instancetype)initWithBoolean:(jboolean)numbered {
  return
#line 181
  [self initComItextpdfTextListWithBoolean:numbered withBoolean:NO];
}


#line 189
- (instancetype)initComItextpdfTextListWithBoolean:(jboolean)numbered
                                       withBoolean:(jboolean)lettered {
  if (self = [super init]) {
    list_ =
#line 121
    [[JavaUtilArrayList alloc] init];
    numbered_ =
#line 124
    NO;
    lettered_ =
#line 126
    NO;
    lowercase_ =
#line 128
    NO;
    autoindent_ =
#line 130
    NO;
    alignindent_ =
#line 132
    NO;
    first_ =
#line 135
    1;
    symbol_ =
#line 137
    [[ComItextpdfTextChunk alloc] initWithNSString:@"- "];
    preSymbol_ =
#line 142
    @"";
    postSymbol_ =
#line 147
    @". ";
    indentationLeft_ =
#line 150
    0;
    indentationRight_ =
#line 152
    0;
    symbolIndent_ =
#line 154
    0;
    role_ = ComItextpdfTextPdfPdfName_get_L_();
    accessibleAttributes_ =
#line 157
    nil;
    id__ =
#line 158
    nil;
    
#line 190
    self->numbered_ = numbered;
    
#line 191
    self->lettered_ = lettered;
    
#line 192
    self->autoindent_ = YES;
    
#line 193
    self->alignindent_ = YES;
  }
  return self;
}

- (instancetype)initWithBoolean:(jboolean)numbered
                    withBoolean:(jboolean)lettered {
  return [self initComItextpdfTextListWithBoolean:
#line 189
numbered withBoolean:lettered];
}


#line 206
- (instancetype)initWithBoolean:(jboolean)numbered
                      withFloat:(jfloat)symbolIndent {
  return
#line 207
  [self initComItextpdfTextListWithBoolean:numbered withBoolean:NO withFloat:symbolIndent];
}


#line 216
- (instancetype)initComItextpdfTextListWithBoolean:(jboolean)numbered
                                       withBoolean:(jboolean)lettered
                                         withFloat:(jfloat)symbolIndent {
  if (self = [super init]) {
    list_ =
#line 121
    [[JavaUtilArrayList alloc] init];
    numbered_ =
#line 124
    NO;
    lettered_ =
#line 126
    NO;
    lowercase_ =
#line 128
    NO;
    autoindent_ =
#line 130
    NO;
    alignindent_ =
#line 132
    NO;
    first_ =
#line 135
    1;
    symbol_ =
#line 137
    [[ComItextpdfTextChunk alloc] initWithNSString:@"- "];
    preSymbol_ =
#line 142
    @"";
    postSymbol_ =
#line 147
    @". ";
    indentationLeft_ =
#line 150
    0;
    indentationRight_ =
#line 152
    0;
    symbolIndent_ =
#line 154
    0;
    role_ = ComItextpdfTextPdfPdfName_get_L_();
    accessibleAttributes_ =
#line 157
    nil;
    id__ =
#line 158
    nil;
    
#line 217
    self->numbered_ = numbered;
    
#line 218
    self->lettered_ = lettered;
    
#line 219
    self->symbolIndent_ = symbolIndent;
  }
  return self;
}

- (instancetype)initWithBoolean:(jboolean)numbered
                    withBoolean:(jboolean)lettered
                      withFloat:(jfloat)symbolIndent {
  return [self initComItextpdfTextListWithBoolean:
#line 216
numbered withBoolean:lettered withFloat:symbolIndent];
}


#line 231
- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener {
  
#line 232
  @try {
    for (id<ComItextpdfTextElement> __strong element in nil_chk(list_)) {
      [((id<ComItextpdfTextElementListener>) nil_chk(listener)) addWithComItextpdfTextElement:element];
    }
    return YES;
  }
  @catch (ComItextpdfTextDocumentException *de) {
    return NO;
  }
}


#line 248
- (jint)type {
  
#line 249
  return ComItextpdfTextElement_LIST;
}


#line 257
- (id<JavaUtilList>)getChunks {
  
#line 258
  id<JavaUtilList> tmp = [[JavaUtilArrayList alloc] init];
  for (id<ComItextpdfTextElement> __strong element in nil_chk(list_)) {
    [tmp addAllWithJavaUtilCollection:[((id<ComItextpdfTextElement>) nil_chk(element)) getChunks]];
  }
  return tmp;
}


#line 274
- (jboolean)addWithNSString:(NSString *)s {
  
#line 275
  if (s != nil) {
    return [self addWithComItextpdfTextElement:[[ComItextpdfTextListItem alloc] initWithNSString:s]];
  }
  return NO;
}


#line 288
- (jboolean)addWithComItextpdfTextElement:(id<ComItextpdfTextElement>)o {
  
#line 289
  if ([(id) o isKindOfClass:[ComItextpdfTextListItem class]]) {
    ComItextpdfTextListItem *item = (ComItextpdfTextListItem *) check_class_cast(o, [ComItextpdfTextListItem class]);
    if (numbered_ || lettered_) {
      ComItextpdfTextChunk *chunk = [[ComItextpdfTextChunk alloc] initWithNSString:preSymbol_ withComItextpdfTextFont:[((ComItextpdfTextChunk *) nil_chk(symbol_)) getFont]];
      [chunk setAttributesWithJavaUtilHashMap:[symbol_ getAttributes]];
      jint index = first_ + [((JavaUtilArrayList *) nil_chk(list_)) size];
      if (lettered_)
#line 296
      (void) [chunk appendWithNSString:[ComItextpdfTextFactoriesRomanAlphabetFactory getStringWithInt:index withBoolean:lowercase_]];
      else
#line 298
      (void) [chunk appendWithNSString:[NSString valueOfInt:index]];
      (void) [chunk appendWithNSString:postSymbol_];
      [((ComItextpdfTextListItem *) nil_chk(item)) setListSymbolWithComItextpdfTextChunk:chunk];
    }
    else {
      [((ComItextpdfTextListItem *) nil_chk(item)) setListSymbolWithComItextpdfTextChunk:symbol_];
    }
    [((ComItextpdfTextListItem *) nil_chk(item)) setIndentationLeftWithFloat:symbolIndent_ withBoolean:autoindent_];
    [item setIndentationRightWithFloat:0];
    return [((JavaUtilArrayList *) nil_chk(list_)) addWithId:item];
  }
  else if ([(id) o isKindOfClass:[ComItextpdfTextList class]]) {
    ComItextpdfTextList *nested = (ComItextpdfTextList *) check_class_cast(o, [ComItextpdfTextList class]);
    [nested setIndentationLeftWithFloat:[((ComItextpdfTextList *) nil_chk(nested)) getIndentationLeft] + symbolIndent_];
    first_--;
    return [((JavaUtilArrayList *) nil_chk(list_)) addWithId:nested];
  }
  return NO;
}


#line 321
- (void)normalizeIndentation {
  jfloat max = 0;
  for (id<ComItextpdfTextElement> __strong o in nil_chk(list_)) {
    if ([(id) o isKindOfClass:[ComItextpdfTextListItem class]]) {
      max = [JavaLangMath maxWithFloat:max withFloat:[((ComItextpdfTextListItem *) nil_chk(((ComItextpdfTextListItem *) check_class_cast(o, [ComItextpdfTextListItem class])))) getIndentationLeft]];
    }
  }
  for (id<ComItextpdfTextElement> __strong o in list_) {
    if ([(id) o isKindOfClass:[ComItextpdfTextListItem class]]) {
      [((ComItextpdfTextListItem *) nil_chk(((ComItextpdfTextListItem *) check_class_cast(o, [ComItextpdfTextListItem class])))) setIndentationLeftWithFloat:max];
    }
  }
}


#line 340
- (void)setNumberedWithBoolean:(jboolean)numbered {
  
#line 341
  self->numbered_ = numbered;
}


#line 347
- (void)setLetteredWithBoolean:(jboolean)lettered {
  
#line 348
  self->lettered_ = lettered;
}


#line 354
- (void)setLowercaseWithBoolean:(jboolean)uppercase {
  
#line 355
  self->lowercase_ = uppercase;
}


#line 361
- (void)setAutoindentWithBoolean:(jboolean)autoindent {
  
#line 362
  self->autoindent_ = autoindent;
}

- (void)setAlignindentWithBoolean:(jboolean)alignindent {
  
#line 368
  self->alignindent_ = alignindent;
}


#line 376
- (void)setFirstWithInt:(jint)first {
  
#line 377
  self->first_ = first;
}


#line 385
- (void)setListSymbolWithComItextpdfTextChunk:(ComItextpdfTextChunk *)symbol {
  
#line 386
  self->symbol_ = symbol;
}


#line 396
- (void)setListSymbolWithNSString:(NSString *)symbol {
  
#line 397
  self->symbol_ = [[ComItextpdfTextChunk alloc] initWithNSString:symbol];
}


#line 405
- (void)setIndentationLeftWithFloat:(jfloat)indentation {
  
#line 406
  self->indentationLeft_ = indentation;
}


#line 414
- (void)setIndentationRightWithFloat:(jfloat)indentation {
  
#line 415
  self->indentationRight_ = indentation;
}


#line 421
- (void)setSymbolIndentWithFloat:(jfloat)symbolIndent {
  
#line 422
  self->symbolIndent_ = symbolIndent;
}


#line 432
- (JavaUtilArrayList *)getItems {
  
#line 433
  return list_;
}


#line 441
- (jint)size {
  
#line 442
  return [((JavaUtilArrayList *) nil_chk(list_)) size];
}


#line 450
- (jboolean)isEmpty {
  
#line 451
  return [((JavaUtilArrayList *) nil_chk(list_)) isEmpty];
}


#line 459
- (jfloat)getTotalLeading {
  
#line 460
  if ([((JavaUtilArrayList *) nil_chk(list_)) size] < 1) {
    return -1;
  }
  ComItextpdfTextListItem *item = (ComItextpdfTextListItem *) check_class_cast([list_ getWithInt:0], [ComItextpdfTextListItem class]);
  return [((ComItextpdfTextListItem *) nil_chk(item)) getTotalLeading];
}


#line 474
- (jboolean)isNumbered {
  
#line 475
  return numbered_;
}


#line 482
- (jboolean)isLettered {
  
#line 483
  return lettered_;
}


#line 490
- (jboolean)isLowercase {
  
#line 491
  return lowercase_;
}


#line 498
- (jboolean)isAutoindent {
  
#line 499
  return autoindent_;
}


#line 506
- (jboolean)isAlignindent {
  
#line 507
  return alignindent_;
}


#line 514
- (jint)getFirst {
  
#line 515
  return first_;
}


#line 522
- (ComItextpdfTextChunk *)getSymbol {
  
#line 523
  return symbol_;
}


#line 530
- (jfloat)getIndentationLeft {
  
#line 531
  return indentationLeft_;
}


#line 538
- (jfloat)getIndentationRight {
  
#line 539
  return indentationRight_;
}


#line 546
- (jfloat)getSymbolIndent {
  
#line 547
  return symbolIndent_;
}


#line 553
- (jboolean)isContent {
  
#line 554
  return YES;
}


#line 561
- (jboolean)isNestable {
  
#line 562
  return YES;
}


#line 570
- (NSString *)getPostSymbol {
  
#line 571
  return postSymbol_;
}


#line 579
- (void)setPostSymbolWithNSString:(NSString *)postSymbol {
  
#line 580
  self->postSymbol_ = postSymbol;
}


#line 588
- (NSString *)getPreSymbol {
  
#line 589
  return preSymbol_;
}


#line 597
- (void)setPreSymbolWithNSString:(NSString *)preSymbol {
  
#line 598
  self->preSymbol_ = preSymbol;
}


#line 601
- (ComItextpdfTextListItem *)getFirstItem {
  
#line 602
  id<ComItextpdfTextElement> lastElement = [((JavaUtilArrayList *) nil_chk(list_)) size] > 0 ? [list_ getWithInt:0] : nil;
  if (lastElement != nil) {
    if ([(id) lastElement isKindOfClass:[ComItextpdfTextListItem class]]) {
      return (ComItextpdfTextListItem *) check_class_cast(lastElement, [ComItextpdfTextListItem class]);
    }
    else
#line 606
    if ([(id) lastElement isKindOfClass:[ComItextpdfTextList class]]) {
      return [((ComItextpdfTextList *) check_class_cast(lastElement, [ComItextpdfTextList class])) getFirstItem];
    }
  }
  return nil;
}


#line 613
- (ComItextpdfTextListItem *)getLastItem {
  
#line 614
  id<ComItextpdfTextElement> lastElement = [((JavaUtilArrayList *) nil_chk(list_)) size] > 0 ? [list_ getWithInt:[list_ size] - 1] : nil;
  if (lastElement != nil) {
    if ([(id) lastElement isKindOfClass:[ComItextpdfTextListItem class]]) {
      return (ComItextpdfTextListItem *) check_class_cast(lastElement, [ComItextpdfTextListItem class]);
    }
    else
#line 618
    if ([(id) lastElement isKindOfClass:[ComItextpdfTextList class]]) {
      return [((ComItextpdfTextList *) check_class_cast(lastElement, [ComItextpdfTextList class])) getLastItem];
    }
  }
  return nil;
}


#line 625
- (ComItextpdfTextPdfPdfObject *)getAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key {
  
#line 626
  if (accessibleAttributes_ != nil)
#line 627
  return [accessibleAttributes_ getWithId:key];
  else
#line 629
  return nil;
}


#line 632
- (void)setAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value {
  
#line 633
  if (accessibleAttributes_ == nil)
#line 634
  accessibleAttributes_ = [[JavaUtilHashMap alloc] init];
  (void) [((JavaUtilHashMap *) nil_chk(accessibleAttributes_)) putWithId:key withId:value];
}


#line 638
- (JavaUtilHashMap *)getAccessibleAttributes {
  
#line 639
  return accessibleAttributes_;
}


#line 642
- (ComItextpdfTextPdfPdfName *)getRole {
  
#line 643
  return role_;
}


#line 646
- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role {
  
#line 647
  self->role_ = role;
}


#line 650
- (ComItextpdfTextAccessibleElementId *)getId {
  
#line 651
  if (id__ == nil)
#line 652
  id__ = [[ComItextpdfTextAccessibleElementId alloc] init];
  return id__;
}


#line 656
- (void)setIdWithComItextpdfTextAccessibleElementId:(ComItextpdfTextAccessibleElementId *)id_ {
  
#line 657
  self->id__ = id_;
}


#line 660
- (jboolean)isInline {
  
#line 661
  return NO;
}

- (void)copyAllFieldsTo:(ComItextpdfTextList *)other {
  [super copyAllFieldsTo:other];
  other->accessibleAttributes_ = accessibleAttributes_;
  other->alignindent_ = alignindent_;
  other->autoindent_ = autoindent_;
  other->first_ = first_;
  other->id__ = id__;
  other->indentationLeft_ = indentationLeft_;
  other->indentationRight_ = indentationRight_;
  other->lettered_ = lettered_;
  other->list_ = list_;
  other->lowercase_ = lowercase_;
  other->numbered_ = numbered_;
  other->postSymbol_ = postSymbol_;
  other->preSymbol_ = preSymbol_;
  other->role_ = role_;
  other->symbol_ = symbol_;
  other->symbolIndent_ = symbolIndent_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "List", NULL, 0x1, NULL },
    { "initWithFloat:", "List", NULL, 0x1, NULL },
    { "initWithBoolean:", "List", NULL, 0x1, NULL },
    { "initWithBoolean:withBoolean:", "List", NULL, 0x1, NULL },
    { "initWithBoolean:withFloat:", "List", NULL, 0x1, NULL },
    { "initWithBoolean:withBoolean:withFloat:", "List", NULL, 0x1, NULL },
    { "processWithComItextpdfTextElementListener:", "process", "Z", 0x1, NULL },
    { "type", NULL, "I", 0x1, NULL },
    { "getChunks", NULL, "Ljava.util.List;", 0x1, NULL },
    { "addWithNSString:", "add", "Z", 0x1, NULL },
    { "addWithComItextpdfTextElement:", "add", "Z", 0x1, NULL },
    { "normalizeIndentation", NULL, "V", 0x1, NULL },
    { "setNumberedWithBoolean:", "setNumbered", "V", 0x1, NULL },
    { "setLetteredWithBoolean:", "setLettered", "V", 0x1, NULL },
    { "setLowercaseWithBoolean:", "setLowercase", "V", 0x1, NULL },
    { "setAutoindentWithBoolean:", "setAutoindent", "V", 0x1, NULL },
    { "setAlignindentWithBoolean:", "setAlignindent", "V", 0x1, NULL },
    { "setFirstWithInt:", "setFirst", "V", 0x1, NULL },
    { "setListSymbolWithComItextpdfTextChunk:", "setListSymbol", "V", 0x1, NULL },
    { "setListSymbolWithNSString:", "setListSymbol", "V", 0x1, NULL },
    { "setIndentationLeftWithFloat:", "setIndentationLeft", "V", 0x1, NULL },
    { "setIndentationRightWithFloat:", "setIndentationRight", "V", 0x1, NULL },
    { "setSymbolIndentWithFloat:", "setSymbolIndent", "V", 0x1, NULL },
    { "getItems", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "size", NULL, "I", 0x1, NULL },
    { "isEmpty", NULL, "Z", 0x1, NULL },
    { "getTotalLeading", NULL, "F", 0x1, NULL },
    { "isNumbered", NULL, "Z", 0x1, NULL },
    { "isLettered", NULL, "Z", 0x1, NULL },
    { "isLowercase", NULL, "Z", 0x1, NULL },
    { "isAutoindent", NULL, "Z", 0x1, NULL },
    { "isAlignindent", NULL, "Z", 0x1, NULL },
    { "getFirst", NULL, "I", 0x1, NULL },
    { "getSymbol", NULL, "Lcom.itextpdf.text.Chunk;", 0x1, NULL },
    { "getIndentationLeft", NULL, "F", 0x1, NULL },
    { "getIndentationRight", NULL, "F", 0x1, NULL },
    { "getSymbolIndent", NULL, "F", 0x1, NULL },
    { "isContent", NULL, "Z", 0x1, NULL },
    { "isNestable", NULL, "Z", 0x1, NULL },
    { "getPostSymbol", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setPostSymbolWithNSString:", "setPostSymbol", "V", 0x1, NULL },
    { "getPreSymbol", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setPreSymbolWithNSString:", "setPreSymbol", "V", 0x1, NULL },
    { "getFirstItem", NULL, "Lcom.itextpdf.text.ListItem;", 0x1, NULL },
    { "getLastItem", NULL, "Lcom.itextpdf.text.ListItem;", 0x1, NULL },
    { "getAccessibleAttributeWithComItextpdfTextPdfPdfName:", "getAccessibleAttribute", "Lcom.itextpdf.text.pdf.PdfObject;", 0x1, NULL },
    { "setAccessibleAttributeWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfObject:", "setAccessibleAttribute", "V", 0x1, NULL },
    { "getAccessibleAttributes", NULL, "Ljava.util.HashMap;", 0x1, NULL },
    { "getRole", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x1, NULL },
    { "setRoleWithComItextpdfTextPdfPdfName:", "setRole", "V", 0x1, NULL },
    { "getId", NULL, "Lcom.itextpdf.text.AccessibleElementId;", 0x1, NULL },
    { "setIdWithComItextpdfTextAccessibleElementId:", "setId", "V", 0x1, NULL },
    { "isInline", NULL, "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ORDERED_", NULL, 0x19, "Z", NULL, .constantValue.asBOOL = ComItextpdfTextList_ORDERED },
    { "UNORDERED_", NULL, 0x19, "Z", NULL, .constantValue.asBOOL = ComItextpdfTextList_UNORDERED },
    { "NUMERICAL_", NULL, 0x19, "Z", NULL, .constantValue.asBOOL = ComItextpdfTextList_NUMERICAL },
    { "ALPHABETICAL_", NULL, 0x19, "Z", NULL, .constantValue.asBOOL = ComItextpdfTextList_ALPHABETICAL },
    { "UPPERCASE_", NULL, 0x19, "Z", NULL, .constantValue.asBOOL = ComItextpdfTextList_UPPERCASE },
    { "LOWERCASE_", NULL, 0x19, "Z", NULL, .constantValue.asBOOL = ComItextpdfTextList_LOWERCASE },
    { "list_", NULL, 0x4, "Ljava.util.ArrayList;", NULL,  },
    { "numbered_", NULL, 0x4, "Z", NULL,  },
    { "lettered_", NULL, 0x4, "Z", NULL,  },
    { "lowercase_", NULL, 0x4, "Z", NULL,  },
    { "autoindent_", NULL, 0x4, "Z", NULL,  },
    { "alignindent_", NULL, 0x4, "Z", NULL,  },
    { "first_", NULL, 0x4, "I", NULL,  },
    { "symbol_", NULL, 0x4, "Lcom.itextpdf.text.Chunk;", NULL,  },
    { "preSymbol_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
    { "postSymbol_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
    { "indentationLeft_", NULL, 0x4, "F", NULL,  },
    { "indentationRight_", NULL, 0x4, "F", NULL,  },
    { "symbolIndent_", NULL, 0x4, "F", NULL,  },
    { "role_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "accessibleAttributes_", NULL, 0x4, "Ljava.util.HashMap;", NULL,  },
    { "id__", "id", 0x2, "Lcom.itextpdf.text.AccessibleElementId;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextList = { "List", "com.itextpdf.text", NULL, 0x1, 53, methods, 22, fields, 0, NULL};
  return &_ComItextpdfTextList;
}

@end
