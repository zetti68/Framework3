//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPNode.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPNode.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/xmp/XMPConst.h"
#include "com/itextpdf/xmp/XMPError.h"
#include "com/itextpdf/xmp/XMPException.h"
#include "com/itextpdf/xmp/impl/XMPNode.h"
#include "com/itextpdf/xmp/options/PropertyOptions.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/ListIterator.h"


#line 59
@implementation ComItextpdfXmpImplXMPNode


#line 94
- (instancetype)initComItextpdfXmpImplXMPNodeWithNSString:(NSString *)name
                                             withNSString:(NSString *)value
                 withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options {
  if (self = [super init]) {
    children_ =
#line 68
    nil;
    qualifier_ =
#line 70
    nil;
    options_ =
#line 72
    nil;
    
#line 96
    self->name_ = name;
    
#line 97
    self->value_ = value;
    
#line 98
    self->options_ = options;
  }
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options {
  return [self initComItextpdfXmpImplXMPNodeWithNSString:
#line 94
name withNSString:value withComItextpdfXmpOptionsPropertyOptions:options];
}


#line 108
- (instancetype)initWithNSString:(NSString *)name
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options {
  return
#line 110
  [self initComItextpdfXmpImplXMPNodeWithNSString:name withNSString:nil withComItextpdfXmpOptionsPropertyOptions:options];
}


#line 117
- (void)clear {
  
#line 119
  options_ = nil;
  name_ = nil;
  value_ = nil;
  children_ = nil;
  qualifier_ = nil;
}


#line 130
- (ComItextpdfXmpImplXMPNode *)getParent {
  
#line 132
  return parent_;
}


#line 140
- (ComItextpdfXmpImplXMPNode *)getChildWithInt:(jint)index {
  
#line 142
  return (ComItextpdfXmpImplXMPNode *) check_class_cast([((id<JavaUtilList>) nil_chk([self getChildren])) getWithInt:index - 1], [ComItextpdfXmpImplXMPNode class]);
}


#line 151
- (void)addChildWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)node {
  
#line 154
  [self assertChildNotExistingWithNSString:[((ComItextpdfXmpImplXMPNode *) nil_chk(node)) getName]];
  [node setParentWithComItextpdfXmpImplXMPNode:self];
  [((id<JavaUtilList>) nil_chk([self getChildren])) addWithId:node];
}


#line 168
- (void)addChildWithInt:(jint)index
withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)node {
  
#line 170
  [self assertChildNotExistingWithNSString:[((ComItextpdfXmpImplXMPNode *) nil_chk(node)) getName]];
  [node setParentWithComItextpdfXmpImplXMPNode:self];
  [((id<JavaUtilList>) nil_chk([self getChildren])) addWithInt:index - 1 withId:node];
}


#line 182
- (void)replaceChildWithInt:(jint)index
withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)node {
  
#line 184
  [((ComItextpdfXmpImplXMPNode *) nil_chk(node)) setParentWithComItextpdfXmpImplXMPNode:self];
  (void) [((id<JavaUtilList>) nil_chk([self getChildren])) setWithInt:index - 1 withId:node];
}


#line 193
- (void)removeChildWithInt:(jint)itemIndex {
  
#line 195
  (void) [((id<JavaUtilList>) nil_chk([self getChildren])) removeWithInt:itemIndex - 1];
  [self cleanupChildren];
}


#line 206
- (void)removeChildWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)node {
  
#line 208
  [((id<JavaUtilList>) nil_chk([self getChildren])) removeWithId:node];
  [self cleanupChildren];
}


#line 218
- (void)cleanupChildren {
  
#line 220
  if ([((id<JavaUtilList>) nil_chk(children_)) isEmpty]) {
    
#line 222
    children_ = nil;
  }
}


#line 230
- (void)removeChildren {
  
#line 232
  children_ = nil;
}


#line 239
- (jint)getChildrenLength {
  
#line 241
  return children_ != nil ?
#line 242
  [children_ size] :
#line 243
  0;
}


#line 251
- (ComItextpdfXmpImplXMPNode *)findChildByNameWithNSString:(NSString *)expr {
  
#line 253
  return [self findWithJavaUtilList:[self getChildren] withNSString:expr];
}


