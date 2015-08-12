//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/simpleparser/SimpleXMLParser.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/simpleparser/SimpleXMLParser.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/xml/XMLUtil.h"
#include "com/itextpdf/text/xml/simpleparser/EntitiesToUnicode.h"
#include "com/itextpdf/text/xml/simpleparser/IanaEncodings.h"
#include "com/itextpdf/text/xml/simpleparser/NewLineHandler.h"
#include "com/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler.h"
#include "com/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment.h"
#include "com/itextpdf/text/xml/simpleparser/SimpleXMLParser.h"
#include "com/itextpdf/text/xml/simpleparser/handler/HTMLNewLineHandler.h"
#include "com/itextpdf/text/xml/simpleparser/handler/NeverNewLineHandler.h"
#include "java/io/BufferedReader.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/Reader.h"
#include "java/lang/Character.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"
#include "java/util/HashMap.h"
#include "java/util/Stack.h"


#line 107
@implementation ComItextpdfTextXmlSimpleparserSimpleXMLParser


#line 173
- (instancetype)initWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>)doc
             withComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment>)comment
                                                              withBoolean:(jboolean)html {
  if (self = [super init]) {
    character_ =
#line 128
    0;
    previousCharacter_ =
#line 130
    -1;
    lines_ =
#line 132
    1;
    columns_ =
#line 134
    0;
    eol_ =
#line 136
    NO;
    nowhite_ =
#line 143
    NO;
    text_ =
#line 149
    [[JavaLangStringBuffer alloc] init];
    entity_ =
#line 151
    [[JavaLangStringBuffer alloc] init];
    tag_ =
#line 153
    nil;
    attributes_ =
#line 155
    nil;
    nested_ =
#line 161
    0;
    quoteCharacter_ =
#line 163
    '"';
    attributekey_ =
#line 165
    nil;
    attributevalue_ =
#line 167
    nil;
    
#line 174
    self->doc_ = doc;
    
#line 175
    self->comment_ = comment;
    
#line 176
    self->html_ = html;
    
#line 177
    if (html) {
      self->newLineHandler_ = [[ComItextpdfTextXmlSimpleparserHandlerHTMLNewLineHandler alloc] init];
    }
    else {
      
#line 180
      self->newLineHandler_ = [[ComItextpdfTextXmlSimpleparserHandlerNeverNewLineHandler alloc] init];
    }
    
#line 182
    stack_ = [[JavaUtilStack alloc] init];
    
#line 183
    state_ = html ? ComItextpdfTextXmlSimpleparserSimpleXMLParser_TEXT : ComItextpdfTextXmlSimpleparserSimpleXMLParser_UNKNOWN;
  }
  return self;
}


