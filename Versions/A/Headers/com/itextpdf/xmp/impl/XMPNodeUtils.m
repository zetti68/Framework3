//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPNodeUtils.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPNodeUtils.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/xmp/XMPConst.h"
#include "com/itextpdf/xmp/XMPDateTime.h"
#include "com/itextpdf/xmp/XMPDateTimeFactory.h"
#include "com/itextpdf/xmp/XMPError.h"
#include "com/itextpdf/xmp/XMPException.h"
#include "com/itextpdf/xmp/XMPMetaFactory.h"
#include "com/itextpdf/xmp/XMPSchemaRegistry.h"
#include "com/itextpdf/xmp/XMPUtils.h"
#include "com/itextpdf/xmp/impl/Utils.h"
#include "com/itextpdf/xmp/impl/XMPNode.h"
#include "com/itextpdf/xmp/impl/XMPNodeUtils.h"
#include "com/itextpdf/xmp/impl/xpath/XMPPath.h"
#include "com/itextpdf/xmp/impl/xpath/XMPPathSegment.h"
#include "com/itextpdf/xmp/options/AliasOptions.h"
#include "com/itextpdf/xmp/options/PropertyOptions.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NumberFormatException.h"
#include "java/util/GregorianCalendar.h"
#include "java/util/Iterator.h"


#line 54
@implementation ComItextpdfXmpImplXMPNodeUtils


#line 73
- (instancetype)init {
  return [super init];
}


#line 93
+ (ComItextpdfXmpImplXMPNode *)findSchemaNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree
                                                              withNSString:(NSString *)namespaceURI
                                                               withBoolean:(jboolean)createNodes {
  
#line 97
  return [ComItextpdfXmpImplXMPNodeUtils findSchemaNodeWithComItextpdfXmpImplXMPNode:tree withNSString:namespaceURI withNSString:nil withBoolean:createNodes];
}


#line 116
+ (ComItextpdfXmpImplXMPNode *)findSchemaNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree
                                                              withNSString:(NSString *)namespaceURI
                                                              withNSString:(NSString *)suggestedPrefix
                                                               withBoolean:(jboolean)createNodes {
  
#line 120
  NSAssert([((ComItextpdfXmpImplXMPNode *) nil_chk(tree)) getParent] == nil, @"com/itextpdf/xmp/impl/XMPNodeUtils.java:120 condition failed: assert tree.getParent() == null;");
  ComItextpdfXmpImplXMPNode *schemaNode = [tree findChildByNameWithNSString:namespaceURI];
  
#line 123
  if (schemaNode == nil && createNodes) {
    
#line 125
    schemaNode = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:namespaceURI withComItextpdfXmpOptionsPropertyOptions:
#line 126
    [((ComItextpdfXmpOptionsPropertyOptions *) [[ComItextpdfXmpOptionsPropertyOptions alloc] init]) setSchemaNodeWithBoolean:
#line 127
    YES]];
    [schemaNode setImplicitWithBoolean:YES];
    
#line 131
    NSString *prefix = [((id<ComItextpdfXmpXMPSchemaRegistry>) nil_chk([ComItextpdfXmpXMPMetaFactory getSchemaRegistry])) getNamespacePrefixWithNSString:namespaceURI];
    if (prefix == nil) {
      
#line 134
      if (suggestedPrefix != nil && ((jint) [suggestedPrefix length]) != 0) {
        
#line 136
        prefix = [((id<ComItextpdfXmpXMPSchemaRegistry>) nil_chk([ComItextpdfXmpXMPMetaFactory getSchemaRegistry])) registerNamespaceWithNSString:namespaceURI withNSString:
#line 137
        suggestedPrefix];
      }
      else {
        
#line 141
        @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Unregistered schema namespace URI" withInt:
#line 142
        ComItextpdfXmpXMPError_BADSCHEMA];
      }
    }
    
#line 146
    [schemaNode setValueWithNSString:prefix];
    
#line 148
    [tree addChildWithComItextpdfXmpImplXMPNode:schemaNode];
  }
  
#line 151
  return schemaNode;
}

+ (ComItextpdfXmpImplXMPNode *)findChildNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)parent
                                                             withNSString:(NSString *)childName
                                                              withBoolean:(jboolean)createNodes {
  
#line 171
  if (![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(parent)) getOptions])) isSchemaNode] && ![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([parent getOptions])) isStruct]) {
    
#line 173
    if (![parent isImplicit]) {
      
#line 175
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Named children only allowed for schemas and structs" withInt:
#line 176
      ComItextpdfXmpXMPError_BADXPATH];
    }
    else if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([parent getOptions])) isArray]) {
      
#line 180
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Named children not allowed for arrays" withInt:
#line 181
      ComItextpdfXmpXMPError_BADXPATH];
    }
    else if (createNodes) {
      
#line 185
      (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([parent getOptions])) setStructWithBoolean:YES];
    }
  }
  
