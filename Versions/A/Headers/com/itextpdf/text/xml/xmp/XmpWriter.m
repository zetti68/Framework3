//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/XmpWriter.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/XmpWriter.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/Version.h"
#include "com/itextpdf/text/pdf/PdfDate.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/xml/xmp/DublinCoreProperties.h"
#include "com/itextpdf/text/xml/xmp/PdfProperties.h"
#include "com/itextpdf/text/xml/xmp/XmpBasicProperties.h"
#include "com/itextpdf/text/xml/xmp/XmpSchema.h"
#include "com/itextpdf/text/xml/xmp/XmpWriter.h"
#include "com/itextpdf/xmp/XMPConst.h"
#include "com/itextpdf/xmp/XMPException.h"
#include "com/itextpdf/xmp/XMPMeta.h"
#include "com/itextpdf/xmp/XMPMetaFactory.h"
#include "com/itextpdf/xmp/XMPUtils.h"
#include "com/itextpdf/xmp/options/PropertyOptions.h"
#include "com/itextpdf/xmp/options/SerializeOptions.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/lang/Deprecated.h"
#include "java/util/Map.h"
#include "java/util/Set.h"


#line 66
@implementation ComItextpdfTextXmlXmpXmpWriter

NSString * ComItextpdfTextXmlXmpXmpWriter_UTF8_ = 
#line 69
@"UTF-8";
NSString * ComItextpdfTextXmlXmpXmpWriter_UTF16_ = @"UTF-16";
NSString * ComItextpdfTextXmlXmpXmpWriter_UTF16BE_ = 
#line 73
@"UTF-16BE";
NSString * ComItextpdfTextXmlXmpXmpWriter_UTF16LE_ = @"UTF-16LE";


#line 88
- (instancetype)initComItextpdfTextXmlXmpXmpWriterWithJavaIoOutputStream:(JavaIoOutputStream *)os
                                                            withNSString:(NSString *)utfEncoding
                                                                 withInt:(jint)extraSpace {
  if (self = [super init]) {
    
#line 89
    outputStream_ = os;
    
#line 90
    serializeOptions_ = [[ComItextpdfXmpOptionsSerializeOptions alloc] init];
    
#line 91
    if ([((NSString *) nil_chk(ComItextpdfTextXmlXmpXmpWriter_UTF16BE_)) isEqual:utfEncoding] || [((NSString *) nil_chk(ComItextpdfTextXmlXmpXmpWriter_UTF16_)) isEqual:utfEncoding])
#line 92
    (void) [serializeOptions_ setEncodeUTF16BEWithBoolean:YES];
    else if ([((NSString *) nil_chk(ComItextpdfTextXmlXmpXmpWriter_UTF16LE_)) isEqual:utfEncoding])
#line 94
    (void) [serializeOptions_ setEncodeUTF16LEWithBoolean:YES];
    
#line 95
    (void) [serializeOptions_ setPaddingWithInt:extraSpace];
    
#line 96
    xmpMeta_ = [ComItextpdfXmpXMPMetaFactory create];
    
#line 97
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setObjectNameWithNSString:ComItextpdfXmpXMPConst_get_TAG_XMPMETA_()];
    
#line 98
    [xmpMeta_ setObjectNameWithNSString:@""];
    
#line 99
    @try {
      [xmpMeta_ setPropertyWithNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:ComItextpdfTextXmlXmpDublinCoreProperties_get_FORMAT_() withId:@"application/pdf"];
      [xmpMeta_ setPropertyWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:ComItextpdfTextXmlXmpPdfProperties_get_PRODUCER_() withId:[((ComItextpdfTextVersion *) nil_chk([ComItextpdfTextVersion getInstance])) getVersion]];
    }
    @catch (
#line 102
    ComItextpdfXmpXMPException *xmpExc) {
    }
  }
  return self;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os
                              withNSString:(NSString *)utfEncoding
                                   withInt:(jint)extraSpace {
  return [self initComItextpdfTextXmlXmpXmpWriterWithJavaIoOutputStream:
#line 88
os withNSString:utfEncoding withInt:extraSpace];
}


