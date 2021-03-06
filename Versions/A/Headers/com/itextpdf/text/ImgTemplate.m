//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ImgTemplate.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ImgTemplate.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/BadElementException.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/Image.h"
#include "com/itextpdf/text/ImgTemplate.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfTemplate.h"
#include "java/net/URL.h"


#line 61
@implementation ComItextpdfTextImgTemplate

- (instancetype)initWithComItextpdfTextImage:(ComItextpdfTextImage *)image {
  return
#line 64
  [super initWithComItextpdfTextImage:image];
}


#line 72
- (instancetype)initWithComItextpdfTextPdfPdfTemplate:(ComItextpdfTextPdfPdfTemplate *)template_ {
  if (self =
#line 73
  [super initWithJavaNetURL:(JavaNetURL *) check_class_cast(nil, [JavaNetURL class])]) {
    
#line 74
    if (template_ == nil)
#line 75
    @throw [[ComItextpdfTextBadElementException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"the.template.can.not.be.null" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    
#line 76
    if ([((ComItextpdfTextPdfPdfTemplate *) nil_chk(template_)) getType] == ComItextpdfTextPdfPdfTemplate_TYPE_PATTERN)
#line 77
    @throw [[ComItextpdfTextBadElementException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"a.pattern.can.not.be.used.as.a.template.to.create.an.image" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
    
#line 78
    type__ = ComItextpdfTextElement_IMGTEMPLATE;
    
#line 79
    scaledHeight_ = [template_ getHeight];
    
#line 80
    [self setTopWithFloat:scaledHeight_];
    
#line 81
    scaledWidth_ = [template_ getWidth];
    
#line 82
    [self setRightWithFloat:scaledWidth_];
    
#line 83
    [self setTemplateDataWithComItextpdfTextPdfPdfTemplate:template_];
    
#line 84
    plainWidth_ = [self getWidth];
    
#line 85
    plainHeight_ = [self getHeight];
  }
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextImage:", "ImgTemplate", NULL, 0x0, NULL },
    { "initWithComItextpdfTextPdfPdfTemplate:", "ImgTemplate", NULL, 0x1, "Lcom.itextpdf.text.BadElementException;" },
  };
  static const J2ObjcClassInfo _ComItextpdfTextImgTemplate = { "ImgTemplate", "com.itextpdf.text", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextImgTemplate;
}

@end
