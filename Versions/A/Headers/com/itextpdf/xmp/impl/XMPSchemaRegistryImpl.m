//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPSchemaRegistryImpl.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/impl/XMPSchemaRegistryImpl.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/xmp/XMPConst.h"
#include "com/itextpdf/xmp/XMPError.h"
#include "com/itextpdf/xmp/XMPException.h"
#include "com/itextpdf/xmp/impl/ParameterAsserts.h"
#include "com/itextpdf/xmp/impl/Utils.h"
#include "com/itextpdf/xmp/impl/XMPNodeUtils.h"
#include "com/itextpdf/xmp/impl/XMPSchemaRegistryImpl.h"
#include "com/itextpdf/xmp/options/AliasOptions.h"
#include "com/itextpdf/xmp/options/PropertyOptions.h"
#include "com/itextpdf/xmp/properties/XMPAliasInfo.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/TreeMap.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"


#line 56
@implementation ComItextpdfXmpImplXMPSchemaRegistryImpl


#line 75
- (instancetype)init {
  if (self = [super init]) {
    namespaceToPrefixMap_ =
#line 59
    [[JavaUtilHashMap alloc] init];
    prefixToNamespaceMap_ =
#line 62
    [[JavaUtilHashMap alloc] init];
    aliasMap_ =
#line 66
    [[JavaUtilHashMap alloc] init];
    p_ =
#line 68
    [JavaUtilRegexPattern compileWithNSString:@"[/*?\\[\\]]"];
    
#line 77
    @try {
      
#line 79
      [self registerStandardNamespaces];
      [self registerStandardAliases];
    }
    @catch (ComItextpdfXmpXMPException *e) {
      
#line 84
      @throw [[JavaLangRuntimeException alloc] initWithNSString:@"The XMPSchemaRegistry cannot be initialized!"];
    }
  }
  return self;
}


#line 96
- (NSString *)registerNamespaceWithNSString:(NSString *)namespaceURI
                               withNSString:(NSString *)suggestedPrefix {
  @synchronized(self) {
    
#line 99
    [ComItextpdfXmpImplParameterAsserts assertSchemaNSWithNSString:namespaceURI];
    [ComItextpdfXmpImplParameterAsserts assertPrefixWithNSString:suggestedPrefix];
    
#line 102
    if ([suggestedPrefix charAtWithInt:((jint) [((NSString *) nil_chk(suggestedPrefix)) length]) - 1] != ':') {
      
#line 104
      suggestedPrefix = JreStrcat("$C", suggestedPrefix, ':');
    }
    
#line 107
    if (![ComItextpdfXmpImplUtils isXMLNameNSWithNSString:[suggestedPrefix substring:0 endIndex:
#line 108
    ((jint) [suggestedPrefix length]) - 1]]) {
      
#line 110
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"The prefix is a bad XML name" withInt:ComItextpdfXmpXMPError_BADXML];
    }
    
#line 113
    NSString *registeredPrefix = (NSString *) check_class_cast([((id<JavaUtilMap>) nil_chk(namespaceToPrefixMap_)) getWithId:namespaceURI], [NSString class]);
    NSString *registeredNS = (NSString *) check_class_cast([((id<JavaUtilMap>) nil_chk(prefixToNamespaceMap_)) getWithId:suggestedPrefix], [NSString class]);
    if (registeredPrefix != nil) {
      
#line 118
      return registeredPrefix;
    }
    else {
      
#line 122
      if (registeredNS != nil) {
        
#line 126
        NSString *generatedPrefix = suggestedPrefix;
        for (jint i = 1; [prefixToNamespaceMap_ containsKeyWithId:generatedPrefix]; i++) {
          
#line 129
          generatedPrefix = JreStrcat("$CI$", [suggestedPrefix substring:
#line 130
          0 endIndex:((jint) [suggestedPrefix length]) - 1], '_',
#line 131
          i, @"_:");
        }
        suggestedPrefix = generatedPrefix;
      }
      (void) [prefixToNamespaceMap_ putWithId:suggestedPrefix withId:namespaceURI];
      (void) [namespaceToPrefixMap_ putWithId:namespaceURI withId:suggestedPrefix];
      
#line 139
      return suggestedPrefix;
    }
  }
}