#line 189
  ComItextpdfXmpImplXMPNode *childNode = [parent findChildByNameWithNSString:childName];
  
#line 191
  if (childNode == nil && createNodes) {
    
#line 193
    ComItextpdfXmpOptionsPropertyOptions *options = [[ComItextpdfXmpOptionsPropertyOptions alloc] init];
    childNode = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:childName withComItextpdfXmpOptionsPropertyOptions:options];
    [childNode setImplicitWithBoolean:YES];
    [parent addChildWithComItextpdfXmpImplXMPNode:childNode];
  }
  
#line 199
  NSAssert(childNode != nil || !createNodes, @"com/itextpdf/xmp/impl/XMPNodeUtils.java:199 condition failed: assert childNode != null ||  !createNodes;");
  
#line 201
  return childNode;
}


#line 218
+ (ComItextpdfXmpImplXMPNode *)findNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)xmpTree
                                  withComItextpdfXmpImplXpathXMPPath:(ComItextpdfXmpImplXpathXMPPath *)xpath
                                                         withBoolean:(jboolean)createNodes
                            withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)leafOptions {
  
#line 222
  if (xpath == nil || [xpath size] == 0) {
    
#line 224
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Empty XMPPath" withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
  
#line 229
  ComItextpdfXmpImplXMPNode *rootImplicitNode = nil;
  ComItextpdfXmpImplXMPNode *currNode = nil;
  
#line 233
  currNode = [ComItextpdfXmpImplXMPNodeUtils findSchemaNodeWithComItextpdfXmpImplXMPNode:xmpTree withNSString:
#line 234
  [((ComItextpdfXmpImplXpathXMPPathSegment *) nil_chk([((ComItextpdfXmpImplXpathXMPPath *) nil_chk(xpath)) getSegmentWithInt:ComItextpdfXmpImplXpathXMPPath_STEP_SCHEMA])) getName] withBoolean:createNodes];
  if (currNode == nil) {
    
#line 237
    return nil;
  }
  else if ([currNode isImplicit]) {
    
#line 241
    [currNode setImplicitWithBoolean:NO];
    rootImplicitNode = currNode;
  }
  
#line 247
  @try {
    
#line 249
    for (jint i = 1; i < [xpath size]; i++) {
      
#line 251
      currNode = [ComItextpdfXmpImplXMPNodeUtils followXPathStepWithComItextpdfXmpImplXMPNode:currNode withComItextpdfXmpImplXpathXMPPathSegment:[xpath getSegmentWithInt:i] withBoolean:createNodes];
      if (currNode == nil) {
        
#line 254
        if (createNodes) {
          
#line 257
          [ComItextpdfXmpImplXMPNodeUtils deleteNodeWithComItextpdfXmpImplXMPNode:rootImplicitNode];
        }
        return nil;
      }
      else if ([currNode isImplicit]) {
        
#line 264
        [currNode setImplicitWithBoolean:NO];
        
#line 268
        if (i == 1 &&
#line 269
        [((ComItextpdfXmpImplXpathXMPPathSegment *) nil_chk([xpath getSegmentWithInt:i])) isAlias] &&
#line 270
        [((ComItextpdfXmpImplXpathXMPPathSegment *) nil_chk([xpath getSegmentWithInt:i])) getAliasForm] != 0) {
          
#line 272
          [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([currNode getOptions])) setOptionWithInt:[((ComItextpdfXmpImplXpathXMPPathSegment *) nil_chk([xpath getSegmentWithInt:i])) getAliasForm] withBoolean:YES];
        }
        else
#line 275
        if (i < [xpath size] - 1 &&
#line 276
        [((ComItextpdfXmpImplXpathXMPPathSegment *) nil_chk([xpath getSegmentWithInt:i])) getKind] == ComItextpdfXmpImplXpathXMPPath_STRUCT_FIELD_STEP &&
#line 277
        ![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([currNode getOptions])) isCompositeProperty]) {
          
#line 279
          (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([currNode getOptions])) setStructWithBoolean:YES];
        }
        
#line 282
        if (rootImplicitNode == nil) {
          
#line 284
          rootImplicitNode = currNode;
        }
      }
    }
  }
  @catch (ComItextpdfXmpXMPException *e) {
    
#line 292
    if (rootImplicitNode != nil) {
      
#line 294
      [ComItextpdfXmpImplXMPNodeUtils deleteNodeWithComItextpdfXmpImplXMPNode:rootImplicitNode];
    }
    @throw e;
  }
  