#line 190
- (void)goWithJavaIoReader:(JavaIoReader *)r {
  
#line 191
  JavaIoBufferedReader *reader;
  if ([r isKindOfClass:[JavaIoBufferedReader class]])
#line 193
  reader = (JavaIoBufferedReader *) check_class_cast(r, [JavaIoBufferedReader class]);
  else
#line 195
  reader = [[JavaIoBufferedReader alloc] initWithJavaIoReader:r];
  [((id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>) nil_chk(doc_)) startDocument];
  while (YES) {
    
#line 199
    if (previousCharacter_ == -1) {
      character_ = [((JavaIoBufferedReader *) nil_chk(reader)) read];
    }
    else {
      
#line 204
      character_ = previousCharacter_;
      previousCharacter_ = -1;
    }
    
#line 209
    if (character_ == -1) {
      if (html_) {
        if (html_ && state_ == ComItextpdfTextXmlSimpleparserSimpleXMLParser_TEXT)
#line 212
        [self flush];
        [doc_ endDocument];
      }
      else {
        
#line 215
        [self throwExceptionWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"missing.end.tag" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
      }
      return;
    }
    
#line 221
    if (character_ == 0x000a && eol_) {
      eol_ = NO;
      continue;
    }
    else
#line 224
    if (eol_) {
      eol_ = NO;
    }
    else
#line 226
    if (character_ == 0x000a) {
      lines_++;
      columns_ = 0;
    }
    else
#line 229
    if (character_ == 0x000d) {
      eol_ = YES;
      character_ = 0x000a;
      lines_++;
      columns_ = 0;
    }
    else {
      
#line 235
      columns_++;
    }
    
#line 238
    switch (state_) {
      
#line 240
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_UNKNOWN:
      if (character_ == '<') {
        [self saveStateWithInt:ComItextpdfTextXmlSimpleparserSimpleXMLParser_TEXT];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_ENCOUNTERED;
      }
      break;
      
#line 247
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_TEXT:
      if (character_ == '<') {
        [self flush];
        [self saveStateWithInt:state_];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_ENCOUNTERED;
      }
      else
#line 252
      if (character_ == '&') {
        [self saveStateWithInt:state_];
        [((JavaLangStringBuffer *) nil_chk(entity_)) setLengthWithInt:0];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ENTITY;
        nowhite_ = YES;
      }
      else
#line 257
      if (character_ == ' ') {
        if (html_ && nowhite_) {
          (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:' '];
          nowhite_ = NO;
        }
        else {
          
#line 262
          if (nowhite_) {
            (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
          }
          nowhite_ = NO;
        }
      }
      else
#line 267
      if ([JavaLangCharacter isWhitespaceWithChar:(jchar) character_]) {
        if (html_) {
        }
        else {
          if (nowhite_) {
            (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
          }
          nowhite_ = NO;
        }
      }
      else {
        
#line 277
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
        nowhite_ = YES;
      }
      break;
      
#line 283
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_ENCOUNTERED:
      [self initTag];
      if (character_ == '/') {
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_IN_CLOSETAG;
      }
      else
#line 287
      if (character_ == '?') {
        [self restoreState];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_PI;
      }
      else {
        
#line 291
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_EXAMIN_TAG;
      }
      break;
      
#line 297
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_EXAMIN_TAG:
      if (character_ == '>') {
        [self doTag];
        [self processTagWithBoolean:YES];
        [self initTag];
        state_ = [self restoreState];
      }
      else
#line 303
      if (character_ == '/') {
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_SINGLE_TAG;
      }
      else
#line 305
      if (character_ == '-' && [((NSString *) nil_chk([((JavaLangStringBuffer *) nil_chk(text_)) description])) isEqual:@"!-"]) {
        [self flush];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_COMMENT;
      }
      else
#line 308
      if (character_ == '[' && [((NSString *) nil_chk([((JavaLangStringBuffer *) nil_chk(text_)) description])) isEqual:@"![CDATA"]) {
        [self flush];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_CDATA;
      }
      else
#line 311
      if (character_ == 'E' && [((NSString *) nil_chk([((JavaLangStringBuffer *) nil_chk(text_)) description])) isEqual:@"!DOCTYP"]) {
        [self flush];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_PI;
      }
      else
#line 314
      if ([JavaLangCharacter isWhitespaceWithChar:(jchar) character_]) {
        [self doTag];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_EXAMINED;
      }
      else {
        
#line 318
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
      }
      break;
      
#line 322
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_EXAMINED:
      if (character_ == '>') {
        [self processTagWithBoolean:YES];
        [self initTag];
        state_ = [self restoreState];
      }
      else
#line 327
      if (character_ == '/') {
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_SINGLE_TAG;
      }
      else
#line 329
      if ([JavaLangCharacter isWhitespaceWithChar:(jchar) character_]) {
      }
      else {
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_KEY;
      }
      break;
      
#line 338
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_IN_CLOSETAG:
      if (character_ == '>') {
        [self doTag];
        [self processTagWithBoolean:NO];
        if (!html_ && nested_ == 0) return;
        state_ = [self restoreState];
      }
      else {
        
#line 345
        if (![JavaLangCharacter isWhitespaceWithChar:(jchar) character_])
#line 346
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
      }
      break;
      
#line 352
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_SINGLE_TAG:
      if (character_ != '>')
#line 354
      [self throwExceptionWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"expected.gt.for.tag.lt.1.gt" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ tag_ } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
      [self doTag];
      [self processTagWithBoolean:YES];
      [self processTagWithBoolean:NO];
      [self initTag];
      if (!html_ && nested_ == 0) {
        [doc_ endDocument];
        return;
      }
      state_ = [self restoreState];
      break;
      
#line 367
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_CDATA:
      if (character_ == '>' &&
#line 369
      [((NSString *) nil_chk([((JavaLangStringBuffer *) nil_chk(text_)) description])) hasSuffix:@"]]"]) {
        [text_ setLengthWithInt:[text_ sequenceLength] - 2];
        [self flush];
        state_ = [self restoreState];
      }
      else (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
      break;
      
#line 379
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_COMMENT:
      if (character_ == '>' &&
#line 381
      [((NSString *) nil_chk([((JavaLangStringBuffer *) nil_chk(text_)) description])) hasSuffix:@"--"]) {
        [text_ setLengthWithInt:[text_ sequenceLength] - 2];
        [self flush];
        state_ = [self restoreState];
      }
      else (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
      break;
      
#line 390
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_PI:
      if (character_ == '>') {
        state_ = [self restoreState];
        if (state_ == ComItextpdfTextXmlSimpleparserSimpleXMLParser_TEXT) state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_UNKNOWN;
      }
      break;
      
#line 398
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_ENTITY:
      if (character_ == ';') {
        state_ = [self restoreState];
        NSString *cent = [((JavaLangStringBuffer *) nil_chk(entity_)) description];
        [entity_ setLengthWithInt:0];
        jchar ce = [ComItextpdfTextXmlSimpleparserEntitiesToUnicode decodeEntityWithNSString:cent];
        if (ce == 0x0000)
#line 405
        (void) [((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:'&'])) appendWithNSString:cent])) appendWithChar:';'];
        else
#line 407
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:ce];
      }
      else
#line 408
      if ((character_ != '#' && (character_ < '0' || character_ > '9') && (character_ < 'a' || character_ > 'z') &&
#line 409
      (character_ < 'A' || character_ > 'Z')) || [((JavaLangStringBuffer *) nil_chk(entity_)) sequenceLength] >= 7) {
        state_ = [self restoreState];
        previousCharacter_ = character_;
        (void) [((JavaLangStringBuffer *) nil_chk([((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:'&'])) appendWithNSString:[((JavaLangStringBuffer *) nil_chk(entity_)) description]];
        [entity_ setLengthWithInt:0];
      }
      else {
        (void) [entity_ appendWithChar:(jchar) character_];
      }
      break;
      
#line 420
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_QUOTE:
      if (html_ && quoteCharacter_ == ' ' && character_ == '>') {
        [self flush];
        [self processTagWithBoolean:YES];
        [self initTag];
        state_ = [self restoreState];
      }
      else if (html_ && quoteCharacter_ == ' ' && [JavaLangCharacter isWhitespaceWithChar:(jchar) character_]) {
        [self flush];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_EXAMINED;
      }
      else if (html_ && quoteCharacter_ == ' ') {
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
      }
      else if (character_ == quoteCharacter_) {
        [self flush];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_EXAMINED;
      }
      else
#line 437
      if ([@" \x0d\n\t" indexOf:character_] >= 0) {
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:' '];
      }
      else
#line 439
      if (character_ == '&') {
        [self saveStateWithInt:state_];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ENTITY;
        [((JavaLangStringBuffer *) nil_chk(entity_)) setLengthWithInt:0];
      }
      else {
        
#line 444
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
      }
      break;
      
#line 448
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_KEY:
      if ([JavaLangCharacter isWhitespaceWithChar:(jchar) character_]) {
        [self flush];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_EQUAL;
      }
      else
#line 452
      if (character_ == '=') {
        [self flush];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_VALUE;
      }
      else
#line 455
      if (html_ && character_ == '>') {
        [((JavaLangStringBuffer *) nil_chk(text_)) setLengthWithInt:0];
        [self processTagWithBoolean:YES];
        [self initTag];
        state_ = [self restoreState];
      }
      else {
        
#line 461
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
      }
      break;
      
#line 465
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_EQUAL:
      if (character_ == '=') {
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_VALUE;
      }
      else
#line 468
      if ([JavaLangCharacter isWhitespaceWithChar:(jchar) character_]) {
      }
      else if (html_ && character_ == '>') {
        [((JavaLangStringBuffer *) nil_chk(text_)) setLengthWithInt:0];
        [self processTagWithBoolean:YES];
        [self initTag];
        state_ = [self restoreState];
      }
      else
#line 475
      if (html_ && character_ == '/') {
        [self flush];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_SINGLE_TAG;
      }
      else
#line 478
      if (html_) {
        [self flush];
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_KEY;
      }
      else {
        
#line 483
        [self throwExceptionWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"error.in.attribute.processing" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
      }
      break;
      
#line 487
      case ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_VALUE:
      if (character_ == '"' || character_ == '\'') {
        quoteCharacter_ = character_;
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_QUOTE;
      }
      else
#line 491
      if ([JavaLangCharacter isWhitespaceWithChar:(jchar) character_]) {
      }
      else if (html_ && character_ == '>') {
        [self flush];
        [self processTagWithBoolean:YES];
        [self initTag];
        state_ = [self restoreState];
      }
      else
#line 498
      if (html_) {
        (void) [((JavaLangStringBuffer *) nil_chk(text_)) appendWithChar:(jchar) character_];
        quoteCharacter_ = ' ';
        state_ = ComItextpdfTextXmlSimpleparserSimpleXMLParser_QUOTE;
      }
      else {
        
#line 503
        [self throwExceptionWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"error.in.attribute.processing" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
      }
      break;
    }
  }
}


#line 514
- (jint)restoreState {
  
#line 515
  if (![((JavaUtilStack *) nil_chk(stack_)) empty])
#line 516
  return [((JavaLangInteger *) nil_chk([stack_ pop])) intValue];
  else
#line 518
  return ComItextpdfTextXmlSimpleparserSimpleXMLParser_UNKNOWN;
}


#line 524
- (void)saveStateWithInt:(jint)s {
  (void) [((JavaUtilStack *) nil_chk(stack_)) pushWithId:[JavaLangInteger valueOfWithInt:s]];
}


#line 532
- (void)flush {
  
#line 533
  switch (state_) {
    case ComItextpdfTextXmlSimpleparserSimpleXMLParser_TEXT:
    case ComItextpdfTextXmlSimpleparserSimpleXMLParser_CDATA:
    if ([((JavaLangStringBuffer *) nil_chk(text_)) sequenceLength] > 0) {
      [((id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>) nil_chk(doc_)) textWithNSString:[text_ description]];
    }
    break;
    case ComItextpdfTextXmlSimpleparserSimpleXMLParser_COMMENT:
    if (comment_ != nil) {
      [comment_ commentWithNSString:[((JavaLangStringBuffer *) nil_chk(text_)) description]];
    }
    break;
    case ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_KEY:
    attributekey_ = [((JavaLangStringBuffer *) nil_chk(text_)) description];
    if (html_)
#line 548
    attributekey_ = [((NSString *) nil_chk(attributekey_)) lowercaseString];
    break;
    case ComItextpdfTextXmlSimpleparserSimpleXMLParser_QUOTE:
    case ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_VALUE:
    attributevalue_ = [((JavaLangStringBuffer *) nil_chk(text_)) description];
    (void) [((JavaUtilHashMap *) nil_chk(attributes_)) putWithId:attributekey_ withId:attributevalue_];
    break;
    default:
    ;
  }
  [((JavaLangStringBuffer *) nil_chk(text_)) setLengthWithInt:0];
}


#line 563
- (void)initTag {
  tag_ = nil;
  attributes_ = [[JavaUtilHashMap alloc] init];
}

- (void)doTag {
  
#line 569
  if (tag_ == nil)
#line 570
  tag_ = [((JavaLangStringBuffer *) nil_chk(text_)) description];
  if (html_)
#line 572
  tag_ = [((NSString *) nil_chk(tag_)) lowercaseString];
  [((JavaLangStringBuffer *) nil_chk(text_)) setLengthWithInt:0];
}


#line 579
- (void)processTagWithBoolean:(jboolean)start {
  if (start) {
    nested_++;
    [((id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>) nil_chk(doc_)) startElementWithNSString:tag_ withJavaUtilMap:attributes_];
  }
  else {
    
#line 586
    if ([((id<ComItextpdfTextXmlSimpleparserNewLineHandler>) nil_chk(newLineHandler_)) isNewLineTagWithNSString:tag_]) {
      nowhite_ = NO;
    }
    nested_--;
    [((id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>) nil_chk(doc_)) endElementWithNSString:tag_];
  }
}


#line 594
- (void)throwExceptionWithNSString:(NSString *)s {
  @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.near.line.2.column.3" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ s, [NSString valueOfInt:lines_], [NSString valueOfInt:columns_] } count:3 type:[IOSClass classWithClass:[NSObject class]]]]];
}


#line 606
+ (void)parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>)doc
      withComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment>)comment
                                                  withJavaIoReader:(JavaIoReader *)r
                                                       withBoolean:(jboolean)html {
  
#line 607
  ComItextpdfTextXmlSimpleparserSimpleXMLParser *parser = [[ComItextpdfTextXmlSimpleparserSimpleXMLParser alloc] initWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:doc withComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment:comment withBoolean:html];
  [parser goWithJavaIoReader:r];
}


#line 617
+ (void)parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>)doc
                                             withJavaIoInputStream:(JavaIoInputStream *)inArg {
  
#line 618
  IOSByteArray *b4 = [IOSByteArray arrayWithLength:4];
  jint count = [((JavaIoInputStream *) nil_chk(inArg)) readWithByteArray:b4];
  if (count != 4)
#line 621
  @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"insufficient.length" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  NSString *encoding = [ComItextpdfTextXmlXMLUtil getEncodingNameWithByteArray:b4];
  NSString *decl = nil;
  if ([((NSString *) nil_chk(encoding)) isEqual:@"UTF-8"]) {
    JavaLangStringBuffer *sb = [[JavaLangStringBuffer alloc] init];
    jint c;
    while ((c = [inArg read]) != -1) {
      if (c == '>')
#line 629
      break;
      (void) [sb appendWithChar:(jchar) c];
    }
    decl = [sb description];
  }
  else if ([encoding isEqual:@"CP037"]) {
    JavaIoByteArrayOutputStream *bi = [[JavaIoByteArrayOutputStream alloc] init];
    jint c;
    while ((c = [inArg read]) != -1) {
      if (c == (jint) 0x6e)
#line 639
      break;
      [bi writeWithInt:c];
    }
    decl = [NSString stringWithBytes:[bi toByteArray] charsetName:@"CP037"];
  }
  if (decl != nil) {
    decl = [ComItextpdfTextXmlSimpleparserSimpleXMLParser getDeclaredEncodingWithNSString:decl];
    if (decl != nil)
#line 647
    encoding = decl;
  }
  [ComItextpdfTextXmlSimpleparserSimpleXMLParser parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:doc withJavaIoReader:[[JavaIoInputStreamReader alloc] initWithJavaIoInputStream:inArg withNSString:[ComItextpdfTextXmlSimpleparserIanaEncodings getJavaEncodingWithNSString:encoding]]];
}