#line 110
- (instancetype)initComItextpdfTextXmlXmpXmpWriterWithJavaIoOutputStream:(JavaIoOutputStream *)os {
  return
#line 111
  [self initComItextpdfTextXmlXmpXmpWriterWithJavaIoOutputStream:os withNSString:ComItextpdfTextXmlXmpXmpWriter_UTF8_ withInt:2000];
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os {
  return [self initComItextpdfTextXmlXmpXmpWriterWithJavaIoOutputStream:
#line 110
os];
}


#line 119
- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os
       withComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)info {
  if (self =
#line 120
  [self initComItextpdfTextXmlXmpXmpWriterWithJavaIoOutputStream:os]) {
    if (info != nil) {
      ComItextpdfTextPdfPdfName *key;
      ComItextpdfTextPdfPdfObject *obj;
      NSString *value;
      for (ComItextpdfTextPdfPdfName * __strong pdfName in nil_chk([info getKeys])) {
        key = pdfName;
        obj = [info getWithComItextpdfTextPdfPdfName:key];
        if (obj == nil)
#line 129
        continue;
        if (![((ComItextpdfTextPdfPdfObject *) nil_chk(obj)) isString])
#line 131
        continue;
        value = [((ComItextpdfTextPdfPdfString *) check_class_cast(obj, [ComItextpdfTextPdfPdfString class])) toUnicodeString];
        @try {
          [self addDocInfoPropertyWithId:key withNSString:value];
        }
        @catch (
#line 135
        ComItextpdfXmpXMPException *xmpExc) {
          @throw [[JavaIoIOException alloc] initWithNSString:[((ComItextpdfXmpXMPException *) nil_chk(xmpExc)) getMessage]];
        }
      }
    }
  }
  return self;
}


#line 148
- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)os
                           withJavaUtilMap:(id<JavaUtilMap>)info {
  if (self =
#line 149
  [self initComItextpdfTextXmlXmpXmpWriterWithJavaIoOutputStream:os]) {
    
#line 150
    if (info != nil) {
      NSString *key;
      NSString *value;
      for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([info entrySet])) {
        key = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
        value = [entry_ getValue];
        if (value == nil)
#line 157
        continue;
        @try {
          [self addDocInfoPropertyWithId:key withNSString:value];
        }
        @catch (
#line 160
        ComItextpdfXmpXMPException *xmpExc) {
          @throw [[JavaIoIOException alloc] initWithNSString:[((ComItextpdfXmpXMPException *) nil_chk(xmpExc)) getMessage]];
        }
      }
    }
  }
  return self;
}


#line 167
- (id<ComItextpdfXmpXMPMeta>)getXmpMeta {
  
#line 168
  return xmpMeta_;
}


#line 172
- (void)setReadOnly {
  (void) [((ComItextpdfXmpOptionsSerializeOptions *) nil_chk(serializeOptions_)) setReadOnlyPacketWithBoolean:YES];
}


#line 179
- (void)setAboutWithNSString:(NSString *)about {
  
#line 180
  [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setObjectNameWithNSString:about];
}


#line 190
- (void)addRdfDescriptionWithNSString:(NSString *)xmlns
                         withNSString:(NSString *)content {
  
#line 191
  @try {
    NSString *str = JreStrcat("$$$$$$C$$", @"<rdf:RDF xmlns:rdf=\"", ComItextpdfXmpXMPConst_get_NS_RDF_(), @"\"><rdf:Description rdf:about=\"",
#line 193
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) getObjectName], @"\" ",
#line 195
    xmlns, '>',
#line 197
    content, @"</rdf:Description></rdf:RDF>\n");
    
#line 199
    id<ComItextpdfXmpXMPMeta> extMeta = [ComItextpdfXmpXMPMetaFactory parseFromStringWithNSString:str];
    [ComItextpdfXmpXMPUtils appendPropertiesWithComItextpdfXmpXMPMeta:extMeta withComItextpdfXmpXMPMeta:xmpMeta_ withBoolean:YES withBoolean:YES];
  }
  @catch (
#line 201
  ComItextpdfXmpXMPException *xmpExc) {
    @throw [[JavaIoIOException alloc] initWithNSString:[((ComItextpdfXmpXMPException *) nil_chk(xmpExc)) getMessage]];
  }
}


#line 212
- (void)addRdfDescriptionWithComItextpdfTextXmlXmpXmpSchema:(ComItextpdfTextXmlXmpXmpSchema *)s {
  
#line 213
  @try {
    NSString *str = JreStrcat("$$$$$$C$$", @"<rdf:RDF xmlns:rdf=\"", ComItextpdfXmpXMPConst_get_NS_RDF_(), @"\"><rdf:Description rdf:about=\"",
#line 215
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) getObjectName], @"\" ",
#line 217
    [((ComItextpdfTextXmlXmpXmpSchema *) nil_chk(s)) getXmlns], '>',
#line 219
    [s description], @"</rdf:Description></rdf:RDF>\n");
    
#line 221
    id<ComItextpdfXmpXMPMeta> extMeta = [ComItextpdfXmpXMPMetaFactory parseFromStringWithNSString:str];
    [ComItextpdfXmpXMPUtils appendPropertiesWithComItextpdfXmpXMPMeta:extMeta withComItextpdfXmpXMPMeta:xmpMeta_ withBoolean:YES withBoolean:YES];
  }
  @catch (
#line 223
  ComItextpdfXmpXMPException *xmpExc) {
    @throw [[JavaIoIOException alloc] initWithNSString:[((ComItextpdfXmpXMPException *) nil_chk(xmpExc)) getMessage]];
  }
}