#line 300
  if (rootImplicitNode != nil) {
    
#line 303
    [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(currNode)) getOptions])) mergeWithWithComItextpdfXmpOptionsPropertyOptions:leafOptions];
    [currNode setOptionsWithComItextpdfXmpOptionsPropertyOptions:[currNode getOptions]];
  }
  
#line 307
  return currNode;
}


#line 316
+ (void)deleteNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)node {
  
#line 318
  ComItextpdfXmpImplXMPNode *parent = [((ComItextpdfXmpImplXMPNode *) nil_chk(node)) getParent];
  
#line 320
  if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([node getOptions])) isQualifier]) {
    
#line 323
    [((ComItextpdfXmpImplXMPNode *) nil_chk(parent)) removeQualifierWithComItextpdfXmpImplXMPNode:node];
  }
  else {
    
#line 328
    [((ComItextpdfXmpImplXMPNode *) nil_chk(parent)) removeChildWithComItextpdfXmpImplXMPNode:node];
  }
  
#line 332
  if (![((ComItextpdfXmpImplXMPNode *) nil_chk(parent)) hasChildren] && [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([parent getOptions])) isSchemaNode]) {
    
#line 334
    [((ComItextpdfXmpImplXMPNode *) nil_chk([parent getParent])) removeChildWithComItextpdfXmpImplXMPNode:parent];
  }
}


#line 345
+ (void)setNodeValueWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)node
                                           withId:(id)value {
  
#line 347
  NSString *strValue = [ComItextpdfXmpImplXMPNodeUtils serializeNodeValueWithId:value];
  if (!([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(node)) getOptions])) isQualifier] && [((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_XML_LANG_())) isEqual:[node getName]])) {
    
#line 350
    [node setValueWithNSString:strValue];
  }
  else {
    
#line 354
    [node setValueWithNSString:[ComItextpdfXmpImplUtils normalizeLangValueWithNSString:strValue]];
  }
}


#line 368
+ (ComItextpdfXmpOptionsPropertyOptions *)verifySetOptionsWithComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options
                                                                                            withId:(id)itemValue {
  
#line 372
  if (options == nil) {
    
#line 375
    options = [[ComItextpdfXmpOptionsPropertyOptions alloc] init];
  }
  
#line 378
  if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk(options)) isArrayAltText]) {
    
#line 380
    (void) [options setArrayAlternateWithBoolean:YES];
  }
  
#line 383
  if ([options isArrayAlternate]) {
    
#line 385
    (void) [options setArrayOrderedWithBoolean:YES];
  }
  
#line 388
  if ([options isArrayOrdered]) {
    
#line 390
    (void) [options setArrayWithBoolean:YES];
  }
  
#line 393
  if ([options isCompositeProperty] && itemValue != nil && ((jint) [((NSString *) nil_chk([itemValue description])) length]) > 0) {
    
#line 395
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Structs and arrays can't have values" withInt:
#line 396
    ComItextpdfXmpXMPError_BADOPTIONS];
  }
  
#line 399
  [options assertConsistencyWithInt:[options getOptions]];
  
#line 401
  return options;
}


#line 413
+ (NSString *)serializeNodeValueWithId:(id)value {
  NSString *strValue;
  if (value == nil) {
    
#line 418
    strValue = nil;
  }
  else if ([value isKindOfClass:[JavaLangBoolean class]]) {
    
#line 422
    strValue = [ComItextpdfXmpXMPUtils convertFromBooleanWithBoolean:[((JavaLangBoolean *) check_class_cast(value, [JavaLangBoolean class])) booleanValue]];
  }
  else if ([value isKindOfClass:[JavaLangInteger class]]) {
    
#line 426
    strValue = [ComItextpdfXmpXMPUtils convertFromIntegerWithInt:[((JavaLangInteger *) check_class_cast(value, [JavaLangInteger class])) intValue]];
  }
  else if ([value isKindOfClass:[JavaLangLong class]]) {
    
#line 430
    strValue = [ComItextpdfXmpXMPUtils convertFromLongWithLong:[((JavaLangLong *) check_class_cast(value, [JavaLangLong class])) longLongValue]];
  }
  else if ([value isKindOfClass:[JavaLangDouble class]]) {
    
#line 434
    strValue = [ComItextpdfXmpXMPUtils convertFromDoubleWithDouble:[((JavaLangDouble *) check_class_cast(value, [JavaLangDouble class])) doubleValue]];
  }
  else if ([value conformsToProtocol: @protocol(ComItextpdfXmpXMPDateTime)]) {
    
#line 438
    strValue = [ComItextpdfXmpXMPUtils convertFromDateWithComItextpdfXmpXMPDateTime:(id<ComItextpdfXmpXMPDateTime>) check_protocol_cast(value, @protocol(ComItextpdfXmpXMPDateTime))];
  }
  else if ([value isKindOfClass:[JavaUtilGregorianCalendar class]]) {
    
#line 442
    id<ComItextpdfXmpXMPDateTime> dt = [ComItextpdfXmpXMPDateTimeFactory createFromCalendarWithJavaUtilCalendar:(JavaUtilGregorianCalendar *) check_class_cast(value, [JavaUtilGregorianCalendar class])];
    strValue = [ComItextpdfXmpXMPUtils convertFromDateWithComItextpdfXmpXMPDateTime:dt];
  }
  else if ([value isKindOfClass:[IOSByteArray class]]) {
    
#line 447
    strValue = [ComItextpdfXmpXMPUtils encodeBase64WithByteArray:(IOSByteArray *) check_class_cast(value, [IOSByteArray class])];
  }
  else {
    
#line 451
    strValue = [value description];
  }
  
#line 454
  return strValue != nil ? [ComItextpdfXmpImplUtils removeControlCharsWithNSString:strValue] : nil;
}