#line 652
+ (NSString *)getDeclaredEncodingWithNSString:(NSString *)decl {
  
#line 653
  if (decl == nil)
#line 654
  return nil;
  jint idx = [((NSString *) nil_chk(decl)) indexOfString:@"encoding"];
  if (idx < 0)
#line 657
  return nil;
  jint idx1 = [decl indexOf:'"' fromIndex:idx];
  jint idx2 = [decl indexOf:'\'' fromIndex:idx];
  if (idx1 == idx2)
#line 661
  return nil;
  if ((idx1 < 0 && idx2 > 0) || (idx2 > 0 && idx2 < idx1)) {
    jint idx3 = [decl indexOf:'\'' fromIndex:idx2 + 1];
    if (idx3 < 0)
#line 665
    return nil;
    return [decl substring:idx2 + 1 endIndex:idx3];
  }
  if ((idx2 < 0 && idx1 > 0) || (idx1 > 0 && idx1 < idx2)) {
    jint idx3 = [decl indexOf:'"' fromIndex:idx1 + 1];
    if (idx3 < 0)
#line 671
    return nil;
    return [decl substring:idx1 + 1 endIndex:idx3];
  }
  return nil;
}


#line 682
+ (void)parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>)doc
                                                  withJavaIoReader:(JavaIoReader *)r {
  
#line 683
  [ComItextpdfTextXmlSimpleparserSimpleXMLParser parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:doc withComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment:nil withJavaIoReader:r withBoolean:NO];
}


