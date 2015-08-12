//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPNormalizer.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPNormalizer.java"

#include "IOSClass.h"
#include "com/itextpdf/xmp/XMPConst.h"
#include "com/itextpdf/xmp/XMPDateTime.h"
#include "com/itextpdf/xmp/XMPError.h"
#include "com/itextpdf/xmp/XMPException.h"
#include "com/itextpdf/xmp/XMPMeta.h"
#include "com/itextpdf/xmp/XMPMetaFactory.h"
#include "com/itextpdf/xmp/XMPSchemaRegistry.h"
#include "com/itextpdf/xmp/XMPUtils.h"
#include "com/itextpdf/xmp/impl/Utils.h"
#include "com/itextpdf/xmp/impl/XMPDateTimeImpl.h"
#include "com/itextpdf/xmp/impl/XMPMetaImpl.h"
#include "com/itextpdf/xmp/impl/XMPNode.h"
#include "com/itextpdf/xmp/impl/XMPNodeUtils.h"
#include "com/itextpdf/xmp/impl/XMPNormalizer.h"
#include "com/itextpdf/xmp/impl/xpath/XMPPath.h"
#include "com/itextpdf/xmp/impl/xpath/XMPPathParser.h"
#include "com/itextpdf/xmp/options/AliasOptions.h"
#include "com/itextpdf/xmp/options/ParseOptions.h"
#include "com/itextpdf/xmp/options/PropertyOptions.h"
#include "com/itextpdf/xmp/properties/XMPAliasInfo.h"
#include "java/util/Calendar.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"

BOOL ComItextpdfXmpImplXMPNormalizer_initialized = NO;


#line 54
@implementation ComItextpdfXmpImplXMPNormalizer

id<JavaUtilMap> ComItextpdfXmpImplXMPNormalizer_dcArrayForms_;


#line 68
- (instancetype)init {
  return [super init];
}


#line 81
+ (id<ComItextpdfXmpXMPMeta>)processWithComItextpdfXmpImplXMPMetaImpl:(ComItextpdfXmpImplXMPMetaImpl *)xmp
                                withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options {
  
#line 83
  ComItextpdfXmpImplXMPNode *tree = [((ComItextpdfXmpImplXMPMetaImpl *) nil_chk(xmp)) getRoot];
  
#line 85
  [ComItextpdfXmpImplXMPNormalizer touchUpDataModelWithComItextpdfXmpImplXMPMetaImpl:xmp];
  [ComItextpdfXmpImplXMPNormalizer moveExplicitAliasesWithComItextpdfXmpImplXMPNode:tree withComItextpdfXmpOptionsParseOptions:options];
  
#line 88
  [ComItextpdfXmpImplXMPNormalizer tweakOldXMPWithComItextpdfXmpImplXMPNode:tree];
  
#line 90
  [ComItextpdfXmpImplXMPNormalizer deleteEmptySchemasWithComItextpdfXmpImplXMPNode:tree];
  
#line 92
  return xmp;
}


#line 109
+ (void)tweakOldXMPWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree {
  
#line 111
  if ([((ComItextpdfXmpImplXMPNode *) nil_chk(tree)) getName] != nil && ((jint) [((NSString *) nil_chk([tree getName])) length]) >= ComItextpdfXmpImplUtils_UUID_LENGTH) {
    
#line 113
    NSString *nameStr = [((NSString *) nil_chk([tree getName])) lowercaseString];
    if ([((NSString *) nil_chk(nameStr)) hasPrefix:@"uuid:"]) {
      
#line 116
      nameStr = [nameStr substring:5];
    }
    
#line 119
    if ([ComItextpdfXmpImplUtils checkUUIDFormatWithNSString:nameStr]) {
      
#line 122
      ComItextpdfXmpImplXpathXMPPath *path = [ComItextpdfXmpImplXpathXMPPathParser expandXPathWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_MM_() withNSString:@"InstanceID"];
      ComItextpdfXmpImplXMPNode *idNode = [ComItextpdfXmpImplXMPNodeUtils findNodeWithComItextpdfXmpImplXMPNode:tree withComItextpdfXmpImplXpathXMPPath:path withBoolean:YES withComItextpdfXmpOptionsPropertyOptions:nil];
      if (idNode != nil) {
        
#line 126
        [idNode setOptionsWithComItextpdfXmpOptionsPropertyOptions:nil];
        [idNode setValueWithNSString:JreStrcat("$$", @"uuid:", nameStr)];
        [idNode removeChildren];
        [idNode removeQualifiers];
        [tree setNameWithNSString:nil];
      }
      else {
        
#line 134
        @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Failure creating xmpMM:InstanceID" withInt:
#line 135
        ComItextpdfXmpXMPError_INTERNALFAILURE];
      }
    }
  }
}

