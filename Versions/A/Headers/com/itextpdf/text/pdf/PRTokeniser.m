//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PRTokeniser.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PRTokeniser.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/exceptions/InvalidPdfException.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"
#include "com/itextpdf/text/io/RandomAccessSourceFactory.h"
#include "com/itextpdf/text/pdf/PRTokeniser.h"
#include "com/itextpdf/text/pdf/RandomAccessFileOrArray.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"

BOOL ComItextpdfTextPdfPRTokeniser_initialized = NO;


#line 56
@implementation ComItextpdfTextPdfPRTokeniser

IOSBooleanArray * ComItextpdfTextPdfPRTokeniser_delims_;
NSString * ComItextpdfTextPdfPRTokeniser_EMPTY_ = 
#line 104
@"";


#line 121
- (instancetype)initWithComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)file {
  if (self = [super init]) {
    
#line 122
    self->file_ = file;
  }
  return self;
}


#line 125
- (void)seekWithLong:(jlong)pos {
  
#line 126
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) seekWithLong:pos];
}


#line 129
- (jlong)getFilePointer {
  
#line 130
  return [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) getFilePointer];
}


#line 133
- (void)close {
  
#line 134
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) close];
}


#line 137
- (jlong)length {
  
#line 138
  return [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) length];
}


#line 141
- (jint)read {
  
#line 142
  return [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
}


#line 145
- (ComItextpdfTextPdfRandomAccessFileOrArray *)getSafeFile {
  
#line 146
  return [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithComItextpdfTextPdfRandomAccessFileOrArray:file_];
}


#line 150
- (ComItextpdfTextPdfRandomAccessFileOrArray *)getFile {
  return file_;
}

- (NSString *)readStringWithInt:(jint)size {
  
#line 155
  JavaLangStringBuilder *buf = [[JavaLangStringBuilder alloc] init];
  jint ch;
  while ((size--) > 0) {
    ch = [self read];
    if (ch == -1)
#line 160
    break;
    (void) [buf appendWithChar:(jchar) ch];
  }
  return [buf description];
}


#line 166
+ (jboolean)isWhitespaceWithInt:(jint)ch {
  
#line 167
  return (ch == 0 || ch == 9 || ch == 10 || ch == 12 || ch == 13 || ch == 32);
}


#line 170
+ (jboolean)isDelimiterWithInt:(jint)ch {
  
#line 171
  return (ch == '(' || ch == ')' || ch == '<' || ch == '>' || ch == '[' || ch == ']' || ch == '/' || ch == '%');
}


#line 174
+ (jboolean)isDelimiterWhitespaceWithInt:(jint)ch {
  
#line 175
  return IOSBooleanArray_Get(nil_chk(ComItextpdfTextPdfPRTokeniser_delims_), ch + 1);
}


#line 178
- (ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)getTokenType {
  
#line 179
  return type_;
}


#line 182
- (NSString *)getStringValue {
  
#line 183
  return stringValue_;
}


#line 186
- (jint)getReference {
  
#line 187
  return reference_;
}


#line 190
- (jint)getGeneration {
  
#line 191
  return generation_;
}


#line 194
- (void)backOnePositionWithInt:(jint)ch {
  
#line 195
  if (ch != -1)
#line 196
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) pushBackWithByte:(jbyte) ch];
}


