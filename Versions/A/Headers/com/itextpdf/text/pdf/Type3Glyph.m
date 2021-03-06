//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/Type3Glyph.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/Type3Glyph.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/Image.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/ByteBuffer.h"
#include "com/itextpdf/text/pdf/PageResources.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "com/itextpdf/text/pdf/PdfDocument.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/Type3Glyph.h"


#line 52
@implementation ComItextpdfTextPdfType3Glyph


#line 57
- (instancetype)init {
  return
#line 58
  [super initWithComItextpdfTextPdfPdfWriter:nil];
}


#line 61
- (instancetype)initWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                withComItextpdfTextPdfPageResources:(ComItextpdfTextPdfPageResources *)pageResources
                                          withFloat:(jfloat)wx
                                          withFloat:(jfloat)llx
                                          withFloat:(jfloat)lly
                                          withFloat:(jfloat)urx
                                          withFloat:(jfloat)ury
                                        withBoolean:(jboolean)colorized {
  if (self = [super initWithComItextpdfTextPdfPdfWriter:writer]) {
    
#line 63
    self->pageResources_ = pageResources;
    
#line 64
    self->colorized_ = colorized;
    
#line 65
    if (colorized) {
      (void) [((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk(content_)) appendWithFloat:wx])) appendWithNSString:@" 0 d0\n"];
    }
    else {
      (void) [((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk([((ComItextpdfTextPdfByteBuffer *) nil_chk(content_)) appendWithFloat:wx])) appendWithNSString:@" 0 "])) appendWithFloat:llx])) appendWithChar:' '])) appendWithFloat:lly])) appendWithChar:' '])) appendWithFloat:urx])) appendWithChar:' '])) appendWithFloat:ury])) appendWithNSString:@" d1\n"];
    }
  }
  return self;
}


#line 73
- (ComItextpdfTextPdfPageResources *)getPageResources {
  
#line 74
  return pageResources_;
}


#line 77
- (void)addImageWithComItextpdfTextImage:(ComItextpdfTextImage *)image
                               withFloat:(jfloat)a
                               withFloat:(jfloat)b
                               withFloat:(jfloat)c
                               withFloat:(jfloat)d
                               withFloat:(jfloat)e
                               withFloat:(jfloat)f
                             withBoolean:(jboolean)inlineImage {
  
#line 78
  if (!colorized_ && (![((ComItextpdfTextImage *) nil_chk(image)) isMask] || !([image getBpc] == 1 || [image getBpc] > (jint) 0xff)))
#line 79
  @throw [[ComItextpdfTextDocumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"not.colorized.typed3.fonts.only.accept.mask.images" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  [super addImageWithComItextpdfTextImage:image withFloat:a withFloat:b withFloat:c withFloat:d withFloat:e withFloat:f withBoolean:inlineImage];
}


#line 83
- (ComItextpdfTextPdfPdfContentByte *)getDuplicate {
  
#line 84
  ComItextpdfTextPdfType3Glyph *dup = [[ComItextpdfTextPdfType3Glyph alloc] init];
  dup->writer_ = writer_;
  dup->pdf_ = pdf_;
  dup->pageResources_ = pageResources_;
  dup->colorized_ = colorized_;
  return dup;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfType3Glyph *)other {
  [super copyAllFieldsTo:other];
  other->colorized_ = colorized_;
  other->pageResources_ = pageResources_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Type3Glyph", NULL, 0x2, NULL },
    { "initWithComItextpdfTextPdfPdfWriter:withComItextpdfTextPdfPageResources:withFloat:withFloat:withFloat:withFloat:withFloat:withBoolean:", "Type3Glyph", NULL, 0x0, NULL },
    { "getPageResources", NULL, "Lcom.itextpdf.text.pdf.PageResources;", 0x0, NULL },
    { "addImageWithComItextpdfTextImage:withFloat:withFloat:withFloat:withFloat:withFloat:withFloat:withBoolean:", "addImage", "V", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "getDuplicate", NULL, "Lcom.itextpdf.text.pdf.PdfContentByte;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pageResources_", NULL, 0x2, "Lcom.itextpdf.text.pdf.PageResources;", NULL,  },
    { "colorized_", NULL, 0x2, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfType3Glyph = { "Type3Glyph", "com.itextpdf.text.pdf", NULL, 0x11, 5, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfType3Glyph;
}

@end