+ (void)touchUpDataModelWithComItextpdfXmpImplXMPMetaImpl:(ComItextpdfXmpImplXMPMetaImpl *)xmp {
  
#line 152
  (void) [ComItextpdfXmpImplXMPNodeUtils findSchemaNodeWithComItextpdfXmpImplXMPNode:[((ComItextpdfXmpImplXMPMetaImpl *) nil_chk(xmp)) getRoot] withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withBoolean:YES];
  
#line 155
  for (id<JavaUtilIterator> it = [((ComItextpdfXmpImplXMPNode *) nil_chk([xmp getRoot])) iterateChildren]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
    
#line 157
    ComItextpdfXmpImplXMPNode *currSchema = (ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class]);
    if ([((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_NS_DC_())) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk(currSchema)) getName]]) {
      
#line 160
      [ComItextpdfXmpImplXMPNormalizer normalizeDCArraysWithComItextpdfXmpImplXMPNode:currSchema];
    }
    else if ([((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_NS_EXIF_())) isEqual:[currSchema getName]]) {
      
#line 165
      [ComItextpdfXmpImplXMPNormalizer fixGPSTimeStampWithComItextpdfXmpImplXMPNode:currSchema];
      ComItextpdfXmpImplXMPNode *arrayNode = [ComItextpdfXmpImplXMPNodeUtils findChildNodeWithComItextpdfXmpImplXMPNode:currSchema withNSString:@"exif:UserComment" withBoolean:
#line 167
      NO];
      if (arrayNode != nil) {
        
#line 170
        [ComItextpdfXmpImplXMPNormalizer repairAltTextWithComItextpdfXmpImplXMPNode:arrayNode];
      }
    }
    else if ([((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_NS_DM_())) isEqual:[currSchema getName]]) {
      
#line 177
      ComItextpdfXmpImplXMPNode *dmCopyright = [ComItextpdfXmpImplXMPNodeUtils findChildNodeWithComItextpdfXmpImplXMPNode:currSchema withNSString:@"xmpDM:copyright" withBoolean:
#line 178
      NO];
      if (dmCopyright != nil) {
        
#line 181
        [ComItextpdfXmpImplXMPNormalizer migrateAudioCopyrightWithComItextpdfXmpXMPMeta:xmp withComItextpdfXmpImplXMPNode:dmCopyright];
      }
    }
    else if ([((NSString *) nil_chk(ComItextpdfXmpXMPConst_get_NS_XMP_RIGHTS_())) isEqual:[currSchema getName]]) {
      
#line 186
      ComItextpdfXmpImplXMPNode *arrayNode = [ComItextpdfXmpImplXMPNodeUtils findChildNodeWithComItextpdfXmpImplXMPNode:currSchema withNSString:@"xmpRights:UsageTerms" withBoolean:
#line 187
      NO];
      if (arrayNode != nil) {
        
#line 190
        [ComItextpdfXmpImplXMPNormalizer repairAltTextWithComItextpdfXmpImplXMPNode:arrayNode];
      }
    }
  }
}


