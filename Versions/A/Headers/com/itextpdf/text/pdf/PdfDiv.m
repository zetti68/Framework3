//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfDiv.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfDiv.java"

#include "IOSClass.h"
#include "com/itextpdf/awt/geom/AffineTransform.h"
#include "com/itextpdf/text/AccessibleElementId.h"
#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ElementListener.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/pdf/ColumnText.h"
#include "com/itextpdf/text/pdf/FloatLayout.h"
#include "com/itextpdf/text/pdf/PdfArtifact.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "com/itextpdf/text/pdf/PdfDiv.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"


#line 59
@implementation ComItextpdfTextPdfPdfDiv


#line 108
- (jfloat)getContentWidth {
  
#line 109
  return contentWidth_;
}


#line 112
- (void)setContentWidthWithFloat:(jfloat)contentWidth {
  
#line 113
  self->contentWidth_ = contentWidth;
}


#line 116
- (jfloat)getContentHeight {
  
#line 117
  return contentHeight_;
}


#line 120
- (void)setContentHeightWithFloat:(jfloat)contentHeight {
  
#line 121
  self->contentHeight_ = contentHeight;
}


#line 124
- (jfloat)getActualHeight {
  
#line 125
  return height_ != nil && [height_ floatValue] >= contentHeight_ ? [height_ floatValue] : contentHeight_;
}


#line 128
- (jfloat)getActualWidth {
  
#line 129
  return width_ != nil && [width_ floatValue] >= contentWidth_ ? [width_ floatValue] : contentWidth_;
}


#line 132
- (JavaLangFloat *)getPercentageHeight {
  
#line 133
  return percentageHeight_;
}


#line 136
- (void)setPercentageHeightWithJavaLangFloat:(JavaLangFloat *)percentageHeight {
  
#line 137
  self->percentageHeight_ = percentageHeight;
}


#line 140
- (JavaLangFloat *)getPercentageWidth {
  
#line 141
  return percentageWidth_;
}


#line 144
- (void)setPercentageWidthWithJavaLangFloat:(JavaLangFloat *)percentageWidth {
  
#line 145
  self->percentageWidth_ = percentageWidth;
}


#line 148
- (ComItextpdfTextBaseColor *)getBackgroundColor {
  
#line 149
  return backgroundColor_;
}


#line 152
- (void)setBackgroundColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)backgroundColor {
  
#line 153
  self->backgroundColor_ = backgroundColor;
}


#line 156
- (jfloat)getYLine {
  
#line 157
  return yLine_;
}