#line 261
- (ComItextpdfXmpImplXMPNode *)getQualifierWithInt:(jint)index {
  
#line 263
  return (ComItextpdfXmpImplXMPNode *) check_class_cast([((id<JavaUtilList>) nil_chk([self getQualifier])) getWithInt:index - 1], [ComItextpdfXmpImplXMPNode class]);
}


#line 270
- (jint)getQualifierLength {
  
#line 272
  return qualifier_ != nil ?
#line 273
  [qualifier_ size] :
#line 274
  0;
}


#line 283
- (void)addQualifierWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)qualNode {
  
#line 285
  [self assertQualifierNotExistingWithNSString:[((ComItextpdfXmpImplXMPNode *) nil_chk(qualNode)) getName]];
  [qualNode setParentWithComItextpdfXmpImplXMPNode:self];
  (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([qualNode getOptions])) setQualifierWithBoolean:YES];
  (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([self getOptions])) setHasQualifiersWithBoolean:YES];
  
#line 291
  if ([qualNode isLanguageNode]) {
    
#line 294
    (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk(options_)) setHasLanguageWithBoolean:YES];
    [((id<JavaUtilList>) nil_chk([self getQualifier])) addWithInt:0 withId:qualNode];
  }
  else if ([qualNode isTypeNode]) {
    
#line 300
    (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk(options_)) setHasTypeWithBoolean:YES];
    [((id<JavaUtilList>) nil_chk([self getQualifier])) addWithInt:
#line 302
    ![options_ getHasLanguage] ? 0 : 1 withId:
#line 303
    qualNode];
  }
  else {
    
#line 308
    [((id<JavaUtilList>) nil_chk([self getQualifier])) addWithId:qualNode];
  }
}


#line 317
- (void)removeQualifierWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)qualNode {
  
#line 319
  ComItextpdfXmpOptionsPropertyOptions *opts = [self getOptions];
  if ([((ComItextpdfXmpImplXMPNode *) nil_chk(qualNode)) isLanguageNode]) {
    
#line 323
    (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk(opts)) setHasLanguageWithBoolean:NO];
  }
  else if ([qualNode isTypeNode]) {
    
#line 328
    (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk(opts)) setHasTypeWithBoolean:NO];
  }
  
#line 331
  [((id<JavaUtilList>) nil_chk([self getQualifier])) removeWithId:qualNode];
  if ([((id<JavaUtilList>) nil_chk(qualifier_)) isEmpty]) {
    
#line 334
    (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk(opts)) setHasQualifiersWithBoolean:NO];
    qualifier_ = nil;
  }
}


#line 344
- (void)removeQualifiers {
  
#line 346
  ComItextpdfXmpOptionsPropertyOptions *opts = [self getOptions];
  
#line 348
  (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk(opts)) setHasQualifiersWithBoolean:NO];
  (void) [opts setHasLanguageWithBoolean:NO];
  (void) [opts setHasTypeWithBoolean:NO];
  qualifier_ = nil;
}


#line 360
- (ComItextpdfXmpImplXMPNode *)findQualifierByNameWithNSString:(NSString *)expr {
  
#line 362
  return [self findWithJavaUtilList:qualifier_ withNSString:expr];
}


#line 369
- (jboolean)hasChildren {
  
#line 371
  return children_ != nil && [children_ size] > 0;
}


#line 379
- (id<JavaUtilIterator>)iterateChildren {
  
#line 381
  if (children_ != nil) {
    
#line 383
    return [((id<JavaUtilList>) nil_chk([self getChildren])) iterator];
  }
  else {
    
#line 387
    return [((id<JavaUtilList>) nil_chk(JavaUtilCollections_get_EMPTY_LIST_())) listIterator];
  }
}


#line 395
- (jboolean)hasQualifier {
  
#line 397
  return qualifier_ != nil && [qualifier_ size] > 0;
}


#line 405
- (id<JavaUtilIterator>)iterateQualifier {
  
#line 407
  if (qualifier_ != nil) {
    
#line 409
    id<JavaUtilIterator> it = [((id<JavaUtilList>) nil_chk([self getQualifier])) iterator];
    
#line 411
    return [[ComItextpdfXmpImplXMPNode_$1 alloc] initWithJavaUtilIterator:it];
  }
  else {
    
#line 433
    return [((id<JavaUtilList>) nil_chk(JavaUtilCollections_get_EMPTY_LIST_())) iterator];
  }
}