#line 207
+ (void)normalizeDCArraysWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)dcSchema {
  
#line 209
  for (jint i = 1; i <= [((ComItextpdfXmpImplXMPNode *) nil_chk(dcSchema)) getChildrenLength]; i++) {
    
#line 211
    ComItextpdfXmpImplXMPNode *currProp = [dcSchema getChildWithInt:i];
    
#line 213
    ComItextpdfXmpOptionsPropertyOptions *arrayForm = (ComItextpdfXmpOptionsPropertyOptions *) check_class_cast([((id<JavaUtilMap>) nil_chk(ComItextpdfXmpImplXMPNormalizer_dcArrayForms_)) getWithId:[((ComItextpdfXmpImplXMPNode *) nil_chk(currProp)) getName]], [ComItextpdfXmpOptionsPropertyOptions class]);
    if (arrayForm == nil) {
      
#line 216
      continue;
    }
    else if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([currProp getOptions])) isSimple]) {
      
#line 222
      ComItextpdfXmpImplXMPNode *newArray = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:[currProp getName] withComItextpdfXmpOptionsPropertyOptions:arrayForm];
      [currProp setNameWithNSString:ComItextpdfXmpXMPConst_get_ARRAY_ITEM_NAME_()];
      [newArray addChildWithComItextpdfXmpImplXMPNode:currProp];
      [dcSchema replaceChildWithInt:i withComItextpdfXmpImplXMPNode:newArray];
      
#line 228
      if ([arrayForm isArrayAltText] && ![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([currProp getOptions])) getHasLanguage]) {
        
#line 230
        ComItextpdfXmpImplXMPNode *newLang = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:ComItextpdfXmpXMPConst_get_XML_LANG_() withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_() withComItextpdfXmpOptionsPropertyOptions:nil];
        [currProp addQualifierWithComItextpdfXmpImplXMPNode:newLang];
      }
    }
    else {
      
#line 237
      [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([currProp getOptions])) setOptionWithInt:
#line 238
      ComItextpdfXmpOptionsPropertyOptions_ARRAY |
#line 239
      ComItextpdfXmpOptionsPropertyOptions_ARRAY_ORDERED |
#line 240
      ComItextpdfXmpOptionsPropertyOptions_ARRAY_ALTERNATE |
#line 241
      ComItextpdfXmpOptionsPropertyOptions_ARRAY_ALT_TEXT withBoolean:
#line 242
      NO];
      [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([currProp getOptions])) mergeWithWithComItextpdfXmpOptionsPropertyOptions:arrayForm];
      
#line 245
      if ([arrayForm isArrayAltText]) {
        
#line 248
        [ComItextpdfXmpImplXMPNormalizer repairAltTextWithComItextpdfXmpImplXMPNode:currProp];
      }
    }
  }
}


#line 263
+ (void)repairAltTextWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)arrayNode {
  
#line 265
  if (arrayNode == nil ||
#line 266
  ![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([arrayNode getOptions])) isArray]) {
    
#line 269
    return;
  }
  
#line 273
  (void) [((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(arrayNode)) getOptions])) setArrayOrderedWithBoolean:YES])) setArrayAlternateWithBoolean:YES])) setArrayAltTextWithBoolean:YES];
  
#line 275
  for (id<JavaUtilIterator> it = [arrayNode iterateChildren]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
    
#line 277
    ComItextpdfXmpImplXMPNode *currChild = (ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class]);
    if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(currChild)) getOptions])) isCompositeProperty]) {
      
#line 281
      [it remove];
    }
    else if (![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([currChild getOptions])) getHasLanguage]) {
      
#line 285
      NSString *childValue = [currChild getValue];
      if (childValue == nil || ((jint) [childValue length]) == 0) {
        
#line 289
        [it remove];
      }
      else {
        
#line 294
        ComItextpdfXmpImplXMPNode *repairLang = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:ComItextpdfXmpXMPConst_get_XML_LANG_() withNSString:@"x-repair" withComItextpdfXmpOptionsPropertyOptions:nil];
        [currChild addQualifierWithComItextpdfXmpImplXMPNode:repairLang];
      }
    }
  }
}


