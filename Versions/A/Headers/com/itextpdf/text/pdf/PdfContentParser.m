//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfContentParser.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfContentParser.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PRTokeniser.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfContentParser.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfLiteral.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"


#line 56
@implementation ComItextpdfTextPdfPdfContentParser


#line 71
- (instancetype)initWithComItextpdfTextPdfPRTokeniser:(ComItextpdfTextPdfPRTokeniser *)tokeniser {
  if (self = [super init]) {
    
#line 72
    self->tokeniser_ = tokeniser;
  }
  return self;
}


#line 84
- (JavaUtilArrayList *)parseWithJavaUtilArrayList:(JavaUtilArrayList *)ls {
  
#line 85
  if (ls == nil)
#line 86
  ls = [[JavaUtilArrayList alloc] init];
  else
#line 88
  [ls clear];
  ComItextpdfTextPdfPdfObject *ob = nil;
  while ((ob = [self readPRObject]) != nil) {
    [((JavaUtilArrayList *) nil_chk(ls)) addWithId:ob];
    if ([((ComItextpdfTextPdfPdfObject *) nil_chk(ob)) type] == ComItextpdfTextPdfPdfContentParser_COMMAND_TYPE)
#line 93
    break;
  }
  return ls;
}


#line 102
- (ComItextpdfTextPdfPRTokeniser *)getTokeniser {
  return self->tokeniser_;
}


#line 110
- (void)setTokeniserWithComItextpdfTextPdfPRTokeniser:(ComItextpdfTextPdfPRTokeniser *)tokeniser {
  
#line 111
  self->tokeniser_ = tokeniser;
}


#line 119
- (ComItextpdfTextPdfPdfDictionary *)readDictionary {
  
#line 120
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  while (YES) {
    if (![self nextValidToken])
#line 123
    @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"unexpected.end.of.file" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    if ([((ComItextpdfTextPdfPRTokeniser *) nil_chk(tokeniser_)) getTokenType] == ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_END_DIC())
#line 125
    break;
    if ([tokeniser_ getTokenType] == ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_OTHER() && [@"def" isEqual:[tokeniser_ getStringValue]])
#line 127
    continue;
    if ([tokeniser_ getTokenType] != ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NAME())
#line 129
    @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"dictionary.key.1.is.not.a.name" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [tokeniser_ getStringValue] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    ComItextpdfTextPdfPdfName *name = [[ComItextpdfTextPdfPdfName alloc] initWithNSString:[tokeniser_ getStringValue] withBoolean:NO];
    ComItextpdfTextPdfPdfObject *obj = [self readPRObject];
    jint type = [((ComItextpdfTextPdfPdfObject *) nil_chk(obj)) type];
    if (-type == [((ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *) nil_chk(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_END_DIC())) ordinal])
#line 134
    @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"unexpected.gt.gt" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    if (-type == [((ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *) nil_chk(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_END_ARRAY())) ordinal])
#line 136
    @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"unexpected.close.bracket" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    [dic putWithComItextpdfTextPdfPdfName:name withComItextpdfTextPdfPdfObject:obj];
  }
  return dic;
}


#line 147
- (ComItextpdfTextPdfPdfArray *)readArray {
  
#line 148
  ComItextpdfTextPdfPdfArray *array = [[ComItextpdfTextPdfPdfArray alloc] init];
  while (YES) {
    ComItextpdfTextPdfPdfObject *obj = [self readPRObject];
    jint type = [((ComItextpdfTextPdfPdfObject *) nil_chk(obj)) type];
    if (-type == [((ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *) nil_chk(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_END_ARRAY())) ordinal])
#line 153
    break;
    if (-type == [((ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *) nil_chk(ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_END_DIC())) ordinal])
#line 155
    @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"unexpected.gt.gt" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    [array addWithComItextpdfTextPdfPdfObject:obj];
  }
  return array;
}


#line 166
- (ComItextpdfTextPdfPdfObject *)readPRObject {
  
#line 167
  if (![self nextValidToken])
#line 168
  return nil;
  ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *type = [((ComItextpdfTextPdfPRTokeniser *) nil_chk(tokeniser_)) getTokenType];
  {
    
#line 178
    ComItextpdfTextPdfPdfString *str;
    
#line 170
    switch ([type ordinal]) {
      case ComItextpdfTextPdfPRTokeniser_TokenType_START_DIC:
      {
        
#line 172
        ComItextpdfTextPdfPdfDictionary *dic = [self readDictionary];
        return dic;
      }
      case ComItextpdfTextPdfPRTokeniser_TokenType_START_ARRAY:
      return [self readArray];
      case ComItextpdfTextPdfPRTokeniser_TokenType_STRING:
      str = [((ComItextpdfTextPdfPdfString *) [[ComItextpdfTextPdfPdfString alloc] initWithNSString:[tokeniser_ getStringValue] withNSString:nil]) setHexWritingWithBoolean:[tokeniser_ isHexString]];
      return str;
      case ComItextpdfTextPdfPRTokeniser_TokenType_NAME:
      return [[ComItextpdfTextPdfPdfName alloc] initWithNSString:[tokeniser_ getStringValue] withBoolean:NO];
      case ComItextpdfTextPdfPRTokeniser_TokenType_NUMBER:
      return [[ComItextpdfTextPdfPdfNumber alloc] initWithNSString:[tokeniser_ getStringValue]];
      case ComItextpdfTextPdfPRTokeniser_TokenType_OTHER:
      return [[ComItextpdfTextPdfPdfLiteral alloc] initWithInt:ComItextpdfTextPdfPdfContentParser_COMMAND_TYPE withNSString:[tokeniser_ getStringValue]];
      default:
      return [[ComItextpdfTextPdfPdfLiteral alloc] initWithInt:-[((ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *) nil_chk(type)) ordinal] withNSString:[tokeniser_ getStringValue]];
    }
  }
}


#line 196
- (jboolean)nextValidToken {
  
#line 197
  while ([((ComItextpdfTextPdfPRTokeniser *) nil_chk(tokeniser_)) nextToken]) {
    if ([tokeniser_ getTokenType] == ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_COMMENT())
#line 199
    continue;
    return YES;
  }
  return NO;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfContentParser *)other {
  [super copyAllFieldsTo:other];
  other->tokeniser_ = tokeniser_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfPRTokeniser:", "PdfContentParser", NULL, 0x1, NULL },
    { "parseWithJavaUtilArrayList:", "parse", "Ljava.util.ArrayList;", 0x1, "Ljava.io.IOException;" },
    { "getTokeniser", NULL, "Lcom.itextpdf.text.pdf.PRTokeniser;", 0x1, NULL },
    { "setTokeniserWithComItextpdfTextPdfPRTokeniser:", "setTokeniser", "V", 0x1, NULL },
    { "readDictionary", NULL, "Lcom.itextpdf.text.pdf.PdfDictionary;", 0x1, "Ljava.io.IOException;" },
    { "readArray", NULL, "Lcom.itextpdf.text.pdf.PdfArray;", 0x1, "Ljava.io.IOException;" },
    { "readPRObject", NULL, "Lcom.itextpdf.text.pdf.PdfObject;", 0x1, "Ljava.io.IOException;" },
    { "nextValidToken", NULL, "Z", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "COMMAND_TYPE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfContentParser_COMMAND_TYPE },
    { "tokeniser_", NULL, 0x2, "Lcom.itextpdf.text.pdf.PRTokeniser;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfContentParser = { "PdfContentParser", "com.itextpdf.text.pdf", NULL, 0x1, 8, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfContentParser;
}

@end
