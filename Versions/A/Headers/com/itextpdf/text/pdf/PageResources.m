//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PageResources.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PageResources.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/PageResources.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/PdfResources.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"


#line 50
@implementation ComItextpdfTextPdfPageResources


#line 64
- (instancetype)init {
  if (self = [super init]) {
    fontDictionary_ =
#line 52
    [[ComItextpdfTextPdfPdfDictionary alloc] init];
    xObjectDictionary_ =
#line 53
    [[ComItextpdfTextPdfPdfDictionary alloc] init];
    colorDictionary_ =
#line 54
    [[ComItextpdfTextPdfPdfDictionary alloc] init];
    patternDictionary_ =
#line 55
    [[ComItextpdfTextPdfPdfDictionary alloc] init];
    shadingDictionary_ =
#line 56
    [[ComItextpdfTextPdfPdfDictionary alloc] init];
    extGStateDictionary_ =
#line 57
    [[ComItextpdfTextPdfPdfDictionary alloc] init];
    propertyDictionary_ =
#line 58
    [[ComItextpdfTextPdfPdfDictionary alloc] init];
    namePtr_ = [IOSIntArray arrayWithInts:(jint[]){
#line 61
      0 } count:1];
    }
    return self;
  }


#line 67
- (void)setOriginalResourcesWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)resources
                                                   withIntArray:(IOSIntArray *)newNamePtr {
  
#line 68
  if (newNamePtr != nil)
#line 69
  namePtr_ = newNamePtr;
  forbiddenNames_ = [[JavaUtilHashSet alloc] init];
  usedNames_ = [[JavaUtilHashMap alloc] init];
  if (resources == nil)
#line 73
  return;
  originalResources_ = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [originalResources_ mergeWithComItextpdfTextPdfPdfDictionary:resources];
  for (id __strong element in nil_chk([((ComItextpdfTextPdfPdfDictionary *) nil_chk(resources)) getKeys])) {
    ComItextpdfTextPdfPdfName *key = (ComItextpdfTextPdfPdfName *) check_class_cast(element, [ComItextpdfTextPdfPdfName class]);
    ComItextpdfTextPdfPdfObject *sub = [ComItextpdfTextPdfPdfReader getPdfObjectWithComItextpdfTextPdfPdfObject:[resources getWithComItextpdfTextPdfPdfName:key]];
    if (sub != nil && [sub isDictionary]) {
      ComItextpdfTextPdfPdfDictionary *dic = (ComItextpdfTextPdfPdfDictionary *) check_class_cast(sub, [ComItextpdfTextPdfPdfDictionary class]);
      for (ComItextpdfTextPdfPdfName * __strong element2 in nil_chk([dic getKeys])) {
        [forbiddenNames_ addWithId:element2];
      }
      ComItextpdfTextPdfPdfDictionary *dic2 = [[ComItextpdfTextPdfPdfDictionary alloc] init];
      [dic2 mergeWithComItextpdfTextPdfPdfDictionary:dic];
      [originalResources_ putWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:dic2];
    }
  }
}


#line 91
- (ComItextpdfTextPdfPdfName *)translateNameWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name {
  
#line 92
  ComItextpdfTextPdfPdfName *translated = name;
  if (forbiddenNames_ != nil) {
    translated = [((JavaUtilHashMap *) nil_chk(usedNames_)) getWithId:name];
    if (translated == nil) {
      while (YES) {
        translated = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:JreStrcat("$I", @"Xi", (*IOSIntArray_GetRef(nil_chk(namePtr_), 0))++)];
        if (![forbiddenNames_ containsWithId:translated])
#line 99
        break;
      }
      (void) [usedNames_ putWithId:name withId:translated];
    }
  }
  return translated;
}


#line 107
- (ComItextpdfTextPdfPdfName *)addFontWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                         withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)reference {
  
#line 108
  name = [self translateNameWithComItextpdfTextPdfPdfName:name];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(fontDictionary_)) putWithComItextpdfTextPdfPdfName:name withComItextpdfTextPdfPdfObject:reference];
  return name;
}


#line 113
- (ComItextpdfTextPdfPdfName *)addXObjectWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                            withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)reference {
  
#line 114
  name = [self translateNameWithComItextpdfTextPdfPdfName:name];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(xObjectDictionary_)) putWithComItextpdfTextPdfPdfName:name withComItextpdfTextPdfPdfObject:reference];
  return name;
}


#line 119
- (ComItextpdfTextPdfPdfName *)addColorWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                          withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)reference {
  
#line 120
  name = [self translateNameWithComItextpdfTextPdfPdfName:name];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(colorDictionary_)) putWithComItextpdfTextPdfPdfName:name withComItextpdfTextPdfPdfObject:reference];
  return name;
}


#line 125
- (void)addDefaultColorWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                     withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj {
  
#line 126
  if (obj == nil || [obj isNull])
#line 127
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(colorDictionary_)) removeWithComItextpdfTextPdfPdfName:name];
  else
#line 129
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(colorDictionary_)) putWithComItextpdfTextPdfPdfName:name withComItextpdfTextPdfPdfObject:obj];
}


#line 132
- (void)addDefaultColorWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dic {
  
#line 133
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(colorDictionary_)) mergeWithComItextpdfTextPdfPdfDictionary:dic];
}


#line 136
- (void)addDefaultColorDiffWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)dic {
  
#line 137
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(colorDictionary_)) mergeDifferentWithComItextpdfTextPdfPdfDictionary:dic];
}


