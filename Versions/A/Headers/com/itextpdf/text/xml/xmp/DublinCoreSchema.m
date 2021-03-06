//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/DublinCoreSchema.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/DublinCoreSchema.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/xml/xmp/DublinCoreSchema.h"
#include "com/itextpdf/text/xml/xmp/LangAlt.h"
#include "com/itextpdf/text/xml/xmp/XmpArray.h"
#include "com/itextpdf/text/xml/xmp/XmpSchema.h"
#include "java/lang/Deprecated.h"


#line 58
@implementation ComItextpdfTextXmlXmpDublinCoreSchema

NSString * ComItextpdfTextXmlXmpDublinCoreSchema_DEFAULT_XPATH_ID_ = 
#line 62
@"dc";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_DEFAULT_XPATH_URI_ = 
#line 64
@"http://purl.org/dc/elements/1.1/";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_CONTRIBUTOR_ = 
#line 67
@"dc:contributor";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_COVERAGE_ = @"dc:coverage";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_CREATOR_ = 
#line 71
@"dc:creator";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_DATE_ = @"dc:date";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_DESCRIPTION_ = 
#line 75
@"dc:description";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_FORMAT_ = @"dc:format";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_IDENTIFIER_ = 
#line 79
@"dc:identifier";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_LANGUAGE_ = @"dc:language";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_PUBLISHER_ = 
#line 83
@"dc:publisher";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_RELATION_ = @"dc:relation";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_RIGHTS_ = 
#line 87
@"dc:rights";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_SOURCE_ = @"dc:source";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_SUBJECT_ = 
#line 91
@"dc:subject";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_TITLE_ = @"dc:title";
NSString * ComItextpdfTextXmlXmpDublinCoreSchema_TYPE_ = 
#line 95
@"dc:type";

- (instancetype)init {
  if (self =
#line 99
  [super initWithNSString:JreStrcat("$$$$C", @"xmlns:", ComItextpdfTextXmlXmpDublinCoreSchema_DEFAULT_XPATH_ID_, @"=\"", ComItextpdfTextXmlXmpDublinCoreSchema_DEFAULT_XPATH_URI_, '"')]) {
    
#line 100
    (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_FORMAT_ withNSString:@"application/pdf"];
  }
  return self;
}


#line 107
- (void)addTitleWithNSString:(NSString *)title {
  
#line 108
  ComItextpdfTextXmlXmpXmpArray *array = [[ComItextpdfTextXmlXmpXmpArray alloc] initWithNSString:ComItextpdfTextXmlXmpXmpArray_get_ALTERNATIVE_()];
  [array addWithId:title];
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_TITLE_ withComItextpdfTextXmlXmpXmpArray:array];
}


#line 117
- (void)addTitleWithComItextpdfTextXmlXmpLangAlt:(ComItextpdfTextXmlXmpLangAlt *)title {
  
#line 118
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_TITLE_ withComItextpdfTextXmlXmpLangAlt:title];
}


#line 125
- (void)addDescriptionWithNSString:(NSString *)desc {
  
#line 126
  ComItextpdfTextXmlXmpXmpArray *array = [[ComItextpdfTextXmlXmpXmpArray alloc] initWithNSString:ComItextpdfTextXmlXmpXmpArray_get_ALTERNATIVE_()];
  [array addWithId:desc];
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_DESCRIPTION_ withComItextpdfTextXmlXmpXmpArray:array];
}


#line 135
- (void)addDescriptionWithComItextpdfTextXmlXmpLangAlt:(ComItextpdfTextXmlXmpLangAlt *)desc {
  
#line 136
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_DESCRIPTION_ withComItextpdfTextXmlXmpLangAlt:desc];
}


#line 143
- (void)addSubjectWithNSString:(NSString *)subject {
  
#line 144
  ComItextpdfTextXmlXmpXmpArray *array = [[ComItextpdfTextXmlXmpXmpArray alloc] initWithNSString:ComItextpdfTextXmlXmpXmpArray_get_UNORDERED_()];
  [array addWithId:subject];
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_SUBJECT_ withComItextpdfTextXmlXmpXmpArray:array];
}


#line 154
- (void)addSubjectWithNSStringArray:(IOSObjectArray *)subject {
  
#line 155
  ComItextpdfTextXmlXmpXmpArray *array = [[ComItextpdfTextXmlXmpXmpArray alloc] initWithNSString:ComItextpdfTextXmlXmpXmpArray_get_UNORDERED_()];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subject))->size_; i++) {
    [array addWithId:IOSObjectArray_Get(subject, i)];
  }
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_SUBJECT_ withComItextpdfTextXmlXmpXmpArray:array];
}


