//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/ChainedProperties.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/ChainedProperties.java"

#include "com/itextpdf/text/html/HtmlTags.h"
#include "com/itextpdf/text/html/HtmlUtilities.h"
#include "com/itextpdf/text/html/simpleparser/ChainedProperties.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Map.h"


#line 58
@implementation ComItextpdfTextHtmlSimpleparserChainedProperties


#line 83
- (instancetype)init {
  if (self = [super init]) {
    chain_ =
#line 80
    [[JavaUtilArrayList alloc] init];
  }
  return self;
}


#line 93
- (NSString *)getPropertyWithNSString:(NSString *)key {
  
#line 94
  for (jint k = [((id<JavaUtilList>) nil_chk(chain_)) size] - 1; k >= 0; --k) {
    ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes *p = [chain_ getWithInt:k];
    id<JavaUtilMap> attrs = ((ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes *) nil_chk(p))->attrs_;
    NSString *ret = [((id<JavaUtilMap>) nil_chk(attrs)) getWithId:key];
    if (ret != nil)
#line 99
    return ret;
  }
  return nil;
}


#line 111
- (jboolean)hasPropertyWithNSString:(NSString *)key {
  
#line 112
  for (jint k = [((id<JavaUtilList>) nil_chk(chain_)) size] - 1; k >= 0; --k) {
    ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes *p = [chain_ getWithInt:k];
    id<JavaUtilMap> attrs = ((ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes *) nil_chk(p))->attrs_;
    if ([((id<JavaUtilMap>) nil_chk(attrs)) containsKeyWithId:key])
#line 116
    return YES;
  }
  return NO;
}


#line 126
- (void)addToChainWithNSString:(NSString *)tag
               withJavaUtilMap:(id<JavaUtilMap>)props {
  
#line 127
  [self adjustFontSizeWithJavaUtilMap:props];
  [((id<JavaUtilList>) nil_chk(chain_)) addWithId:[[ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes alloc] initWithNSString:tag withJavaUtilMap:props]];
}


#line 136
- (void)removeChainWithNSString:(NSString *)tag {
  
#line 137
  for (jint k = [((id<JavaUtilList>) nil_chk(chain_)) size] - 1; k >= 0; --k) {
    if ([((NSString *) nil_chk(tag)) isEqual:((ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes *) nil_chk([chain_ getWithInt:k]))->tag_]) {
      (void) [chain_ removeWithInt:k];
      return;
    }
  }
}


#line 151
- (void)adjustFontSizeWithJavaUtilMap:(id<JavaUtilMap>)attrs {
  
#line 153
  NSString *value = [((id<JavaUtilMap>) nil_chk(attrs)) getWithId:ComItextpdfTextHtmlHtmlTags_get_SIZE_()];
  
#line 155
  if (value == nil)
#line 156
  return;
  
#line 158
  if ([((NSString *) nil_chk(value)) hasSuffix:@"pt"]) {
    (void) [attrs putWithId:ComItextpdfTextHtmlHtmlTags_get_SIZE_() withId:
#line 160
    [value substring:0 endIndex:((jint) [value length]) - 2]];
    return;
  }
  NSString *old = [self getPropertyWithNSString:ComItextpdfTextHtmlHtmlTags_get_SIZE_()];
  (void) [attrs putWithId:ComItextpdfTextHtmlHtmlTags_get_SIZE_() withId:[JavaLangInteger toStringWithInt:[ComItextpdfTextHtmlHtmlUtilities getIndexedFontSizeWithNSString:value withNSString:old]]];
}

- (void)copyAllFieldsTo:(ComItextpdfTextHtmlSimpleparserChainedProperties *)other {
  [super copyAllFieldsTo:other];
  other->chain_ = chain_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ChainedProperties", NULL, 0x1, NULL },
    { "getPropertyWithNSString:", "getProperty", "Ljava.lang.String;", 0x1, NULL },
    { "hasPropertyWithNSString:", "hasProperty", "Z", 0x1, NULL },
    { "addToChainWithNSString:withJavaUtilMap:", "addToChain", "V", 0x1, NULL },
    { "removeChainWithNSString:", "removeChain", "V", 0x1, NULL },
    { "adjustFontSizeWithJavaUtilMap:", "adjustFontSize", "V", 0x4, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "chain_", NULL, 0x1, "Ljava.util.List;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserChainedProperties = { "ChainedProperties", "com.itextpdf.text.html.simpleparser", NULL, 0x1, 6, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserChainedProperties;
}

@end


#line 63
@implementation ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes


#line 73
- (instancetype)initWithNSString:(NSString *)tag
                 withJavaUtilMap:(id<JavaUtilMap>)attrs {
  if (self = [super init]) {
    
#line 74
    self->tag_ = tag;
    
#line 75
    self->attrs_ = attrs;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes *)other {
  [super copyAllFieldsTo:other];
  other->attrs_ = attrs_;
  other->tag_ = tag_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withJavaUtilMap:", "TagAttributes", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "tag_", NULL, 0x10, "Ljava.lang.String;", NULL,  },
    { "attrs_", NULL, 0x10, "Ljava.util.Map;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes = { "TagAttributes", "com.itextpdf.text.html.simpleparser", "ChainedProperties", 0x1a, 1, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserChainedProperties_TagAttributes;
}

@end