#line 140
- (ComItextpdfTextPdfPdfName *)addShadingWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                            withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)reference {
  
#line 141
  name = [self translateNameWithComItextpdfTextPdfPdfName:name];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(shadingDictionary_)) putWithComItextpdfTextPdfPdfName:name withComItextpdfTextPdfPdfObject:reference];
  return name;
}


#line 146
- (ComItextpdfTextPdfPdfName *)addPatternWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                            withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)reference {
  
#line 147
  name = [self translateNameWithComItextpdfTextPdfPdfName:name];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(patternDictionary_)) putWithComItextpdfTextPdfPdfName:name withComItextpdfTextPdfPdfObject:reference];
  return name;
}


#line 152
- (ComItextpdfTextPdfPdfName *)addExtGStateWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                              withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)reference {
  
#line 153
  name = [self translateNameWithComItextpdfTextPdfPdfName:name];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(extGStateDictionary_)) putWithComItextpdfTextPdfPdfName:name withComItextpdfTextPdfPdfObject:reference];
  return name;
}


#line 158
- (ComItextpdfTextPdfPdfName *)addPropertyWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)name
                             withComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)reference {
  
#line 159
  name = [self translateNameWithComItextpdfTextPdfPdfName:name];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(propertyDictionary_)) putWithComItextpdfTextPdfPdfName:name withComItextpdfTextPdfPdfObject:reference];
  return name;
}


#line 164
- (ComItextpdfTextPdfPdfDictionary *)getResources {
  
#line 165
  ComItextpdfTextPdfPdfResources *resources = [[ComItextpdfTextPdfPdfResources alloc] init];
  if (originalResources_ != nil)
#line 167
  [resources putAllWithComItextpdfTextPdfPdfDictionary:originalResources_];
  [resources addWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FONT_() withComItextpdfTextPdfPdfDictionary:fontDictionary_];
  [resources addWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_XOBJECT_() withComItextpdfTextPdfPdfDictionary:xObjectDictionary_];
  [resources addWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_COLORSPACE_() withComItextpdfTextPdfPdfDictionary:colorDictionary_];
  [resources addWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PATTERN_() withComItextpdfTextPdfPdfDictionary:patternDictionary_];
  [resources addWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SHADING_() withComItextpdfTextPdfPdfDictionary:shadingDictionary_];
  [resources addWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_EXTGSTATE_() withComItextpdfTextPdfPdfDictionary:extGStateDictionary_];
  [resources addWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PROPERTIES_() withComItextpdfTextPdfPdfDictionary:propertyDictionary_];
  return resources;
}


#line 178
- (jboolean)hasResources {
  
#line 179
  return [((ComItextpdfTextPdfPdfDictionary *) nil_chk(fontDictionary_)) size] > 0 ||
#line 180
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(xObjectDictionary_)) size] > 0 ||
#line 181
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(colorDictionary_)) size] > 0 ||
#line 182
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(patternDictionary_)) size] > 0 ||
#line 183
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(shadingDictionary_)) size] > 0 ||
#line 184
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(extGStateDictionary_)) size] > 0 ||
#line 185
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(propertyDictionary_)) size] > 0;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPageResources *)other {
  [super copyAllFieldsTo:other];
  other->colorDictionary_ = colorDictionary_;
  other->extGStateDictionary_ = extGStateDictionary_;
  other->fontDictionary_ = fontDictionary_;
  other->forbiddenNames_ = forbiddenNames_;
  other->namePtr_ = namePtr_;
  other->originalResources_ = originalResources_;
  other->patternDictionary_ = patternDictionary_;
  other->propertyDictionary_ = propertyDictionary_;
  other->shadingDictionary_ = shadingDictionary_;
  other->usedNames_ = usedNames_;
  other->xObjectDictionary_ = xObjectDictionary_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PageResources", NULL, 0x0, NULL },
    { "setOriginalResourcesWithComItextpdfTextPdfPdfDictionary:withIntArray:", "setOriginalResources", "V", 0x0, NULL },
    { "translateNameWithComItextpdfTextPdfPdfName:", "translateName", "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "addFontWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfIndirectReference:", "addFont", "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "addXObjectWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfIndirectReference:", "addXObject", "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "addColorWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfIndirectReference:", "addColor", "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "addDefaultColorWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfObject:", "addDefaultColor", "V", 0x0, NULL },
    { "addDefaultColorWithComItextpdfTextPdfPdfDictionary:", "addDefaultColor", "V", 0x0, NULL },
    { "addDefaultColorDiffWithComItextpdfTextPdfPdfDictionary:", "addDefaultColorDiff", "V", 0x0, NULL },
    { "addShadingWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfIndirectReference:", "addShading", "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "addPatternWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfIndirectReference:", "addPattern", "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "addExtGStateWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfIndirectReference:", "addExtGState", "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "addPropertyWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfIndirectReference:", "addProperty", "Lcom.itextpdf.text.pdf.PdfName;", 0x0, NULL },
    { "getResources", NULL, "Lcom.itextpdf.text.pdf.PdfDictionary;", 0x0, NULL },
    { "hasResources", NULL, "Z", 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fontDictionary_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "xObjectDictionary_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "colorDictionary_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "patternDictionary_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "shadingDictionary_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "extGStateDictionary_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "propertyDictionary_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "forbiddenNames_", NULL, 0x4, "Ljava.util.HashSet;", NULL,  },
    { "originalResources_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "namePtr_", NULL, 0x4, "[I", NULL,  },
    { "usedNames_", NULL, 0x4, "Ljava.util.HashMap;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPageResources = { "PageResources", "com.itextpdf.text.pdf", NULL, 0x0, 15, methods, 11, fields, 0, NULL};
  return &_ComItextpdfTextPdfPageResources;
}

@end