#line 311
+ (void)moveExplicitAliasesWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree
                   withComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options {
  
#line 314
  if (![((ComItextpdfXmpImplXMPNode *) nil_chk(tree)) getHasAliases]) {
    
#line 316
    return;
  }
  [tree setHasAliasesWithBoolean:NO];
  
#line 320
  jboolean strictAliasing = [((ComItextpdfXmpOptionsParseOptions *) nil_chk(options)) getStrictAliasing];
  
#line 322
  for (id<JavaUtilIterator> schemaIt = [((id<JavaUtilList>) nil_chk([tree getUnmodifiableChildren])) iterator]; [((id<JavaUtilIterator>) nil_chk(schemaIt)) hasNext]; ) {
    
#line 324
    ComItextpdfXmpImplXMPNode *currSchema = (ComItextpdfXmpImplXMPNode *) check_class_cast([schemaIt next], [ComItextpdfXmpImplXMPNode class]);
    if (![((ComItextpdfXmpImplXMPNode *) nil_chk(currSchema)) getHasAliases]) {
      
#line 327
      continue;
    }
    
#line 330
    for (id<JavaUtilIterator> propertyIt = [currSchema iterateChildren]; [((id<JavaUtilIterator>) nil_chk(propertyIt)) hasNext]; ) {
      
#line 332
      ComItextpdfXmpImplXMPNode *currProp = (ComItextpdfXmpImplXMPNode *) check_class_cast([propertyIt next], [ComItextpdfXmpImplXMPNode class]);
      
#line 334
      if (![((ComItextpdfXmpImplXMPNode *) nil_chk(currProp)) isAlias]) {
        
#line 336
        continue;
      }
      
#line 339
      [currProp setAliasWithBoolean:NO];
      
#line 342
      id<ComItextpdfXmpPropertiesXMPAliasInfo> info = [((id<ComItextpdfXmpXMPSchemaRegistry>) nil_chk([ComItextpdfXmpXMPMetaFactory getSchemaRegistry])) findAliasWithNSString:
#line 343
      [currProp getName]];
      if (info != nil) {
        
#line 347
        ComItextpdfXmpImplXMPNode *baseSchema = [ComItextpdfXmpImplXMPNodeUtils findSchemaNodeWithComItextpdfXmpImplXMPNode:tree withNSString:[info getNamespace] withNSString:
#line 348
        nil withBoolean:YES];
        [((ComItextpdfXmpImplXMPNode *) nil_chk(baseSchema)) setImplicitWithBoolean:NO];
        
#line 351
        ComItextpdfXmpImplXMPNode *baseNode = [ComItextpdfXmpImplXMPNodeUtils findChildNodeWithComItextpdfXmpImplXMPNode:
#line 352
        baseSchema withNSString:JreStrcat("$$",
#line 353
        [info getPrefix], [info getPropName]) withBoolean:NO];
        if (baseNode == nil) {
          
#line 356
          if ([((ComItextpdfXmpOptionsAliasOptions *) nil_chk([info getAliasForm])) isSimple]) {
            
#line 360
            NSString *qname = JreStrcat("$$", [info getPrefix], [info getPropName]);
            [currProp setNameWithNSString:qname];
            [baseSchema addChildWithComItextpdfXmpImplXMPNode:currProp];
            
#line 364
            [propertyIt remove];
          }
          else {
            
#line 370
            baseNode = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:JreStrcat("$$", [info getPrefix], [info getPropName]) withComItextpdfXmpOptionsPropertyOptions:[((ComItextpdfXmpOptionsAliasOptions *) nil_chk([info getAliasForm])) toPropertyOptions]];
            
#line 372
            [baseSchema addChildWithComItextpdfXmpImplXMPNode:baseNode];
            [ComItextpdfXmpImplXMPNormalizer transplantArrayItemAliasWithJavaUtilIterator:propertyIt withComItextpdfXmpImplXMPNode:currProp withComItextpdfXmpImplXMPNode:baseNode];
          }
        }
        else
#line 377
        if ([((ComItextpdfXmpOptionsAliasOptions *) nil_chk([info getAliasForm])) isSimple]) {
          
#line 382
          if (strictAliasing) {
            
#line 384
            [ComItextpdfXmpImplXMPNormalizer compareAliasedSubtreesWithComItextpdfXmpImplXMPNode:currProp withComItextpdfXmpImplXMPNode:baseNode withBoolean:YES];
          }
          
#line 387
          [propertyIt remove];
        }
        else {
          
#line 395
          ComItextpdfXmpImplXMPNode *itemNode = nil;
          if ([((ComItextpdfXmpOptionsAliasOptions *) nil_chk([info getAliasForm])) isArrayAltText]) {
            
#line 398
            jint xdIndex = [ComItextpdfXmpImplXMPNodeUtils lookupLanguageItemWithComItextpdfXmpImplXMPNode:baseNode withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_()];
            
#line 400
            if (xdIndex != -1) {
              
#line 402
              itemNode = [baseNode getChildWithInt:xdIndex];
            }
          }
          else if ([baseNode hasChildren]) {
            
#line 407
            itemNode = [baseNode getChildWithInt:1];
          }
          
#line 410
          if (itemNode == nil) {
            
#line 412
            [ComItextpdfXmpImplXMPNormalizer transplantArrayItemAliasWithJavaUtilIterator:propertyIt withComItextpdfXmpImplXMPNode:currProp withComItextpdfXmpImplXMPNode:baseNode];
          }
          else {
            
#line 416
            if (strictAliasing) {
              
#line 418
              [ComItextpdfXmpImplXMPNormalizer compareAliasedSubtreesWithComItextpdfXmpImplXMPNode:currProp withComItextpdfXmpImplXMPNode:itemNode withBoolean:YES];
            }
            
#line 421
            [propertyIt remove];
          }
        }
      }
    }
    [currSchema setHasAliasesWithBoolean:NO];
  }
}