#line 476
+ (ComItextpdfXmpImplXMPNode *)followXPathStepWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)parentNode
                                  withComItextpdfXmpImplXpathXMPPathSegment:(ComItextpdfXmpImplXpathXMPPathSegment *)nextStep
                                                                withBoolean:(jboolean)createNodes {
  
#line 481
  ComItextpdfXmpImplXMPNode *nextNode = nil;
  jint index = 0;
  jint stepKind = [((ComItextpdfXmpImplXpathXMPPathSegment *) nil_chk(nextStep)) getKind];
  
#line 485
  if (stepKind == ComItextpdfXmpImplXpathXMPPath_STRUCT_FIELD_STEP) {
    
#line 487
    nextNode = [ComItextpdfXmpImplXMPNodeUtils findChildNodeWithComItextpdfXmpImplXMPNode:parentNode withNSString:[nextStep getName] withBoolean:createNodes];
  }
  else if (stepKind == ComItextpdfXmpImplXpathXMPPath_QUALIFIER_STEP) {
    
#line 491
    nextNode = [ComItextpdfXmpImplXMPNodeUtils findQualifierNodeWithComItextpdfXmpImplXMPNode:
#line 492
    parentNode withNSString:[((NSString *) nil_chk([nextStep getName])) substring:1] withBoolean:createNodes];
  }
  else {
    
#line 498
    if (![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(parentNode)) getOptions])) isArray]) {
      
#line 500
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Indexing applied to non-array" withInt:ComItextpdfXmpXMPError_BADXPATH];
    }
    
#line 503
    if (stepKind == ComItextpdfXmpImplXpathXMPPath_ARRAY_INDEX_STEP) {
      
#line 505
      index = [ComItextpdfXmpImplXMPNodeUtils findIndexedItemWithComItextpdfXmpImplXMPNode:parentNode withNSString:[nextStep getName] withBoolean:createNodes];
    }
    else if (stepKind == ComItextpdfXmpImplXpathXMPPath_ARRAY_LAST_STEP) {
      
#line 509
      index = [parentNode getChildrenLength];
    }
    else if (stepKind == ComItextpdfXmpImplXpathXMPPath_FIELD_SELECTOR_STEP) {
      
#line 513
      IOSObjectArray *result = [ComItextpdfXmpImplUtils splitNameAndValueWithNSString:[nextStep getName]];
      NSString *fieldName = IOSObjectArray_Get(nil_chk(result), 0);
      NSString *fieldValue = IOSObjectArray_Get(result, 1);
      index = [ComItextpdfXmpImplXMPNodeUtils lookupFieldSelectorWithComItextpdfXmpImplXMPNode:parentNode withNSString:fieldName withNSString:fieldValue];
    }
    else if (stepKind == ComItextpdfXmpImplXpathXMPPath_QUAL_SELECTOR_STEP) {
      
#line 520
      IOSObjectArray *result = [ComItextpdfXmpImplUtils splitNameAndValueWithNSString:[nextStep getName]];
      NSString *qualName = IOSObjectArray_Get(nil_chk(result), 0);
      NSString *qualValue = IOSObjectArray_Get(result, 1);
      index = [ComItextpdfXmpImplXMPNodeUtils lookupQualSelectorWithComItextpdfXmpImplXMPNode:
#line 524
      parentNode withNSString:qualName withNSString:qualValue withInt:[nextStep getAliasForm]];
    }
    else {
      
#line 528
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Unknown array indexing step in FollowXPathStep" withInt:
#line 529
      ComItextpdfXmpXMPError_INTERNALFAILURE];
    }
    