#line 699
+ (NSString *)escapeXMLWithNSString:(NSString *)s
                        withBoolean:(jboolean)onlyASCII {
  
#line 700
  return [ComItextpdfTextXmlXMLUtil escapeXMLWithNSString:s withBoolean:onlyASCII];
}

- (void)copyAllFieldsTo:(ComItextpdfTextXmlSimpleparserSimpleXMLParser *)other {
  [super copyAllFieldsTo:other];
  other->attributekey_ = attributekey_;
  other->attributes_ = attributes_;
  other->attributevalue_ = attributevalue_;
  other->character_ = character_;
  other->columns_ = columns_;
  other->comment_ = comment_;
  other->doc_ = doc_;
  other->entity_ = entity_;
  other->eol_ = eol_;
  other->html_ = html_;
  other->lines_ = lines_;
  other->nested_ = nested_;
  other->newLineHandler_ = newLineHandler_;
  other->nowhite_ = nowhite_;
  other->previousCharacter_ = previousCharacter_;
  other->quoteCharacter_ = quoteCharacter_;
  other->stack_ = stack_;
  other->state_ = state_;
  other->tag_ = tag_;
  other->text_ = text_;
}

+ (IOSObjectArray *)__annotations_escapeXMLWithNSString_withBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:withComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment:withBoolean:", "SimpleXMLParser", NULL, 0x2, NULL },
    { "goWithJavaIoReader:", "go", "V", 0x2, "Ljava.io.IOException;" },
    { "restoreState", NULL, "I", 0x2, NULL },
    { "saveStateWithInt:", "saveState", "V", 0x2, NULL },
    { "flush", NULL, "V", 0x2, NULL },
    { "initTag", NULL, "V", 0x2, NULL },
    { "doTag", NULL, "V", 0x2, NULL },
    { "processTagWithBoolean:", "processTag", "V", 0x2, NULL },
    { "throwExceptionWithNSString:", "throwException", "V", 0x2, "Ljava.io.IOException;" },
    { "parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:withComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment:withJavaIoReader:withBoolean:", "parse", "V", 0x9, "Ljava.io.IOException;" },
    { "parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:withJavaIoInputStream:", "parse", "V", 0x9, "Ljava.io.IOException;" },
    { "getDeclaredEncodingWithNSString:", "getDeclaredEncoding", "Ljava.lang.String;", 0xa, NULL },
    { "parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:withJavaIoReader:", "parse", "V", 0x9, "Ljava.io.IOException;" },
    { "escapeXMLWithNSString:withBoolean:", "escapeXML", "Ljava.lang.String;", 0x9, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "UNKNOWN_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_UNKNOWN },
    { "TEXT_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_TEXT },
    { "TAG_ENCOUNTERED_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_ENCOUNTERED },
    { "EXAMIN_TAG_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_EXAMIN_TAG },
    { "TAG_EXAMINED_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_EXAMINED },
    { "IN_CLOSETAG_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_IN_CLOSETAG },
    { "SINGLE_TAG_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_SINGLE_TAG },
    { "CDATA_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_CDATA },
    { "COMMENT_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_COMMENT },
    { "PI_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_PI },
    { "ENTITY_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ENTITY },
    { "QUOTE_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_QUOTE },
    { "ATTRIBUTE_KEY_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_KEY },
    { "ATTRIBUTE_EQUAL_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_EQUAL },
    { "ATTRIBUTE_VALUE_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_VALUE },
    { "stack_", NULL, 0x12, "Ljava.util.Stack;", NULL,  },
    { "character_", NULL, 0x2, "I", NULL,  },
    { "previousCharacter_", NULL, 0x2, "I", NULL,  },
    { "lines_", NULL, 0x2, "I", NULL,  },
    { "columns_", NULL, 0x2, "I", NULL,  },
    { "eol_", NULL, 0x2, "Z", NULL,  },
    { "nowhite_", NULL, 0x2, "Z", NULL,  },
    { "state_", NULL, 0x2, "I", NULL,  },
    { "html_", NULL, 0x12, "Z", NULL,  },
    { "text_", NULL, 0x12, "Ljava.lang.StringBuffer;", NULL,  },
    { "entity_", NULL, 0x12, "Ljava.lang.StringBuffer;", NULL,  },
    { "tag_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "attributes_", NULL, 0x2, "Ljava.util.HashMap;", NULL,  },
    { "doc_", NULL, 0x12, "Lcom.itextpdf.text.xml.simpleparser.SimpleXMLDocHandler;", NULL,  },
    { "comment_", NULL, 0x12, "Lcom.itextpdf.text.xml.simpleparser.SimpleXMLDocHandlerComment;", NULL,  },
    { "nested_", NULL, 0x2, "I", NULL,  },
    { "quoteCharacter_", NULL, 0x2, "I", NULL,  },
    { "attributekey_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "attributevalue_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "newLineHandler_", NULL, 0x2, "Lcom.itextpdf.text.xml.simpleparser.NewLineHandler;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextXmlSimpleparserSimpleXMLParser = { "SimpleXMLParser", "com.itextpdf.text.xml.simpleparser", NULL, 0x11, 14, methods, 35, fields, 0, NULL};
  return &_ComItextpdfTextXmlSimpleparserSimpleXMLParser;
}

@end