#line 199
- (void)throwErrorWithNSString:(NSString *)error {
  
#line 200
  @throw [[ComItextpdfTextExceptionsInvalidPdfException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.at.file.pointer.2" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ error, [NSString valueOfLong:[((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) getFilePointer]] } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
}


#line 203
- (jint)getHeaderOffset {
  
#line 204
  NSString *str = [self readStringWithInt:1024];
  jint idx = [((NSString *) nil_chk(str)) indexOfString:@"%PDF-"];
  if (idx < 0) {
    idx = [str indexOfString:@"%FDF-"];
    if (idx < 0)
#line 209
    @throw [[ComItextpdfTextExceptionsInvalidPdfException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"pdf.header.not.found" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  
#line 212
  return idx;
}


#line 215
- (jchar)checkPdfHeader {
  
#line 216
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) seekWithLong:0];
  NSString *str = [self readStringWithInt:1024];
  jint idx = [((NSString *) nil_chk(str)) indexOfString:@"%PDF-"];
  if (idx != 0)
#line 220
  @throw [[ComItextpdfTextExceptionsInvalidPdfException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"pdf.header.not.found" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  return [str charAtWithInt:7];
}


#line 224
- (void)checkFdfHeader {
  
#line 225
  [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) seekWithLong:0];
  NSString *str = [self readStringWithInt:1024];
  jint idx = [((NSString *) nil_chk(str)) indexOfString:@"%FDF-"];
  if (idx != 0)
#line 229
  @throw [[ComItextpdfTextExceptionsInvalidPdfException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"fdf.header.not.found" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
}


#line 232
- (jlong)getStartxref {
  
#line 233
  jint arrLength = 1024;
  jlong fileLength = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) length];
  jlong pos = fileLength - arrLength;
  if (pos < 1) pos = 1;
  while (pos > 0) {
    [file_ seekWithLong:pos];
    NSString *str = [self readStringWithInt:arrLength];
    jint idx = [((NSString *) nil_chk(str)) lastIndexOfString:@"startxref"];
    if (idx >= 0) return pos + idx;
    pos = pos - arrLength + 9;
  }
  @throw [[ComItextpdfTextExceptionsInvalidPdfException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"pdf.startxref.not.found" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
}


#line 247
+ (jint)getHexWithInt:(jint)v {
  
#line 248
  if (v >= '0' && v <= '9')
#line 249
  return v - '0';
  if (v >= 'A' && v <= 'F')
#line 251
  return v - 'A' + 10;
  if (v >= 'a' && v <= 'f')
#line 253
  return v - 'a' + 10;
  return -1;
}


#line 257
- (void)nextValidToken {
  
#line 258
  jint level = 0;
  NSString *n1 = nil;
  NSString *n2 = nil;
  jlong ptr = 0;
  while ([self nextToken]) {
    if (type_ == ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_COMMENT())
#line 264
    continue;
    switch (level) {
      case 0:
      {
        if (type_ != ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NUMBER())
#line 269
        return;
        ptr = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) getFilePointer];
        n1 = stringValue_;
        ++level;
        break;
      }
      case 1:
      {
        if (type_ != ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NUMBER()) {
          [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) seekWithLong:ptr];
          type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NUMBER();
          stringValue_ = n1;
          return;
        }
        n2 = stringValue_;
        ++level;
        break;
      }
      default:
      {
        if (type_ != ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_OTHER() || ![((NSString *) nil_chk(stringValue_)) isEqual:@"R"]) {
          [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) seekWithLong:ptr];
          type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NUMBER();
          stringValue_ = n1;
          return;
        }
        type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_REF();
        reference_ = [JavaLangInteger parseIntWithNSString:n1];
        generation_ = [JavaLangInteger parseIntWithNSString:n2];
        return;
      }
    }
  }
  
#line 303
  if (level == 1) {
    type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NUMBER();
  }
}


#line 311
- (jboolean)nextToken {
  
#line 312
  jint ch = 0;
  do {
    ch = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
  }
  while (
#line 315
  ch != -1 && [ComItextpdfTextPdfPRTokeniser isWhitespaceWithInt:ch]);
  if (ch == -1) {
    type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_ENDOFFILE();
    return NO;
  }
  
#line 324
  JavaLangStringBuilder *outBuf = [[JavaLangStringBuilder alloc] init];
  stringValue_ = ComItextpdfTextPdfPRTokeniser_EMPTY_;
  
#line 327
  switch (ch) {
    case '[':
    type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_START_ARRAY();
    break;
    case ']':
    type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_END_ARRAY();
    break;
    case '/':
    {
      [outBuf setLengthWithInt:0];
      type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NAME();
      while (YES) {
        ch = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
        if (IOSBooleanArray_Get(nil_chk(ComItextpdfTextPdfPRTokeniser_delims_), ch + 1))
#line 341
        break;
        if (ch == '#') {
          ch = (LShift32([ComItextpdfTextPdfPRTokeniser getHexWithInt:[file_ read]], 4)) + [ComItextpdfTextPdfPRTokeniser getHexWithInt:[file_ read]];
        }
        (void) [outBuf appendWithChar:(jchar) ch];
      }
      [self backOnePositionWithInt:ch];
      break;
    }
    case '>':
    ch = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
    if (ch != '>')
#line 353
    [self throwErrorWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"greaterthan.not.expected" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_END_DIC();
    break;
    case '<':
    {
      jint v1 = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
      if (v1 == '<') {
        type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_START_DIC();
        break;
      }
      [outBuf setLengthWithInt:0];
      type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_STRING();
      hexString_ = YES;
      jint v2 = 0;
      while (YES) {
        while ([ComItextpdfTextPdfPRTokeniser isWhitespaceWithInt:v1])
#line 369
        v1 = [file_ read];
        if (v1 == '>')
#line 371
        break;
        v1 = [ComItextpdfTextPdfPRTokeniser getHexWithInt:v1];
        if (v1 < 0)
#line 374
        break;
        v2 = [file_ read];
        while ([ComItextpdfTextPdfPRTokeniser isWhitespaceWithInt:v2])
#line 377
        v2 = [file_ read];
        if (v2 == '>') {
          ch = LShift32(v1, 4);
          (void) [outBuf appendWithChar:(jchar) ch];
          break;
        }
        v2 = [ComItextpdfTextPdfPRTokeniser getHexWithInt:v2];
        if (v2 < 0)
#line 385
        break;
        ch = (LShift32(v1, 4)) + v2;
        (void) [outBuf appendWithChar:(jchar) ch];
        v1 = [file_ read];
      }
      if (v1 < 0 || v2 < 0)
#line 391
      [self throwErrorWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"error.reading.string" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
      break;
    }
    case '%':
    type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_COMMENT();
    do {
      ch = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
    }
    while (
#line 398
    ch != -1 && ch != 0x000d && ch != 0x000a);
    break;
    case '(':
    {
      [outBuf setLengthWithInt:0];
      type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_STRING();
      hexString_ = NO;
      jint nesting = 0;
      while (YES) {
        ch = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
        if (ch == -1)
#line 409
        break;
        if (ch == '(') {
          ++nesting;
        }
        else if (ch == ')') {
          --nesting;
        }
        else if (ch == '\\') {
          jboolean lineBreak = NO;
          ch = [file_ read];
          switch (ch) {
            case 'n':
            ch = 0x000a;
            break;
            case 'r':
            ch = 0x000d;
            break;
            case 't':
            ch = 0x0009;
            break;
            case 'b':
            ch = 0x0008;
            break;
            case 'f':
            ch = 0x000c;
            break;
            case '(':
            case ')':
            case '\\':
            break;
            case 0x000d:
            lineBreak = YES;
            ch = [file_ read];
            if (ch != 0x000a)
#line 443
            [self backOnePositionWithInt:ch];
            break;
            case 0x000a:
            lineBreak = YES;
            break;
            default:
            {
              if (ch < '0' || ch > '7') {
                break;
              }
              jint octal = ch - '0';
              ch = [file_ read];
              if (ch < '0' || ch > '7') {
                [self backOnePositionWithInt:ch];
                ch = octal;
                break;
              }
              octal = (LShift32(octal, 3)) + ch - '0';
              ch = [file_ read];
              if (ch < '0' || ch > '7') {
                [self backOnePositionWithInt:ch];
                ch = octal;
                break;
              }
              octal = (LShift32(octal, 3)) + ch - '0';
              ch = octal & (jint) 0xff;
              break;
            }
          }
          if (lineBreak)
#line 473
          continue;
          if (ch < 0)
#line 475
          break;
        }
        else if (ch == 0x000d) {
          ch = [file_ read];
          if (ch < 0)
#line 480
          break;
          if (ch != 0x000a) {
            [self backOnePositionWithInt:ch];
            ch = 0x000a;
          }
        }
        if (nesting == -1)
#line 487
        break;
        (void) [outBuf appendWithChar:(jchar) ch];
      }
      if (ch == -1)
#line 491
      [self throwErrorWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"error.reading.string" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
      break;
    }
    default:
    {
      [outBuf setLengthWithInt:0];
      if (ch == '-' || ch == '+' || ch == '.' || (ch >= '0' && ch <= '9')) {
        type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NUMBER();
        if (ch == '-') {
          
#line 501
          jboolean minus = NO;
          do {
            minus = !minus;
            ch = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
          }
          while (
#line 505
          ch == '-');
          if (minus)
#line 507
          (void) [outBuf appendWithChar:'-'];
        }
        else {
          (void) [outBuf appendWithChar:(jchar) ch];
          ch = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
        }
        while (ch != -1 && ((ch >= '0' && ch <= '9') || ch == '.')) {
          (void) [outBuf appendWithChar:(jchar) ch];
          ch = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
        }
      }
      else {
        type_ = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_OTHER();
        do {
          (void) [outBuf appendWithChar:(jchar) ch];
          ch = [((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(file_)) read];
        }
        while (
#line 523
        !IOSBooleanArray_Get(nil_chk(ComItextpdfTextPdfPRTokeniser_delims_), ch + 1));
      }
      if (ch != -1)
#line 526
      [self backOnePositionWithInt:ch];
      break;
    }
  }
  if (outBuf != nil)
#line 531
  stringValue_ = [outBuf description];
  return YES;
}


#line 535
- (jlong)longValue {
  
#line 536
  return [JavaLangLong parseLongWithNSString:stringValue_];
}


#line 539
- (jint)intValue {
  
#line 540
  return [JavaLangInteger parseIntWithNSString:stringValue_];
}


#line 543
- (jboolean)readLineSegmentWithByteArray:(IOSByteArray *)input {
  
#line 544
  jint c = -1;
  jboolean eol = NO;
  jint ptr = 0;
  jint len = ((IOSByteArray *) nil_chk(input))->size_;
  
#line 551
  if (ptr < len) {
    while ([ComItextpdfTextPdfPRTokeniser isWhitespaceWithInt:(c = [self read])]) ;
  }
  while (!eol && ptr < len) {
    {
      
#line 562
      jlong cur;
      
#line 555
      switch (c) {
        case -1:
        case 0x000a:
        eol = YES;
        break;
        case 0x000d:
        eol = YES;
        cur = [self getFilePointer];
        if (([self read]) != 0x000a) {
          [self seekWithLong:cur];
        }
        break;
        default:
        *IOSByteArray_GetRef(input, ptr++) = (jbyte) c;
        break;
      }
    }
    
#line 573
    if (eol || len <= ptr) {
      break;
    }
    else {
      c = [self read];
    }
  }
  if (ptr >= len) {
    eol = NO;
    while (!eol) {
      {
        
#line 590
        jlong cur;
        
#line 583
        switch (c = [self read]) {
          case -1:
          case 0x000a:
          eol = YES;
          break;
          case 0x000d:
          eol = YES;
          cur = [self getFilePointer];
          if (([self read]) != 0x000a) {
            [self seekWithLong:cur];
          }
          break;
        }
      }
    }
  }
  if ((c == -1) && (ptr == 0)) {
    return NO;
  }
  if (ptr + 2 <= len) {
    *IOSByteArray_GetRef(input, ptr++) = (jbyte) ' ';
    *IOSByteArray_GetRef(input, ptr) = (jbyte) 'X';
  }
  return YES;
}


#line 609
+ (IOSLongArray *)checkObjectStartWithByteArray:(IOSByteArray *)line {
  
#line 610
  @try {
    ComItextpdfTextPdfPRTokeniser *tk = [[ComItextpdfTextPdfPRTokeniser alloc] initWithComItextpdfTextPdfRandomAccessFileOrArray:[[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithComItextpdfTextIoRandomAccessSource:[((ComItextpdfTextIoRandomAccessSourceFactory *) [[ComItextpdfTextIoRandomAccessSourceFactory alloc] init]) createSourceWithByteArray:line]]];
    jint num = 0;
    jint gen = 0;
    if (![tk nextToken] || [tk getTokenType] != ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NUMBER())
#line 615
    return nil;
    num = [tk intValue];
    if (![tk nextToken] || [tk getTokenType] != ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_get_NUMBER())
#line 618
    return nil;
    gen = [tk intValue];
    if (![tk nextToken])
#line 621
    return nil;
    if (![((NSString *) nil_chk([tk getStringValue])) isEqual:@"obj"])
#line 623
    return nil;
    return [IOSLongArray arrayWithLongs:(jlong[]){ num, gen } count:2];
  }
  @catch (JavaLangException *ioe) {
  }
  
#line 629
  return nil;
}


#line 632
- (jboolean)isHexString {
  
#line 633
  return self->hexString_;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPRTokeniser *)other {
  [super copyAllFieldsTo:other];
  other->file_ = file_;
  other->generation_ = generation_;
  other->hexString_ = hexString_;
  other->reference_ = reference_;
  other->stringValue_ = stringValue_;
  other->type_ = type_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfPRTokeniser class]) {
    ComItextpdfTextPdfPRTokeniser_delims_ = [IOSBooleanArray arrayWithBooleans:(jboolean[]){
#line 77
      YES, YES, NO, NO, NO, NO, NO, NO, NO, NO,
#line 78
      YES, YES, NO, YES, YES, NO, NO, NO, NO, NO,
#line 79
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 80
      NO, NO, NO, YES, NO, NO, NO, NO, YES, NO,
#line 81
      NO, YES, YES, NO, NO, NO, NO, NO, YES, NO,
#line 82
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 83
      NO, YES, NO, YES, NO, NO, NO, NO, NO, NO,
#line 84
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 85
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 86
      NO, NO, YES, NO, YES, NO, NO, NO, NO, NO,
#line 87
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 88
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 89
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 90
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 91
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 92
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 93
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 94
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 95
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 96
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 97
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 98
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 99
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 100
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 101
      NO, NO, NO, NO, NO, NO, NO, NO, NO, NO,
#line 102
      NO, NO, NO, NO, NO, NO, NO } count:257];
      ComItextpdfTextPdfPRTokeniser_initialized = YES;
    }
  }

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfRandomAccessFileOrArray:", "PRTokeniser", NULL, 0x1, NULL },
    { "seekWithLong:", "seek", "V", 0x1, "Ljava.io.IOException;" },
    { "getFilePointer", NULL, "J", 0x1, "Ljava.io.IOException;" },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;" },
    { "length", NULL, "J", 0x1, "Ljava.io.IOException;" },
    { "read", NULL, "I", 0x1, "Ljava.io.IOException;" },
    { "getSafeFile", NULL, "Lcom.itextpdf.text.pdf.RandomAccessFileOrArray;", 0x1, NULL },
    { "getFile", NULL, "Lcom.itextpdf.text.pdf.RandomAccessFileOrArray;", 0x1, NULL },
    { "readStringWithInt:", "readString", "Ljava.lang.String;", 0x1, "Ljava.io.IOException;" },
    { "isWhitespaceWithInt:", "isWhitespace", "Z", 0x19, NULL },
    { "isDelimiterWithInt:", "isDelimiter", "Z", 0x19, NULL },
    { "isDelimiterWhitespaceWithInt:", "isDelimiterWhitespace", "Z", 0x19, NULL },
    { "getTokenType", NULL, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", 0x1, NULL },
    { "getStringValue", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getReference", NULL, "I", 0x1, NULL },
    { "getGeneration", NULL, "I", 0x1, NULL },
    { "backOnePositionWithInt:", "backOnePosition", "V", 0x1, NULL },
    { "throwErrorWithNSString:", "throwError", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderOffset", NULL, "I", 0x1, "Ljava.io.IOException;" },
    { "checkPdfHeader", NULL, "C", 0x1, "Ljava.io.IOException;" },
    { "checkFdfHeader", NULL, "V", 0x1, "Ljava.io.IOException;" },
    { "getStartxref", NULL, "J", 0x1, "Ljava.io.IOException;" },
    { "getHexWithInt:", "getHex", "I", 0x9, NULL },
    { "nextValidToken", NULL, "V", 0x1, "Ljava.io.IOException;" },
    { "nextToken", NULL, "Z", 0x1, "Ljava.io.IOException;" },
    { "longValue", NULL, "J", 0x1, NULL },
    { "intValue", NULL, "I", 0x1, NULL },
    { "readLineSegmentWithByteArray:", "readLineSegment", "Z", 0x1, "Ljava.io.IOException;" },
    { "checkObjectStartWithByteArray:", "checkObjectStart", "[J", 0x9, NULL },
    { "isHexString", NULL, "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "delims_", NULL, 0x19, "[Z", &ComItextpdfTextPdfPRTokeniser_delims_,  },
    { "EMPTY_", NULL, 0x18, "Ljava.lang.String;", &ComItextpdfTextPdfPRTokeniser_EMPTY_,  },
    { "file_", NULL, 0x12, "Lcom.itextpdf.text.pdf.RandomAccessFileOrArray;", NULL,  },
    { "type_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", NULL,  },
    { "stringValue_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
    { "reference_", NULL, 0x4, "I", NULL,  },
    { "generation_", NULL, 0x4, "I", NULL,  },
    { "hexString_", NULL, 0x4, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPRTokeniser = { "PRTokeniser", "com.itextpdf.text.pdf", NULL, 0x1, 30, methods, 8, fields, 0, NULL};
  return &_ComItextpdfTextPdfPRTokeniser;
}

@end

#line 62

BOOL ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_initialized = NO;

ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[11];

@implementation ComItextpdfTextPdfPRTokeniser_TokenTypeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values() {
  return [IOSObjectArray arrayWithObjects:ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_ count:11 type:[IOSClass classWithClass:[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum class]]];
}
+ (IOSObjectArray *)values {
  return ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values();
}

+ (ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *)valueOfWithNSString:(NSString *)name {
  return ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_valueOfWithNSString_(name);
}

ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_valueOfWithNSString_(NSString *name) {
  for (int i = 0; i < 11; i++) {
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum *e = ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfPRTokeniser_TokenTypeEnum class]) {
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_NUMBER = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"NUMBER" withInt:0];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_STRING = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"STRING" withInt:1];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_NAME = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"NAME" withInt:2];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_COMMENT = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"COMMENT" withInt:3];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_START_ARRAY = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"START_ARRAY" withInt:4];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_END_ARRAY = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"END_ARRAY" withInt:5];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_START_DIC = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"START_DIC" withInt:6];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_END_DIC = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"END_DIC" withInt:7];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_REF = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"REF" withInt:8];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_OTHER = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"OTHER" withInt:9];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_ENDOFFILE = [[ComItextpdfTextPdfPRTokeniser_TokenTypeEnum alloc] initWithNSString:@"ENDOFFILE" withInt:10];
    ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:", "init", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NUMBER", "NUMBER", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_NUMBER,  },
    { "STRING", "STRING", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_STRING,  },
    { "NAME", "NAME", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_NAME,  },
    { "COMMENT", "COMMENT", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_COMMENT,  },
    { "START_ARRAY", "START_ARRAY", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_START_ARRAY,  },
    { "END_ARRAY", "END_ARRAY", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_END_ARRAY,  },
    { "START_DIC", "START_DIC", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_START_DIC,  },
    { "END_DIC", "END_DIC", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_END_DIC,  },
    { "REF", "REF", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_REF,  },
    { "OTHER", "OTHER", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_OTHER,  },
    { "ENDOFFILE", "ENDOFFILE", 0x4019, "Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;", &ComItextpdfTextPdfPRTokeniser_TokenTypeEnum_ENDOFFILE,  },
  };
  static const char *superclass_type_args[] = {"Lcom.itextpdf.text.pdf.PRTokeniser$TokenType;"};
  static const J2ObjcClassInfo _ComItextpdfTextPdfPRTokeniser_TokenTypeEnum = { "TokenType", "com.itextpdf.text.pdf", "PRTokeniser", 0x4019, 1, methods, 11, fields, 1, superclass_type_args};
  return &_ComItextpdfTextPdfPRTokeniser_TokenTypeEnum;
}

@end