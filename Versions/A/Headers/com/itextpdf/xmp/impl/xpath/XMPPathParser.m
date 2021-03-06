//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/xpath/XMPPathParser.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/xpath/XMPPathParser.java"

#include "IOSClass.h"
#include "com/itextpdf/xmp/XMPError.h"
#include "com/itextpdf/xmp/XMPException.h"
#include "com/itextpdf/xmp/XMPMetaFactory.h"
#include "com/itextpdf/xmp/XMPSchemaRegistry.h"
#include "com/itextpdf/xmp/impl/Utils.h"
#include "com/itextpdf/xmp/impl/xpath/XMPPath.h"
#include "com/itextpdf/xmp/impl/xpath/XMPPathParser.h"
#include "com/itextpdf/xmp/impl/xpath/XMPPathSegment.h"
#include "com/itextpdf/xmp/options/AliasOptions.h"
#include "com/itextpdf/xmp/properties/XMPAliasInfo.h"


#line 45
@implementation ComItextpdfXmpImplXpathXMPPathParser


#line 50
- (instancetype)init {
  return [super init];
}


#line 105
+ (ComItextpdfXmpImplXpathXMPPath *)expandXPathWithNSString:(NSString *)schemaNS
                                               withNSString:(NSString *)path {
  
#line 107
  if (schemaNS == nil || path == nil) {
    
#line 109
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Parameter must not be null" withInt:ComItextpdfXmpXMPError_BADPARAM];
  }
  
#line 112
  ComItextpdfXmpImplXpathXMPPath *expandedXPath = [[ComItextpdfXmpImplXpathXMPPath alloc] init];
  ComItextpdfXmpImplXpathPathPosition *pos = [[ComItextpdfXmpImplXpathPathPosition alloc] init];
  pos->path_ = path;
  
#line 118
  [ComItextpdfXmpImplXpathXMPPathParser parseRootNodeWithNSString:schemaNS withComItextpdfXmpImplXpathPathPosition:pos withComItextpdfXmpImplXpathXMPPath:expandedXPath];
  
#line 121
  while (pos->stepEnd_ < ((jint) [((NSString *) nil_chk(path)) length])) {
    
#line 123
    pos->stepBegin_ = pos->stepEnd_;
    
#line 125
    [ComItextpdfXmpImplXpathXMPPathParser skipPathDelimiterWithNSString:path withComItextpdfXmpImplXpathPathPosition:pos];
    
#line 127
    pos->stepEnd_ = pos->stepBegin_;
    
#line 130
    ComItextpdfXmpImplXpathXMPPathSegment *segment;
    if ([path charAtWithInt:pos->stepBegin_] != '[') {
      
#line 134
      segment = [ComItextpdfXmpImplXpathXMPPathParser parseStructSegmentWithComItextpdfXmpImplXpathPathPosition:pos];
    }
    else {
      
#line 139
      segment = [ComItextpdfXmpImplXpathXMPPathParser parseIndexSegmentWithComItextpdfXmpImplXpathPathPosition:pos];
    }
    
#line 143
    if ([((ComItextpdfXmpImplXpathXMPPathSegment *) nil_chk(segment)) getKind] == ComItextpdfXmpImplXpathXMPPath_STRUCT_FIELD_STEP) {
      
#line 145
      if ([((NSString *) nil_chk([segment getName])) charAtWithInt:0] == '@') {
        
#line 147
        [segment setNameWithNSString:JreStrcat("C$", '?', [((NSString *) nil_chk([segment getName])) substring:1])];
        if (![@"?xml:lang" isEqual:[segment getName]]) {
          
#line 150
          @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Only xml:lang allowed with '@'" withInt:
#line 151
          ComItextpdfXmpXMPError_BADXPATH];
        }
      }
      if ([((NSString *) nil_chk([segment getName])) charAtWithInt:0] == '?') {
        
#line 156
        pos->nameStart_++;
        [segment setKindWithInt:ComItextpdfXmpImplXpathXMPPath_QUALIFIER_STEP];
      }
      
#line 160
      [ComItextpdfXmpImplXpathXMPPathParser verifyQualNameWithNSString:[((NSString *) nil_chk(pos->path_)) substring:pos->nameStart_ endIndex:pos->nameEnd_]];
    }
    else if ([segment getKind] == ComItextpdfXmpImplXpathXMPPath_FIELD_SELECTOR_STEP) {
      
#line 164
      if ([((NSString *) nil_chk([segment getName])) charAtWithInt:1] == '@') {
        
#line 166
        [segment setNameWithNSString:JreStrcat("$$", @"[?", [((NSString *) nil_chk([segment getName])) substring:2])];
        if (![((NSString *) nil_chk([segment getName])) hasPrefix:@"[?xml:lang="]) {
          
#line 169
          @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Only xml:lang allowed with '@'" withInt:
#line 170
          ComItextpdfXmpXMPError_BADXPATH];
        }
      }
      
#line 174
      if ([((NSString *) nil_chk([segment getName])) charAtWithInt:1] == '?') {
        
#line 176
        pos->nameStart_++;
        [segment setKindWithInt:ComItextpdfXmpImplXpathXMPPath_QUAL_SELECTOR_STEP];
        [ComItextpdfXmpImplXpathXMPPathParser verifyQualNameWithNSString:[((NSString *) nil_chk(pos->path_)) substring:pos->nameStart_ endIndex:pos->nameEnd_]];
      }
    }
    
