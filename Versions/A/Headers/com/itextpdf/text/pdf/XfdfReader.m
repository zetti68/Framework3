//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/XfdfReader.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/XfdfReader.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/XfdfReader.h"
#include "com/itextpdf/text/xml/simpleparser/SimpleXMLParser.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/FileInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Stack.h"


#line 65
@implementation ComItextpdfTextPdfXfdfReader


#line 87
- (instancetype)initWithNSString:(NSString *)filename {
  if (self = [super init]) {
    foundRoot_ =
#line 67
    NO;
    fieldNames_ =
#line 68
    [[JavaUtilStack alloc] init];
    fieldValues_ =
#line 69
    [[JavaUtilStack alloc] init];
    
#line 88
    JavaIoFileInputStream *fin = nil;
    
#line 89
    @try {
      fin = [[JavaIoFileInputStream alloc] initWithNSString:filename];
      [ComItextpdfTextXmlSimpleparserSimpleXMLParser parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:self withJavaIoInputStream:fin];
    }
    @finally {
      @try {
        
#line 94
        if (fin != nil) {
          
#line 94
          [fin close];
        }
      }
      @catch (
#line 94
      JavaLangException *e) {
      }
    }
  }
  return self;
}


#line 103
- (instancetype)initWithByteArray:(IOSByteArray *)xfdfIn {
  return
#line 104
  [self initComItextpdfTextPdfXfdfReaderWithJavaIoInputStream:[[JavaIoByteArrayInputStream alloc] initWithByteArray:xfdfIn]];
}


#line 113
- (instancetype)initComItextpdfTextPdfXfdfReaderWithJavaIoInputStream:(JavaIoInputStream *)is {
  if (self = [super init]) {
    foundRoot_ =
#line 67
    NO;
    fieldNames_ =
#line 68
    [[JavaUtilStack alloc] init];
    fieldValues_ =
#line 69
    [[JavaUtilStack alloc] init];
    
#line 114
    [ComItextpdfTextXmlSimpleparserSimpleXMLParser parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:self withJavaIoInputStream:is];
  }
  return self;
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)is {
  return [self initComItextpdfTextPdfXfdfReaderWithJavaIoInputStream:
#line 113
is];
}


#line 122
- (JavaUtilHashMap *)getFields {
  
#line 123
  return fields_;
}


#line 130
- (NSString *)getFieldWithNSString:(NSString *)name {
  
#line 131
  return [((JavaUtilHashMap *) nil_chk(fields_)) getWithId:name];
}


#line 139
- (NSString *)getFieldValueWithNSString:(NSString *)name {
  
#line 140
  NSString *field = [((JavaUtilHashMap *) nil_chk(fields_)) getWithId:name];
  if (field == nil)
#line 142
  return nil;
  else
#line 144
  return field;
}


#line 154
- (id<JavaUtilList>)getListValuesWithNSString:(NSString *)name {
  
#line 155
  return [((JavaUtilHashMap *) nil_chk(listFields_)) getWithId:name];
}


#line 161
- (NSString *)getFileSpec {
  
#line 162
  return fileSpec_;
}


#line 170
- (void)startElementWithNSString:(NSString *)tag
                 withJavaUtilMap:(id<JavaUtilMap>)h {
  
#line 172
  if (!foundRoot_) {
    if (![((NSString *) nil_chk(tag)) isEqual:@"xfdf"])
#line 174
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"root.element.is.not.xfdf.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ tag } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    else
#line 176
    foundRoot_ = YES;
  }
  
#line 179
  if ([((NSString *) nil_chk(tag)) isEqual:@"xfdf"]) {
  }
  else if ([tag isEqual:@"f"]) {
    fileSpec_ = [((id<JavaUtilMap>) nil_chk(h)) getWithId:@"href"];
  }
  else
#line 183
  if ([tag isEqual:@"fields"]) {
    fields_ = [[JavaUtilHashMap alloc] init];
    listFields_ = [[JavaUtilHashMap alloc] init];
  }
  else
#line 186
  if ([tag isEqual:@"field"]) {
    NSString *fName = [((id<JavaUtilMap>) nil_chk(h)) getWithId:@"name"];
    (void) [((JavaUtilStack *) nil_chk(fieldNames_)) pushWithId:fName];
  }
  else
#line 189
  if ([tag isEqual:@"value"]) {
    (void) [((JavaUtilStack *) nil_chk(fieldValues_)) pushWithId:@""];
  }
}


