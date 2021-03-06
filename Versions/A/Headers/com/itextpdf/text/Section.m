//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Section.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Section.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/AccessibleElementId.h"
#include "com/itextpdf/text/Chunk.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ElementListener.h"
#include "com/itextpdf/text/Font.h"
#include "com/itextpdf/text/MarkedObject.h"
#include "com/itextpdf/text/MarkedSection.h"
#include "com/itextpdf/text/Paragraph.h"
#include "com/itextpdf/text/Section.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuffer.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"


#line 85
@implementation ComItextpdfTextSection


#line 162
- (instancetype)init {
  if (self = [super init]) {
    numberStyle_ =
#line 116
    ComItextpdfTextSection_NUMBERSTYLE_DOTTED;
    bookmarkOpen_ =
#line 128
    YES;
    triggerNewPage_ =
#line 131
    NO;
    subsections_ =
#line 134
    0;
    numbers_ =
#line 137
    nil;
    complete_ =
#line 143
    YES;
    addedCompletely_ =
#line 149
    NO;
    notAddedYet_ =
#line 155
    YES;
    
#line 163
    title_ = [[ComItextpdfTextParagraph alloc] init];
    
#line 164
    numberDepth_ = 1;
    
#line 165
    [title_ setRoleWithComItextpdfTextPdfPdfName:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:JreStrcat("CI", 'H', numberDepth_)]];
  }
  return self;
}


#line 174
- (instancetype)initWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title
                                         withInt:(jint)numberDepth {
  if (self = [super init]) {
    numberStyle_ =
#line 116
    ComItextpdfTextSection_NUMBERSTYLE_DOTTED;
    bookmarkOpen_ =
#line 128
    YES;
    triggerNewPage_ =
#line 131
    NO;
    subsections_ =
#line 134
    0;
    numbers_ =
#line 137
    nil;
    complete_ =
#line 143
    YES;
    addedCompletely_ =
#line 149
    NO;
    notAddedYet_ =
#line 155
    YES;
    
#line 175
    self->numberDepth_ = numberDepth;
    
#line 176
    self->title_ = title;
    
#line 177
    if (title != nil)
#line 178
    [title setRoleWithComItextpdfTextPdfPdfName:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:JreStrcat("CI", 'H', numberDepth)]];
  }
  return self;
}


#line 190
- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener {
  
#line 191
  @try {
    id<ComItextpdfTextElement> element;
    for (id __strong element2 in self) {
      element = (id<ComItextpdfTextElement>) check_protocol_cast(element2, @protocol(ComItextpdfTextElement));
      [((id<ComItextpdfTextElementListener>) nil_chk(listener)) addWithComItextpdfTextElement:element];
    }
    return YES;
  }
  @catch (ComItextpdfTextDocumentException *de) {
    return NO;
  }
}


#line 209
- (jint)type {
  
#line 210
  return ComItextpdfTextElement_SECTION;
}


#line 219
- (jboolean)isChapter {
  
#line 220
  return [self type] == ComItextpdfTextElement_CHAPTER;
}


#line 229
- (jboolean)isSection {
  
#line 230
  return [self type] == ComItextpdfTextElement_SECTION;
}


#line 238
- (id<JavaUtilList>)getChunks {
  
#line 239
  id<JavaUtilList> tmp = [[JavaUtilArrayList alloc] init];
  for (id __strong element in self) {
    [tmp addAllWithJavaUtilCollection:[((id<ComItextpdfTextElement>) nil_chk(((id<ComItextpdfTextElement>) check_protocol_cast(element, @protocol(ComItextpdfTextElement))))) getChunks]];
  }
  return tmp;
}


#line 250
- (jboolean)isContent {
  
#line 251
  return YES;
}


#line 258
- (jboolean)isNestable {
  
#line 259
  return NO;
}


