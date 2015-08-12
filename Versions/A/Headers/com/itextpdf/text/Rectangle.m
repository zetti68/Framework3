//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Rectangle.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Rectangle.java"

#include "com/itextpdf/awt/geom/Rectangle.h"
#include "com/itextpdf/text/BaseColor.h"
#include "com/itextpdf/text/DocumentException.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ElementListener.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/pdf/GrayColor.h"
#include "java/lang/StringBuffer.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"


#line 63
@implementation ComItextpdfTextRectangle


#line 154
- (instancetype)initComItextpdfTextRectangleWithFloat:(jfloat)llx
                                            withFloat:(jfloat)lly
                                            withFloat:(jfloat)urx
                                            withFloat:(jfloat)ury {
  if (self = [super init]) {
    rotation_ =
#line 103
    0;
    backgroundColor_ =
#line 106
    nil;
    border_ =
#line 109
    ComItextpdfTextRectangle_UNDEFINED;
    useVariableBorders_ =
#line 112
    NO;
    borderWidth_ =
#line 115
    ComItextpdfTextRectangle_UNDEFINED;
    borderWidthLeft_ =
#line 118
    ComItextpdfTextRectangle_UNDEFINED;
    borderWidthRight_ =
#line 121
    ComItextpdfTextRectangle_UNDEFINED;
    borderWidthTop_ =
#line 124
    ComItextpdfTextRectangle_UNDEFINED;
    borderWidthBottom_ =
#line 127
    ComItextpdfTextRectangle_UNDEFINED;
    borderColor_ =
#line 130
    nil;
    borderColorLeft_ =
#line 133
    nil;
    borderColorRight_ =
#line 136
    nil;
    borderColorTop_ =
#line 139
    nil;
    borderColorBottom_ =
#line 142
    nil;
    
#line 155
    self->llx_ = llx;
    
#line 156
    self->lly_ = lly;
    
#line 157
    self->urx_ = urx;
    
#line 158
    self->ury_ = ury;
  }
  return self;
}

- (instancetype)initWithFloat:(jfloat)llx
                    withFloat:(jfloat)lly
                    withFloat:(jfloat)urx
                    withFloat:(jfloat)ury {
  return [self initComItextpdfTextRectangleWithFloat:
#line 154
llx withFloat:lly withFloat:urx withFloat:ury];
}


#line 171
- (instancetype)initComItextpdfTextRectangleWithFloat:(jfloat)llx
                                            withFloat:(jfloat)lly
                                            withFloat:(jfloat)urx
                                            withFloat:(jfloat)ury
                                              withInt:(jint)rotation {
  if (self =
#line 172
  [self initComItextpdfTextRectangleWithFloat:llx withFloat:lly withFloat:urx withFloat:ury]) {
    
#line 173
    [self setRotationWithInt:rotation];
  }
  return self;
}

- (instancetype)initWithFloat:(jfloat)llx
                    withFloat:(jfloat)lly
                    withFloat:(jfloat)urx
                    withFloat:(jfloat)ury
                      withInt:(jint)rotation {
  return [self initComItextpdfTextRectangleWithFloat:
#line 171
llx withFloat:lly withFloat:urx withFloat:ury withInt:rotation];
}


#line 183
- (instancetype)initWithFloat:(jfloat)urx
                    withFloat:(jfloat)ury {
  return
#line 184
  [self initComItextpdfTextRectangleWithFloat:0 withFloat:0 withFloat:urx withFloat:ury];
}


#line 196
- (instancetype)initWithFloat:(jfloat)urx
                    withFloat:(jfloat)ury
                      withInt:(jint)rotation {
  return
#line 197
  [self initComItextpdfTextRectangleWithFloat:0 withFloat:0 withFloat:urx withFloat:ury withInt:rotation];
}


#line 205
- (instancetype)initWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect {
  if (self =
#line 206
  [self initComItextpdfTextRectangleWithFloat:((ComItextpdfTextRectangle *) nil_chk(rect))->llx_ withFloat:rect->lly_ withFloat:rect->urx_ withFloat:rect->ury_]) {
    
#line 207
    [self cloneNonPositionParametersWithComItextpdfTextRectangle:rect];
  }
  return self;
}