#line 147
- (void)deleteNamespaceWithNSString:(NSString *)namespaceURI {
  @synchronized(self) {
    
#line 149
    NSString *prefixToDelete = [self getNamespacePrefixWithNSString:namespaceURI];
    if (prefixToDelete != nil) {
      
#line 152
      (void) [((id<JavaUtilMap>) nil_chk(namespaceToPrefixMap_)) removeWithId:namespaceURI];
      (void) [((id<JavaUtilMap>) nil_chk(prefixToNamespaceMap_)) removeWithId:prefixToDelete];
    }
  }
}

- (NSString *)getNamespacePrefixWithNSString:(NSString *)namespaceURI {
  @synchronized(self) {
    
#line 163
    return (NSString *) check_class_cast([((id<JavaUtilMap>) nil_chk(namespaceToPrefixMap_)) getWithId:namespaceURI], [NSString class]);
  }
}


#line 170
- (NSString *)getNamespaceURIWithNSString:(NSString *)namespacePrefix {
  @synchronized(self) {
    
#line 172
    if (namespacePrefix != nil && ![namespacePrefix hasSuffix:@":"]) {
      
#line 174
      namespacePrefix = JreStrcat("$C", namespacePrefix, ':');
    }
    return (NSString *) check_class_cast([((id<JavaUtilMap>) nil_chk(prefixToNamespaceMap_)) getWithId:namespacePrefix], [NSString class]);
  }
}

- (id<JavaUtilMap>)getNamespaces {
  @synchronized(self) {
    
#line 185
    return [JavaUtilCollections unmodifiableMapWithJavaUtilMap:[[JavaUtilTreeMap alloc] initWithJavaUtilMap:namespaceToPrefixMap_]];
  }
}


#line 192
- (id<JavaUtilMap>)getPrefixes {
  @synchronized(self) {
    
#line 194
    return [JavaUtilCollections unmodifiableMapWithJavaUtilMap:[[JavaUtilTreeMap alloc] initWithJavaUtilMap:prefixToNamespaceMap_]];
  }
}


#line 205
- (void)registerStandardNamespaces {
  
#line 208
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_XML_() withNSString:@"xml"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_RDF_() withNSString:@"rdf"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"dc"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_IPTCCORE_() withNSString:@"Iptc4xmpCore"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_IPTCEXT_() withNSString:@"Iptc4xmpExt"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_DICOM_() withNSString:@"DICOM"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PLUS_() withNSString:@"plus"];
  
#line 217
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_X_() withNSString:@"x"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_IX_() withNSString:@"iX"];
  
#line 220
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"xmp"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_RIGHTS_() withNSString:@"xmpRights"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_MM_() withNSString:@"xmpMM"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_BJ_() withNSString:@"xmpBJ"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_NOTE_() withNSString:@"xmpNote"];
  
#line 226
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:@"pdf"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDFX_() withNSString:@"pdfx"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDFX_ID_() withNSString:@"pdfxid"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDFA_SCHEMA_() withNSString:@"pdfaSchema"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDFA_PROPERTY_() withNSString:@"pdfaProperty"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDFA_TYPE_() withNSString:@"pdfaType"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDFA_FIELD_() withNSString:@"pdfaField"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDFA_ID_() withNSString:@"pdfaid"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDFUA_ID_() withNSString:@"pdfuaid"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PDFA_EXTENSION_() withNSString:@"pdfaExtension"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PHOTOSHOP_() withNSString:@"photoshop"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PSALBUM_() withNSString:@"album"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_EXIF_() withNSString:@"exif"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_EXIFX_() withNSString:@"exifEX"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_EXIF_AUX_() withNSString:@"aux"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_TIFF_() withNSString:@"tiff"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_PNG_() withNSString:@"png"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_JPEG_() withNSString:@"jpeg"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_JP2K_() withNSString:@"jp2k"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_CAMERARAW_() withNSString:@"crs"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_ADOBESTOCKPHOTO_() withNSString:@"bmsp"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_CREATOR_ATOM_() withNSString:@"creatorAtom"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_ASF_() withNSString:@"asf"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_WAV_() withNSString:@"wav"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_BWF_() withNSString:@"bext"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_RIFFINFO_() withNSString:@"riffinfo"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_SCRIPT_() withNSString:@"xmpScript"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_TXMP_() withNSString:@"txmp"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_SWF_() withNSString:@"swf"];
  