#line 172
- (instancetype)init {
  if (self = [super init]) {
    left_ =
#line 66
    nil;
    top_ =
#line 68
    nil;
    right_ =
#line 70
    nil;
    bottom_ =
#line 72
    nil;
    width_ =
#line 74
    nil;
    height_ =
#line 76
    nil;
    percentageHeight_ =
#line 78
    nil;
    percentageWidth_ =
#line 80
    nil;
    contentWidth_ =
#line 82
    0;
    contentHeight_ =
#line 84
    0;
    textAlignment_ =
#line 86
    ComItextpdfTextElement_ALIGN_UNDEFINED;
    paddingLeft_ =
#line 88
    0;
    paddingRight_ =
#line 90
    0;
    paddingTop_ =
#line 92
    0;
    paddingBottom_ =
#line 94
    0;
    floatType_ = ComItextpdfTextPdfPdfDiv_FloatTypeEnum_get_NONE();
    position_ = ComItextpdfTextPdfPdfDiv_PositionTypeEnum_get_STATIC();
    floatLayout_ =
#line 100
    nil;
    role_ = ComItextpdfTextPdfPdfName_get_DIV_();
    accessibleAttributes_ =
#line 105
    nil;
    id__ =
#line 106
    [[ComItextpdfTextAccessibleElementId alloc] init];
    backgroundColor_ =
#line 160
    nil;
    
#line 173
    content_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}


#line 181
- (id<JavaUtilList>)getChunks {
  
#line 182
  return [[JavaUtilArrayList alloc] init];
}


#line 190
- (jint)type {
  
#line 191
  return ComItextpdfTextElement_DIV;
}


#line 198
- (jboolean)isContent {
  
#line 199
  return YES;
}


#line 206
- (jboolean)isNestable {
  
#line 207
  return YES;
}


#line 217
- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener {
  
#line 218
  @try {
    return [((id<ComItextpdfTextElementListener>) nil_chk(listener)) addWithComItextpdfTextElement:self];
  }
  @catch (ComItextpdfTextDocumentException *de) {
    return NO;
  }
}


#line 231
- (void)setSpacingBeforeWithFloat:(jfloat)spacing {
  
#line 232
  self->spacingBefore_ = spacing;
}


#line 240
- (void)setSpacingAfterWithFloat:(jfloat)spacing {
  
#line 241
  self->spacingAfter_ = spacing;
}


#line 249
- (jfloat)getSpacingBefore {
  
#line 250
  return spacingBefore_;
}


#line 258
- (jfloat)getSpacingAfter {
  
#line 259
  return spacingAfter_;
}


#line 267
- (jint)getTextAlignment {
  
#line 268
  return self->textAlignment_;
}


#line 277
- (void)setTextAlignmentWithInt:(jint)textAlignment {
  
#line 278
  self->textAlignment_ = textAlignment;
}


#line 281
- (void)addElementWithComItextpdfTextElement:(id<ComItextpdfTextElement>)element {
  
#line 282
  [((JavaUtilArrayList *) nil_chk(content_)) addWithId:element];
}


#line 285
- (JavaLangFloat *)getLeft {
  
#line 286
  return self->left_;
}


#line 289
- (void)setLeftWithJavaLangFloat:(JavaLangFloat *)left {
  
#line 290
  self->left_ = left;
}


#line 293
- (JavaLangFloat *)getRight {
  
#line 294
  return self->right_;
}


#line 297
- (void)setRightWithJavaLangFloat:(JavaLangFloat *)right {
  
#line 298
  self->right_ = right;
}


#line 301
- (JavaLangFloat *)getTop {
  
#line 302
  return self->top_;
}


#line 305
- (void)setTopWithJavaLangFloat:(JavaLangFloat *)top {
  
#line 306
  self->top_ = top;
}


#line 309
- (JavaLangFloat *)getBottom {
  
#line 310
  return self->bottom_;
}


#line 313
- (void)setBottomWithJavaLangFloat:(JavaLangFloat *)bottom {
  
#line 314
  self->bottom_ = bottom;
}


#line 317
- (JavaLangFloat *)getWidth {
  
#line 318
  return self->width_;
}


#line 321
- (void)setWidthWithJavaLangFloat:(JavaLangFloat *)width {
  
#line 322
  self->width_ = width;
}


#line 325
- (JavaLangFloat *)getHeight {
  
#line 326
  return self->height_;
}


#line 329
- (void)setHeightWithJavaLangFloat:(JavaLangFloat *)height {
  
#line 330
  self->height_ = height;
}


#line 333
- (jfloat)getPaddingLeft {
  
#line 334
  return paddingLeft_;
}


#line 337
- (void)setPaddingLeftWithFloat:(jfloat)paddingLeft {
  
#line 338
  self->paddingLeft_ = paddingLeft;
}


#line 341
- (jfloat)getPaddingRight {
  
#line 342
  return paddingRight_;
}


#line 345
- (void)setPaddingRightWithFloat:(jfloat)paddingRight {
  
#line 346
  self->paddingRight_ = paddingRight;
}


#line 349
- (jfloat)getPaddingTop {
  
#line 350
  return paddingTop_;
}


#line 353
- (void)setPaddingTopWithFloat:(jfloat)paddingTop {
  
#line 354
  self->paddingTop_ = paddingTop;
}


#line 357
- (jfloat)getPaddingBottom {
  
#line 358
  return paddingBottom_;
}


#line 361
- (void)setPaddingBottomWithFloat:(jfloat)paddingBottom {
  
#line 362
  self->paddingBottom_ = paddingBottom;
}


#line 365
- (ComItextpdfTextPdfPdfDiv_FloatTypeEnum *)getFloatType {
  
#line 366
  return floatType_;
}


#line 369
- (void)setFloatTypeWithComItextpdfTextPdfPdfDiv_FloatTypeEnum:(ComItextpdfTextPdfPdfDiv_FloatTypeEnum *)floatType {
  
#line 370
  self->floatType_ = floatType;
}


#line 373
- (ComItextpdfTextPdfPdfDiv_PositionTypeEnum *)getPosition {
  
#line 374
  return position_;
}


#line 377
- (void)setPositionWithComItextpdfTextPdfPdfDiv_PositionTypeEnum:(ComItextpdfTextPdfPdfDiv_PositionTypeEnum *)position {
  
#line 378
  self->position_ = position;
}


#line 381
- (JavaUtilArrayList *)getContent {
  
#line 382
  return content_;
}


#line 385
- (void)setContentWithJavaUtilArrayList:(JavaUtilArrayList *)content {
  
#line 386
  self->content_ = content;
}


#line 389
- (jint)layoutWithComItextpdfTextPdfPdfContentByte:(ComItextpdfTextPdfPdfContentByte *)canvas
                                       withBoolean:(jboolean)useAscender
                                       withBoolean:(jboolean)simulate
                                         withFloat:(jfloat)llx
                                         withFloat:(jfloat)lly
                                         withFloat:(jfloat)urx
                                         withFloat:(jfloat)ury {
  jfloat leftX = [JavaLangMath minWithFloat:llx withFloat:urx];
  jfloat maxY = [JavaLangMath maxWithFloat:lly withFloat:ury];
  jfloat minY = [JavaLangMath minWithFloat:lly withFloat:ury];
  jfloat rightX = [JavaLangMath maxWithFloat:llx withFloat:urx];
  yLine_ = maxY;
  jboolean contentCutByFixedHeight = NO;
  
#line 398
  if (width_ != nil && [width_ floatValue] > 0) {
    if ([width_ floatValue] < rightX - leftX) {
      rightX = leftX + [width_ floatValue];
    }
    else
#line 401
    if ([width_ floatValue] > rightX - leftX) {
      return ComItextpdfTextPdfColumnText_NO_MORE_COLUMN;
    }
  }
  else
#line 404
  if (percentageWidth_ != nil) {
    contentWidth_ = (rightX - leftX) * [percentageWidth_ floatValue];
    rightX = leftX + contentWidth_;
  }
  
#line 409
  if (height_ != nil && [height_ floatValue] > 0) {
    if ([height_ floatValue] < maxY - minY) {
      minY = maxY - [height_ floatValue];
      contentCutByFixedHeight = YES;
    }
    else
#line 413
    if ([height_ floatValue] > maxY - minY) {
      return ComItextpdfTextPdfColumnText_NO_MORE_COLUMN;
    }
  }
  else
#line 416
  if (percentageHeight_ != nil) {
    if ([percentageHeight_ floatValue] < 1.0) {
      contentCutByFixedHeight = YES;
    }
    contentHeight_ = (maxY - minY) * [percentageHeight_ floatValue];
    minY = maxY - contentHeight_;
  }
  
#line 424
  if (!simulate && position_ == ComItextpdfTextPdfPdfDiv_PositionTypeEnum_get_RELATIVE()) {
    JavaLangFloat *translationX = nil;
    if (left_ != nil) {
      translationX = left_;
    }
    else
#line 428
    if (right_ != nil) {
      translationX = [JavaLangFloat valueOfWithFloat:-[right_ floatValue]];
    }
    else {
      
#line 431
      translationX = [JavaLangFloat valueOfWithFloat:0.0f];
    }
    
#line 434
    JavaLangFloat *translationY = nil;
    if (top_ != nil) {
      translationY = [JavaLangFloat valueOfWithFloat:-[top_ floatValue]];
    }
    else
#line 437
    if (bottom_ != nil) {
      translationY = bottom_;
    }
    else {
      
#line 440
      translationY = [JavaLangFloat valueOfWithFloat:0.0f];
    }
    [((ComItextpdfTextPdfPdfContentByte *) nil_chk(canvas)) saveState];
    [canvas transformWithComItextpdfAwtGeomAffineTransform:[[ComItextpdfAwtGeomAffineTransform alloc] initWithFloat:1.0f withFloat:0 withFloat:0 withFloat:1.0f withFloat:[((JavaLangFloat *) nil_chk(translationX)) floatValue] withFloat:[((JavaLangFloat *) nil_chk(translationY)) floatValue]]];
  }
  
#line 446
  if (!simulate) {
    if (backgroundColor_ != nil && [self getActualWidth] > 0 && [self getActualHeight] > 0) {
      jfloat backgroundWidth = [self getActualWidth];
      jfloat backgroundHeight = [self getActualHeight];
      if (width_ != nil) {
        backgroundWidth = [width_ floatValue] > 0 ? [width_ floatValue] : 0;
      }
      
#line 454
      if (height_ != nil) {
        backgroundHeight = [height_ floatValue] > 0 ? [height_ floatValue] : 0;
      }
      if (backgroundWidth > 0 && backgroundHeight > 0) {
        ComItextpdfTextRectangle *background = [[ComItextpdfTextRectangle alloc] initWithFloat:leftX withFloat:maxY - backgroundHeight withFloat:leftX + backgroundWidth withFloat:maxY];
        [background setBackgroundColorWithComItextpdfTextBaseColor:backgroundColor_];
        ComItextpdfTextPdfPdfArtifact *artifact = [[ComItextpdfTextPdfPdfArtifact alloc] init];
        [((ComItextpdfTextPdfPdfContentByte *) nil_chk(canvas)) openMCBlockWithComItextpdfTextPdfInterfacesIAccessibleElement:artifact];
        [canvas rectangleWithComItextpdfTextRectangle:background];
        [canvas closeMCBlockWithComItextpdfTextPdfInterfacesIAccessibleElement:artifact];
      }
    }
  }
  
#line 468
  if (percentageWidth_ == nil) {
    contentWidth_ = 0;
  }
  if (percentageHeight_ == nil) {
    contentHeight_ = 0;
  }
  
#line 475
  minY += paddingBottom_;
  leftX += paddingLeft_;
  rightX -= paddingRight_;
  
#line 479
  yLine_ -= paddingTop_;
  
#line 481
  jint status = ComItextpdfTextPdfColumnText_NO_MORE_TEXT;
  
#line 483
  if (![((JavaUtilArrayList *) nil_chk(content_)) isEmpty]) {
    if (self->floatLayout_ == nil) {
      JavaUtilArrayList *floatingElements = [[JavaUtilArrayList alloc] initWithJavaUtilCollection:content_];
      floatLayout_ = [[ComItextpdfTextPdfFloatLayout alloc] initWithJavaUtilList:floatingElements withBoolean:useAscender];
    }
    
#line 489
    [((ComItextpdfTextPdfFloatLayout *) nil_chk(floatLayout_)) setSimpleColumnWithFloat:leftX withFloat:minY withFloat:rightX withFloat:yLine_];
    status = [floatLayout_ layoutWithComItextpdfTextPdfPdfContentByte:canvas withBoolean:simulate];
    yLine_ = [floatLayout_ getYLine];
    if (percentageWidth_ == nil && contentWidth_ < [floatLayout_ getFilledWidth]) {
      contentWidth_ = [floatLayout_ getFilledWidth];
    }
  }
  
#line 498
  if (!simulate && position_ == ComItextpdfTextPdfPdfDiv_PositionTypeEnum_get_RELATIVE()) {
    [((ComItextpdfTextPdfPdfContentByte *) nil_chk(canvas)) restoreState];
  }
  
#line 502
  yLine_ -= paddingBottom_;
  if (percentageHeight_ == nil) {
    contentHeight_ = maxY - yLine_;
  }
  
#line 507
  if (percentageWidth_ == nil) {
    contentWidth_ += paddingLeft_ + paddingRight_;
  }
  
#line 511
  return contentCutByFixedHeight ? ComItextpdfTextPdfColumnText_NO_MORE_TEXT : status;
}


#line 514
- (ComItextpdfTextPdfPdfObject *)getAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key {
  
#line 515
  if (accessibleAttributes_ != nil)
#line 516
  return [accessibleAttributes_ getWithId:key];
  else
#line 518
  return nil;
}


#line 521
- (void)setAccessibleAttributeWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value {
  
#line 522
  if (accessibleAttributes_ == nil)
#line 523
  accessibleAttributes_ = [[JavaUtilHashMap alloc] init];
  (void) [((JavaUtilHashMap *) nil_chk(accessibleAttributes_)) putWithId:key withId:value];
}


#line 527
- (JavaUtilHashMap *)getAccessibleAttributes {
  
#line 528
  return accessibleAttributes_;
}


#line 531
- (ComItextpdfTextPdfPdfName *)getRole {
  
#line 532
  return role_;
}


#line 535
- (void)setRoleWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)role {
  
#line 536
  self->role_ = role;
}