#line 214
- (instancetype)initWithComItextpdfAwtGeomRectangle:(ComItextpdfAwtGeomRectangle *)rect {
  return [self initComItextpdfTextRectangleWithFloat:(jfloat) [((ComItextpdfAwtGeomRectangle *) nil_chk(rect)) getX] withFloat:(jfloat) [rect getY] withFloat:(jfloat) ([rect getX] + [rect getWidth]) withFloat:(jfloat) ([rect getY] + [rect getHeight])];
}


#line 227
- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener {
  
#line 228
  @try {
    return [((id<ComItextpdfTextElementListener>) nil_chk(listener)) addWithComItextpdfTextElement:self];
  }
  @catch (ComItextpdfTextDocumentException *de) {
    return NO;
  }
}


#line 241
- (jint)type {
  
#line 242
  return ComItextpdfTextElement_RECTANGLE;
}


#line 250
- (id<JavaUtilList>)getChunks {
  
#line 251
  return [[JavaUtilArrayList alloc] init];
}


#line 258
- (jboolean)isContent {
  
#line 259
  return YES;
}


#line 266
- (jboolean)isNestable {
  
#line 267
  return NO;
}


#line 277
- (void)setLeftWithFloat:(jfloat)llx {
  
#line 278
  self->llx_ = llx;
}


#line 286
- (jfloat)getLeft {
  
#line 287
  return llx_;
}


#line 296
- (jfloat)getLeftWithFloat:(jfloat)margin {
  
#line 297
  return llx_ + margin;
}


#line 305
- (void)setRightWithFloat:(jfloat)urx {
  
#line 306
  self->urx_ = urx;
}


#line 314
- (jfloat)getRight {
  
#line 315
  return urx_;
}


#line 324
- (jfloat)getRightWithFloat:(jfloat)margin {
  
#line 325
  return urx_ - margin;
}


#line 333
- (jfloat)getWidth {
  
#line 334
  return urx_ - llx_;
}


#line 342
- (void)setTopWithFloat:(jfloat)ury {
  
#line 343
  self->ury_ = ury;
}


#line 351
- (jfloat)getTop {
  
#line 352
  return ury_;
}


#line 361
- (jfloat)getTopWithFloat:(jfloat)margin {
  
#line 362
  return ury_ - margin;
}


#line 370
- (void)setBottomWithFloat:(jfloat)lly {
  
#line 371
  self->lly_ = lly;
}


#line 379
- (jfloat)getBottom {
  
#line 380
  return lly_;
}


#line 389
- (jfloat)getBottomWithFloat:(jfloat)margin {
  
#line 390
  return lly_ + margin;
}


#line 398
- (jfloat)getHeight {
  
#line 399
  return ury_ - lly_;
}


#line 406
- (void)normalize {
  
#line 407
  if (llx_ > urx_) {
    jfloat a = llx_;
    llx_ = urx_;
    urx_ = a;
  }
  if (lly_ > ury_) {
    jfloat a = lly_;
    lly_ = ury_;
    ury_ = a;
  }
}


#line 426
- (jint)getRotation {
  
#line 427
  return rotation_;
}


#line 435
- (void)setRotationWithInt:(jint)rotation {
  
#line 436
  self->rotation_ = rotation % 360;
  switch (self->rotation_) {
    case 90:
    case 180:
    case 270:
    break;
    default:
    self->rotation_ = 0;
  }
}


#line 453
- (ComItextpdfTextRectangle *)rotate {
  
#line 454
  ComItextpdfTextRectangle *rect = [[ComItextpdfTextRectangle alloc] initWithFloat:lly_ withFloat:llx_ withFloat:ury_ withFloat:urx_];
  [rect setRotationWithInt:rotation_ + 90];
  return rect;
}


#line 466
- (ComItextpdfTextBaseColor *)getBackgroundColor {
  
#line 467
  return backgroundColor_;
}


#line 476
- (void)setBackgroundColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)backgroundColor {
  
#line 477
  self->backgroundColor_ = backgroundColor;
}