#line 443
- (id)clone {
  
#line 445
  ComItextpdfXmpOptionsPropertyOptions *newOptions;
  @try {
    
#line 448
    newOptions = [[ComItextpdfXmpOptionsPropertyOptions alloc] initWithInt:[((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([self getOptions])) getOptions]];
  }
  @catch (ComItextpdfXmpXMPException *e) {
    
#line 453
    newOptions = [[ComItextpdfXmpOptionsPropertyOptions alloc] init];
  }
  
#line 456
  ComItextpdfXmpImplXMPNode *newNode = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:name_ withNSString:value_ withComItextpdfXmpOptionsPropertyOptions:newOptions];
  [self cloneSubtreeWithComItextpdfXmpImplXMPNode:newNode];
  
#line 459
  return newNode;
}


#line 469
- (void)cloneSubtreeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)destination {
  
#line 471
  @try {
    
#line 473
    for (id<JavaUtilIterator> it = [self iterateChildren]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
      
#line 475
      ComItextpdfXmpImplXMPNode *child = (ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class]);
      [((ComItextpdfXmpImplXMPNode *) nil_chk(destination)) addChildWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *) check_class_cast([((ComItextpdfXmpImplXMPNode *) nil_chk(child)) clone], [ComItextpdfXmpImplXMPNode class])];
    }
    
#line 479
    for (id<JavaUtilIterator> it = [self iterateQualifier]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
      
#line 481
      ComItextpdfXmpImplXMPNode *qualifier = (ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class]);
      [((ComItextpdfXmpImplXMPNode *) nil_chk(destination)) addQualifierWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *) check_class_cast([((ComItextpdfXmpImplXMPNode *) nil_chk(qualifier)) clone], [ComItextpdfXmpImplXMPNode class])];
    }
  }
  @catch (ComItextpdfXmpXMPException *e) {
    
#line 488
    NSAssert(NO, @"com/itextpdf/xmp/impl/XMPNode.java:488 condition failed: assert false;");
  }
}


#line 499
- (NSString *)dumpNodeWithBoolean:(jboolean)recursive {
  
#line 501
  JavaLangStringBuffer *result = [[JavaLangStringBuffer alloc] initWithInt:512];
  [self dumpNodeWithJavaLangStringBuffer:result withBoolean:recursive withInt:0 withInt:0];
  return [result description];
}


#line 510
- (jint)compareToWithId:(id)xmpNode {
  
#line 512
  if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([self getOptions])) isSchemaNode]) {
    
#line 514
    return [((NSString *) nil_chk(self->value_)) compareToWithId:[((ComItextpdfXmpImplXMPNode *) nil_chk(((ComItextpdfXmpImplXMPNode *) check_class_cast(xmpNode, [ComItextpdfXmpImplXMPNode class])))) getValue]];
  }
  else {
    
#line 518
    return [((NSString *) nil_chk(self->name_)) compareToWithId:[((ComItextpdfXmpImplXMPNode *) nil_chk(((ComItextpdfXmpImplXMPNode *) check_class_cast(xmpNode, [ComItextpdfXmpImplXMPNode class])))) getName]];
  }
}


#line 526
- (NSString *)getName {
  
#line 528
  return name_;
}


#line 535
- (void)setNameWithNSString:(NSString *)name {
  
#line 537
  self->name_ = name;
}


#line 544
- (NSString *)getValue {
  
#line 546
  return value_;
}


#line 553
- (void)setValueWithNSString:(NSString *)value {
  
#line 555
  self->value_ = value;
}


#line 562
- (ComItextpdfXmpOptionsPropertyOptions *)getOptions {
  
#line 564
  if (options_ == nil) {
    
#line 566
    options_ = [[ComItextpdfXmpOptionsPropertyOptions alloc] init];
  }
  return options_;
}


#line 576
- (void)setOptionsWithComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options {
  
#line 578
  self->options_ = options;
}


#line 585
- (jboolean)isImplicit {
  
#line 587
  return implicit_;
}


#line 594
- (void)setImplicitWithBoolean:(jboolean)implicit {
  
#line 596
  self->implicit_ = implicit;
}


#line 603
- (jboolean)getHasAliases {
  
#line 605
  return hasAliases_;
}


#line 612
- (void)setHasAliasesWithBoolean:(jboolean)hasAliases {
  
#line 614
  self->hasAliases_ = hasAliases;
}


