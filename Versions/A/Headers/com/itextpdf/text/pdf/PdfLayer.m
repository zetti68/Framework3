//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfLayer.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfLayer.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfIndirectObject.h"
#include "com/itextpdf/text/pdf/PdfIndirectReference.h"
#include "com/itextpdf/text/pdf/PdfLayer.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfStamperImp.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/util/ArrayList.h"


#line 58
@implementation ComItextpdfTextPdfPdfLayer


#line 74
- (instancetype)initWithNSString:(NSString *)title {
  if (self = [super init]) {
    on_ =
#line 67
    YES;
    onPanel_ =
#line 72
    YES;
    
#line 75
    self->title_ = title;
  }
  return self;
}


#line 85
+ (ComItextpdfTextPdfPdfLayer *)createTitleWithNSString:(NSString *)title
                        withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer {
  
#line 86
  if (title == nil)
#line 87
  @throw [[JavaLangNullPointerException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"title.cannot.be.null" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  ComItextpdfTextPdfPdfLayer *layer = [[ComItextpdfTextPdfPdfLayer alloc] initWithNSString:title];
  [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) registerLayerWithComItextpdfTextPdfPdfOCG:layer];
  return layer;
}


#line 98
- (instancetype)initWithNSString:(NSString *)name
 withComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer {
  if (self =
#line 99
  [super initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_OCG_()]) {
    on_ =
#line 67
    YES;
    onPanel_ =
#line 72
    YES;
    
#line 100
    [self setNameWithNSString:name];
    
#line 101
    if ([writer isKindOfClass:[ComItextpdfTextPdfPdfStamperImp class]])
#line 102
    ref_ = [((ComItextpdfTextPdfPdfIndirectObject *) nil_chk([((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) addToBodyWithComItextpdfTextPdfPdfObject:self])) getIndirectReference];
    else
#line 104
    ref_ = [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) getPdfIndirectReference];
    
#line 105
    [((ComItextpdfTextPdfPdfWriter *) nil_chk(writer)) registerLayerWithComItextpdfTextPdfPdfOCG:self];
  }
  return self;
}


#line 108
- (NSString *)getTitle {
  
#line 109
  return title_;
}


#line 116
- (void)addChildWithComItextpdfTextPdfPdfLayer:(ComItextpdfTextPdfPdfLayer *)child {
  
#line 117
  if (((ComItextpdfTextPdfPdfLayer *) nil_chk(child))->parent_ != nil)
#line 118
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"the.layer.1.already.has.a.parent" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [((ComItextpdfTextPdfPdfString *) nil_chk([child getAsStringWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_NAME_()])) toUnicodeString] } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
  child->parent_ = self;
  if (children_ == nil)
#line 121
  children_ = [[JavaUtilArrayList alloc] init];
  [((JavaUtilArrayList *) nil_chk(children_)) addWithId:child];
}


#line 130
- (ComItextpdfTextPdfPdfLayer *)getParent {
  
#line 131
  return parent_;
}


#line 138
- (JavaUtilArrayList *)getChildren {
  
#line 139
  return children_;
}


#line 146
- (ComItextpdfTextPdfPdfIndirectReference *)getRef {
  
#line 147
  return ref_;
}


#line 156
- (void)setRefWithComItextpdfTextPdfPdfIndirectReference:(ComItextpdfTextPdfPdfIndirectReference *)ref {
  
#line 157
  self->ref_ = ref;
}