#line 257
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_DM_() withNSString:@"xmpDM"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_NS_TRANSIENT_() withNSString:@"xmpx"];
  
#line 261
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_TEXT_() withNSString:@"xmpT"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_PAGEDFILE_() withNSString:@"xmpTPg"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_GRAPHICS_() withNSString:@"xmpG"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_IMAGE_() withNSString:@"xmpGImg"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_FONT_() withNSString:@"stFnt"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_DIMENSIONS_() withNSString:@"stDim"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_RESOURCEEVENT_() withNSString:@"stEvt"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_RESOURCEREF_() withNSString:@"stRef"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_ST_VERSION_() withNSString:@"stVer"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_ST_JOB_() withNSString:@"stJob"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_MANIFESTITEM_() withNSString:@"stMfs"];
  (void) [self registerNamespaceWithNSString:ComItextpdfXmpXMPConst_get_TYPE_IDENTIFIERQUAL_() withNSString:@"xmpidq"];
}


#line 284
- (id<ComItextpdfXmpPropertiesXMPAliasInfo>)resolveAliasWithNSString:(NSString *)aliasNS
                                                        withNSString:(NSString *)aliasProp {
  @synchronized(self) {
    
#line 286
    NSString *aliasPrefix = [self getNamespacePrefixWithNSString:aliasNS];
    if (aliasPrefix == nil) {
      
#line 289
      return nil;
    }
    
#line 292
    return (id<ComItextpdfXmpPropertiesXMPAliasInfo>) check_protocol_cast([((id<JavaUtilMap>) nil_chk(aliasMap_)) getWithId:JreStrcat("$$", aliasPrefix, aliasProp)], @protocol(ComItextpdfXmpPropertiesXMPAliasInfo));
  }
}


#line 299
- (id<ComItextpdfXmpPropertiesXMPAliasInfo>)findAliasWithNSString:(NSString *)qname {
  @synchronized(self) {
    
#line 301
    return (id<ComItextpdfXmpPropertiesXMPAliasInfo>) check_protocol_cast([((id<JavaUtilMap>) nil_chk(aliasMap_)) getWithId:qname], @protocol(ComItextpdfXmpPropertiesXMPAliasInfo));
  }
}


#line 308
- (IOSObjectArray *)findAliasesWithNSString:(NSString *)aliasNS {
  @synchronized(self) {
    
#line 310
    NSString *prefix = [self getNamespacePrefixWithNSString:aliasNS];
    id<JavaUtilList> result = [[JavaUtilArrayList alloc] init];
    if (prefix != nil) {
      
#line 314
      for (id<JavaUtilIterator> it = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(aliasMap_)) keySet])) iterator]; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; ) {
        
#line 316
        NSString *qname = (NSString *) check_class_cast([it next], [NSString class]);
        if ([((NSString *) nil_chk(qname)) hasPrefix:prefix]) {
          
#line 319
          [result addWithId:[self findAliasWithNSString:qname]];
        }
      }
    }
    
#line 324
    return (IOSObjectArray *) check_class_cast([result toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[result size] type:[IOSClass classWithProtocol:@protocol(ComItextpdfXmpPropertiesXMPAliasInfo)]]], [IOSObjectArray class]);
  }
}


#line 364
- (void)registerAliasWithNSString:(NSString *)aliasNS
                     withNSString:(NSString *)aliasProp
                     withNSString:(NSString *)actualNS
                     withNSString:(NSString *)actualProp