#line 532
    if (1 <= index && index <= [parentNode getChildrenLength]) {
      
#line 534
      nextNode = [parentNode getChildWithInt:index];
    }
  }
  
#line 538
  return nextNode;
}

+ (ComItextpdfXmpImplXMPNode *)findQualifierNodeWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)parent
                                                                 withNSString:(NSString *)qualName
                                                                  withBoolean:(jboolean)createNodes {
  
#line 559
  NSAssert(![((NSString *) nil_chk(qualName)) hasPrefix:@"?"], @"com/itextpdf/xmp/impl/XMPNodeUtils.java:559 condition failed: assert !qualName.startsWith(\"?\");");
  
#line 561
  ComItextpdfXmpImplXMPNode *qualNode = [((ComItextpdfXmpImplXMPNode *) nil_chk(parent)) findQualifierByNameWithNSString:qualName];
  
#line 563
  if (qualNode == nil && createNodes) {
    
#line 565
    qualNode = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:qualName withComItextpdfXmpOptionsPropertyOptions:nil];
    [qualNode setImplicitWithBoolean:YES];
    
#line 568
    [parent addQualifierWithComItextpdfXmpImplXMPNode:qualNode];
  }
  
#line 571
  return qualNode;
}


#line 582
+ (jint)findIndexedItemWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode
                                        withNSString:(NSString *)segment
                                         withBoolean:(jboolean)createNodes {
  
#line 585
  jint index = 0;
  
#line 587
  @try {
    
#line 589
    segment = [segment substring:1 endIndex:((jint) [((NSString *) nil_chk(segment)) length]) - 1];
    index = [JavaLangInteger parseIntWithNSString:segment];
    if (index < 1) {
      
#line 593
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Array index must be larger than zero" withInt:
#line 594
      ComItextpdfXmpXMPError_BADXPATH];
    }
  }
  @catch (JavaLangNumberFormatException *e) {
    
#line 599
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Array index not digits." withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
  
#line 602
  if (createNodes && index == [((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) getChildrenLength] + 1) {
    
#line 605
    ComItextpdfXmpImplXMPNode *newItem = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:ComItextpdfXmpXMPConst_get_ARRAY_ITEM_NAME_() withComItextpdfXmpOptionsPropertyOptions:nil];
    [newItem setImplicitWithBoolean:YES];
    [arrayNode addChildWithComItextpdfXmpImplXMPNode:newItem];
  }
  
#line 610
  return index;
}


#line 625
+ (jint)lookupFieldSelectorWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode
                                            withNSString:(NSString *)fieldName
                                            withNSString:(NSString *)fieldValue {
  
#line 628
  jint result = -1;
  
#line 630
  for (jint index = 1; index <= [((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) getChildrenLength] && result < 0; index++) {
    
#line 632
    ComItextpdfXmpImplXMPNode *currItem = [arrayNode getChildWithInt:index];
    
#line 634
    if (![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(currItem)) getOptions])) isStruct]) {
      
#line 636
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Field selector must be used on array of struct" withInt:
#line 637
      ComItextpdfXmpXMPError_BADXPATH];
    }
    
#line 640
    for (jint f = 1; f <= [currItem getChildrenLength]; f++) {
      
#line 642
      ComItextpdfXmpImplXMPNode *currField = [currItem getChildWithInt:f];
      if (![((NSString *) nil_chk(fieldName)) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk(currField)) getName]]) {
        
#line 645
        continue;
      }
      if ([((NSString *) nil_chk(fieldValue)) isEqual:[currField getValue]]) {
        
#line 649
        result = index;
        break;
      }
    }
  }
  
#line 655
  return result;
}