#line 621
- (jboolean)isAlias {
  
#line 623
  return alias_;
}


#line 630
- (void)setAliasWithBoolean:(jboolean)alias {
  
#line 632
  self->alias_ = alias;
}


#line 639
- (jboolean)getHasValueChild {
  
#line 641
  return hasValueChild_;
}


#line 648
- (void)setHasValueChildWithBoolean:(jboolean)hasValueChild {
  
#line 650
  self->hasValueChild_ = hasValueChild;
}


#line 666
- (void)sort {
  
#line 669
  if ([self hasQualifier]) {
    
#line 671
    IOSObjectArray *quals = (IOSObjectArray *) check_class_cast([((id<JavaUtilList>) nil_chk([self getQualifier])) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:
#line 672
    [self getQualifierLength] type:[IOSClass classWithClass:[ComItextpdfXmpImplXMPNode class]]]], [IOSObjectArray class]);
    jint sortFrom = 0;
    while (
#line 675
    ((IOSObjectArray *) nil_chk(quals))->size_ > sortFrom &&
#line 676
    ([((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_XML_LANG_())) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk(IOSObjectArray_Get(quals, sortFrom))) getName]] ||
#line 677
    [@"rdf:type" isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk(IOSObjectArray_Get(quals, sortFrom))) getName]])) {
      
#line 680
      [((ComItextpdfXmpImplXMPNode *) nil_chk(IOSObjectArray_Get(quals, sortFrom))) sort];
      sortFrom++;
    }
    
#line 684
    [JavaUtilArrays sortWithNSObjectArray:quals withInt:sortFrom withInt:quals->size_];
    id<JavaUtilListIterator> it = [((id<JavaUtilList>) nil_chk(qualifier_)) listIterator];
    for (jint j = 0; j < quals->size_; j++) {
      
#line 688
      (void) [((id<JavaUtilListIterator>) nil_chk(it)) next];
      [it setWithId:IOSObjectArray_Get(quals, j)];
      [((ComItextpdfXmpImplXMPNode *) nil_chk(IOSObjectArray_Get(quals, j))) sort];
    }
  }
  
#line 695
  if ([self hasChildren]) {
    
#line 697
    if (![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([self getOptions])) isArray]) {
      
#line 699
      [JavaUtilCollections sortWithJavaUtilList:children_];
    }
    for (id<JavaUtilIterator> it = [self iterateChildren]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
      
#line 703
      [((ComItextpdfXmpImplXMPNode *) nil_chk(((ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class])))) sort];
    }
  }
}


#line 723
- (void)dumpNodeWithJavaLangStringBuffer:(JavaLangStringBuffer *)result
                             withBoolean:(jboolean)recursive
                                 withInt:(jint)indent
                                 withInt:(jint)index {
  
#line 726
  for (jint i = 0; i < indent; i++) {
    
#line 728
    (void) [((JavaLangStringBuffer *) nil_chk(result)) appendWithChar:0x0009];
  }
  
#line 732
  if (parent_ != nil) {
    
#line 734
    if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([self getOptions])) isQualifier]) {
      
#line 736
      (void) [((JavaLangStringBuffer *) nil_chk(result)) appendWithChar:'?'];
      (void) [result appendWithNSString:name_];
    }
    else if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk([self getParent])) getOptions])) isArray]) {
      
#line 741
      (void) [((JavaLangStringBuffer *) nil_chk(result)) appendWithChar:'['];
      (void) [result appendWithInt:index];
      (void) [result appendWithChar:']'];
    }
    else {
      
#line 747
      (void) [((JavaLangStringBuffer *) nil_chk(result)) appendWithNSString:name_];
    }
  }
  else {
    
#line 753
    (void) [((JavaLangStringBuffer *) nil_chk(result)) appendWithNSString:@"ROOT NODE"];
    if (name_ != nil && ((jint) [name_ length]) > 0) {
      
#line 757
      (void) [result appendWithNSString:@" ("];
      (void) [result appendWithNSString:name_];
      (void) [result appendWithChar:')'];
    }
  }
  
#line 763
  if (value_ != nil && ((jint) [value_ length]) > 0) {
    
#line 765
    (void) [((JavaLangStringBuffer *) nil_chk(result)) appendWithNSString:@" = \""];
    (void) [result appendWithNSString:value_];
    (void) [result appendWithChar:'"'];
  }
  