withComItextpdfXmpOptionsAliasOptions:(ComItextpdfXmpOptionsAliasOptions *)aliasForm {
  @synchronized(self) {
    
#line 367
    [ComItextpdfXmpImplParameterAsserts assertSchemaNSWithNSString:aliasNS];
    [ComItextpdfXmpImplParameterAsserts assertPropNameWithNSString:aliasProp];
    [ComItextpdfXmpImplParameterAsserts assertSchemaNSWithNSString:actualNS];
    [ComItextpdfXmpImplParameterAsserts assertPropNameWithNSString:actualProp];
    
#line 373
    ComItextpdfXmpOptionsAliasOptions *aliasOpts = aliasForm != nil ?
#line 374
    [[ComItextpdfXmpOptionsAliasOptions alloc] initWithInt:[((ComItextpdfXmpOptionsPropertyOptions *) nil_chk([ComItextpdfXmpImplXMPNodeUtils verifySetOptionsWithComItextpdfXmpOptionsPropertyOptions:
#line 375
    [aliasForm toPropertyOptions] withId:nil])) getOptions]] :
#line 376
    [[ComItextpdfXmpOptionsAliasOptions alloc] init];
    
#line 378
    if ([((JavaUtilRegexMatcher *) nil_chk([((JavaUtilRegexPattern *) nil_chk(p_)) matcherWithJavaLangCharSequence:aliasProp])) find] || [((JavaUtilRegexMatcher *) nil_chk([p_ matcherWithJavaLangCharSequence:actualProp])) find]) {
      
#line 380
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Alias and actual property names must be simple" withInt:
#line 381
      ComItextpdfXmpXMPError_BADXPATH];
    }
    
#line 385
    NSString *aliasPrefix = [self getNamespacePrefixWithNSString:aliasNS];
    NSString *actualPrefix = [self getNamespacePrefixWithNSString:actualNS];
    if (aliasPrefix == nil) {
      
#line 389
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Alias namespace is not registered" withInt:ComItextpdfXmpXMPError_BADSCHEMA];
    }
    else if (actualPrefix == nil) {
      
#line 393
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Actual namespace is not registered" withInt:
#line 394
      ComItextpdfXmpXMPError_BADSCHEMA];
    }
    
#line 397
    NSString *key = JreStrcat("$$", aliasPrefix, aliasProp);
    
#line 400
    if ([((id<JavaUtilMap>) nil_chk(aliasMap_)) containsKeyWithId:key]) {
      
#line 402
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:@"Alias is already existing" withInt:ComItextpdfXmpXMPError_BADPARAM];
    }
    else if ([aliasMap_ containsKeyWithId:JreStrcat("$$", actualPrefix, actualProp)]) {
      
#line 406
      @throw [[ComItextpdfXmpXMPException alloc] initWithNSString:
#line 407
      @"Actual property is already an alias, use the base property" withInt:
#line 408
      ComItextpdfXmpXMPError_BADPARAM];
    }
    
#line 411
    id<ComItextpdfXmpPropertiesXMPAliasInfo> aliasInfo = [[ComItextpdfXmpImplXMPSchemaRegistryImpl_$1 alloc] initWithNSString:actualNS withNSString:actualPrefix withNSString:actualProp withComItextpdfXmpOptionsAliasOptions:aliasOpts];
    
#line 452
    (void) [aliasMap_ putWithId:key withId:aliasInfo];
  }
}


#line 459
- (id<JavaUtilMap>)getAliases {
  @synchronized(self) {
    
#line 461
    return [JavaUtilCollections unmodifiableMapWithJavaUtilMap:[[JavaUtilTreeMap alloc] initWithJavaUtilMap:aliasMap_]];
  }
}


#line 471
- (void)registerStandardAliases {
  
#line 473
  ComItextpdfXmpOptionsAliasOptions *aliasToArrayOrdered = [((ComItextpdfXmpOptionsAliasOptions *) [[ComItextpdfXmpOptionsAliasOptions alloc] init]) setArrayOrderedWithBoolean:YES];
  ComItextpdfXmpOptionsAliasOptions *aliasToArrayAltText = [((ComItextpdfXmpOptionsAliasOptions *) [[ComItextpdfXmpOptionsAliasOptions alloc] init]) setArrayAltTextWithBoolean:YES];
  
#line 478
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"Author" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"creator" withComItextpdfXmpOptionsAliasOptions:aliasToArrayOrdered];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"Authors" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"creator" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"Description" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"description" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"Format" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"format" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"Keywords" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"subject" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"Locale" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"language" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"Title" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"title" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_RIGHTS_() withNSString:@"Copyright" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"rights" withComItextpdfXmpOptionsAliasOptions:nil];
  