#line 438
+ (void)transplantArrayItemAliasWithJavaUtilIterator:(id<JavaUtilIterator>)propertyIt
                       withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)childNode
                       withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)baseArray {
  
#line 441
  if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(baseArray)) getOptions])) isArrayAltText]) {
    
#line 443
    if ([((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(childNode)) getOptions])) getHasLanguage]) {
      
#line 445
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Alias to x-default already has a language qualifier" withInt:
#line 446
      ComItextpdfXmpXMPError_BADXMP];
    }
    
#line 449
    ComItextpdfXmpImplXMPNode *langQual = [[ComItextpdfXmpImplXMPNode alloc] initWithNSString:ComItextpdfXmpXMPConst_get_XML_LANG_() withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_() withComItextpdfXmpOptionsPropertyOptions:nil];
    [childNode addQualifierWithComItextpdfXmpImplXMPNode:langQual];
  }
  
#line 453
  [((id<JavaUtilIterator>) nil_chk(propertyIt)) remove];
  [((ComItextpdfXmpImplXMPNode *) nil_chk(childNode)) setNameWithNSString:ComItextpdfXmpXMPConst_get_ARRAY_ITEM_NAME_()];
  [baseArray addChildWithComItextpdfXmpImplXMPNode:childNode];
}


#line 464
+ (void)fixGPSTimeStampWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)exifSchema {
  
#line 469
  ComItextpdfXmpImplXMPNode *gpsDateTime = [ComItextpdfXmpImplXMPNodeUtils findChildNodeWithComItextpdfXmpImplXMPNode:exifSchema withNSString:@"exif:GPSTimeStamp" withBoolean:NO];
  if (gpsDateTime == nil) {
    
#line 472
    return;
  }
  
#line 475
  @try {
    
#line 477
    id<ComItextpdfXmpXMPDateTime> binGPSStamp;
    id<ComItextpdfXmpXMPDateTime> binOtherDate;
    
#line 480
    binGPSStamp = [ComItextpdfXmpXMPUtils convertToDateWithNSString:[((ComItextpdfXmpImplXMPNode *) nil_chk(gpsDateTime)) getValue]];
    if ([((id<ComItextpdfXmpXMPDateTime>) nil_chk(binGPSStamp)) getYear] != 0 ||
#line 482
    [binGPSStamp getMonth] != 0 ||
#line 483
    [binGPSStamp getDay] != 0) {
      
#line 485
      return;
    }
    
#line 488
    ComItextpdfXmpImplXMPNode *otherDate = [ComItextpdfXmpImplXMPNodeUtils findChildNodeWithComItextpdfXmpImplXMPNode:exifSchema withNSString:@"exif:DateTimeOriginal" withBoolean:
#line 489
    NO];
    if (otherDate == nil) {
      
#line 492
      otherDate = [ComItextpdfXmpImplXMPNodeUtils findChildNodeWithComItextpdfXmpImplXMPNode:exifSchema withNSString:@"exif:DateTimeDigitized" withBoolean:NO];
    }
    
#line 495
    binOtherDate = [ComItextpdfXmpXMPUtils convertToDateWithNSString:[((ComItextpdfXmpImplXMPNode *) nil_chk(otherDate)) getValue]];
    JavaUtilCalendar *cal = [binGPSStamp getCalendar];
    [((JavaUtilCalendar *) nil_chk(cal)) setWithInt:JavaUtilCalendar_YEAR withInt:[((id<ComItextpdfXmpXMPDateTime>) nil_chk(binOtherDate)) getYear]];
    [cal setWithInt:JavaUtilCalendar_MONTH withInt:[binOtherDate getMonth]];
    [cal setWithInt:JavaUtilCalendar_DAY_OF_MONTH withInt:[binOtherDate getDay]];
    binGPSStamp = [[ComItextpdfXmpImplXMPDateTimeImpl alloc] initWithJavaUtilCalendar:cal];
    [gpsDateTime setValueWithNSString:[ComItextpdfXmpXMPUtils convertFromDateWithComItextpdfXmpXMPDateTime:binGPSStamp]];
  }
  @catch (ComItextpdfXmpXMPException *e) {
    
#line 506
    return;
  }
}