#line 539
- (ComItextpdfTextAccessibleElementId *)getId {
  
#line 540
  return id__;
}


#line 543
- (void)setIdWithComItextpdfTextAccessibleElementId:(ComItextpdfTextAccessibleElementId *)id_ {
  
#line 544
  self->id__ = id_;
}


#line 547
- (jboolean)isInline {
  
#line 548
  return NO;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfDiv *)other {
  [super copyAllFieldsTo:other];
  other->accessibleAttributes_ = accessibleAttributes_;
  other->backgroundColor_ = backgroundColor_;
  other->bottom_ = bottom_;
  other->content_ = content_;
  other->contentHeight_ = contentHeight_;
  other->contentWidth_ = contentWidth_;
  other->floatLayout_ = floatLayout_;
  other->floatType_ = floatType_;
  other->height_ = height_;
  other->id__ = id__;
  other->left_ = left_;
  other->paddingBottom_ = paddingBottom_;
  other->paddingLeft_ = paddingLeft_;
  other->paddingRight_ = paddingRight_;
  other->paddingTop_ = paddingTop_;
  other->percentageHeight_ = percentageHeight_;
  other->percentageWidth_ = percentageWidth_;
  other->position_ = position_;
  other->right_ = right_;
  other->role_ = role_;
  other->spacingAfter_ = spacingAfter_;
  other->spacingBefore_ = spacingBefore_;
  other->textAlignment_ = textAlignment_;
  other->top_ = top_;
  other->width_ = width_;
  other->yLine_ = yLine_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getContentWidth", NULL, "F", 0x1, NULL },
    { "setContentWidthWithFloat:", "setContentWidth", "V", 0x1, NULL },
    { "getContentHeight", NULL, "F", 0x1, NULL },
    { "setContentHeightWithFloat:", "setContentHeight", "V", 0x1, NULL },
    { "getActualHeight", NULL, "F", 0x1, NULL },
    { "getActualWidth", NULL, "F", 0x1, NULL },
    { "getPercentageHeight", NULL, "Ljava.lang.Float;", 0x1, NULL },
    { "setPercentageHeightWithJavaLangFloat:", "setPercentageHeight", "V", 0x1, NULL },
    { "getPercentageWidth", NULL, "Ljava.lang.Float;", 0x1, NULL },
    { "setPercentageWidthWithJavaLangFloat:", "setPercentageWidth", "V", 0x1, NULL },
    { "getBackgroundColor", NULL, "Lcom.itextpdf.text.BaseColor;", 0x1, NULL },
    { "setBackgroundColorWithComItextpdfTextBaseColor:", "setBackgroundColor", "V", 0x1, NULL },
    { "getYLine", NULL, "F", 0x1, NULL },
    { "init", "PdfDiv", NULL, 0x1, NULL },
    { "getChunks", NULL, "Ljava.util.List;", 0x1, NULL },
    { "type", NULL, "I", 0x1, NULL },
    { "isContent", NULL, "Z", 0x1, NULL },
    { "isNestable", NULL, "Z", 0x1, NULL },
    { "processWithComItextpdfTextElementListener:", "process", "Z", 0x1, NULL },
    { "setSpacingBeforeWithFloat:", "setSpacingBefore", "V", 0x1, NULL },
    { "setSpacingAfterWithFloat:", "setSpacingAfter", "V", 0x1, NULL },
    { "getSpacingBefore", NULL, "F", 0x1, NULL },
    { "getSpacingAfter", NULL, "F", 0x1, NULL },
    { "getTextAlignment", NULL, "I", 0x1, NULL },
    { "setTextAlignmentWithInt:", "setTextAlignment", "V", 0x1, NULL },
    { "addElementWithComItextpdfTextElement:", "addElement", "V", 0x1, NULL },
    { "getLeft", NULL, "Ljava.lang.Float;", 0x1, NULL },
    { "setLeftWithJavaLangFloat:", "setLeft", "V", 0x1, NULL },
    { "getRight", NULL, "Ljava.lang.Float;", 0x1, NULL },
    { "setRightWithJavaLangFloat:", "setRight", "V", 0x1, NULL },
    { "getTop", NULL, "Ljava.lang.Float;", 0x1, NULL },
    { "setTopWithJavaLangFloat:", "setTop", "V", 0x1, NULL },
    { "getBottom", NULL, "Ljava.lang.Float;", 0x1, NULL },
    { "setBottomWithJavaLangFloat:", "setBottom", "V", 0x1, NULL },
    { "getWidth", NULL, "Ljava.lang.Float;", 0x1, NULL },
    { "setWidthWithJavaLangFloat:", "setWidth", "V", 0x1, NULL },
    { "getHeight", NULL, "Ljava.lang.Float;", 0x1, NULL },
    { "setHeightWithJavaLangFloat:", "setHeight", "V", 0x1, NULL },
    { "getPaddingLeft", NULL, "F", 0x1, NULL },
    { "setPaddingLeftWithFloat:", "setPaddingLeft", "V", 0x1, NULL },
    { "getPaddingRight", NULL, "F", 0x1, NULL },
    { "setPaddingRightWithFloat:", "setPaddingRight", "V", 0x1, NULL },
    { "getPaddingTop", NULL, "F", 0x1, NULL },
    { "setPaddingTopWithFloat:", "setPaddingTop", "V", 0x1, NULL },
    { "getPaddingBottom", NULL, "F", 0x1, NULL },
    { "setPaddingBottomWithFloat:", "setPaddingBottom", "V", 0x1, NULL },
    { "getFloatType", NULL, "Lcom.itextpdf.text.pdf.PdfDiv$FloatType;", 0x1, NULL },
    { "setFloatTypeWithComItextpdfTextPdfPdfDiv_FloatTypeEnum:", "setFloatType", "V", 0x1, NULL },
    { "getPosition", NULL, "Lcom.itextpdf.text.pdf.PdfDiv$PositionType;", 0x1, NULL },
    { "setPositionWithComItextpdfTextPdfPdfDiv_PositionTypeEnum:", "setPosition", "V", 0x1, NULL },
    { "getContent", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "setContentWithJavaUtilArrayList:", "setContent", "V", 0x1, NULL },
    { "layoutWithComItextpdfTextPdfPdfContentByte:withBoolean:withBoolean:withFloat:withFloat:withFloat:withFloat:", "layout", "I", 0x1, "Lcom.itextpdf.text.DocumentException;" },
    { "getAccessibleAttributeWithComItextpdfTextPdfPdfName:", "getAccessibleAttribute", "Lcom.itextpdf.text.pdf.PdfObject;", 0x1, NULL },
    { "setAccessibleAttributeWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfObject:", "setAccessibleAttribute", "V", 0x1, NULL },
    { "getAccessibleAttributes", NULL, "Ljava.util.HashMap;", 0x1, NULL },
    { "getRole", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x1, NULL },
    { "setRoleWithComItextpdfTextPdfPdfName:", "setRole", "V", 0x1, NULL },
    { "getId", NULL, "Lcom.itextpdf.text.AccessibleElementId;", 0x1, NULL },
    { "setIdWithComItextpdfTextAccessibleElementId:", "setId", "V", 0x1, NULL },
    { "isInline", NULL, "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "content_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "left_", NULL, 0x2, "Ljava.lang.Float;", NULL,  },
    { "top_", NULL, 0x2, "Ljava.lang.Float;", NULL,  },
    { "right_", NULL, 0x2, "Ljava.lang.Float;", NULL,  },
    { "bottom_", NULL, 0x2, "Ljava.lang.Float;", NULL,  },
    { "width_", NULL, 0x2, "Ljava.lang.Float;", NULL,  },
    { "height_", NULL, 0x2, "Ljava.lang.Float;", NULL,  },
    { "percentageHeight_", NULL, 0x2, "Ljava.lang.Float;", NULL,  },
    { "percentageWidth_", NULL, 0x2, "Ljava.lang.Float;", NULL,  },
    { "contentWidth_", NULL, 0x2, "F", NULL,  },
    { "contentHeight_", NULL, 0x2, "F", NULL,  },
    { "textAlignment_", NULL, 0x2, "I", NULL,  },
    { "paddingLeft_", NULL, 0x2, "F", NULL,  },
    { "paddingRight_", NULL, 0x2, "F", NULL,  },
    { "paddingTop_", NULL, 0x2, "F", NULL,  },
    { "paddingBottom_", NULL, 0x2, "F", NULL,  },
    { "floatType_", NULL, 0x2, "Lcom.itextpdf.text.pdf.PdfDiv$FloatType;", NULL,  },
    { "position_", NULL, 0x2, "Lcom.itextpdf.text.pdf.PdfDiv$PositionType;", NULL,  },
    { "floatLayout_", NULL, 0x2, "Lcom.itextpdf.text.pdf.FloatLayout;", NULL,  },
    { "yLine_", NULL, 0x2, "F", NULL,  },
    { "role_", NULL, 0x4, "Lcom.itextpdf.text.pdf.PdfName;", NULL,  },
    { "accessibleAttributes_", NULL, 0x4, "Ljava.util.HashMap;", NULL,  },
    { "id__", "id", 0x4, "Lcom.itextpdf.text.AccessibleElementId;", NULL,  },
    { "backgroundColor_", NULL, 0x2, "Lcom.itextpdf.text.BaseColor;", NULL,  },
    { "spacingBefore_", NULL, 0x4, "F", NULL,  },
    { "spacingAfter_", NULL, 0x4, "F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfDiv = { "PdfDiv", "com.itextpdf.text.pdf", NULL, 0x1, 61, methods, 26, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfDiv;
}

@end

#line 60

BOOL ComItextpdfTextPdfPdfDiv_FloatTypeEnum_initialized = NO;

ComItextpdfTextPdfPdfDiv_FloatTypeEnum *ComItextpdfTextPdfPdfDiv_FloatTypeEnum_values_[3];

@implementation ComItextpdfTextPdfPdfDiv_FloatTypeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfPdfDiv_FloatTypeEnum_values() {
  return [IOSObjectArray arrayWithObjects:ComItextpdfTextPdfPdfDiv_FloatTypeEnum_values_ count:3 type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfDiv_FloatTypeEnum class]]];
}
+ (IOSObjectArray *)values {
  return ComItextpdfTextPdfPdfDiv_FloatTypeEnum_values();
}