#line 239
- (void)setPropertyWithNSString:(NSString *)schemaNS
                   withNSString:(NSString *)propName
                         withId:(id)value {
  
#line 240
  [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setPropertyWithNSString:schemaNS withNSString:propName withId:value];
}


#line 254
- (void)appendArrayItemWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)arrayName
                       withNSString:(NSString *)value {
  
#line 255
  [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) appendArrayItemWithNSString:schemaNS withNSString:arrayName withComItextpdfXmpOptionsPropertyOptions:[[ComItextpdfXmpOptionsPropertyOptions alloc] initWithInt:ComItextpdfXmpOptionsPropertyOptions_ARRAY] withNSString:value withComItextpdfXmpOptionsPropertyOptions:nil];
}


#line 269
- (void)appendOrderedArrayItemWithNSString:(NSString *)schemaNS
                              withNSString:(NSString *)arrayName
                              withNSString:(NSString *)value {
  
#line 270
  [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) appendArrayItemWithNSString:schemaNS withNSString:arrayName withComItextpdfXmpOptionsPropertyOptions:[[ComItextpdfXmpOptionsPropertyOptions alloc] initWithInt:ComItextpdfXmpOptionsPropertyOptions_ARRAY_ORDERED] withNSString:value withComItextpdfXmpOptionsPropertyOptions:nil];
}


#line 284
- (void)appendAlternateArrayItemWithNSString:(NSString *)schemaNS
                                withNSString:(NSString *)arrayName
                                withNSString:(NSString *)value {
  
#line 285
  [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) appendArrayItemWithNSString:schemaNS withNSString:arrayName withComItextpdfXmpOptionsPropertyOptions:[[ComItextpdfXmpOptionsPropertyOptions alloc] initWithInt:ComItextpdfXmpOptionsPropertyOptions_ARRAY_ALTERNATE] withNSString:value withComItextpdfXmpOptionsPropertyOptions:nil];
}

- (void)serializeWithJavaIoOutputStream:(JavaIoOutputStream *)externalOutputStream {
  
#line 293
  [ComItextpdfXmpXMPMetaFactory serializeWithComItextpdfXmpXMPMeta:xmpMeta_ withJavaIoOutputStream:externalOutputStream withComItextpdfXmpOptionsSerializeOptions:serializeOptions_];
}


#line 300
- (void)close {
  
#line 301
  if (outputStream_ == nil)
#line 302
  return;
  @try {
    [ComItextpdfXmpXMPMetaFactory serializeWithComItextpdfXmpXMPMeta:xmpMeta_ withJavaIoOutputStream:outputStream_ withComItextpdfXmpOptionsSerializeOptions:serializeOptions_];
    outputStream_ = nil;
  }
  @catch (
#line 306
  ComItextpdfXmpXMPException *xmpExc) {
    @throw [[JavaIoIOException alloc] initWithNSString:[((ComItextpdfXmpXMPException *) nil_chk(xmpExc)) getMessage]];
  }
}


#line 311
- (void)addDocInfoPropertyWithId:(id)key
                    withNSString:(NSString *)value {
  
#line 312
  if ([key isKindOfClass:[NSString class]])
#line 313
  key = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:(NSString *) check_class_cast(key, [NSString class])];
  if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_TITLE_())) isEqual:key]) {
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setLocalizedTextWithNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:ComItextpdfTextXmlXmpDublinCoreProperties_get_TITLE_() withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_() withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_() withNSString:value];
  }
  else
#line 316
  if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_AUTHOR_())) isEqual:key]) {
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) appendArrayItemWithNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:ComItextpdfTextXmlXmpDublinCoreProperties_get_CREATOR_() withComItextpdfXmpOptionsPropertyOptions:[[ComItextpdfXmpOptionsPropertyOptions alloc] initWithInt:ComItextpdfXmpOptionsPropertyOptions_ARRAY_ORDERED] withNSString:value withComItextpdfXmpOptionsPropertyOptions:nil];
  }
  else
#line 318
  if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_SUBJECT_())) isEqual:key]) {
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setLocalizedTextWithNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:ComItextpdfTextXmlXmpDublinCoreProperties_get_DESCRIPTION_() withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_() withNSString:ComItextpdfXmpXMPConst_get_X_DEFAULT_() withNSString:value];
  }
  else