#line 516
+ (void)deleteEmptySchemasWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)tree {
  
#line 521
  for (id<JavaUtilIterator> it = [((ComItextpdfXmpImplXMPNode *) nil_chk(tree)) iterateChildren]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
    
#line 523
    ComItextpdfXmpImplXMPNode *schema = (ComItextpdfXmpImplXMPNode *) check_class_cast([it next], [ComItextpdfXmpImplXMPNode class]);
    if (![((ComItextpdfXmpImplXMPNode *) nil_chk(schema)) hasChildren]) {
      
#line 526
      [it remove];
    }
  }
}


#line 542
+ (void)compareAliasedSubtreesWithComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)aliasNode
                              withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)baseNode
                                                withBoolean:(jboolean)outerCall {
  
#line 545
  if (![((NSString *) nil_chk([((ComItextpdfXmpImplXMPNode *) nil_chk(aliasNode)) getValue])) isEqual:[((ComItextpdfXmpImplXMPNode *) nil_chk(baseNode)) getValue]] ||
#line 546
  [aliasNode getChildrenLength] != [baseNode getChildrenLength]) {
    
#line 548
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Mismatch between alias and base nodes" withInt:ComItextpdfXmpXMPError_BADXMP];
  }
  
#line 551
  if (
#line 552
  !outerCall &&
#line 553
  (![((NSString *) nil_chk([aliasNode getName])) isEqual:[baseNode getName]] ||
#line 554
  ![((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([aliasNode getOptions])) isEqual:[baseNode getOptions]] ||
#line 555
  [aliasNode getQualifierLength] != [baseNode getQualifierLength])) {
    
#line 558
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Mismatch between alias and base nodes" withInt:
#line 559
    ComItextpdfXmpXMPError_BADXMP];
  }
  
#line 562
  for (id<JavaUtilIterator> an = [aliasNode iterateChildren],
#line 563
  bn = [baseNode iterateChildren];
#line 564
  [((id<JavaUtilIterator>) nil_chk(an)) hasNext] && [((id<JavaUtilIterator>) nil_chk(bn)) hasNext]; ) {
    
#line 566
    ComItextpdfXmpImplXMPNode *aliasChild = (ComItextpdfXmpImplXMPNode *) check_class_cast([an next], [ComItextpdfXmpImplXMPNode class]);
    ComItextpdfXmpImplXMPNode *baseChild = (ComItextpdfXmpImplXMPNode *) check_class_cast([((id<JavaUtilIterator>) nil_chk(bn)) next], [ComItextpdfXmpImplXMPNode class]);
    [ComItextpdfXmpImplXMPNormalizer compareAliasedSubtreesWithComItextpdfXmpImplXMPNode:aliasChild withComItextpdfXmpImplXMPNode:baseChild withBoolean:NO];
  }
  
#line 572
  for (id<JavaUtilIterator> an = [aliasNode iterateQualifier],
#line 573
  bn = [baseNode iterateQualifier];
#line 574
  [((id<JavaUtilIterator>) nil_chk(an)) hasNext] && [((id<JavaUtilIterator>) nil_chk(bn)) hasNext]; ) {
    
#line 576
    ComItextpdfXmpImplXMPNode *aliasQual = (ComItextpdfXmpImplXMPNode *) check_class_cast([an next], [ComItextpdfXmpImplXMPNode class]);
    ComItextpdfXmpImplXMPNode *baseQual = (ComItextpdfXmpImplXMPNode *) check_class_cast([((id<JavaUtilIterator>) nil_chk(bn)) next], [ComItextpdfXmpImplXMPNode class]);
    [ComItextpdfXmpImplXMPNormalizer compareAliasedSubtreesWithComItextpdfXmpImplXMPNode:aliasQual withComItextpdfXmpImplXMPNode:baseQual withBoolean:NO];
  }
}


