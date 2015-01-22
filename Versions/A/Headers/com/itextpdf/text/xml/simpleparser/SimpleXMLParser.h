//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/simpleparser/SimpleXMLParser.java
//

#ifndef _ComItextpdfTextXmlSimpleparserSimpleXMLParser_H_
#define _ComItextpdfTextXmlSimpleparserSimpleXMLParser_H_

@class JavaIoInputStream;
@class JavaIoReader;
@class JavaLangStringBuffer;
@class JavaUtilHashMap;
@class JavaUtilStack;
@protocol ComItextpdfTextXmlSimpleparserNewLineHandler;
@protocol ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler;
@protocol ComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment;

#import "JreEmulation.h"

#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_EQUAL 13
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_KEY 12
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_ATTRIBUTE_VALUE 14
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_CDATA 7
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_COMMENT 8
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_ENTITY 10
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_EXAMIN_TAG 3
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_IN_CLOSETAG 5
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_PI 9
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_QUOTE 11
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_SINGLE_TAG 6
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_ENCOUNTERED 2
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_TAG_EXAMINED 4
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_TEXT 1
#define ComItextpdfTextXmlSimpleparserSimpleXMLParser_UNKNOWN 0

@interface ComItextpdfTextXmlSimpleparserSimpleXMLParser : NSObject {
 @public
  JavaUtilStack *stack_;
  jint character_;
  jint previousCharacter_;
  jint lines_;
  jint columns_;
  jboolean eol_;
  jboolean nowhite_;
  jint state_;
  jboolean html_;
  JavaLangStringBuffer *text_;
  JavaLangStringBuffer *entity_;
  NSString *tag_;
  JavaUtilHashMap *attributes_;
  id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler> doc_;
  id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment> comment_;
  jint nested_;
  jint quoteCharacter_;
  NSString *attributekey_;
  NSString *attributevalue_;
  id<ComItextpdfTextXmlSimpleparserNewLineHandler> newLineHandler_;
}

- (instancetype)initWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>)doc
             withComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment>)comment
                                                              withBoolean:(jboolean)html;

- (void)goWithJavaIoReader:(JavaIoReader *)r;

- (jint)restoreState;

- (void)saveStateWithInt:(jint)s;

- (void)flush;

- (void)initTag OBJC_METHOD_FAMILY_NONE;

- (void)doTag;

- (void)processTagWithBoolean:(jboolean)start;

- (void)throwExceptionWithNSString:(NSString *)s;

+ (void)parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>)doc
      withComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment>)comment
                                                  withJavaIoReader:(JavaIoReader *)r
                                                       withBoolean:(jboolean)html;

+ (void)parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>)doc
                                             withJavaIoInputStream:(JavaIoInputStream *)inArg;

+ (NSString *)getDeclaredEncodingWithNSString:(NSString *)decl;

+ (void)parseWithComItextpdfTextXmlSimpleparserSimpleXMLDocHandler:(id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>)doc
                                                  withJavaIoReader:(JavaIoReader *)r;

+ (NSString *)escapeXMLWithNSString:(NSString *)s
                        withBoolean:(jboolean)onlyASCII;

- (void)copyAllFieldsTo:(ComItextpdfTextXmlSimpleparserSimpleXMLParser *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextXmlSimpleparserSimpleXMLParser_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, stack_, JavaUtilStack *)
J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, text_, JavaLangStringBuffer *)
J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, entity_, JavaLangStringBuffer *)
J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, tag_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, attributes_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, doc_, id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandler>)
J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, comment_, id<ComItextpdfTextXmlSimpleparserSimpleXMLDocHandlerComment>)
J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, attributekey_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, attributevalue_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, newLineHandler_, id<ComItextpdfTextXmlSimpleparserNewLineHandler>)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, UNKNOWN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, TEXT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, TAG_ENCOUNTERED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, EXAMIN_TAG, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, TAG_EXAMINED, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, IN_CLOSETAG, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, SINGLE_TAG, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, CDATA, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, COMMENT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, PI, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, ENTITY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, QUOTE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, ATTRIBUTE_KEY, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, ATTRIBUTE_EQUAL, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextXmlSimpleparserSimpleXMLParser, ATTRIBUTE_VALUE, jint)

#endif // _ComItextpdfTextXmlSimpleparserSimpleXMLParser_H_