#line 320
  if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_KEYWORDS_())) isEqual:key]) {
    {
      IOSObjectArray *a__ =
#line 321
      [((NSString *) nil_chk(value)) split:@",|;"];
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *v = *b__++;
        
#line 322
        [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) appendArrayItemWithNSString:ComItextpdfXmpXMPConst_get_NS_DC_() withNSString:ComItextpdfTextXmlXmpDublinCoreProperties_get_SUBJECT_() withComItextpdfXmpOptionsPropertyOptions:[[ComItextpdfXmpOptionsPropertyOptions alloc] initWithInt:ComItextpdfXmpOptionsPropertyOptions_ARRAY] withNSString:[((NSString *) nil_chk(v)) trim] withComItextpdfXmpOptionsPropertyOptions:nil];
      }
    }
    
#line 323
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setPropertyWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:ComItextpdfTextXmlXmpPdfProperties_get_KEYWORDS_() withId:value];
  }
  else
#line 324
  if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_PRODUCER_())) isEqual:key]) {
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setPropertyWithNSString:ComItextpdfXmpXMPConst_get_NS_PDF_() withNSString:ComItextpdfTextXmlXmpPdfProperties_get_PRODUCER_() withId:value];
  }
  else
#line 326
  if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_CREATOR_())) isEqual:key]) {
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setPropertyWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:ComItextpdfTextXmlXmpXmpBasicProperties_get_CREATORTOOL_() withId:value];
  }
  else
#line 328
  if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_CREATIONDATE_())) isEqual:key]) {
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setPropertyWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:ComItextpdfTextXmlXmpXmpBasicProperties_get_CREATEDATE_() withId:[ComItextpdfTextPdfPdfDate getW3CDateWithNSString:value]];
  }
  else
#line 330
  if ([((ComItextpdfTextPdfPdfName *) nil_chk(ComItextpdfTextPdfPdfName_get_MODDATE_())) isEqual:key]) {
    [((id<ComItextpdfXmpXMPMeta>) nil_chk(xmpMeta_)) setPropertyWithNSString:ComItextpdfXmpXMPConst_get_NS_XMP_() withNSString:ComItextpdfTextXmlXmpXmpBasicProperties_get_MODIFYDATE_() withId:[ComItextpdfTextPdfPdfDate getW3CDateWithNSString:value]];
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextXmlXmpXmpWriter *)other {
  [super copyAllFieldsTo:other];
  other->outputStream_ = outputStream_;
  other->serializeOptions_ = serializeOptions_;
  other->xmpMeta_ = xmpMeta_;
}

+ (IOSObjectArray *)__annotations_addRdfDescriptionWithNSString_withNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_addRdfDescriptionWithComItextpdfTextXmlXmpXmpSchema_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoOutputStream:withNSString:withInt:", "XmpWriter", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithJavaIoOutputStream:", "XmpWriter", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithJavaIoOutputStream:withComItextpdfTextPdfPdfDictionary:", "XmpWriter", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithJavaIoOutputStream:withJavaUtilMap:", "XmpWriter", NULL, 0x1, "Ljava.io.IOException;" },
    { "getXmpMeta", NULL, "Lcom.itextpdf.xmp.XMPMeta;", 0x1, NULL },
    { "setReadOnly", NULL, "V", 0x1, NULL },
    { "setAboutWithNSString:", "setAbout", "V", 0x1, NULL },
    { "addRdfDescriptionWithNSString:withNSString:", "addRdfDescription", "V", 0x1, "Ljava.io.IOException;" },
    { "addRdfDescriptionWithComItextpdfTextXmlXmpXmpSchema:", "addRdfDescription", "V", 0x1, "Ljava.io.IOException;" },
    { "setPropertyWithNSString:withNSString:withId:", "setProperty", "V", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "appendArrayItemWithNSString:withNSString:withNSString:", "appendArrayItem", "V", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "appendOrderedArrayItemWithNSString:withNSString:withNSString:", "appendOrderedArrayItem", "V", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "appendAlternateArrayItemWithNSString:withNSString:withNSString:", "appendAlternateArrayItem", "V", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "serializeWithJavaIoOutputStream:", "serialize", "V", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;" },
    { "addDocInfoPropertyWithId:withNSString:", "addDocInfoProperty", "V", 0x1, "Lcom.itextpdf.xmp.XMPException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "UTF8_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpWriter_UTF8_,  },
    { "UTF16_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpWriter_UTF16_,  },
    { "UTF16BE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpWriter_UTF16BE_,  },
    { "UTF16LE_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpWriter_UTF16LE_,  },
    { "xmpMeta_", NULL, 0x4, "Lcom.itextpdf.xmp.XMPMeta;", NULL,  },
    { "outputStream_", NULL, 0x4, "Ljava.io.OutputStream;", NULL,  },
    { "serializeOptions_", NULL, 0x4, "Lcom.itextpdf.xmp.options.SerializeOptions;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextXmlXmpXmpWriter = { "XmpWriter", "com.itextpdf.text.xml.xmp", NULL, 0x1, 16, methods, 7, fields, 0, NULL};
  return &_ComItextpdfTextXmlXmpXmpWriter;
}

@end