+ (ComItextpdfTextPdfPdfDiv_FloatTypeEnum *)valueOfWithNSString:(NSString *)name {
  return ComItextpdfTextPdfPdfDiv_FloatTypeEnum_valueOfWithNSString_(name);
}

ComItextpdfTextPdfPdfDiv_FloatTypeEnum *ComItextpdfTextPdfPdfDiv_FloatTypeEnum_valueOfWithNSString_(NSString *name) {
  for (int i = 0; i < 3; i++) {
    ComItextpdfTextPdfPdfDiv_FloatTypeEnum *e = ComItextpdfTextPdfPdfDiv_FloatTypeEnum_values_[i];
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
  if (self == [ComItextpdfTextPdfPdfDiv_FloatTypeEnum class]) {
    ComItextpdfTextPdfPdfDiv_FloatTypeEnum_NONE = [[ComItextpdfTextPdfPdfDiv_FloatTypeEnum alloc] initWithNSString:@"NONE" withInt:0];
    ComItextpdfTextPdfPdfDiv_FloatTypeEnum_LEFT = [[ComItextpdfTextPdfPdfDiv_FloatTypeEnum alloc] initWithNSString:@"LEFT" withInt:1];
    ComItextpdfTextPdfPdfDiv_FloatTypeEnum_RIGHT = [[ComItextpdfTextPdfPdfDiv_FloatTypeEnum alloc] initWithNSString:@"RIGHT" withInt:2];
    ComItextpdfTextPdfPdfDiv_FloatTypeEnum_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:", "init", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NONE", "NONE", 0x4019, "Lcom.itextpdf.text.pdf.PdfDiv$FloatType;", &ComItextpdfTextPdfPdfDiv_FloatTypeEnum_NONE,  },
    { "LEFT", "LEFT", 0x4019, "Lcom.itextpdf.text.pdf.PdfDiv$FloatType;", &ComItextpdfTextPdfPdfDiv_FloatTypeEnum_LEFT,  },
    { "RIGHT", "RIGHT", 0x4019, "Lcom.itextpdf.text.pdf.PdfDiv$FloatType;", &ComItextpdfTextPdfPdfDiv_FloatTypeEnum_RIGHT,  },
  };
  static const char *superclass_type_args[] = {"Lcom.itextpdf.text.pdf.PdfDiv$FloatType;"};
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfDiv_FloatTypeEnum = { "FloatType", "com.itextpdf.text.pdf", "PdfDiv", 0x4019, 1, methods, 3, fields, 1, superclass_type_args};
  return &_ComItextpdfTextPdfPdfDiv_FloatTypeEnum;
}