#line 274
- (void)addWithInt:(jint)index
            withId:(id<ComItextpdfTextElement>)element {
  
#line 275
  if ([self isAddedCompletely]) {
    @throw [[JavaLangIllegalStateException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"this.largeelement.has.already.been.added.to.the.document" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  @try {
    if ([((id<ComItextpdfTextElement>) nil_chk(element)) isNestable]) {
      [super addWithInt:index withId:element];
    }
    else {
      @throw [[JavaLangClassCastException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"you.can.t.add.a.1.to.a.section" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [[element getClass] getName] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
  }
  @catch (JavaLangClassCastException *cce) {
    @throw [[JavaLangClassCastException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"insertion.of.illegal.element.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaLangClassCastException *) nil_chk(cce)) getMessage] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
}


#line 301
- (jboolean)addWithId:(id<ComItextpdfTextElement>)element {
  
#line 302
  if ([self isAddedCompletely]) {
    @throw [[JavaLangIllegalStateException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"this.largeelement.has.already.been.added.to.the.document" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  @try {
    if ([((id<ComItextpdfTextElement>) nil_chk(element)) type] == ComItextpdfTextElement_SECTION) {
      ComItextpdfTextSection *section = (ComItextpdfTextSection *) check_class_cast(element, [ComItextpdfTextSection class]);
      [section setNumbersWithInt:++subsections_ withJavaUtilArrayList:numbers_];
      return [super addWithId:section];
    }
    else if ([(id) element isKindOfClass:[ComItextpdfTextMarkedSection class]] && [((id<ComItextpdfTextElement>) nil_chk(((ComItextpdfTextMarkedObject *) check_class_cast(element, [ComItextpdfTextMarkedObject class]))->element_)) type] == ComItextpdfTextElement_SECTION) {
      ComItextpdfTextMarkedSection *mo = (ComItextpdfTextMarkedSection *) check_class_cast(element, [ComItextpdfTextMarkedSection class]);
      ComItextpdfTextSection *section = (ComItextpdfTextSection *) check_class_cast(mo->element_, [ComItextpdfTextSection class]);
      [section setNumbersWithInt:++subsections_ withJavaUtilArrayList:numbers_];
      return [super addWithId:mo];
    }
    else if ([element isNestable]) {
      return [super addWithId:element];
    }
    else {
      @throw [[JavaLangClassCastException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"you.can.t.add.a.1.to.a.section" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [[element getClass] getName] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
  }
  @catch (JavaLangClassCastException *cce) {
    @throw [[JavaLangClassCastException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"insertion.of.illegal.element.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [((JavaLangClassCastException *) nil_chk(cce)) getMessage] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
}


#line 338
- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  
#line 339
  if ([((id<JavaUtilCollection>) nil_chk(collection)) size] == 0)
#line 340
  return NO;
  for (id<ComItextpdfTextElement> __strong element in collection) {
    [self addWithId:element];
  }
  return YES;
}


#line 357
- (ComItextpdfTextSection *)addSectionWithFloat:(jfloat)indentation
                   withComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title
                                        withInt:(jint)numberDepth {
  
#line 358
  if ([self isAddedCompletely]) {
    @throw [[JavaLangIllegalStateException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"this.largeelement.has.already.been.added.to.the.document" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  ComItextpdfTextSection *section = [[ComItextpdfTextSection alloc] initWithComItextpdfTextParagraph:title withInt:numberDepth];
  [section setIndentationWithFloat:indentation];
  [self addWithId:section];
  return section;
}


#line 374
- (ComItextpdfTextSection *)addSectionWithFloat:(jfloat)indentation
                   withComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title {
  
#line 375
  return [self addSectionWithFloat:indentation withComItextpdfTextParagraph:title withInt:numberDepth_ + 1];
}


#line 385
- (ComItextpdfTextSection *)addSectionWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title
                                                           withInt:(jint)numberDepth {
  
#line 386
  return [self addSectionWithFloat:0 withComItextpdfTextParagraph:title withInt:numberDepth];
}


#line 393
- (ComItextpdfTextMarkedSection *)addMarkedSection {
  
#line 394
  ComItextpdfTextMarkedSection *section = [[ComItextpdfTextMarkedSection alloc] initWithComItextpdfTextSection:[[ComItextpdfTextSection alloc] initWithComItextpdfTextParagraph:nil withInt:numberDepth_ + 1]];
  [self addWithId:section];
  return section;
}


#line 405
- (ComItextpdfTextSection *)addSectionWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title {
  
#line 406
  return [self addSectionWithFloat:0 withComItextpdfTextParagraph:title withInt:numberDepth_ + 1];
}


#line 417
- (ComItextpdfTextSection *)addSectionWithFloat:(jfloat)indentation
                                   withNSString:(NSString *)title
                                        withInt:(jint)numberDepth {
  
#line 418
  return [self addSectionWithFloat:indentation withComItextpdfTextParagraph:[[ComItextpdfTextParagraph alloc] initWithNSString:title] withInt:numberDepth];
}


#line 428
- (ComItextpdfTextSection *)addSectionWithNSString:(NSString *)title
                                           withInt:(jint)numberDepth {
  
#line 429
  return [self addSectionWithComItextpdfTextParagraph:[[ComItextpdfTextParagraph alloc] initWithNSString:title] withInt:numberDepth];
}


#line 439
- (ComItextpdfTextSection *)addSectionWithFloat:(jfloat)indentation
                                   withNSString:(NSString *)title {
  
#line 440
  return [self addSectionWithFloat:indentation withComItextpdfTextParagraph:[[ComItextpdfTextParagraph alloc] initWithNSString:title]];
}


#line 449
- (ComItextpdfTextSection *)addSectionWithNSString:(NSString *)title {
  
#line 450
  return [self addSectionWithComItextpdfTextParagraph:[[ComItextpdfTextParagraph alloc] initWithNSString:title]];
}


#line 460
- (void)setTitleWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title {
  
#line 461
  self->title_ = title;
}


#line 469
- (ComItextpdfTextParagraph *)getTitle {
  
#line 470
  return [ComItextpdfTextSection constructTitleWithComItextpdfTextParagraph:title_ withJavaUtilArrayList:numbers_ withInt:numberDepth_ withInt:numberStyle_];
}


#line 482
+ (ComItextpdfTextParagraph *)constructTitleWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title
                                                   withJavaUtilArrayList:(JavaUtilArrayList *)numbers
                                                                 withInt:(jint)numberDepth
                                                                 withInt:(jint)numberStyle {
  
#line 483
  if (title == nil) {
    return nil;
  }
  
#line 487
  jint depth = [JavaLangMath minWithInt:[((JavaUtilArrayList *) nil_chk(numbers)) size] withInt:numberDepth];
  if (depth < 1) {
    return title;
  }
  JavaLangStringBuffer *buf = [[JavaLangStringBuffer alloc] initWithNSString:@" "];
  for (jint i = 0; i < depth; i++) {
    (void) [buf insertWithInt:0 withNSString:@"."];
    (void) [buf insertWithInt:0 withInt:[((JavaLangInteger *) nil_chk([numbers getWithInt:i])) intValue]];
  }
  if (numberStyle == ComItextpdfTextSection_NUMBERSTYLE_DOTTED_WITHOUT_FINAL_DOT) {
    (void) [buf deleteCharAtWithInt:[buf sequenceLength] - 2];
  }
  ComItextpdfTextParagraph *result = [[ComItextpdfTextParagraph alloc] initWithComItextpdfTextPhrase:title];
  
#line 501
  [result addWithInt:0 withId:[[ComItextpdfTextChunk alloc] initWithNSString:[buf description] withComItextpdfTextFont:[((ComItextpdfTextParagraph *) nil_chk(title)) getFont]]];
  return result;
}


#line 514
- (void)setNumberDepthWithInt:(jint)numberDepth {
  
#line 515
  self->numberDepth_ = numberDepth;
}


#line 523
- (jint)getNumberDepth {
  
#line 524
  return numberDepth_;
}


#line 534
- (void)setNumberStyleWithInt:(jint)numberStyle {
  
#line 535
  self->numberStyle_ = numberStyle;
}


#line 543
- (jint)getNumberStyle {
  
#line 544
  return numberStyle_;
}


#line 552
- (void)setIndentationLeftWithFloat:(jfloat)indentation {
  
#line 553
  indentationLeft_ = indentation;
}


#line 561
- (jfloat)getIndentationLeft {
  
#line 562
  return indentationLeft_;
}


#line 570
- (void)setIndentationRightWithFloat:(jfloat)indentation {
  
#line 571
  indentationRight_ = indentation;
}


#line 579
- (jfloat)getIndentationRight {
  
#line 580
  return indentationRight_;
}


#line 588
- (void)setIndentationWithFloat:(jfloat)indentation {
  
#line 589
  self->indentation_ = indentation;
}


#line 597
- (jfloat)getIndentation {
  
#line 598
  return indentation_;
}


#line 605
- (void)setBookmarkOpenWithBoolean:(jboolean)bookmarkOpen {
  
#line 606
  self->bookmarkOpen_ = bookmarkOpen;
}


#line 613
- (jboolean)isBookmarkOpen {
  
#line 614
  return bookmarkOpen_;
}


#line 621
- (void)setTriggerNewPageWithBoolean:(jboolean)triggerNewPage {
  
#line 622
  self->triggerNewPage_ = triggerNewPage;
}


#line 629
- (jboolean)isTriggerNewPage {
  
#line 630
  return triggerNewPage_ && notAddedYet_;
}


#line 638
- (void)setBookmarkTitleWithNSString:(NSString *)bookmarkTitle {
  
#line 639
  self->bookmarkTitle_ = bookmarkTitle;
}


#line 646
- (ComItextpdfTextParagraph *)getBookmarkTitle {
  
#line 647
  if (bookmarkTitle_ == nil)
#line 648
  return [self getTitle];
  else
#line 650
  return [[ComItextpdfTextParagraph alloc] initWithNSString:bookmarkTitle_];
}

- (void)setChapterNumberWithInt:(jint)number {
  
#line 658
  (void) [numbers_ setWithInt:[((JavaUtilArrayList *) nil_chk(numbers_)) size] - 1 withId:[JavaLangInteger valueOfWithInt:number]];
  id s;
  for (id<JavaUtilIterator> i = [self iterator]; [((id<JavaUtilIterator>) nil_chk(i)) hasNext]; ) {
    s = [i next];
    if ([s isKindOfClass:[ComItextpdfTextSection class]]) {
      [((ComItextpdfTextSection *) nil_chk(((ComItextpdfTextSection *) check_class_cast(s, [ComItextpdfTextSection class])))) setChapterNumberWithInt:number];
    }
  }
}


#line 673
- (jint)getDepth {
  
#line 674
  return [((JavaUtilArrayList *) nil_chk(numbers_)) size];
}


#line 685
- (void)setNumbersWithInt:(jint)number
    withJavaUtilArrayList:(JavaUtilArrayList *)numbers {
  
#line 686
  self->numbers_ = [[JavaUtilArrayList alloc] init];
  [self->numbers_ addWithId:[JavaLangInteger valueOfWithInt:number]];
  [self->numbers_ addAllWithJavaUtilCollection:numbers];
}


#line 696
- (jboolean)isNotAddedYet {
  
#line 697
  return notAddedYet_;
}


#line 706
- (void)setNotAddedYetWithBoolean:(jboolean)notAddedYet {
  
#line 707
  self->notAddedYet_ = notAddedYet;
}


#line 714
- (jboolean)isAddedCompletely {
  
#line 715
  return addedCompletely_;
}


#line 722
- (void)setAddedCompletelyWithBoolean:(jboolean)addedCompletely {
  
#line 723
  self->addedCompletely_ = addedCompletely;
}


#line 730
- (void)flushContent {
  
#line 731
  [self setNotAddedYetWithBoolean:NO];
  title_ = nil;
  id<ComItextpdfTextElement> element;
  for (id<JavaUtilIterator> i = [self iterator]; [((id<JavaUtilIterator>) nil_chk(i)) hasNext]; ) {
    element = [i next];
    if ([(id) element isKindOfClass:[ComItextpdfTextSection class]]) {
      ComItextpdfTextSection *s = (ComItextpdfTextSection *) check_class_cast(element, [ComItextpdfTextSection class]);
      if (![((ComItextpdfTextSection *) nil_chk(s)) isComplete] && [self size] == 1) {
        [s flushContent];
        return;
      }
      else {
        [s setAddedCompletelyWithBoolean:YES];
      }
    }
    [i remove];
  }
}


#line 754
- (jboolean)isComplete {
  
#line 755
  return complete_;
}


#line 762
- (void)setCompleteWithBoolean:(jboolean)complete {
  
#line 763
  self->complete_ = complete;
}


#line 770
- (void)newPage {
  
#line 771
  [self addWithId:ComItextpdfTextChunk_get_NEXTPAGE_()];
}


#line 774
- (ComItextpdfTextPdfPdfObject *)getAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key {
  
#line 775
  return [((ComItextpdfTextParagraph *) nil_chk(title_)) getAccessibleAttributeWithComItextpdfTextPdfPdfName:key];
}


#line 778
- (void)setAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value {
  
#line 779
  [((ComItextpdfTextParagraph *) nil_chk(title_)) setAccessibleAttributeWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:value];
}


#line 782
- (JavaUtilHashMap *)getAccessibleAttributes {
  
#line 783
  return [((ComItextpdfTextParagraph *) nil_chk(title_)) getAccessibleAttributes];
}


#line 786
- (ComItextpdfTextPdfPdfName *)getRole {
  
#line 787
  return [((ComItextpdfTextParagraph *) nil_chk(title_)) getRole];
}


#line 790
- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role {
  
#line 791
  [((ComItextpdfTextParagraph *) nil_chk(title_)) setRoleWithComItextpdfTextPdfPdfName:role];
}


#line 794
- (ComItextpdfTextAccessibleElementId *)getId {
  
#line 795
  return [((ComItextpdfTextParagraph *) nil_chk(title_)) getId];
}


#line 798
- (void)setIdWithComItextpdfTextAccessibleElementId:(ComItextpdfTextAccessibleElementId *)id_ {
  
#line 799
  [((ComItextpdfTextParagraph *) nil_chk(title_)) setIdWithComItextpdfTextAccessibleElementId:id_];
}


#line 802
- (jboolean)isInline {
  
#line 803
  return NO;
}

- (void)copyAllFieldsTo:(ComItextpdfTextSection *)other {
  [super copyAllFieldsTo:other];
  other->addedCompletely_ = addedCompletely_;
  other->bookmarkOpen_ = bookmarkOpen_;
  other->bookmarkTitle_ = bookmarkTitle_;
  other->complete_ = complete_;
  other->indentation_ = indentation_;
  other->indentationLeft_ = indentationLeft_;
  other->indentationRight_ = indentationRight_;
  other->notAddedYet_ = notAddedYet_;
  other->numberDepth_ = numberDepth_;
  other->numberStyle_ = numberStyle_;
  other->numbers_ = numbers_;
  other->subsections_ = subsections_;
  other->title_ = title_;
  other->triggerNewPage_ = triggerNewPage_;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Section", NULL, 0x4, NULL },
    { "initWithComItextpdfTextParagraph:withInt:", "Section", NULL, 0x4, NULL },
    { "processWithComItextpdfTextElementListener:", "process", "Z", 0x1, NULL },
    { "type", NULL, "I", 0x1, NULL },
    { "isChapter", NULL, "Z", 0x1, NULL },
    { "isSection", NULL, "Z", 0x1, NULL },
    { "getChunks", NULL, "Ljava.util.List;", 0x1, NULL },
    { "isContent", NULL, "Z", 0x1, NULL },
    { "isNestable", NULL, "Z", 0x1, NULL },
    { "addWithInt:withComItextpdfTextElement:", "add", "V", 0x1, NULL },
    { "addWithComItextpdfTextElement:", "add", "Z", 0x1, NULL },
    { "addAllWithJavaUtilCollection:", "addAll", "Z", 0x1, NULL },
    { "addSectionWithFloat:withComItextpdfTextParagraph:withInt:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "addSectionWithFloat:withComItextpdfTextParagraph:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "addSectionWithComItextpdfTextParagraph:withInt:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "addMarkedSection", NULL, "Lcom.itextpdf.text.MarkedSection;", 0x4, NULL },
    { "addSectionWithComItextpdfTextParagraph:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "addSectionWithFloat:withNSString:withInt:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "addSectionWithNSString:withInt:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "addSectionWithFloat:withNSString:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "addSectionWithNSString:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "setTitleWithComItextpdfTextParagraph:", "setTitle", "V", 0x1, NULL },
    { "getTitle", NULL, "Lcom.itextpdf.text.Paragraph;", 0x1, NULL },
    { "constructTitleWithComItextpdfTextParagraph:withJavaUtilArrayList:withInt:withInt:", "constructTitle", "Lcom.itextpdf.text.Paragraph;", 0x9, NULL },
    { "setNumberDepthWithInt:", "setNumberDepth", "V", 0x1, NULL },
    { "getNumberDepth", NULL, "I", 0x1, NULL },
    { "setNumberStyleWithInt:", "setNumberStyle", "V", 0x1, NULL },
    { "getNumberStyle", NULL, "I", 0x1, NULL },
    { "setIndentationLeftWithFloat:", "setIndentationLeft", "V", 0x1, NULL },
    { "getIndentationLeft", NULL, "F", 0x1, NULL },
    { "setIndentationRightWithFloat:", "setIndentationRight", "V", 0x1, NULL },
    { "getIndentationRight", NULL, "F", 0x1, NULL },
    { "setIndentationWithFloat:", "setIndentation", "V", 0x1, NULL },
    { "getIndentation", NULL, "F", 0x1, NULL },
    { "setBookmarkOpenWithBoolean:", "setBookmarkOpen", "V", 0x1, NULL },
    { "isBookmarkOpen", NULL, "Z", 0x1, NULL },
    { "setTriggerNewPageWithBoolean:", "setTriggerNewPage", "V", 0x1, NULL },
    { "isTriggerNewPage", NULL, "Z", 0x1, NULL },
    { "setBookmarkTitleWithNSString:", "setBookmarkTitle", "V", 0x1, NULL },
    { "getBookmarkTitle", NULL, "Lcom.itextpdf.text.Paragraph;", 0x1, NULL },
    { "setChapterNumberWithInt:", "setChapterNumber", "V", 0x1, NULL },
    { "getDepth", NULL, "I", 0x1, NULL },
    { "setNumbersWithInt:withJavaUtilArrayList:", "setNumbers", "V", 0x2, NULL },
    { "isNotAddedYet", NULL, "Z", 0x1, NULL },
    { "setNotAddedYetWithBoolean:", "setNotAddedYet", "V", 0x1, NULL },
    { "isAddedCompletely", NULL, "Z", 0x4, NULL },
    { "setAddedCompletelyWithBoolean:", "setAddedCompletely", "V", 0x4, NULL },
    { "flushContent", NULL, "V", 0x1, NULL },
    { "isComplete", NULL, "Z", 0x1, NULL },
    { "setCompleteWithBoolean:", "setComplete", "V", 0x1, NULL },
    { "newPage", NULL, "V", 0x1, NULL },
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
    { "NUMBERSTYLE_DOTTED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextSection_NUMBERSTYLE_DOTTED },
    { "NUMBERSTYLE_DOTTED_WITHOUT_FINAL_DOT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextSection_NUMBERSTYLE_DOTTED_WITHOUT_FINAL_DOT },
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextSection_serialVersionUID },
    { "title_", NULL, 0x4, "Lcom.itextpdf.text.Paragraph;", NULL,  },
    { "bookmarkTitle_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
    { "numberDepth_", NULL, 0x4, "I", NULL,  },
    { "numberStyle_", NULL, 0x4, "I", NULL,  },
    { "indentationLeft_", NULL, 0x4, "F", NULL,  },
    { "indentationRight_", NULL, 0x4, "F", NULL,  },
    { "indentation_", NULL, 0x4, "F", NULL,  },
    { "bookmarkOpen_", NULL, 0x4, "Z", NULL,  },
    { "triggerNewPage_", NULL, 0x4, "Z", NULL,  },
    { "subsections_", NULL, 0x4, "I", NULL,  },
    { "numbers_", NULL, 0x4, "Ljava.util.ArrayList;", NULL,  },
    { "complete_", NULL, 0x4, "Z", NULL,  },
    { "addedCompletely_", NULL, 0x4, "Z", NULL,  },
    { "notAddedYet_", NULL, 0x4, "Z", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lcom.itextpdf.text.Element;"};
  static const J2ObjcClassInfo _ComItextpdfTextSection = { "Section", "com.itextpdf.text", NULL, 0x1, 59, methods, 17, fields, 1, superclass_type_args};
  return &_ComItextpdfTextSection;
}

@end
