//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ChapterAutoNumber.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ChapterAutoNumber.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/ChapterAutoNumber.h"
#include "com/itextpdf/text/Paragraph.h"
#include "com/itextpdf/text/Section.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "java/lang/IllegalStateException.h"


#line 53
@implementation ComItextpdfTextChapterAutoNumber


#line 69
- (instancetype)initWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)para {
  if (self =
#line 70
  [super initWithComItextpdfTextParagraph:para withInt:0]) {
    numberSet_ =
#line 62
    NO;
  }
  return self;
}


#line 78
- (instancetype)initWithNSString:(NSString *)title {
  if (self = [super initWithNSString:title withInt:0]) {
    numberSet_ =
#line 62
    NO;
  }
  return self;
}


#line 89
- (ComItextpdfTextSection *)addSectionWithNSString:(NSString *)title {
  
#line 90
  if ([self isAddedCompletely]) {
    @throw [[JavaLangIllegalStateException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"this.largeelement.has.already.been.added.to.the.document" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  return [self addSectionWithNSString:title withInt:2];
}


#line 103
- (ComItextpdfTextSection *)addSectionWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)title {
  
#line 104
  if ([self isAddedCompletely]) {
    @throw [[JavaLangIllegalStateException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"this.largeelement.has.already.been.added.to.the.document" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  return [self addSectionWithComItextpdfTextParagraph:title withInt:2];
}


#line 116
- (jint)setAutomaticNumberWithInt:(jint)number {
  
#line 117
  if (!numberSet_) {
    number++;
    [super setChapterNumberWithInt:number];
    numberSet_ = YES;
  }
  return number;
}

- (void)copyAllFieldsTo:(ComItextpdfTextChapterAutoNumber *)other {
  [super copyAllFieldsTo:other];
  other->numberSet_ = numberSet_;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextParagraph:", "ChapterAutoNumber", NULL, 0x1, NULL },
    { "initWithNSString:", "ChapterAutoNumber", NULL, 0x1, NULL },
    { "addSectionWithNSString:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "addSectionWithComItextpdfTextParagraph:", "addSection", "Lcom.itextpdf.text.Section;", 0x1, NULL },
    { "setAutomaticNumberWithInt:", "setAutomaticNumber", "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextChapterAutoNumber_serialVersionUID },
    { "numberSet_", NULL, 0x4, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextChapterAutoNumber = { "ChapterAutoNumber", "com.itextpdf.text", NULL, 0x1, 5, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextChapterAutoNumber;
}

@end