@end

#line 62

BOOL ComItextpdfTextPdfPdfDiv_PositionTypeEnum_initialized = NO;

ComItextpdfTextPdfPdfDiv_PositionTypeEnum *ComItextpdfTextPdfPdfDiv_PositionTypeEnum_values_[4];

@implementation ComItextpdfTextPdfPdfDiv_PositionTypeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfPdfDiv_PositionTypeEnum_values() {
  return [IOSObjectArray arrayWithObjects:ComItextpdfTextPdfPdfDiv_PositionTypeEnum_values_ count:4 type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfDiv_PositionTypeEnum class]]];
}
+ (IOSObjectArray *)values {
  return ComItextpdfTextPdfPdfDiv_PositionTypeEnum_values();
}

+ (ComItextpdfTextPdfPdfDiv_PositionTypeEnum *)valueOfWithNSString:(NSString *)name {
  return ComItextpdfTextPdfPdfDiv_PositionTypeEnum_valueOfWithNSString_(name);
}

ComItextpdfTextPdfPdfDiv_PositionTypeEnum *ComItextpdfTextPdfPdfDiv_PositionTypeEnum_valueOfWithNSString_(NSString *name) {
  for (int i = 0; i < 4; i++) {
    ComItextpdfTextPdfPdfDiv_PositionTypeEnum *e = ComItextpdfTextPdfPdfDiv_PositionTypeEnum_values_[i];
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
  if (self == [ComItextpdfTextPdfPdfDiv_PositionTypeEnum class]) {
    ComItextpdfTextPdfPdfDiv_PositionTypeEnum_STATIC = [[ComItextpdfTextPdfPdfDiv_PositionTypeEnum alloc] initWithNSString:@"STATIC" withInt:0];
    ComItextpdfTextPdfPdfDiv_PositionTypeEnum_ABSOLUTE = [[ComItextpdfTextPdfPdfDiv_PositionTypeEnum alloc] initWithNSString:@"ABSOLUTE" withInt:1];
    ComItextpdfTextPdfPdfDiv_PositionTypeEnum_FIXED = [[ComItextpdfTextPdfPdfDiv_PositionTypeEnum alloc] initWithNSString:@"FIXED" withInt:2];
    ComItextpdfTextPdfPdfDiv_PositionTypeEnum_RELATIVE = [[ComItextpdfTextPdfPdfDiv_PositionTypeEnum alloc] initWithNSString:@"RELATIVE" withInt:3];
    ComItextpdfTextPdfPdfDiv_PositionTypeEnum_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:", "init", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "STATIC", "STATIC", 0x4019, "Lcom.itextpdf.text.pdf.PdfDiv$PositionType;", &ComItextpdfTextPdfPdfDiv_PositionTypeEnum_STATIC,  },
    { "ABSOLUTE", "ABSOLUTE", 0x4019, "Lcom.itextpdf.text.pdf.PdfDiv$PositionType;", &ComItextpdfTextPdfPdfDiv_PositionTypeEnum_ABSOLUTE,  },
    { "FIXED", "FIXED", 0x4019, "Lcom.itextpdf.text.pdf.PdfDiv$PositionType;", &ComItextpdfTextPdfPdfDiv_PositionTypeEnum_FIXED,  },
    { "RELATIVE", "RELATIVE", 0x4019, "Lcom.itextpdf.text.pdf.PdfDiv$PositionType;", &ComItextpdfTextPdfPdfDiv_PositionTypeEnum_RELATIVE,  },
  };
  static const char *superclass_type_args[] = {"Lcom.itextpdf.text.pdf.PdfDiv$PositionType;"};
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfDiv_PositionTypeEnum = { "PositionType", "com.itextpdf.text.pdf", "PdfDiv", 0x4019, 1, methods, 4, fields, 1, superclass_type_args};
  return &_ComItextpdfTextPdfPdfDiv_PositionTypeEnum;
}

@end