#line 771
  if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([self getOptions])) containsOneOfWithInt:(jint) 0xffffffff]) {
    
#line 773
    (void) [((JavaLangStringBuffer *) nil_chk(result)) appendWithNSString:@"\t("];
    (void) [result appendWithNSString:[((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([self getOptions])) description]];
    (void) [result appendWithNSString:@" : "];
    (void) [result appendWithNSString:[((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([self getOptions])) getOptionsString]];
    (void) [result appendWithChar:')'];
  }
  
#line 780
  (void) [((JavaLangStringBuffer *) nil_chk(result)) appendWithChar:0x000a];
  
#line 783
  if (recursive && [self hasQualifier]) {
    
#line 785
    IOSObjectArray *quals = (IOSObjectArray *) check_class_cast([((id<JavaUtilList>) nil_chk([self getQualifier])) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:
#line 786
    [self getQualifierLength] type:[IOSClass classWithClass:[ComItextpdfXmpImplXMPNode class]]]], [IOSObjectArray class]);
    jint i = 0;
    while (((IOSObjectArray *) nil_chk(quals))->size_ > i &&
#line 789
    ([((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_XML_LANG_())) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk(IOSObjectArray_Get(quals, i))) getName]] ||
#line 790
    [@"rdf:type" isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk(IOSObjectArray_Get(quals, i))) getName]])) {
      
#line 793
      i++;
    }
    [JavaUtilArrays sortWithNSObjectArray:quals withInt:i withInt:quals->size_];
    for (i = 0; i < quals->size_; i++) {
      
#line 798
      ComItextpdfXmpImplXMPNode *qualifier = IOSObjectArray_Get(quals, i);
      [((ComItextpdfXmpImplXMPNode *) nil_chk(qualifier)) dumpNodeWithJavaLangStringBuffer:result withBoolean:recursive withInt:indent + 2 withInt:i + 1];
    }
  }
  
#line 804
  if (recursive && [self hasChildren]) {
    
#line 806
    IOSObjectArray *children = (IOSObjectArray *) check_class_cast([((id<JavaUtilList>) nil_chk([self getChildren])) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:
#line 807
    [self getChildrenLength] type:[IOSClass classWithClass:[ComItextpdfXmpImplXMPNode class]]]], [IOSObjectArray class]);
    if (![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([self getOptions])) isArray]) {
      
#line 810
      [JavaUtilArrays sortWithNSObjectArray:children];
    }
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(children))->size_; i++) {
      
#line 814
      ComItextpdfXmpImplXMPNode *child = IOSObjectArray_Get(children, i);
      [((ComItextpdfXmpImplXMPNode *) nil_chk(child)) dumpNodeWithJavaLangStringBuffer:result withBoolean:recursive withInt:indent + 1 withInt:i + 1];
    }
  }
}


#line 824
- (jboolean)isLanguageNode {
  
#line 826
  return [((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_XML_LANG_())) isEqual:name_];
}


#line 833
- (jboolean)isTypeNode {
  
#line 835
  return [@"rdf:type" isEqual:name_];
}


#line 844
- (id<JavaUtilList>)getChildren {
  
#line 846
  if (children_ == nil) {
    
#line 848
    children_ = [[JavaUtilArrayList alloc] initWithInt:0];
  }
  return children_;
}


#line 857
- (id<JavaUtilList>)getUnmodifiableChildren {
  
#line 859
  return [JavaUtilCollections unmodifiableListWithJavaUtilList:[[JavaUtilArrayList alloc] initWithJavaUtilCollection:[self getChildren]]];
}


#line 866
- (id<JavaUtilList>)getQualifier {
  
#line 868
  if (qualifier_ == nil) {
    
#line 870
    qualifier_ = [[JavaUtilArrayList alloc] initWithInt:0];
  }
  return qualifier_;
}


#line 883
- (void)setParentWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)parent {
  
#line 885
  self->parent_ = parent;
}


#line 895
- (ComItextpdfXmpImplXMPNode *)findWithJavaUtilList:(id<JavaUtilList>)list
                                       withNSString:(NSString *)expr {
  
#line 898
  if (list != nil) {
    
#line 900
    for (id<JavaUtilIterator> it = [list iterator]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
      
#line 902
      ComItextpdfXmpImplXMPNode *child = (ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class]);
      if ([((NSString *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(child)) getName])) isEqual:expr]) {
        
#line 905
        return child;
      }
    }
  }
  return nil;
}