#line 488
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:@"Author" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"creator" withComItextpdfXmpOptionsAliasOptions:aliasToArrayOrdered];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:@"BaseURL" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"BaseURL" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:@"CreationDate" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"CreateDate" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:@"Creator" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"CreatorTool" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:@"ModDate" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"ModifyDate" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:@"Subject" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"description" withComItextpdfXmpOptionsAliasOptions:aliasToArrayAltText];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:@"Title" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"title" withComItextpdfXmpOptionsAliasOptions:aliasToArrayAltText];
  
#line 497
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PHOTOSHOP_() withNSString:@"Author" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"creator" withComItextpdfXmpOptionsAliasOptions:aliasToArrayOrdered];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PHOTOSHOP_() withNSString:@"Caption" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"description" withComItextpdfXmpOptionsAliasOptions:aliasToArrayAltText];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PHOTOSHOP_() withNSString:@"Copyright" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"rights" withComItextpdfXmpOptionsAliasOptions:aliasToArrayAltText];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PHOTOSHOP_() withNSString:@"Keywords" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"subject" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PHOTOSHOP_() withNSString:@"Marked" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_RIGHTS_() withNSString:@"Marked" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PHOTOSHOP_() withNSString:@"Title" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"title" withComItextpdfXmpOptionsAliasOptions:aliasToArrayAltText];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PHOTOSHOP_() withNSString:@"WebStatement" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_RIGHTS_() withNSString:@"WebStatement" withComItextpdfXmpOptionsAliasOptions:nil];
  
#line 506
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_TIFF_() withNSString:@"Artist" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"creator" withComItextpdfXmpOptionsAliasOptions:aliasToArrayOrdered];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_TIFF_() withNSString:@"Copyright" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"rights" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_TIFF_() withNSString:@"DateTime" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"ModifyDate" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_TIFF_() withNSString:@"ImageDescription" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"description" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_TIFF_() withNSString:@"Software" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"CreatorTool" withComItextpdfXmpOptionsAliasOptions:nil];
  
#line 513
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PNG_() withNSString:@"Author" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"creator" withComItextpdfXmpOptionsAliasOptions:aliasToArrayOrdered];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PNG_() withNSString:@"Copyright" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"rights" withComItextpdfXmpOptionsAliasOptions:aliasToArrayAltText];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PNG_() withNSString:@"CreationTime" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"CreateDate" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PNG_() withNSString:@"Description" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"description" withComItextpdfXmpOptionsAliasOptions:aliasToArrayAltText];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PNG_() withNSString:@"ModificationTime" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"ModifyDate" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PNG_() withNSString:@"Software" withNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:@"CreatorTool" withComItextpdfXmpOptionsAliasOptions:nil];
  [self registerAliasWithNSString:ComItextpdfXmpXMPConst_get_NS_PNG_() withNSString:@"Title" withNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:@"title" withComItextpdfXmpOptionsAliasOptions:aliasToArrayAltText];
}