#line 182
    [expandedXPath addWithComItextpdfXmpImplXpathXMPPathSegment:segment];
  }
  return expandedXPath;
}


#line 193
+ (void)skipPathDelimiterWithNSString:(NSString *)path
withComItextpdfXmpImplXpathPathPosition:(ComItextpdfXmpImplXpathPathPosition *)pos {
  
#line 195
  if ([((NSString *) nil_chk(path)) charAtWithInt:((ComItextpdfXmpImplXpathPathPosition *) nil_chk(pos))->stepBegin_] == '/') {
    
#line 199
    pos->stepBegin_++;
    
#line 202
    if (pos->stepBegin_ >= ((jint) [path length])) {
      
#line 204
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Empty XMPPath segment" withInt:ComItextpdfXmpXMPError_BADXPATH];
    }
  }
  
#line 208
  if ([path charAtWithInt:pos->stepBegin_] == '*') {
    
#line 212
    pos->stepBegin_++;
    if (pos->stepBegin_ >= ((jint) [path length]) || [path charAtWithInt:pos->stepBegin_] != '[') {
      
#line 215
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Missing '[' after '*'" withInt:ComItextpdfXmpXMPError_BADXPATH];
    }
  }
}


#line 227
+ (ComItextpdfXmpImplXpathXMPPathSegment *)parseStructSegmentWithComItextpdfXmpImplXpathPathPosition:(ComItextpdfXmpImplXpathPathPosition *)pos {
  
#line 229
  ((ComItextpdfXmpImplXpathPathPosition *) nil_chk(pos))->nameStart_ = pos->stepBegin_;
  while (pos->stepEnd_ < ((jint) [((NSString *) nil_chk(pos->path_)) length]) && [@"/[*" indexOf:[pos->path_ charAtWithInt:pos->stepEnd_]] < 0) {
    
#line 232
    pos->stepEnd_++;
  }
  pos->nameEnd_ = pos->stepEnd_;
  
#line 236
  if (pos->stepEnd_ == pos->stepBegin_) {
    
#line 238
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Empty XMPPath segment" withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
  
#line 242
  ComItextpdfXmpImplXpathXMPPathSegment *segment = [[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:[pos->path_ substring:pos->stepBegin_ endIndex:pos->stepEnd_] withInt:
#line 243
  ComItextpdfXmpImplXpathXMPPath_STRUCT_FIELD_STEP];
  return segment;
}


#line 256
+ (ComItextpdfXmpImplXpathXMPPathSegment *)parseIndexSegmentWithComItextpdfXmpImplXpathPathPosition:(ComItextpdfXmpImplXpathPathPosition *)pos {
  
#line 258
  ComItextpdfXmpImplXpathXMPPathSegment *segment;
  ((ComItextpdfXmpImplXpathPathPosition *) nil_chk(pos))->stepEnd_++;
  
#line 261
  if ('0' <= [((NSString *) nil_chk(pos->path_)) charAtWithInt:pos->stepEnd_] && [pos->path_ charAtWithInt:pos->stepEnd_] <= '9') {
    
#line 264
    while (pos->stepEnd_ < ((jint) [pos->path_ length]) && '0' <= [pos->path_ charAtWithInt:pos->stepEnd_] &&
#line 265
    [pos->path_ charAtWithInt:pos->stepEnd_] <= '9') {
      
#line 267
      pos->stepEnd_++;
    }
    
#line 270
    segment = [[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:nil withInt:ComItextpdfXmpImplXpathXMPPath_ARRAY_INDEX_STEP];
  }
  else {
    
#line 276
    while (pos->stepEnd_ < ((jint) [pos->path_ length]) && [pos->path_ charAtWithInt:pos->stepEnd_] != ']' &&
#line 277
    [pos->path_ charAtWithInt:pos->stepEnd_] != '=') {
      
#line 279
      pos->stepEnd_++;
    }
    
#line 282
    if (pos->stepEnd_ >= ((jint) [pos->path_ length])) {
      
#line 284
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Missing ']' or '=' for array index" withInt:ComItextpdfXmpXMPError_BADXPATH];
    }
    
#line 287
    if ([pos->path_ charAtWithInt:pos->stepEnd_] == ']') {
      
#line 289
      if (![@"[last()" isEqual:[pos->path_ substring:pos->stepBegin_ endIndex:pos->stepEnd_]]) {
        
#line 291
        @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:
#line 292
        @"Invalid non-numeric array index" withInt:ComItextpdfXmpXMPError_BADXPATH];
      }
      segment = [[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:nil withInt:ComItextpdfXmpImplXpathXMPPath_ARRAY_LAST_STEP];
    }
    else {
      
#line 298
      pos->nameStart_ = pos->stepBegin_ + 1;
      pos->nameEnd_ = pos->stepEnd_;
      pos->stepEnd_++;
      jchar quote = [pos->path_ charAtWithInt:pos->stepEnd_];
      if (quote != '\'' && quote != '"') {
        
#line 304
        @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:
#line 305
        @"Invalid quote in array selector" withInt:ComItextpdfXmpXMPError_BADXPATH];
      }
      
#line 308
      pos->stepEnd_++;
      while (pos->stepEnd_ < ((jint) [pos->path_ length])) {
        
#line 311
        if ([pos->path_ charAtWithInt:pos->stepEnd_] == quote) {
          
#line 314
          if (pos->stepEnd_ + 1 >= ((jint) [pos->path_ length]) ||
#line 315
          [pos->path_ charAtWithInt:pos->stepEnd_ + 1] != quote) {
            
#line 317
            break;
          }
          pos->stepEnd_++;
        }
        pos->stepEnd_++;
      }
      
#line 324
      if (pos->stepEnd_ >= ((jint) [pos->path_ length])) {
        
#line 326
        @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"No terminating quote for array selector" withInt:
#line 327
        ComItextpdfXmpXMPError_BADXPATH];
      }
      pos->stepEnd_++;
      
#line 332
      segment = [[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:nil withInt:ComItextpdfXmpImplXpathXMPPath_FIELD_SELECTOR_STEP];
    }
  }
  
#line 337
  if (pos->stepEnd_ >= ((jint) [pos->path_ length]) || [pos->path_ charAtWithInt:pos->stepEnd_] != ']') {
    
#line 339
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Missing ']' for array index" withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
  pos->stepEnd_++;
  [((ComItextpdfXmpImplXpathXMPPathSegment *) nil_chk(segment)) setNameWithNSString:[pos->path_ substring:pos->stepBegin_ endIndex:pos->stepEnd_]];
  
#line 344
  return segment;
}


#line 356
+ (void)parseRootNodeWithNSString:(NSString *)schemaNS
withComItextpdfXmpImplXpathPathPosition:(ComItextpdfXmpImplXpathPathPosition *)pos
withComItextpdfXmpImplXpathXMPPath:(ComItextpdfXmpImplXpathXMPPath *)expandedXPath {
  
#line 359
  while (((ComItextpdfXmpImplXpathPathPosition *) nil_chk(pos))->stepEnd_ < ((jint) [((NSString *) nil_chk(pos->path_)) length]) && [@"/[*" indexOf:[pos->path_ charAtWithInt:pos->stepEnd_]] < 0) {
    
#line 361
    pos->stepEnd_++;
  }
  
#line 364
  if (pos->stepEnd_ == pos->stepBegin_) {
    
#line 366
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Empty initial XMPPath step" withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
  
#line 369
  NSString *rootProp = [ComItextpdfXmpImplXpathXMPPathParser verifyXPathRootWithNSString:schemaNS withNSString:[pos->path_ substring:pos->stepBegin_ endIndex:pos->stepEnd_]];
  id<ComItextpdfXmpPropertiesXMPAliasInfo> aliasInfo = [((id<ComItextpdfXmpXMPSchemaRegistry>) nil_chk([ComItextpdfXmpXMPMetaFactory getSchemaRegistry])) findAliasWithNSString:rootProp];
  if (aliasInfo == nil) {
    
#line 374
    [((ComItextpdfXmpImplXpathXMPPath *) nil_chk(expandedXPath)) addWithComItextpdfXmpImplXpathXMPPathSegment:[[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:schemaNS withInt:ComItextpdfXmpImplXpathXMPPath_SCHEMA_NODE]];
    ComItextpdfXmpImplXpathXMPPathSegment *rootStep = [[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:rootProp withInt:ComItextpdfXmpImplXpathXMPPath_STRUCT_FIELD_STEP];
    [expandedXPath addWithComItextpdfXmpImplXpathXMPPathSegment:rootStep];
  }
  else {
    
#line 381
    [((ComItextpdfXmpImplXpathXMPPath *) nil_chk(expandedXPath)) addWithComItextpdfXmpImplXpathXMPPathSegment:[[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:[aliasInfo getNamespace] withInt:ComItextpdfXmpImplXpathXMPPath_SCHEMA_NODE]];
    ComItextpdfXmpImplXpathXMPPathSegment *rootStep = [[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:[ComItextpdfXmpImplXpathXMPPathParser verifyXPathRootWithNSString:[aliasInfo getNamespace] withNSString:
#line 383
    [aliasInfo getPropName]] withInt:
#line 384
    ComItextpdfXmpImplXpathXMPPath_STRUCT_FIELD_STEP];
    [rootStep setAliasWithBoolean:YES];
    [rootStep setAliasFormWithInt:[((ComItextpdfXmpOptionsAliasOptions *) nil_chk([aliasInfo getAliasForm])) getOptions]];
    [expandedXPath addWithComItextpdfXmpImplXpathXMPPathSegment:rootStep];
    
#line 389
    if ([((ComItextpdfXmpOptionsAliasOptions *) nil_chk([aliasInfo getAliasForm])) isArrayAltText]) {
      
#line 391
      ComItextpdfXmpImplXpathXMPPathSegment *qualSelectorStep = [[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:@"[?xml:lang='x-default']" withInt:
#line 392
      ComItextpdfXmpImplXpathXMPPath_QUAL_SELECTOR_STEP];
      [qualSelectorStep setAliasWithBoolean:YES];
      [qualSelectorStep setAliasFormWithInt:[((ComItextpdfXmpOptionsAliasOptions *) nil_chk([aliasInfo getAliasForm])) getOptions]];
      [expandedXPath addWithComItextpdfXmpImplXpathXMPPathSegment:qualSelectorStep];
    }
    else if ([((ComItextpdfXmpOptionsAliasOptions *) nil_chk([aliasInfo getAliasForm])) isArray]) {
      
#line 399
      ComItextpdfXmpImplXpathXMPPathSegment *indexStep = [[ComItextpdfXmpImplXpathXMPPathSegment alloc] initWithNSString:@"[1]" withInt:
#line 400
      ComItextpdfXmpImplXpathXMPPath_ARRAY_INDEX_STEP];
      [indexStep setAliasWithBoolean:YES];
      [indexStep setAliasFormWithInt:[((ComItextpdfXmpOptionsAliasOptions *) nil_chk([aliasInfo getAliasForm])) getOptions]];
      [expandedXPath addWithComItextpdfXmpImplXpathXMPPathSegment:indexStep];
    }
  }
}


#line 418
+ (void)verifyQualNameWithNSString:(NSString *)qualName {
  
#line 420
  jint colonPos = [((NSString *) nil_chk(qualName)) indexOf:':'];
  if (colonPos > 0) {
    
#line 423
    NSString *prefix = [qualName substring:0 endIndex:colonPos];
    if ([ComItextpdfXmpImplUtils isXMLNameNSWithNSString:prefix]) {
      
#line 426
      NSString *regURI = [((id<ComItextpdfXmpXMPSchemaRegistry>) nil_chk([ComItextpdfXmpXMPMetaFactory getSchemaRegistry])) getNamespaceURIWithNSString:
#line 427
      prefix];
      if (regURI != nil) {
        
#line 430
        return;
      }
      
#line 433
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Unknown namespace prefix for qualified name" withInt:
#line 434
      ComItextpdfXmpXMPError_BADXPATH];
    }
  }
  
#line 438
  @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Ill-formed qualified name" withInt:ComItextpdfXmpXMPError_BADXPATH];
}


#line 450
+ (void)verifySimpleXMLNameWithNSString:(NSString *)name {
  
#line 452
  if (![ComItextpdfXmpImplUtils isXMLNameWithNSString:name]) {
    
#line 454
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Bad XML name" withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
}


#line 473
+ (NSString *)verifyXPathRootWithNSString:(NSString *)schemaNS
                             withNSString:(NSString *)rootProp {
  
#line 479
  if (schemaNS == nil || ((jint) [schemaNS length]) == 0) {
    
#line 481
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:
#line 482
    @"Schema namespace URI is required" withInt:ComItextpdfXmpXMPError_BADSCHEMA];
  }
  
#line 485
  if (([((NSString *) nil_chk(rootProp)) charAtWithInt:0] == '?') || ([rootProp charAtWithInt:0] == '@')) {
    
#line 487
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Top level name must not be a qualifier" withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
  
#line 490
  if ([rootProp indexOf:'/'] >= 0 || [rootProp indexOf:'['] >= 0) {
    
#line 492
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Top level name must be simple" withInt:ComItextpdfXmpXMPError_BADXPATH];
  }
  
#line 495
  NSString *prefix = [((id<ComItextpdfXmpXMPSchemaRegistry>) nil_chk([ComItextpdfXmpXMPMetaFactory getSchemaRegistry])) getNamespacePrefixWithNSString:schemaNS];
  if (prefix == nil) {
    
#line 498
    @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Unregistered schema namespace URI" withInt:ComItextpdfXmpXMPError_BADSCHEMA];
  }
  
#line 503
  jint colonPos = [rootProp indexOf:':'];
  if (colonPos < 0) {
    
#line 508
    [ComItextpdfXmpImplXpathXMPPathParser verifySimpleXMLNameWithNSString:rootProp];
    return JreStrcat("$$", prefix, rootProp);
  }
  else {
    
#line 517
    [ComItextpdfXmpImplXpathXMPPathParser verifySimpleXMLNameWithNSString:[rootProp substring:0 endIndex:colonPos]];
    [ComItextpdfXmpImplXpathXMPPathParser verifySimpleXMLNameWithNSString:[rootProp substring:colonPos]];
    
#line 520
    prefix = [rootProp substring:0 endIndex:colonPos + 1];
    
#line 522
    NSString *regPrefix = [((id<ComItextpdfXmpXMPSchemaRegistry>) nil_chk([ComItextpdfXmpXMPMetaFactory getSchemaRegistry])) getNamespacePrefixWithNSString:schemaNS];
    if (regPrefix == nil) {
      
#line 525
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Unknown schema namespace prefix" withInt:ComItextpdfXmpXMPError_BADSCHEMA];
    }
    if (![((NSString *) nil_chk(prefix)) isEqual:regPrefix]) {
      
#line 529
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Schema namespace URI and prefix mismatch" withInt:
#line 530
      ComItextpdfXmpXMPError_BADSCHEMA];
    }
    
#line 533
    return rootProp;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "XMPPathParser", NULL, 0x2, NULL },
    { "expandXPathWithNSString:withNSString:", "expandXPath", "Lcom.itextpdf.xmp.impl.xpath.XMPPath;", 0x9, "Lcom.itextpdf.xmp.XMPException;" },
    { "skipPathDelimiterWithNSString:withComItextpdfXmpImplXpathPathPosition:", "skipPathDelimiter", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "parseStructSegmentWithComItextpdfXmpImplXpathPathPosition:", "parseStructSegment", "Lcom.itextpdf.xmp.impl.xpath.XMPPathSegment;", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "parseIndexSegmentWithComItextpdfXmpImplXpathPathPosition:", "parseIndexSegment", "Lcom.itextpdf.xmp.impl.xpath.XMPPathSegment;", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "parseRootNodeWithNSString:withComItextpdfXmpImplXpathPathPosition:withComItextpdfXmpImplXpathXMPPath:", "parseRootNode", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "verifyQualNameWithNSString:", "verifyQualName", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "verifySimpleXMLNameWithNSString:", "verifySimpleXMLName", "V", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
    { "verifyXPathRootWithNSString:withNSString:", "verifyXPathRoot", "Ljava.lang.String;", 0xa, "Lcom.itextpdf.xmp.XMPException;" },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpImplXpathXMPPathParser = { "XMPPathParser", "com.itextpdf.xmp.impl.xpath", NULL, 0x11, 9, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfXmpImplXpathXMPPathParser;
}

@end


#line 545
@implementation ComItextpdfXmpImplXpathPathPosition

- (instancetype)init {
  if (self = [super init]) {
    path_ =
#line 548
    nil;
    nameStart_ =
#line 550
    0;
    nameEnd_ =
#line 552
    0;
    stepBegin_ =
#line 554
    0;
    stepEnd_ =
#line 556
    0;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfXmpImplXpathPathPosition *)other {
  [super copyAllFieldsTo:other];
  other->nameEnd_ = nameEnd_;
  other->nameStart_ = nameStart_;
  other->path_ = path_;
  other->stepBegin_ = stepBegin_;
  other->stepEnd_ = stepEnd_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "path_", NULL, 0x1, "Ljava.lang.String;", NULL,  },
    { "nameStart_", NULL, 0x0, "I", NULL,  },
    { "nameEnd_", NULL, 0x0, "I", NULL,  },
    { "stepBegin_", NULL, 0x0, "I", NULL,  },
    { "stepEnd_", NULL, 0x0, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpImplXpathPathPosition = { "PathPosition", "com.itextpdf.xmp.impl.xpath", NULL, 0x0, 1, methods, 5, fields, 0, NULL};
  return &_ComItextpdfXmpImplXpathPathPosition;
}

@end