#line 197
- (void)endElementWithNSString:(NSString *)tag {
  
#line 198
  if ([((NSString *) nil_chk(tag)) isEqual:@"value"]) {
    NSString *fName = @"";
    for (jint k = 0; k < [((JavaUtilStack *) nil_chk(fieldNames_)) size]; ++k) {
      fName = JreStrcat("$$", fName, JreStrcat("C$", '.', [fieldNames_ elementAtWithInt:k]));
    }
    if ([fName hasPrefix:@"."])
#line 204
    fName = [fName substring:1];
    NSString *fVal = [((JavaUtilStack *) nil_chk(fieldValues_)) pop];
    NSString *old = [((JavaUtilHashMap *) nil_chk(fields_)) putWithId:fName withId:fVal];
    if (old != nil) {
      id<JavaUtilList> l = [((JavaUtilHashMap *) nil_chk(listFields_)) getWithId:fName];
      if (l == nil) {
        l = [[JavaUtilArrayList alloc] init];
        [l addWithId:old];
      }
      [((id<JavaUtilList>) nil_chk(l)) addWithId:fVal];
      (void) [listFields_ putWithId:fName withId:l];
    }
  }
  else if ([tag isEqual:@"field"]) {
    if (![((JavaUtilStack *) nil_chk(fieldNames_)) isEmpty])
#line 219
    (void) [fieldNames_ pop];
  }
}


#line 226
- (void)startDocument {
  
#line 228
  fileSpec_ = @"";
}


#line 233
- (void)endDocument {
}


#line 241
- (void)textWithNSString:(NSString *)str {
  
#line 243
  if ([((JavaUtilStack *) nil_chk(fieldNames_)) isEmpty] || [((JavaUtilStack *) nil_chk(fieldValues_)) isEmpty])
#line 244
  return;
  
#line 246
  NSString *val = [((JavaUtilStack *) nil_chk(fieldValues_)) pop];
  val = JreStrcat("$$", val, str);
  (void) [fieldValues_ pushWithId:val];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfXfdfReader *)other {
  [super copyAllFieldsTo:other];
  other->fieldNames_ = fieldNames_;
  other->fieldValues_ = fieldValues_;
  other->fields_ = fields_;
  other->fileSpec_ = fileSpec_;
  other->foundRoot_ = foundRoot_;
  other->listFields_ = listFields_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "XfdfReader", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithByteArray:", "XfdfReader", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithJavaIoInputStream:", "XfdfReader", NULL, 0x1, "Ljava.io.IOException;" },
    { "getFields", NULL, "Ljava.util.HashMap;", 0x1, NULL },
    { "getFieldWithNSString:", "getField", "Ljava.lang.String;", 0x1, NULL },
    { "getFieldValueWithNSString:", "getFieldValue", "Ljava.lang.String;", 0x1, NULL },
    { "getListValuesWithNSString:", "getListValues", "Ljava.util.List;", 0x1, NULL },
    { "getFileSpec", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "startElementWithNSString:withJavaUtilMap:", "startElement", "V", 0x1, NULL },
    { "endElementWithNSString:", "endElement", "V", 0x1, NULL },
    { "startDocument", NULL, "V", 0x1, NULL },
    { "endDocument", NULL, "V", 0x1, NULL },
    { "textWithNSString:", "text", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "foundRoot_", NULL, 0x2, "Z", NULL,  },
    { "fieldNames_", NULL, 0x12, "Ljava.util.Stack;", NULL,  },
    { "fieldValues_", NULL, 0x12, "Ljava.util.Stack;", NULL,  },
    { "fields_", NULL, 0x0, "Ljava.util.HashMap;", NULL,  },
    { "listFields_", NULL, 0x4, "Ljava.util.HashMap;", NULL,  },
    { "fileSpec_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfXfdfReader = { "XfdfReader", "com.itextpdf.text.pdf", NULL, 0x1, 13, methods, 6, fields, 0, NULL};
  return &_ComItextpdfTextPdfXfdfReader;
}

@end