#line 164
- (void)setNameWithNSString:(NSString *)name {
  
#line 165
  [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_NAME_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:name withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
}


#line 172
- (ComItextpdfTextPdfPdfObject *)getPdfObject {
  
#line 173
  return self;
}


#line 180
- (jboolean)isOn {
  
#line 181
  return self->on_;
}


#line 188
- (void)setOnWithBoolean:(jboolean)on {
  
#line 189
  self->on_ = on;
}


#line 192
- (ComItextpdfTextPdfPdfDictionary *)getUsage {
  
#line 193
  ComItextpdfTextPdfPdfDictionary *usage = [self getAsDictWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_USAGE_()];
  if (usage == nil) {
    usage = [[ComItextpdfTextPdfPdfDictionary alloc] init];
    [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_USAGE_() withComItextpdfTextPdfPdfObject:usage];
  }
  return usage;
}


#line 210
- (void)setCreatorInfoWithNSString:(NSString *)creator
                      withNSString:(NSString *)subtype {
  
#line 211
  ComItextpdfTextPdfPdfDictionary *usage = [self getUsage];
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_CREATOR_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:creator withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:subtype]];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(usage)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_CREATORINFO_() withComItextpdfTextPdfPdfObject:dic];
}


#line 226
- (void)setLanguageWithNSString:(NSString *)lang
                    withBoolean:(jboolean)preferred {
  
#line 227
  ComItextpdfTextPdfPdfDictionary *usage = [self getUsage];
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LANG_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:lang withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
  if (preferred)
#line 231
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PREFERRED_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_ON_()];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(usage)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LANGUAGE_() withComItextpdfTextPdfPdfObject:dic];
}


#line 242
- (void)setExportWithBoolean:(jboolean)export_ {
  
#line 243
  ComItextpdfTextPdfPdfDictionary *usage = [self getUsage];
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_EXPORTSTATE_() withComItextpdfTextPdfPdfObject:export_ ? ComItextpdfTextPdfPdfName_get_ON_() : ComItextpdfTextPdfPdfName_get_OFF_()];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(usage)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_EXPORT_() withComItextpdfTextPdfPdfObject:dic];
}


#line 258
- (void)setZoomWithFloat:(jfloat)min
               withFloat:(jfloat)max {
  
#line 259
  if (min <= 0 && max < 0)
#line 260
  return;
  ComItextpdfTextPdfPdfDictionary *usage = [self getUsage];
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  if (min > 0)
#line 264
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_MIN_LOWER_CASE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:min]];
  if (max >= 0)
#line 266
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_MAX_LOWER_CASE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithFloat:max]];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(usage)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ZOOM_() withComItextpdfTextPdfPdfObject:dic];
}


#line 278
- (void)setPrintWithNSString:(NSString *)subtype
                 withBoolean:(jboolean)printstate {
  
#line 279
  ComItextpdfTextPdfPdfDictionary *usage = [self getUsage];
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:subtype]];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PRINTSTATE_() withComItextpdfTextPdfPdfObject:printstate ? ComItextpdfTextPdfPdfName_get_ON_() : ComItextpdfTextPdfPdfName_get_OFF_()];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(usage)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PRINT_() withComItextpdfTextPdfPdfObject:dic];
}


#line 291
- (void)setViewWithBoolean:(jboolean)view {
  
#line 292
  ComItextpdfTextPdfPdfDictionary *usage = [self getUsage];
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_VIEWSTATE_() withComItextpdfTextPdfPdfObject:view ? ComItextpdfTextPdfPdfName_get_ON_() : ComItextpdfTextPdfPdfName_get_OFF_()];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(usage)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_VIEW_() withComItextpdfTextPdfPdfObject:dic];
}


#line 304
- (void)setPageElementWithNSString:(NSString *)pe {
  
#line 305
  ComItextpdfTextPdfPdfDictionary *usage = [self getUsage];
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_SUBTYPE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:pe]];
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(usage)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGEELEMENT_() withComItextpdfTextPdfPdfObject:dic];
}


#line 317
- (void)setUserWithNSString:(NSString *)type
          withNSStringArray:(IOSObjectArray *)names {
  
#line 318
  ComItextpdfTextPdfPdfDictionary *usage = [self getUsage];
  ComItextpdfTextPdfPdfDictionary *dic = [[ComItextpdfTextPdfPdfDictionary alloc] init];
  [dic putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_TYPE_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:type]];
  ComItextpdfTextPdfPdfArray *arr = [[ComItextpdfTextPdfPdfArray alloc] init];
  {
    IOSObjectArray *a__ =
#line 322
    names;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *s = *b__++;
      
#line 323
      [arr addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithNSString:s withNSString:ComItextpdfTextPdfPdfObject_get_TEXT_UNICODE_()]];
    }
  }
  