#line 673
+ (jint)lookupQualSelectorWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode
                                           withNSString:(NSString *)qualName
                                           withNSString:(NSString *)qualValue
                                                withInt:(jint)aliasForm {
  
#line 676
  if ([((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_XML_LANG_())) isEqual:qualName]) {
    
#line 678
    qualValue = [ComItextpdfXmpImplUtils normalizeLangValueWithNSString:qualValue];
    jint index = [ComItextpdfXmpImplXMPNodeUtils lookupLanguageItemWithComItextpdfXmpImplXMPNode:arrayNode withNSString:qualValue];
    if (index < 0 && (aliasForm & ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALT_TEXT) > 0) {
      
#line 682
      ComItextpdfXmpImplXMPNode *langNode = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:ComItextpdfXmpXMPConst_get_ARRAY_ITEM_NAME_() withComItextpdfXmpOptionsPropertyOptions:nil];
      ComItextpdfXmpImplXMPNode *xdefault = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:ComItextpdfXmpXMPConst_get_XML_LANG_() withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_() withComItextpdfXmpOptionsPropertyOptions:nil];
      [langNode addQualifierWithComItextpdfXmpImplXMPNode:xdefault];
      [((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) addChildWithInt:1 withComItextpdfXmpImplXMPNode:langNode];
      return 1;
    }
    else {
      
#line 690
      return index;
    }
  }
  else {
    
#line 695
    for (jint index = 1; index < [((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) getChildrenLength]; index++) {
      
#line 697
      ComItextpdfXmpImplXMPNode *currItem = [arrayNode getChildWithInt:index];
      
#line 699
      for (id<JavaUtilIterator> it = [((ComItextpdfXmpImplXMPNode *) nil_chk(currItem)) iterateQualifier]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
        
#line 701
        ComItextpdfXmpImplXMPNode *qualifier = (ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class]);
        if ([((NSString *) nil_chk(qualName)) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk(qualifier)) getName]] &&
#line 703
        [((NSString *) nil_chk(qualValue)) isEqual:[qualifier getValue]]) {
          
#line 705
          return index;
        }
      }
    }
    return -1;
  }
}


#line 724
+ (void)normalizeLangArrayWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode {
  
#line 726
  if (![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) getOptions])) isArrayAltText]) {
    
#line 728
    return;
  }
  
#line 732
  for (jint i = 2; i <= [arrayNode getChildrenLength]; i++) {
    
#line 734
    ComItextpdfXmpImplXMPNode *child = [arrayNode getChildWithInt:i];
    if ([((ComItextpdfXmpImplXMPNode *) nil_chk(child)) hasQualifier] && [((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_X_DEFAULT_())) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk([child getQualifierWithInt:1])) getValue]]) {
      
#line 738
      @try {
        
#line 740
        [arrayNode removeChildWithInt:i];
        [arrayNode addChildWithInt:1 withComItextpdfXmpImplXMPNode:child];
      }
      @catch (ComItextpdfXmpXMPException *e) {
        
#line 746
        NSAssert(NO, @"com/itextpdf/xmp/impl/XMPNodeUtils.java:746 condition failed: assert false;");
      }
      
#line 749
      if (i == 2) {
        
#line 751
        [((ComItextpdfXmpImplXMPNode *) nil_chk([arrayNode getChildWithInt:2])) setValueWithNSString:[child getValue]];
      }
      break;
    }
  }
}


#line 766
+ (void)detectAltTextWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode {
  
#line 768
  if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) getOptions])) isArrayAlternate] && [arrayNode hasChildren]) {
    
#line 770
    jboolean isAltText = NO;
    for (id<JavaUtilIterator> it = [arrayNode iterateChildren]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
      
#line 773
      ComItextpdfXmpImplXMPNode *child = (ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class]);
      if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(child)) getOptions])) getHasLanguage]) {
        
#line 776
        isAltText = YES;
        break;
      }
    }
    
#line 781
    if (isAltText) {
      
#line 783
      (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([arrayNode getOptions])) setArrayAltTextWithBoolean:YES];
      [ComItextpdfXmpImplXMPNodeUtils normalizeLangArrayWithComItextpdfXmpImplXMPNode:arrayNode];
    }
  }
}


#line 798
+ (void)appendLangItemWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode
                                       withNSString:(NSString *)itemLang
                                       withNSString:(NSString *)itemValue {
  
#line 801
  ComItextpdfXmpImplXMPNode *newItem = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:ComItextpdfXmpXMPConst_get_ARRAY_ITEM_NAME_() withNSString:itemValue withComItextpdfXmpOptionsPropertyOptions:nil];
  ComItextpdfXmpImplXMPNode *langQual = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:ComItextpdfXmpXMPConst_get_XML_LANG_() withNSString:itemLang withComItextpdfXmpOptionsPropertyOptions:nil];
  [newItem addQualifierWithComItextpdfXmpImplXMPNode:langQual];
  
