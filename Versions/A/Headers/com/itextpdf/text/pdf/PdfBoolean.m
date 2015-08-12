//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfBoolean.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfBoolean.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/BadPdfFormatException.h"
#include "com/itextpdf/text/pdf/PdfBoolean.h"
#include "com/itextpdf/text/pdf/PdfObject.h"

BOOL ComItextpdfTextPdfPdfBoolean_initialized = NO;


#line 59
@implementation ComItextpdfTextPdfPdfBoolean

ComItextpdfTextPdfPdfBoolean * ComItextpdfTextPdfPdfBoolean_PDFTRUE_;
ComItextpdfTextPdfPdfBoolean * ComItextpdfTextPdfPdfBoolean_PDFFALSE_;
NSString * ComItextpdfTextPdfPdfBoolean_TRUE__ = 
#line 65
@"true";
NSString * ComItextpdfTextPdfPdfBoolean_FALSE__ = 
#line 68
@"false";


#line 83
- (instancetype)initWithBoolean:(jboolean)value {
  if (self =
#line 84
  [super initWithInt:ComItextpdfTextPdfPdfObject_BOOLEAN]) {
    
#line 85
    if (value) {
      [self setContentWithNSString:ComItextpdfTextPdfPdfBoolean_TRUE__];
    }
    else {
      [self setContentWithNSString:ComItextpdfTextPdfPdfBoolean_FALSE__];
    }
    
#line 91
    self->value_ = value;
  }
  return self;
}

- (instancetype)initWithNSString:(NSString *)value {
  if (self =
#line 103
  [super initWithInt:ComItextpdfTextPdfPdfObject_BOOLEAN withNSString:value]) {
    
#line 104
    if ([((NSString *) nil_chk(value)) isEqual:ComItextpdfTextPdfPdfBoolean_TRUE__]) {
      self->value_ = YES;
    }
    else if ([value isEqual:ComItextpdfTextPdfPdfBoolean_FALSE__]) {
      self->value_ = NO;
    }
    else {
      @throw [[ComItextpdfTextPdfBadPdfFormatException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"the.value.has.to.be.true.of.false.instead.of.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ value } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
  }
  return self;
}


#line 123
- (jboolean)booleanValue {
  
#line 124
  return value_;
}

- (NSString *)description {
  
#line 128
  return value_ ? ComItextpdfTextPdfPdfBoolean_TRUE__ : ComItextpdfTextPdfPdfBoolean_FALSE__;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfBoolean *)other {
  [super copyAllFieldsTo:other];
  other->value_ = value_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfPdfBoolean class]) {
    ComItextpdfTextPdfPdfBoolean_PDFTRUE_ =
#line 62
    [[ComItextpdfTextPdfPdfBoolean alloc] initWithBoolean:YES];
    ComItextpdfTextPdfPdfBoolean_PDFFALSE_ =
#line 63
    [[ComItextpdfTextPdfPdfBoolean alloc] initWithBoolean:NO];
    ComItextpdfTextPdfPdfBoolean_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithBoolean:", "PdfBoolean", NULL, 0x1, NULL },
    { "initWithNSString:", "PdfBoolean", NULL, 0x1, "Lcom.itextpdf.text.pdf.BadPdfFormatException;" },
    { "booleanValue", NULL, "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PDFTRUE_", NULL, 0x19, "Lcom.itextpdf.text.pdf.PdfBoolean;", &ComItextpdfTextPdfPdfBoolean_PDFTRUE_,  },
    { "PDFFALSE_", NULL, 0x19, "Lcom.itextpdf.text.pdf.PdfBoolean;", &ComItextpdfTextPdfPdfBoolean_PDFFALSE_,  },
    { "TRUE__", "TRUE", 0x19, "Ljava.lang.String;", &ComItextpdfTextPdfPdfBoolean_TRUE__,  },
    { "FALSE__", "FALSE", 0x19, "Ljava.lang.String;", &ComItextpdfTextPdfPdfBoolean_FALSE__,  },
    { "value_", NULL, 0x2, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfBoolean = { "PdfBoolean", "com.itextpdf.text.pdf", NULL, 0x1, 4, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfBoolean;
}

@end