#line 486
- (jfloat)getGrayFill {
  
#line 487
  if ([backgroundColor_ isKindOfClass:[ComItextpdfTextPdfGrayColor class]])
#line 488
  return [((ComItextpdfTextPdfGrayColor *) nil_chk(((ComItextpdfTextPdfGrayColor *) check_class_cast(backgroundColor_, [ComItextpdfTextPdfGrayColor class])))) getGray];
  return 0;
}


#line 497
- (void)setGrayFillWithFloat:(jfloat)value {
  
#line 498
  backgroundColor_ = [[ComItextpdfTextPdfGrayColor alloc] initWithFloat:value];
}


#line 508
- (jint)getBorder {
  
#line 509
  return border_;
}


#line 517
- (jboolean)hasBorders {
  
#line 518
  switch (border_) {
    case ComItextpdfTextRectangle_UNDEFINED:
    case ComItextpdfTextRectangle_NO_BORDER:
    return NO;
    default:
    return borderWidth_ > 0 || borderWidthLeft_ > 0 ||
#line 524
    borderWidthRight_ > 0 || borderWidthTop_ > 0 || borderWidthBottom_ > 0;
  }
}


#line 534
- (jboolean)hasBorderWithInt:(jint)type {
  
#line 535
  if (border_ == ComItextpdfTextRectangle_UNDEFINED)
#line 536
  return NO;
  return (border_ & type) == type;
}


#line 549
- (void)setBorderWithInt:(jint)border {
  
#line 550
  self->border_ = border;
}


#line 560
- (jboolean)isUseVariableBorders {
  
#line 561
  return useVariableBorders_;
}


#line 569
- (void)setUseVariableBordersWithBoolean:(jboolean)useVariableBorders {
  
#line 570
  self->useVariableBorders_ = useVariableBorders;
}


#line 579
- (void)enableBorderSideWithInt:(jint)side {
  
#line 580
  if (border_ == ComItextpdfTextRectangle_UNDEFINED)
#line 581
  border_ = 0;
  border_ |= side;
}


#line 591
- (void)disableBorderSideWithInt:(jint)side {
  
#line 592
  if (border_ == ComItextpdfTextRectangle_UNDEFINED)
#line 593
  border_ = 0;
  border_ &= ~side;
}


#line 604
- (jfloat)getBorderWidth {
  
#line 605
  return borderWidth_;
}


#line 613
- (void)setBorderWidthWithFloat:(jfloat)borderWidth {
  
#line 614
  self->borderWidth_ = borderWidth;
}


#line 624
- (jfloat)getVariableBorderWidthWithFloat:(jfloat)variableWidthValue
                                  withInt:(jint)side {
  
#line 625
  if ((border_ & side) != 0)
#line 626
  return variableWidthValue != ComItextpdfTextRectangle_UNDEFINED ? variableWidthValue : borderWidth_;
  return 0;
}


#line 639
- (void)updateBorderBasedOnWidthWithFloat:(jfloat)width
                                  withInt:(jint)side {
  
#line 640
  useVariableBorders_ = YES;
  if (width > 0)
#line 642
  [self enableBorderSideWithInt:side];
  else
#line 644
  [self disableBorderSideWithInt:side];
}

- (jfloat)getBorderWidthLeft {
  
#line 653
  return [self getVariableBorderWidthWithFloat:borderWidthLeft_ withInt:ComItextpdfTextRectangle_LEFT];
}


#line 661
- (void)setBorderWidthLeftWithFloat:(jfloat)borderWidthLeft {
  
#line 662
  self->borderWidthLeft_ = borderWidthLeft;
  [self updateBorderBasedOnWidthWithFloat:borderWidthLeft withInt:ComItextpdfTextRectangle_LEFT];
}


#line 671
- (jfloat)getBorderWidthRight {
  
#line 672
  return [self getVariableBorderWidthWithFloat:borderWidthRight_ withInt:ComItextpdfTextRectangle_RIGHT];
}


#line 680
- (void)setBorderWidthRightWithFloat:(jfloat)borderWidthRight {
  
#line 681
  self->borderWidthRight_ = borderWidthRight;
  [self updateBorderBasedOnWidthWithFloat:borderWidthRight withInt:ComItextpdfTextRectangle_RIGHT];
}


#line 690
- (jfloat)getBorderWidthTop {
  
#line 691
  return [self getVariableBorderWidthWithFloat:borderWidthTop_ withInt:ComItextpdfTextRectangle_TOP];
}