#line 611
+ (void)migrateAudioCopyrightWithComItextpdfXmpXMPMeta:(id<ComItextpdfXmpXMPMeta>)xmp
                         withComItextpdfXmpImplXMPNode:(ComItextpdfXmpImplXMPNode *)dmCopyright {
  
#line 613
  @try {
    
#line 615
    ComItextpdfXmpImplXMPNode *dcSchema = [ComItextpdfXmpImplXMPNodeUtils findSchemaNodeWithComItextpdfXmpImplXMPNode:
#line 616
    [((ComItextpdfXmpImplXMPMetaImpl *) nil_chk(((ComItextpdfXmpImplXMPMetaImpl *) check_class_cast(xmp, [ComItextpdfXmpImplXMPMetaImpl class])))) getRoot] withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withBoolean:YES];
    
#line 618
    NSString *dmValue = [((ComItextpdfXmpImplXMPNode *) nil_chk(dmCopyright)) getValue];
    NSString *doubleLF = @"\n\n";
    
#line 621
    ComItextpdfXmpImplXMPNode *dcRightsArray = [ComItextpdfXmpImplXMPNodeUtils findChildNodeWithComItextpdfXmpImplXMPNode:dcSchema withNSString:@"dc:rights" withBoolean:NO];
    
#line 623
    if (dcRightsArray == nil || ![dcRightsArray hasChildren]) {
      
#line 626
      dmValue = JreStrcat("$$", doubleLF, dmValue);
      [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmp)) setLocalizedTextWithNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"rights" withNSString:@"" withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_() withNSString:dmValue withComItextpdfXmpOptionsPropertyOptions:
#line 628
      nil];
    }
    else {
      
#line 632
      jint xdIndex = [ComItextpdfXmpImplXMPNodeUtils lookupLanguageItemWithComItextpdfXmpImplXMPNode:dcRightsArray withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_()];
      
#line 634
      if (xdIndex < 0) {
        
#line 637
        NSString *firstValue = [((ComItextpdfXmpImplXMPNode *) nil_chk([dcRightsArray getChildWithInt:1])) getValue];
        [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmp)) setLocalizedTextWithNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"rights" withNSString:@"" withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_() withNSString:
#line 639
        firstValue withComItextpdfXmpOptionsPropertyOptions:nil];
        xdIndex = [ComItextpdfXmpImplXMPNodeUtils lookupLanguageItemWithComItextpdfXmpImplXMPNode:dcRightsArray withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_()];
      }
      
#line 644
      ComItextpdfXmpImplXMPNode *defaultNode = [dcRightsArray getChildWithInt:xdIndex];
      NSString *defaultValue = [((ComItextpdfXmpImplXMPNode *) nil_chk(defaultNode)) getValue];
      jint lfPos = [((NSString *) nil_chk(defaultValue)) indexOfString:doubleLF];
      
#line 648
      if (lfPos < 0) {
        
#line 651
        if (![((NSString *) nil_chk(dmValue)) isEqual:defaultValue]) {
          
#line 655
          [defaultNode setValueWithNSString:JreStrcat("$$$", defaultValue, doubleLF, dmValue)];
        }
      }
      else {
        
#line 661
        if (![((NSString *) nil_chk([defaultValue substring:lfPos + 2])) isEqual:dmValue]) {
          
#line 664
          [defaultNode setValueWithNSString:JreStrcat("$$", [defaultValue substring:0 endIndex:lfPos + 2], dmValue)];
        }
      }
    }
    