#line 166
- (void)addAuthorWithNSString:(NSString *)author {
  
#line 167
  ComItextpdfTextXmlXmpXmpArray *array = [[ComItextpdfTextXmlXmpXmpArray alloc] initWithNSString:ComItextpdfTextXmlXmpXmpArray_get_ORDERED_()];
  [array addWithId:author];
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_CREATOR_ withComItextpdfTextXmlXmpXmpArray:array];
}


#line 176
- (void)addAuthorWithNSStringArray:(IOSObjectArray *)author {
  
#line 177
  ComItextpdfTextXmlXmpXmpArray *array = [[ComItextpdfTextXmlXmpXmpArray alloc] initWithNSString:ComItextpdfTextXmlXmpXmpArray_get_ORDERED_()];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(author))->size_; i++) {
    [array addWithId:IOSObjectArray_Get(author, i)];
  }
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_CREATOR_ withComItextpdfTextXmlXmpXmpArray:array];
}


#line 188
- (void)addPublisherWithNSString:(NSString *)publisher {
  
#line 189
  ComItextpdfTextXmlXmpXmpArray *array = [[ComItextpdfTextXmlXmpXmpArray alloc] initWithNSString:ComItextpdfTextXmlXmpXmpArray_get_ORDERED_()];
  [array addWithId:publisher];
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_PUBLISHER_ withComItextpdfTextXmlXmpXmpArray:array];
}


#line 198
- (void)addPublisherWithNSStringArray:(IOSObjectArray *)publisher {
  
#line 199
  ComItextpdfTextXmlXmpXmpArray *array = [[ComItextpdfTextXmlXmpXmpArray alloc] initWithNSString:ComItextpdfTextXmlXmpXmpArray_get_ORDERED_()];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(publisher))->size_; i++) {
    [array addWithId:IOSObjectArray_Get(publisher, i)];
  }
  (void) [self setPropertyWithNSString:ComItextpdfTextXmlXmpDublinCoreSchema_PUBLISHER_ withComItextpdfTextXmlXmpXmpArray:array];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DublinCoreSchema", NULL, 0x1, NULL },
    { "addTitleWithNSString:", "addTitle", "V", 0x1, NULL },
    { "addTitleWithComItextpdfTextXmlXmpLangAlt:", "addTitle", "V", 0x1, NULL },
    { "addDescriptionWithNSString:", "addDescription", "V", 0x1, NULL },
    { "addDescriptionWithComItextpdfTextXmlXmpLangAlt:", "addDescription", "V", 0x1, NULL },
    { "addSubjectWithNSString:", "addSubject", "V", 0x1, NULL },
    { "addSubjectWithNSStringArray:", "addSubject", "V", 0x1, NULL },
    { "addAuthorWithNSString:", "addAuthor", "V", 0x1, NULL },
    { "addAuthorWithNSStringArray:", "addAuthor", "V", 0x1, NULL },
    { "addPublisherWithNSString:", "addPublisher", "V", 0x1, NULL },
    { "addPublisherWithNSStringArray:", "addPublisher", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextXmlXmpDublinCoreSchema_serialVersionUID },
    { "DEFAULT_XPATH_ID_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_DEFAULT_XPATH_ID_,  },
    { "DEFAULT_XPATH_URI_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_DEFAULT_XPATH_URI_,  },
    { "CONTRIBUTOR_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_CONTRIBUTOR_,  },
    { "COVERAGE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_COVERAGE_,  },
    { "CREATOR_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_CREATOR_,  },
    { "DATE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_DATE_,  },
    { "DESCRIPTION_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_DESCRIPTION_,  },
    { "FORMAT_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_FORMAT_,  },
    { "IDENTIFIER_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_IDENTIFIER_,  },
    { "LANGUAGE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_LANGUAGE_,  },
    { "PUBLISHER_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_PUBLISHER_,  },
    { "RELATION_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_RELATION_,  },
    { "RIGHTS_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_RIGHTS_,  },
    { "SOURCE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_SOURCE_,  },
    { "SUBJECT_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_SUBJECT_,  },
    { "TITLE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_TITLE_,  },
    { "TYPE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpDublinCoreSchema_TYPE_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextXmlXmpDublinCoreSchema = { "DublinCoreSchema", "com.itextpdf.text.xml.xmp", NULL, 0x1, 11, methods, 18, fields, 0, NULL};
  return &_ComItextpdfTextXmlXmpDublinCoreSchema;
}

@end