#line 324
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(usage)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_NAME_() withComItextpdfTextPdfPdfObject:arr];
  [usage putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_USER_() withComItextpdfTextPdfPdfObject:dic];
}


#line 332
- (jboolean)isOnPanel {
  
#line 333
  return self->onPanel_;
}


#line 342
- (void)setOnPanelWithBoolean:(jboolean)onPanel {
  
#line 343
  self->onPanel_ = onPanel;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfLayer *)other {
  [super copyAllFieldsTo:other];
  other->children_ = children_;
  other->on_ = on_;
  other->onPanel_ = onPanel_;
  other->parent_ = parent_;
  other->ref_ = ref_;
  other->title_ = title_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "PdfLayer", NULL, 0x0, NULL },
    { "createTitleWithNSString:withComItextpdfTextPdfPdfWriter:", "createTitle", "Lcom.itextpdf.text.pdf.PdfLayer;", 0x9, NULL },
    { "initWithNSString:withComItextpdfTextPdfPdfWriter:", "PdfLayer", NULL, 0x1, "Ljava.io.IOException;" },
    { "getTitle", NULL, "Ljava.lang.String;", 0x0, NULL },
    { "addChildWithComItextpdfTextPdfPdfLayer:", "addChild", "V", 0x1, NULL },
    { "getParent", NULL, "Lcom.itextpdf.text.pdf.PdfLayer;", 0x1, NULL },
    { "getChildren", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "getRef", NULL, "Lcom.itextpdf.text.pdf.PdfIndirectReference;", 0x1, NULL },
    { "setRefWithComItextpdfTextPdfPdfIndirectReference:", "setRef", "V", 0x0, NULL },
    { "setNameWithNSString:", "setName", "V", 0x1, NULL },
    { "getPdfObject", NULL, "Lcom.itextpdf.text.pdf.PdfObject;", 0x1, NULL },
    { "isOn", NULL, "Z", 0x1, NULL },
    { "setOnWithBoolean:", "setOn", "V", 0x1, NULL },
    { "getUsage", NULL, "Lcom.itextpdf.text.pdf.PdfDictionary;", 0x2, NULL },
    { "setCreatorInfoWithNSString:withNSString:", "setCreatorInfo", "V", 0x1, NULL },
    { "setLanguageWithNSString:withBoolean:", "setLanguage", "V", 0x1, NULL },
    { "setExportWithBoolean:", "setExport", "V", 0x1, NULL },
    { "setZoomWithFloat:withFloat:", "setZoom", "V", 0x1, NULL },
    { "setPrintWithNSString:withBoolean:", "setPrint", "V", 0x1, NULL },
    { "setViewWithBoolean:", "setView", "V", 0x1, NULL },
    { "setPageElementWithNSString:", "setPageElement", "V", 0x1, NULL },
    { "setUserWithNSString:withNSStringArray:", "setUser", "V", 0x81, NULL },
    { "isOnPanel", NULL, "Z", 0x1, NULL },
    { "setOnPanelWithBoolean:", "setOnPanel", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ref_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfIndirectReference;", NULL,  },
    { "children_", NULL, 0x4, "Ljava.util.ArrayList;", NULL,  },
    { "parent_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfLayer;", NULL,  },
    { "title_", NULL, 0x4, "Ljava.lang.String;", NULL,  },
    { "on_", NULL, 0x2, "Z", NULL,  },
    { "onPanel_", NULL, 0x2, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfLayer = { "PdfLayer", "com.itextpdf.text.pdf", NULL, 0x1, 24, methods, 6, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfLayer;
}

@end
