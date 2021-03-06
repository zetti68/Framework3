//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/options/AliasOptions.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/options/AliasOptions.java"

#include "IOSClass.h"
#include "com/itextpdf/xmp/XMPException.h"
#include "com/itextpdf/xmp/options/AliasOptions.h"
#include "com/itextpdf/xmp/options/Options.h"
#include "com/itextpdf/xmp/options/PropertyOptions.h"


#line 41
@implementation ComItextpdfXmpOptionsAliasOptions


#line 60
- (instancetype)init {
  return [super init];
}


#line 70
- (instancetype)initWithInt:(jint)options {
  return
#line 72
  [super initWithInt:options];
}


#line 79
- (jboolean)isSimple {
  
#line 81
  return [self getOptions] == ComItextpdfXmpOptionsAliasOptions_PROP_DIRECT;
}


#line 88
- (jboolean)isArray {
  
#line 90
  return [self getOptionWithInt:ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY];
}


#line 98
- (ComItextpdfXmpOptionsAliasOptions *)setArrayWithBoolean:(jboolean)value {
  
#line 100
  [self setOptionWithInt:ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY withBoolean:value];
  return self;
}


#line 108
- (jboolean)isArrayOrdered {
  
#line 110
  return [self getOptionWithInt:ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ORDERED];
}


#line 118
- (ComItextpdfXmpOptionsAliasOptions *)setArrayOrderedWithBoolean:(jboolean)value {
  
#line 120
  [self setOptionWithInt:ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY | ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ORDERED withBoolean:value];
  return self;
}


#line 128
- (jboolean)isArrayAlternate {
  
#line 130
  return [self getOptionWithInt:ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALTERNATE];
}


#line 138
- (ComItextpdfXmpOptionsAliasOptions *)setArrayAlternateWithBoolean:(jboolean)value {
  
#line 140
  [self setOptionWithInt:ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY | ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ORDERED | ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALTERNATE withBoolean:value];
  return self;
}


#line 148
- (jboolean)isArrayAltText {
  
#line 150
  return [self getOptionWithInt:ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALT_TEXT];
}


#line 158
- (ComItextpdfXmpOptionsAliasOptions *)setArrayAltTextWithBoolean:(jboolean)value {
  
#line 160
  [self setOptionWithInt:ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY | ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ORDERED |
#line 161
  ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALTERNATE | ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALT_TEXT withBoolean:value];
  return self;
}


#line 170
- (ComItextpdfXmpOptionsPropertyOptions *)toPropertyOptions {
  
#line 172
  return [[ComItextpdfXmpOptionsPropertyOptions alloc] initWithInt:[self getOptions]];
}


#line 179
- (NSString *)defineOptionNameWithInt:(jint)option {
  
#line 181
  switch (option) {
    
#line 183
    case ComItextpdfXmpOptionsAliasOptions_PROP_DIRECT:
    
#line 183
    return @"PROP_DIRECT";
    case ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY:
    
#line 184
    return @"ARRAY";
    case ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ORDERED:
    
#line 185
    return @"ARRAY_ORDERED";
    case ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALTERNATE:
    
#line 186
    return @"ARRAY_ALTERNATE";
    case ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALT_TEXT:
    
#line 187
    return @"ARRAY_ALT_TEXT";
    default:
    
#line 188
    return nil;
  }
}


#line 196
- (jint)getValidOptions {
  
#line 198
  return
#line 199
  ComItextpdfXmpOptionsAliasOptions_PROP_DIRECT |
#line 200
  ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY |
#line 201
  ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ORDERED |
#line 202
  ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALTERNATE |
#line 203
  ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALT_TEXT;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "AliasOptions", NULL, 0x1, NULL },
    { "initWithInt:", "AliasOptions", NULL, 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "isSimple", NULL, "Z", 0x1, NULL },
    { "isArray", NULL, "Z", 0x1, NULL },
    { "setArrayWithBoolean:", "setArray", "Lcom.itextpdf.xmp.options.AliasOptions;", 0x1, NULL },
    { "isArrayOrdered", NULL, "Z", 0x1, NULL },
    { "setArrayOrderedWithBoolean:", "setArrayOrdered", "Lcom.itextpdf.xmp.options.AliasOptions;", 0x1, NULL },
    { "isArrayAlternate", NULL, "Z", 0x1, NULL },
    { "setArrayAlternateWithBoolean:", "setArrayAlternate", "Lcom.itextpdf.xmp.options.AliasOptions;", 0x1, NULL },
    { "isArrayAltText", NULL, "Z", 0x1, NULL },
    { "setArrayAltTextWithBoolean:", "setArrayAltText", "Lcom.itextpdf.xmp.options.AliasOptions;", 0x1, NULL },
    { "toPropertyOptions", NULL, "Lcom.itextpdf.xmp.options.PropertyOptions;", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "defineOptionNameWithInt:", "defineOptionName", "Ljava.lang.String;", 0x4, NULL },
    { "getValidOptions", NULL, "I", 0x4, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PROP_DIRECT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfXmpOptionsAliasOptions_PROP_DIRECT },
    { "PROP_ARRAY_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY },
    { "PROP_ARRAY_ORDERED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ORDERED },
    { "PROP_ARRAY_ALTERNATE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALTERNATE },
    { "PROP_ARRAY_ALT_TEXT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfXmpOptionsAliasOptions_PROP_ARRAY_ALT_TEXT },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpOptionsAliasOptions = { "AliasOptions", "com.itextpdf.xmp.options", NULL, 0x11, 14, methods, 5, fields, 0, NULL};
  return &_ComItextpdfXmpOptionsAliasOptions;
}

@end