- (void)copyAllFieldsTo:(ComItextpdfXmpImplXMPSchemaRegistryImpl *)other {
  [super copyAllFieldsTo:other];
  other->aliasMap_ = aliasMap_;
  other->namespaceToPrefixMap_ = namespaceToPrefixMap_;
  other->p_ = p_;
  other->prefixToNamespaceMap_ = prefixToNamespaceMap_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "XMPSchemaRegistryImpl", NULL, 0x1, NULL },
    { "registerNamespaceWithNSString:withNSString:", "registerNamespace", "Ljava.lang.String;", 0x21, "Lcom.itextpdf.xmp.XMPException;" },
    { "deleteNamespaceWithNSString:", "deleteNamespace", "V", 0x21, NULL },
    { "getNamespacePrefixWithNSString:", "getNamespacePrefix", "Ljava.lang.String;", 0x21, NULL },
    { "getNamespaceURIWithNSString:", "getNamespaceURI", "Ljava.lang.String;", 0x21, NULL },
    { "getNamespaces", NULL, "Ljava.util.Map;", 0x21, NULL },
    { "getPrefixes", NULL, "Ljava.util.Map;", 0x21, NULL },
    { "registerStandardNamespaces", NULL, "V", 0x2, "Lcom.itextpdf.xmp.XMPException;" },
    { "resolveAliasWithNSString:withNSString:", "resolveAlias", "Lcom.itextpdf.xmp.properties.XMPAliasInfo;", 0x21, NULL },
    { "findAliasWithNSString:", "findAlias", "Lcom.itextpdf.xmp.properties.XMPAliasInfo;", 0x21, NULL },
    { "findAliasesWithNSString:", "findAliases", "[Lcom.itextpdf.xmp.properties.XMPAliasInfo;", 0x21, NULL },
    { "registerAliasWithNSString:withNSString:withNSString:withNSString:withComItextpdfXmpOptionsAliasOptions:", "registerAlias", "V", 0x20, "Lcom.itextpdf.xmp.XMPException;" },
    { "getAliases", NULL, "Ljava.util.Map;", 0x21, NULL },
    { "registerStandardAliases", NULL, "V", 0x2, "Lcom.itextpdf.xmp.XMPException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "namespaceToPrefixMap_", NULL, 0x2, "Ljava.util.Map;", NULL,  },
    { "prefixToNamespaceMap_", NULL, 0x2, "Ljava.util.Map;", NULL,  },
    { "aliasMap_", NULL, 0x2, "Ljava.util.Map;", NULL,  },
    { "p_", NULL, 0x2, "Ljava.util.regex.Pattern;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpImplXMPSchemaRegistryImpl = { "XMPSchemaRegistryImpl", "com.itextpdf.xmp.impl", NULL, 0x11, 14, methods, 4, fields, 0, NULL};
  return &_ComItextpdfXmpImplXMPSchemaRegistryImpl;
}

@end

@implementation ComItextpdfXmpImplXMPSchemaRegistryImpl_$1


#line 416
- (NSString *)getNamespace {
  
#line 418
  return val$actualNS_;
}


#line 424
- (NSString *)getPrefix {
  
#line 426
  return val$actualPrefix_;
}


#line 432
- (NSString *)getPropName {
  
#line 434
  return val$actualProp_;
}


#line 440
- (ComItextpdfXmpOptionsAliasOptions *)getAliasForm {
  
#line 442
  return val$aliasOpts_;
}

- (NSString *)description {
  
#line 447
  return JreStrcat("$$$$$@C", val$actualPrefix_, val$actualProp_, @" NS(", val$actualNS_, @"), FORM (",
#line 448
  [self getAliasForm], ')');
}

- (instancetype)initWithNSString:(NSString *)capture$0
                    withNSString:(NSString *)capture$1
                    withNSString:(NSString *)capture$2
withComItextpdfXmpOptionsAliasOptions:(ComItextpdfXmpOptionsAliasOptions *)capture$3 {
  val$actualNS_ = capture$0;
  val$actualPrefix_ = capture$1;
  val$actualProp_ = capture$2;
  val$aliasOpts_ = capture$3;
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getNamespace", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getPrefix", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getPropName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getAliasForm", NULL, "Lcom.itextpdf.xmp.options.AliasOptions;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "initWithNSString:withNSString:withNSString:withComItextpdfXmpOptionsAliasOptions:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$actualNS_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
    { "val$actualPrefix_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
    { "val$actualProp_", NULL, 0x1012, "Ljava.lang.String;", NULL,  },
    { "val$aliasOpts_", NULL, 0x1012, "Lcom.itextpdf.xmp.options.AliasOptions;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpImplXMPSchemaRegistryImpl_$1 = { "$1", "com.itextpdf.xmp.impl", "XMPSchemaRegistryImpl", 0x8000, 6, methods, 4, fields, 0, NULL};
  return &_ComItextpdfXmpImplXMPSchemaRegistryImpl_$1;
}

@end