#line 805
  if (![((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_X_DEFAULT_())) isEqual:[langQual getValue]]) {
    
#line 807
    [((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) addChildWithComItextpdfXmpImplXMPNode:newItem];
  }
  else {
    
#line 811
    [((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) addChildWithInt:1 withComItextpdfXmpImplXMPNode:newItem];
  }
}


#line 835
+ (IOSObjectArray *)chooseLocalizedTextWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode
                                                        withNSString:(NSString *)genericLang
                                                        withNSString:(NSString *)specificLang {
  
#line 840
  if (![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) getOptions])) isArrayAltText]) {
    
#line 842
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Localized text array is not alt-text" withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
  else if (![arrayNode hasChildren]) {
    
#line 846
    return [IOSObjectArray arrayWithObjects:(id[]){ [[JavaLangInteger alloc] initWithInt:ComItextpdfXmpImplXMPNodeUtils_CLT_NO_VALUES], nil } count:2 type:[IOSClass classWithClass:[NSObject class]]];
  }
  
#line 849
  jint foundGenericMatches = 0;
  ComItextpdfXmpImplXMPNode *resultNode = nil;
  ComItextpdfXmpImplXMPNode *xDefault = nil;
  
#line 854
  for (id<JavaUtilIterator> it = [arrayNode iterateChildren]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
    
#line 856
    ComItextpdfXmpImplXMPNode *currItem = (ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class]);
    
#line 859
    if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(currItem)) getOptions])) isCompositeProperty]) {
      
#line 861
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Alt-text array item is not simple" withInt:ComItextpdfXmpXMPError_BADXPATH];
    }
    else if (![currItem hasQualifier] ||
#line 864
    ![((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_XML_LANG_())) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk([currItem getQualifierWithInt:1])) getName]]) {
      
#line 866
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Alt-text array item has no language qualifier" withInt:
#line 867
      ComItextpdfXmpXMPError_BADXPATH];
    }
    
#line 870
    NSString *currLang = [((ComItextpdfXmpImplXMPNode *) nil_chk([currItem getQualifierWithInt:1])) getValue];
    
#line 873
    if ([((NSString *) nil_chk(specificLang)) isEqual:currLang]) {
      
#line 875
      return [IOSObjectArray arrayWithObjects:(id[]){ [[JavaLangInteger alloc] initWithInt:ComItextpdfXmpImplXMPNodeUtils_CLT_SPECIFIC_MATCH], currItem } count:2 type:[IOSClass classWithClass:[NSObject class]]];
    }
    else if (genericLang != nil && [((NSString *) nil_chk(currLang)) hasPrefix:genericLang]) {
      
#line 879
      if (resultNode == nil) {
        
#line 881
        resultNode = currItem;
      }
      
#line 884
      foundGenericMatches++;
    }
    else if ([((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_X_DEFAULT_())) isEqual:currLang]) {
      
#line 888
      xDefault = currItem;
    }
  }
  
#line 893
  if (foundGenericMatches == 1) {
    
#line 895
    return [IOSObjectArray arrayWithObjects:(id[]){ [[JavaLangInteger alloc] initWithInt:ComItextpdfXmpImplXMPNodeUtils_CLT_SINGLE_GENERIC], resultNode } count:2 type:[IOSClass classWithClass:[NSObject class]]];
  }
  else if (foundGenericMatches > 1) {
    
#line 899
    return [IOSObjectArray arrayWithObjects:(id[]){ [[JavaLangInteger alloc] initWithInt:ComItextpdfXmpImplXMPNodeUtils_CLT_MULTIPLE_GENERIC], resultNode } count:2 type:[IOSClass classWithClass:[NSObject class]]];
  }
  else if (xDefault != nil) {
    
#line 903
    return [IOSObjectArray arrayWithObjects:(id[]){ [[JavaLangInteger alloc] initWithInt:ComItextpdfXmpImplXMPNodeUtils_CLT_XDEFAULT], xDefault } count:2 type:[IOSClass classWithClass:[NSObject class]]];
  }
  else {
    
#line 908
    return [IOSObjectArray arrayWithObjects:(id[]){ [[JavaLangInteger alloc] initWithInt:ComItextpdfXmpImplXMPNodeUtils_CLT_FIRST_ITEM], [arrayNode getChildWithInt:1] } count:2 type:[IOSClass classWithClass:[NSObject class]]];
  }
}


#line 923
+ (jint)lookupLanguageItemWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode
                                           withNSString:(NSString *)language {
  
#line 925
  if (![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) getOptions])) isArray]) {
    
#line 927
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Language item must be used on array" withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
  
#line 930
  for (jint index = 1; index <= [arrayNode getChildrenLength]; index++) {
    
#line 932
    ComItextpdfXmpImplXMPNode *child = [arrayNode getChildWithInt:index];
    if (![((ComItextpdfXmpImplXMPNode *) nil_chk(child)) hasQualifier] || ![((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_XML_LANG_())) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk([child getQualifierWithInt:1])) getName]]) {
      
#line 935
      continue;
    }
    else if ([((NSString *) nil_chk(language)) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk([child getQualifierWithInt:1])) getValue]]) {
      
#line 939
      return index;
    }
  }
  