#line 699
- (void)setBorderWidthTopWithFloat:(jfloat)borderWidthTop {
  
#line 700
  self->borderWidthTop_ = borderWidthTop;
  [self updateBorderBasedOnWidthWithFloat:borderWidthTop withInt:ComItextpdfTextRectangle_TOP];
}


#line 709
- (jfloat)getBorderWidthBottom {
  
#line 710
  return [self getVariableBorderWidthWithFloat:borderWidthBottom_ withInt:ComItextpdfTextRectangle_BOTTOM];
}


#line 718
- (void)setBorderWidthBottomWithFloat:(jfloat)borderWidthBottom {
  
#line 719
  self->borderWidthBottom_ = borderWidthBottom;
  [self updateBorderBasedOnWidthWithFloat:borderWidthBottom withInt:ComItextpdfTextRectangle_BOTTOM];
}


#line 730
- (ComItextpdfTextBaseColor *)getBorderColor {
  
#line 731
  return borderColor_;
}


#line 739
- (void)setBorderColorWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColor {
  
#line 740
  self->borderColor_ = borderColor;
}


#line 748
- (ComItextpdfTextBaseColor *)getBorderColorLeft {
  
#line 749
  if (borderColorLeft_ == nil)
#line 750
  return borderColor_;
  return borderColorLeft_;
}


#line 759
- (void)setBorderColorLeftWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColorLeft {
  
#line 760
  self->borderColorLeft_ = borderColorLeft;
}


#line 768
- (ComItextpdfTextBaseColor *)getBorderColorRight {
  
#line 769
  if (borderColorRight_ == nil)
#line 770
  return borderColor_;
  return borderColorRight_;
}


#line 779
- (void)setBorderColorRightWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColorRight {
  
#line 780
  self->borderColorRight_ = borderColorRight;
}


#line 788
- (ComItextpdfTextBaseColor *)getBorderColorTop {
  
#line 789
  if (borderColorTop_ == nil)
#line 790
  return borderColor_;
  return borderColorTop_;
}


#line 799
- (void)setBorderColorTopWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColorTop {
  
#line 800
  self->borderColorTop_ = borderColorTop;
}


#line 808
- (ComItextpdfTextBaseColor *)getBorderColorBottom {
  
#line 809
  if (borderColorBottom_ == nil)
#line 810
  return borderColor_;
  return borderColorBottom_;
}


#line 819
- (void)setBorderColorBottomWithComItextpdfTextBaseColor:(ComItextpdfTextBaseColor *)borderColorBottom {
  
#line 820
  self->borderColorBottom_ = borderColorBottom;
}


#line 832
- (ComItextpdfTextRectangle *)rectangleWithFloat:(jfloat)top
                                       withFloat:(jfloat)bottom {
  
#line 833
  ComItextpdfTextRectangle *tmp = [[ComItextpdfTextRectangle alloc] initWithComItextpdfTextRectangle:self];
  if ([self getTop] > top) {
    [tmp setTopWithFloat:top];
    [tmp disableBorderSideWithInt:ComItextpdfTextRectangle_TOP];
  }
  if ([self getBottom] < bottom) {
    [tmp setBottomWithFloat:bottom];
    [tmp disableBorderSideWithInt:ComItextpdfTextRectangle_BOTTOM];
  }
  return tmp;
}


#line 851
- (void)cloneNonPositionParametersWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect {
  
#line 852
  self->rotation_ = ((ComItextpdfTextRectangle *) nil_chk(rect))->rotation_;
  self->backgroundColor_ = rect->backgroundColor_;
  self->border_ = rect->border_;
  self->useVariableBorders_ = rect->useVariableBorders_;
  self->borderWidth_ = rect->borderWidth_;
  self->borderWidthLeft_ = rect->borderWidthLeft_;
  self->borderWidthRight_ = rect->borderWidthRight_;
  self->borderWidthTop_ = rect->borderWidthTop_;
  self->borderWidthBottom_ = rect->borderWidthBottom_;
  self->borderColor_ = rect->borderColor_;
  self->borderColorLeft_ = rect->borderColorLeft_;
  self->borderColorRight_ = rect->borderColorRight_;
  self->borderColorTop_ = rect->borderColorTop_;
  self->borderColorBottom_ = rect->borderColorBottom_;
}


