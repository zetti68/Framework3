//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/LangAlt.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/LangAlt.java"

#include "IOSClass.h"
#include "com/itextpdf/text/xml/XMLUtil.h"
#include "com/itextpdf/text/xml/xmp/LangAlt.h"
#include "java/lang/Deprecated.h"
#include "java/lang/StringBuffer.h"
#include "java/util/Enumeration.h"
#include "java/util/Hashtable.h"
#include "java/util/Properties.h"


#line 53
@implementation ComItextpdfTextXmlXmpLangAlt

NSString * ComItextpdfTextXmlXmpLangAlt_DEFAULT_ = 
#line 59
@"x-default";


#line 62
- (instancetype)initWithNSString:(NSString *)defaultValue {
  if (self =
#line 63
  [super init]) {
    
#line 64
    [self addLanguageWithNSString:ComItextpdfTextXmlXmpLangAlt_DEFAULT_ withNSString:defaultValue];
  }
  return self;
}


#line 68
- (instancetype)init {
  return
#line 69
  [super init];
}


#line 75
- (void)addLanguageWithNSString:(NSString *)language
                   withNSString:(NSString *)value {
  
#line 76
  (void) [self setPropertyWithNSString:language withNSString:[ComItextpdfTextXmlXMLUtil escapeXMLWithNSString:value withBoolean:NO]];
}

- (void)processWithJavaLangStringBuffer:(JavaLangStringBuffer *)buf
                                 withId:(id)lang {
  
#line 83
  (void) [((JavaLangStringBuffer *) nil_chk(buf)) appendWithNSString:@"<rdf:li xml:lang=\""];
  (void) [buf appendWithId:lang];
  (void) [buf appendWithNSString:@"\" >"];
  (void) [buf appendWithId:[self getWithId:lang]];
  (void) [buf appendWithNSString:@"</rdf:li>"];
}

- (NSString *)description {
  
#line 95
  JavaLangStringBuffer *sb = [[JavaLangStringBuffer alloc] init];
  (void) [sb appendWithNSString:@"<rdf:Alt>"];
  for (id<JavaUtilEnumeration> e = [self propertyNames]; [((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]; ) {
    [self processWithJavaLangStringBuffer:sb withId:[e nextElement]];
  }
  (void) [sb appendWithNSString:@"</rdf:Alt>"];
  return [sb description];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "LangAlt", NULL, 0x1, NULL },
    { "init", "LangAlt", NULL, 0x1, NULL },
    { "addLanguageWithNSString:withNSString:", "addLanguage", "V", 0x1, NULL },
    { "processWithJavaLangStringBuffer:withId:", "process", "V", 0x4, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextXmlXmpLangAlt_serialVersionUID },
    { "DEFAULT_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpLangAlt_DEFAULT_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextXmlXmpLangAlt = { "LangAlt", "com.itextpdf.text.xml.xmp", NULL, 0x1, 5, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextXmlXmpLangAlt;
}

@end