#line 943
  return -1;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "XMPNodeUtils", NULL, 0x2, NULL },
    { "findSchemaNodeWithComItextpdfXmpImplXMPNode:withNSString:withBoolean:", "findSchemaNode", "Lcom.itextpdf.xmp.impl.XMPNode;", 0x8, "Lcom.itextpdf.xmp.XMPException;" },
    { "findSchemaNodeWithComItextpdfXmpImplXMPNode:withNSString:withNSString:withBoolean:", "findSchemaNode", "Lcom.itextpdf.xmp.impl.XMPNode;", 0x8, "Lcom.itextpdf.xmp.XMPException;" },
    { "findChildNodeWithComItextpdfXmpImplXMPNode:withNSString:withBoolean:", "findChildNode", "Lcom.itextpdf.xmp.impl.XMPNode;", 0x8, "Lcom.itextpdf.xmp.XMPException;" },
    { "findNodeWithComItextpdfXmpImplXMPNode:withComItextpdfXmpImplXpathXMPPath:withBoolean:withComItextpdfXmpOptionsPropertyOptions:", "findNode", "Lcom.itextpdf.xmp.impl.XMPNode;", 0x8, "Lcom.itextpdf.xmp.XMPException;" },
    { "deleteNodeWithComItextpdfXmpImplXMPNode:", "deleteNode", "V", 0x8, NULL },
    { "setNodeValueWithComItextpdfXmpImplXMPNode:withId:", "setNodeValue", "V", 0x8, NULL },
    { "verifySetOptionsWithComItextpdfXmpOptionsPropertyOptions:withId:", "verifySetOptions", "Lcom.itextpdf.xmp.options.PropertyOptions;", 0x8, "Lcom.itextpdf.xmp.XMPException;" },
    { "serializeNodeValueWithId:", "serializeNodeValue", "Ljava.lang.String;", 0x8, NULL },
    { "followXPathStepWithComItextpdfXmpImplXMPNode:withComItextpdfXmpImplXpathXMPPathSegment:withBoolean:", "followXPathStep", "Lcom.itextpdf.xmp.impl.XMPNode;", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "findQualifierNodeWithComItextpdfXmpImplXMPNode:withNSString:withBoolean:", "findQualifierNode", "Lcom.itextpdf.xmp.impl.XMPNode;", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "findIndexedItemWithComItextpdfXmpImplXMPNode:withNSString:withBoolean:", "findIndexedItem", "I", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "lookupFieldSelectorWithComItextpdfXmpImplXMPNode:withNSString:withNSString:", "lookupFieldSelector", "I", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "lookupQualSelectorWithComItextpdfXmpImplXMPNode:withNSString:withNSString:withInt:", "lookupQualSelector", "I", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "normalizeLangArrayWithComItextpdfXmpImplXMPNode:", "normalizeLangArray", "V", 0x8, NULL },
    { "detectAltTextWithComItextpdfXmpImplXMPNode:", "detectAltText", "V", 0x8, NULL },
    { "appendLangItemWithComItextpdfXmpImplXMPNode:withNSString:withNSString:", "appendLangItem", "V", 0x8, "Lcom.itextpdf.xmp.XMPException;" },
    { "chooseLocalizedTextWithComItextpdfXmpImplXMPNode:withNSString:withNSString:", "chooseLocalizedText", "[Ljava.lang.Object;", 0x8, "Lcom.itextpdf.xmp.XMPException;" },
    { "lookupLanguageItemWithComItextpdfXmpImplXMPNode:withNSString:", "lookupLanguageItem", "I", 0x8, "Lcom.itextpdf.xmp.XMPException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CLT_NO_VALUES_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfXmpImplXMPNodeUtils_CLT_NO_VALUES },
    { "CLT_SPECIFIC_MATCH_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfXmpImplXMPNodeUtils_CLT_SPECIFIC_MATCH },
    { "CLT_SINGLE_GENERIC_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfXmpImplXMPNodeUtils_CLT_SINGLE_GENERIC },
    { "CLT_MULTIPLE_GENERIC_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfXmpImplXMPNodeUtils_CLT_MULTIPLE_GENERIC },
    { "CLT_XDEFAULT_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfXmpImplXMPNodeUtils_CLT_XDEFAULT },
    { "CLT_FIRST_ITEM_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfXmpImplXMPNodeUtils_CLT_FIRST_ITEM },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpImplXMPNodeUtils = { "XMPNodeUtils", "com.itextpdf.xmp.impl", NULL, 0x1, 19, methods, 6, fields, 0, NULL};
  return &_ComItextpdfXmpImplXMPNodeUtils;
}

@end