#line 918
- (void)assertChildNotExistingWithNSString:(NSString *)childName {
  
#line 920
  if (![((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_ARRAY_ITEM_NAME_())) isEqual:childName] &&
#line 921
  [self findChildByNameWithNSString:childName] != nil) {
    
#line 923
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:JreStrcat("$$C", @"Duplicate property or field node '", childName, '\'') withInt:
#line 924
    ComItextpdfXmpXMPError_BADXMP];
  }
}


#line 934
- (void)assertQualifierNotExistingWithNSString:(NSString *)qualifierName {
  
#line 936
  if (![((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_ARRAY_ITEM_NAME_())) isEqual:qualifierName] &&
#line 937
  [self findQualifierByNameWithNSString:qualifierName] != nil) {
    
#line 939
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:JreStrcat("$$$", @"Duplicate '", qualifierName, @"' qualifier") withInt:ComItextpdfXmpXMPError_BADXMP];
  }
}

- (void)copyAllFieldsTo:(ComItextpdfXmpImplXMPNode *)other {
  [super copyAllFieldsTo:other];
  other->alias_ = alias_;
  other->children_ = children_;
  other->hasAliases_ = hasAliases_;
  other->hasValueChild_ = hasValueChild_;
  other->implicit_ = implicit_;
  other->name_ = name_;
  other->options_ = options_;
  other->parent_ = parent_;
  other->qualifier_ = qualifier_;
  other->value_ = value_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withComItextpdfXmpOptionsPropertyOptions:", "XMPNode", NULL, 0x1, NULL },
    { "initWithNSString:withComItextpdfXmpOptionsPropertyOptions:", "XMPNode", NULL, 0x1, NULL },
    { "clear", NULL, "V", 0x1, NULL },
    { "getParent", NULL, "Lcom.itextpdf.xmp.impl.XMPNode;", 0x1, NULL },
    { "getChildWithInt:", "getChild", "Lcom.itextpdf.xmp.impl.XMPNode;", 0x1, NULL },
    { "addChildWithComItextpdfXmpImplXMPNode:", "addChild", "V", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "addChildWithInt:withComItextpdfXmpImplXMPNode:", "addChild", "V", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "replaceChildWithInt:withComItextpdfXmpImplXMPNode:", "replaceChild", "V", 0x1, NULL },
    { "removeChildWithInt:", "removeChild", "V", 0x1, NULL },
    { "removeChildWithComItextpdfXmpImplXMPNode:", "removeChild", "V", 0x1, NULL },
    { "cleanupChildren", NULL, "V", 0x4, NULL },
    { "removeChildren", NULL, "V", 0x1, NULL },
    { "getChildrenLength", NULL, "I", 0x1, NULL },
    { "findChildByNameWithNSString:", "findChildByName", "Lcom.itextpdf.xmp.impl.XMPNode;", 0x1, NULL },
    { "getQualifierWithInt:", "getQualifier", "Lcom.itextpdf.xmp.impl.XMPNode;", 0x1, NULL },
    { "getQualifierLength", NULL, "I", 0x1, NULL },
    { "addQualifierWithComItextpdfXmpImplXMPNode:", "addQualifier", "V", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "removeQualifierWithComItextpdfXmpImplXMPNode:", "removeQualifier", "V", 0x1, NULL },
    { "removeQualifiers", NULL, "V", 0x1, NULL },
    { "findQualifierByNameWithNSString:", "findQualifierByName", "Lcom.itextpdf.xmp.impl.XMPNode;", 0x1, NULL },
    { "hasChildren", NULL, "Z", 0x1, NULL },
    { "iterateChildren", NULL, "Ljava.util.Iterator;", 0x1, NULL },
    { "hasQualifier", NULL, "Z", 0x1, NULL },
    { "iterateQualifier", NULL, "Ljava.util.Iterator;", 0x1, NULL },
    { "clone", NULL, "Ljava.lang.Object;", 0x1, NULL },
    { "cloneSubtreeWithComItextpdfXmpImplXMPNode:", "cloneSubtree", "V", 0x1, NULL },
    { "dumpNodeWithBoolean:", "dumpNode", "Ljava.lang.String;", 0x1, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setNameWithNSString:", "setName", "V", 0x1, NULL },
    { "getValue", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setValueWithNSString:", "setValue", "V", 0x1, NULL },
    { "getOptions", NULL, "Lcom.itextpdf.xmp.options.PropertyOptions;", 0x1, NULL },
    { "setOptionsWithComItextpdfXmpOptionsPropertyOptions:", "setOptions", "V", 0x1, NULL },
    { "isImplicit", NULL, "Z", 0x1, NULL },
    { "setImplicitWithBoolean:", "setImplicit", "V", 0x1, NULL },
    { "getHasAliases", NULL, "Z", 0x1, NULL },
    { "setHasAliasesWithBoolean:", "setHasAliases", "V", 0x1, NULL },
    { "isAlias", NULL, "Z", 0x1, NULL },
    { "setAliasWithBoolean:", "setAlias", "V", 0x1, NULL },
    { "getHasValueChild", NULL, "Z", 0x1, NULL },
    { "setHasValueChildWithBoolean:", "setHasValueChild", "V", 0x1, NULL },
    { "sort", NULL, "V", 0x1, NULL },
    { "dumpNodeWithJavaLangStringBuffer:withBoolean:withInt:withInt:", "dumpNode", "V", 0x2, NULL },
    { "isLanguageNode", NULL, "Z", 0x2, NULL },
    { "isTypeNode", NULL, "Z", 0x2, NULL },
    { "getChildren", NULL, "Ljava.util.List;", 0x2, NULL },
    { "getUnmodifiableChildren", NULL, "Ljava.util.List;", 0x1, NULL },
    { "getQualifier", NULL, "Ljava.util.List;", 0x2, NULL },
    { "setParentWithComItextpdfXmpImplXMPNode:", "setParent", "V", 0x4, NULL },
    { "findWithJavaUtilList:withNSString:", "find", "Lcom.itextpdf.xmp.impl.XMPNode;", 0x2, NULL },
    { "assertChildNotExistingWithNSString:", "assertChildNotExisting", "V", 0x2, "Lcom.itextpdf.xmp.XMPException;" },
    { "assertQualifierNotExistingWithNSString:", "assertQualifierNotExisting", "V", 0x2, "Lcom.itextpdf.xmp.XMPException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "value_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "parent_", NULL, 0x2, "Lcom.itextpdf.xmp.impl.XMPNode;", NULL,  },
    { "children_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "qualifier_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "options_", NULL, 0x2, "Lcom.itextpdf.xmp.options.PropertyOptions;", NULL,  },
    { "implicit_", NULL, 0x2, "Z", NULL,  },
    { "hasAliases_", NULL, 0x2, "Z", NULL,  },
    { "alias_", NULL, 0x2, "Z", NULL,  },
    { "hasValueChild_", NULL, 0x2, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpImplXMPNode = { "XMPNode", "com.itextpdf.xmp.impl", NULL, 0x0, 53, methods, 10, fields, 0, NULL};
  return &_ComItextpdfXmpImplXMPNode;
}

@end

@implementation ComItextpdfXmpImplXMPNode_$1


#line 413
- (jboolean)hasNext {
  
#line 415
  return [((id<JavaUtilIterator>) nil_chk(val$it_)) hasNext];
}


#line 418
- (id)next {
  
#line 420
  return [((id<JavaUtilIterator>) nil_chk(val$it_)) next];
}


#line 423
- (void)remove {
  
#line 425
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:
#line 426
  @"remove() is not allowed due to the internal contraints"];
}

- (instancetype)initWithJavaUtilIterator:(id<JavaUtilIterator>)capture$0 {
  val$it_ = capture$0;
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "hasNext", NULL, "Z", 0x1, NULL },
    { "next", NULL, "Ljava.lang.Object;", 0x1, NULL },
    { "remove", NULL, "V", 0x1, NULL },
    { "initWithJavaUtilIterator:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$it_", NULL, 0x1012, "Ljava.util.Iterator;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpImplXMPNode_$1 = { "$1", "com.itextpdf.xmp.impl", "XMPNode", 0x8000, 4, methods, 1, fields, 0, NULL};
  return &_ComItextpdfXmpImplXMPNode_$1;
}

@end