#line 874
- (void)softCloneNonPositionParametersWithComItextpdfTextRectangle:(ComItextpdfTextRectangle *)rect {
  
#line 875
  if (((ComItextpdfTextRectangle *) nil_chk(rect))->rotation_ != 0)
#line 876
  self->rotation_ = rect->rotation_;
  if (rect->backgroundColor_ != nil)
#line 878
  self->backgroundColor_ = rect->backgroundColor_;
  if (rect->border_ != ComItextpdfTextRectangle_UNDEFINED)
#line 880
  self->border_ = rect->border_;
  if (useVariableBorders_)
#line 882
  self->useVariableBorders_ = rect->useVariableBorders_;
  if (rect->borderWidth_ != ComItextpdfTextRectangle_UNDEFINED)
#line 884
  self->borderWidth_ = rect->borderWidth_;
  if (rect->borderWidthLeft_ != ComItextpdfTextRectangle_UNDEFINED)
#line 886
  self->borderWidthLeft_ = rect->borderWidthLeft_;
  if (rect->borderWidthRight_ != ComItextpdfTextRectangle_UNDEFINED)
#line 888
  self->borderWidthRight_ = rect->borderWidthRight_;
  if (rect->borderWidthTop_ != ComItextpdfTextRectangle_UNDEFINED)
#line 890
  self->borderWidthTop_ = rect->borderWidthTop_;
  if (rect->borderWidthBottom_ != ComItextpdfTextRectangle_UNDEFINED)
#line 892
  self->borderWidthBottom_ = rect->borderWidthBottom_;
  if (rect->borderColor_ != nil)
#line 894
  self->borderColor_ = rect->borderColor_;
  if (rect->borderColorLeft_ != nil)
#line 896
  self->borderColorLeft_ = rect->borderColorLeft_;
  if (rect->borderColorRight_ != nil)
#line 898
  self->borderColorRight_ = rect->borderColorRight_;
  if (rect->borderColorTop_ != nil)
#line 900
  self->borderColorTop_ = rect->borderColorTop_;
  if (rect->borderColorBottom_ != nil)
#line 902
  self->borderColorBottom_ = rect->borderColorBottom_;
}

- (NSString *)description {
  
#line 911
  JavaLangStringBuffer *buf = [[JavaLangStringBuffer alloc] initWithNSString:@"Rectangle: "];
  (void) [buf appendWithFloat:[self getWidth]];
  (void) [buf appendWithChar:'x'];
  (void) [buf appendWithFloat:[self getHeight]];
  (void) [buf appendWithNSString:@" (rot: "];
  (void) [buf appendWithInt:rotation_];
  (void) [buf appendWithNSString:@" degrees)"];
  return [buf description];
}