#line 671
    [((ComItextpdfXmpImplXMPNode *) nil_chk([dmCopyright getParent])) removeChildWithComItextpdfXmpImplXMPNode:dmCopyright];
  }
  @catch (ComItextpdfXmpXMPException *e) {
  }
}


#line 685
+ (void)initDCArrays {
  ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ = [[JavaUtilHashMap alloc] init];
  
#line 690
  ComItextpdfXmpOptionsPropertyOptions *bagForm = [[ComItextpdfXmpOptionsPropertyOptions alloc] init];
  (void) [bagForm setArrayWithBoolean:YES];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:contributor" withId:bagForm];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:language" withId:bagForm];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:publisher" withId:bagForm];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:relation" withId:bagForm];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:subject" withId:bagForm];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:type" withId:bagForm];
  
#line 700
  ComItextpdfXmpOptionsPropertyOptions *seqForm = [[ComItextpdfXmpOptionsPropertyOptions alloc] init];
  (void) [seqForm setArrayWithBoolean:YES];
  (void) [seqForm setArrayOrderedWithBoolean:YES];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:creator" withId:seqForm];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:date" withId:seqForm];
  
#line 707
  ComItextpdfXmpOptionsPropertyOptions *altTextForm = [[ComItextpdfXmpOptionsPropertyOptions alloc] init];
  (void) [altTextForm setArrayWithBoolean:YES];
  (void) [altTextForm setArrayOrderedWithBoolean:YES];
  (void) [altTextForm setArrayAlternateWithBoolean:YES];
  (void) [altTextForm setArrayAltTextWithBoolean:YES];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:description" withId:altTextForm];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:rights" withId:altTextForm];
  (void) [ComItextpdfXmpImplXMPNormalizer_dcArrayForms_ putWithId:@"dc:title" withId:altTextForm];
}

+ (void)initialize {
  if (self == [ComItextpdfXmpImplXMPNormalizer class]) {
    {
      
#line 61
      [ComItextpdfXmpImplXMPNormalizer initDCArrays];
    }
    ComItextpdfXmpImplXMPNormalizer_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "XMPNormalizer", NULL, 0x2, NULL },
    { "processWithComItextpdfXmpImplXMPMetaImpl:withComItextpdfXmpOptionsParseOptions:", "process", "Lcom.itextpdf.xmp.XMPMeta;", 0x8, "Lcom.itextpdf.xmp.XMPException;" },
    { "tweakOldXMPWithComItextpdfXmpImplXMPNode:", "tweakOldXMP", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "touchUpDataModelWithComItextpdfXmpImplXMPMetaImpl:", "touchUpDataModel", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "normalizeDCArraysWithComItextpdfXmpImplXMPNode:", "normalizeDCArrays", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "repairAltTextWithComItextpdfXmpImplXMPNode:", "repairAltText", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "moveExplicitAliasesWithComItextpdfXmpImplXMPNode:withComItextpdfXmpOptionsParseOptions:", "moveExplicitAliases", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "transplantArrayItemAliasWithJavaUtilIterator:withComItextpdfXmpImplXMPNode:withComItextpdfXmpImplXMPNode:", "transplantArrayItemAlias", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "fixGPSTimeStampWithComItextpdfXmpImplXMPNode:", "fixGPSTimeStamp", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "deleteEmptySchemasWithComItextpdfXmpImplXMPNode:", "deleteEmptySchemas", "V", 0xa, NULL },
    { "compareAliasedSubtreesWithComItextpdfXmpImplXMPNode:withComItextpdfXmpImplXMPNode:withBoolean:", "compareAliasedSubtrees", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "migrateAudioCopyrightWithComItextpdfXmpXMPMeta:withComItextpdfXmpImplXMPNode:", "migrateAudioCopyright", "V", 0xa, NULL },
    { "initDCArrays", NULL, "V", 0xa, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "dcArrayForms_", NULL, 0xa, "Ljava.util.Map;", &ComItextpdfXmpImplXMPNormalizer_dcArrayForms_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpImplXMPNormalizer = { "XMPNormalizer", "com.itextpdf.xmp.impl", NULL, 0x1, 13, methods, 1, fields, 0, NULL};
  return &_ComItextpdfXmpImplXMPNormalizer;
}

@end