- (jboolean)isEqual:(id)obj {
  
#line 923
  if ([obj isKindOfClass:[ComItextpdfTextRectangle class]]) {
    ComItextpdfTextRectangle *other = (ComItextpdfTextRectangle *) check_class_cast(obj, [ComItextpdfTextRectangle class]);
    
#line 928
    return ((ComItextpdfTextRectangle *) nil_chk(other))->llx_ == self->llx_ && other->lly_ == self->lly_ && other->urx_ == self->urx_ && other->ury_ == self->ury_ && other->rotation_ == self->rotation_;
  }
  else {
    
#line 930
    return NO;
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextRectangle *)other {
  [super copyAllFieldsTo:other];
  other->backgroundColor_ = backgroundColor_;
  other->border_ = border_;
  other->borderColor_ = borderColor_;
  other->borderColorBottom_ = borderColorBottom_;
  other->borderColorLeft_ = borderColorLeft_;
  other->borderColorRight_ = borderColorRight_;
  other->borderColorTop_ = borderColorTop_;
  other->borderWidth_ = borderWidth_;
  other->borderWidthBottom_ = borderWidthBottom_;
  other->borderWidthLeft_ = borderWidthLeft_;
  other->borderWidthRight_ = borderWidthRight_;
  other->borderWidthTop_ = borderWidthTop_;
  other->llx_ = llx_;
  other->lly_ = lly_;
  other->rotation_ = rotation_;
  other->urx_ = urx_;
  other->ury_ = ury_;
  other->useVariableBorders_ = useVariableBorders_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:withFloat:withFloat:withFloat:", "Rectangle", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:withFloat:withFloat:withInt:", "Rectangle", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:", "Rectangle", NULL, 0x1, NULL },
    { "initWithFloat:withFloat:withInt:", "Rectangle", NULL, 0x1, NULL },
    { "initWithComItextpdfTextRectangle:", "Rectangle", NULL, 0x1, NULL },
    { "initWithComItextpdfAwtGeomRectangle:", "Rectangle", NULL, 0x1, NULL },
    { "processWithComItextpdfTextElementListener:", "process", "Z", 0x1, NULL },
    { "type", NULL, "I", 0x1, NULL },
    { "getChunks", NULL, "Ljava.util.List;", 0x1, NULL },
    { "isContent", NULL, "Z", 0x1, NULL },
    { "isNestable", NULL, "Z", 0x1, NULL },
    { "setLeftWithFloat:", "setLeft", "V", 0x1, NULL },
    { "getLeft", NULL, "F", 0x1, NULL },
    { "getLeftWithFloat:", "getLeft", "F", 0x1, NULL },
    { "setRightWithFloat:", "setRight", "V", 0x1, NULL },
    { "getRight", NULL, "F", 0x1, NULL },
    { "getRightWithFloat:", "getRight", "F", 0x1, NULL },
    { "getWidth", NULL, "F", 0x1, NULL },
    { "setTopWithFloat:", "setTop", "V", 0x1, NULL },
    { "getTop", NULL, "F", 0x1, NULL },
    { "getTopWithFloat:", "getTop", "F", 0x1, NULL },
    { "setBottomWithFloat:", "setBottom", "V", 0x1, NULL },
    { "getBottom", NULL, "F", 0x1, NULL },
    { "getBottomWithFloat:", "getBottom", "F", 0x1, NULL },
    { "getHeight", NULL, "F", 0x1, NULL },
    { "normalize", NULL, "V", 0x1, NULL },
    { "getRotation", NULL, "I", 0x1, NULL },
    { "setRotationWithInt:", "setRotation", "V", 0x1, NULL },
    { "rotate", NULL, "Lcom.itextpdf.text.Rectangle;", 0x1, NULL },
    { "getBackgroundColor", NULL, "Lcom.itextpdf.text.BaseColor;", 0x1, NULL },
    { "setBackgroundColorWithComItextpdfTextBaseColor:", "setBackgroundColor", "V", 0x1, NULL },
    { "getGrayFill", NULL, "F", 0x1, NULL },
    { "setGrayFillWithFloat:", "setGrayFill", "V", 0x1, NULL },
    { "getBorder", NULL, "I", 0x1, NULL },
    { "hasBorders", NULL, "Z", 0x1, NULL },
    { "hasBorderWithInt:", "hasBorder", "Z", 0x1, NULL },
    { "setBorderWithInt:", "setBorder", "V", 0x1, NULL },
    { "isUseVariableBorders", NULL, "Z", 0x1, NULL },
    { "setUseVariableBordersWithBoolean:", "setUseVariableBorders", "V", 0x1, NULL },
    { "enableBorderSideWithInt:", "enableBorderSide", "V", 0x1, NULL },
    { "disableBorderSideWithInt:", "disableBorderSide", "V", 0x1, NULL },
    { "getBorderWidth", NULL, "F", 0x1, NULL },
    { "setBorderWidthWithFloat:", "setBorderWidth", "V", 0x1, NULL },
    { "getVariableBorderWidthWithFloat:withInt:", "getVariableBorderWidth", "F", 0x2, NULL },
    { "updateBorderBasedOnWidthWithFloat:withInt:", "updateBorderBasedOnWidth", "V", 0x2, NULL },
    { "getBorderWidthLeft", NULL, "F", 0x1, NULL },
    { "setBorderWidthLeftWithFloat:", "setBorderWidthLeft", "V", 0x1, NULL },
    { "getBorderWidthRight", NULL, "F", 0x1, NULL },
    { "setBorderWidthRightWithFloat:", "setBorderWidthRight", "V", 0x1, NULL },
    { "getBorderWidthTop", NULL, "F", 0x1, NULL },
    { "setBorderWidthTopWithFloat:", "setBorderWidthTop", "V", 0x1, NULL },
    { "getBorderWidthBottom", NULL, "F", 0x1, NULL },
    { "setBorderWidthBottomWithFloat:", "setBorderWidthBottom", "V", 0x1, NULL },
    { "getBorderColor", NULL, "Lcom.itextpdf.text.BaseColor;", 0x1, NULL },
    { "setBorderColorWithComItextpdfTextBaseColor:", "setBorderColor", "V", 0x1, NULL },
    { "getBorderColorLeft", NULL, "Lcom.itextpdf.text.BaseColor;", 0x1, NULL },
    { "setBorderColorLeftWithComItextpdfTextBaseColor:", "setBorderColorLeft", "V", 0x1, NULL },
    { "getBorderColorRight", NULL, "Lcom.itextpdf.text.BaseColor;", 0x1, NULL },
    { "setBorderColorRightWithComItextpdfTextBaseColor:", "setBorderColorRight", "V", 0x1, NULL },
    { "getBorderColorTop", NULL, "Lcom.itextpdf.text.BaseColor;", 0x1, NULL },
    { "setBorderColorTopWithComItextpdfTextBaseColor:", "setBorderColorTop", "V", 0x1, NULL },
    { "getBorderColorBottom", NULL, "Lcom.itextpdf.text.BaseColor;", 0x1, NULL },
    { "setBorderColorBottomWithComItextpdfTextBaseColor:", "setBorderColorBottom", "V", 0x1, NULL },
    { "rectangleWithFloat:withFloat:", "rectangle", "Lcom.itextpdf.text.Rectangle;", 0x1, NULL },
    { "cloneNonPositionParametersWithComItextpdfTextRectangle:", "cloneNonPositionParameters", "V", 0x1, NULL },
    { "softCloneNonPositionParametersWithComItextpdfTextRectangle:", "softCloneNonPositionParameters", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "UNDEFINED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextRectangle_UNDEFINED },
    { "TOP_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextRectangle_TOP },
    { "BOTTOM_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextRectangle_BOTTOM },
    { "LEFT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextRectangle_LEFT },
    { "RIGHT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextRectangle_RIGHT },
    { "NO_BORDER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextRectangle_NO_BORDER },
    { "BOX_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextRectangle_BOX },
    { "llx_", NULL, 0x4, "F", NULL,  },
    { "lly_", NULL, 0x4, "F", NULL,  },
    { "urx_", NULL, 0x4, "F", NULL,  },
    { "ury_", NULL, 0x4, "F", NULL,  },
    { "rotation_", NULL, 0x4, "I", NULL,  },
    { "backgroundColor_", NULL, 0x4, "Lcom.itextpdf.text.BaseColor;", NULL,  },
    { "border_", NULL, 0x4, "I", NULL,  },
    { "useVariableBorders_", NULL, 0x4, "Z", NULL,  },
    { "borderWidth_", NULL, 0x4, "F", NULL,  },
    { "borderWidthLeft_", NULL, 0x4, "F", NULL,  },
    { "borderWidthRight_", NULL, 0x4, "F", NULL,  },
    { "borderWidthTop_", NULL, 0x4, "F", NULL,  },
    { "borderWidthBottom_", NULL, 0x4, "F", NULL,  },
    { "borderColor_", NULL, 0x4, "Lcom.itextpdf.text.BaseColor;", NULL,  },
    { "borderColorLeft_", NULL, 0x4, "Lcom.itextpdf.text.BaseColor;", NULL,  },
    { "borderColorRight_", NULL, 0x4, "Lcom.itextpdf.text.BaseColor;", NULL,  },
    { "borderColorTop_", NULL, 0x4, "Lcom.itextpdf.text.BaseColor;", NULL,  },
    { "borderColorBottom_", NULL, 0x4, "Lcom.itextpdf.text.BaseColor;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextRectangle = { "Rectangle", "com.itextpdf.text", NULL, 0x1, 68, methods, 25, fields, 0, NULL};
  return &_ComItextpdfTextRectangle;
}

@end