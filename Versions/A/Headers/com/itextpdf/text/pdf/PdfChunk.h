//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfChunk.java
//

#ifndef _ComItextpdfTextPdfPdfChunk_H_
#define _ComItextpdfTextPdfPdfChunk_H_

@class ComItextpdfTextBaseColor;
@class ComItextpdfTextChunk;
@class ComItextpdfTextImage;
@class ComItextpdfTextPdfBaseFont;
@class ComItextpdfTextPdfPdfAction;
@class ComItextpdfTextPdfPdfFont;
@class ComItextpdfTextTabSettings;
@class ComItextpdfTextTabStop;
@class IOSCharArray;
@class IOSObjectArray;
@class JavaUtilHashMap;
@class JavaUtilHashSet;
@protocol ComItextpdfTextPdfInterfacesIAccessibleElement;
@protocol ComItextpdfTextSplitCharacter;

#import "JreEmulation.h"

#define ComItextpdfTextPdfPdfChunk_ITALIC_ANGLE 0.21256f
#define ComItextpdfTextPdfPdfChunk_UNDERLINE_OFFSET -0.33333334f
#define ComItextpdfTextPdfPdfChunk_UNDERLINE_THICKNESS 0.06666667f

@interface ComItextpdfTextPdfPdfChunk : NSObject {
 @public
  NSString *value_;
  NSString *encoding_;
  ComItextpdfTextPdfPdfFont *font__;
  ComItextpdfTextPdfBaseFont *baseFont_;
  id<ComItextpdfTextSplitCharacter> splitCharacter_;
  JavaUtilHashMap *attributes_;
  JavaUtilHashMap *noStroke_;
  jboolean newlineSplit_;
  ComItextpdfTextImage *image_;
  jfloat imageScalePercentage_;
  jfloat offsetX_;
  jfloat offsetY_;
  jboolean changeLeading__;
  jfloat leading_;
  id<ComItextpdfTextPdfInterfacesIAccessibleElement> accessibleElement_;
}

- (instancetype)initWithNSString:(NSString *)string
  withComItextpdfTextPdfPdfChunk:(ComItextpdfTextPdfPdfChunk *)other;

- (instancetype)initWithComItextpdfTextChunk:(ComItextpdfTextChunk *)chunk
             withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action;

- (instancetype)initWithComItextpdfTextChunk:(ComItextpdfTextChunk *)chunk
             withComItextpdfTextPdfPdfAction:(ComItextpdfTextPdfPdfAction *)action
              withComItextpdfTextTabSettings:(ComItextpdfTextTabSettings *)tabSettings;

- (jint)getUnicodeEquivalentWithInt:(jint)c;

- (jint)getWordWithNSString:(NSString *)text
                    withInt:(jint)start;

- (ComItextpdfTextPdfPdfChunk *)splitWithFloat:(jfloat)width;

- (ComItextpdfTextPdfPdfChunk *)truncateWithFloat:(jfloat)width;

- (ComItextpdfTextPdfPdfFont *)font;

- (ComItextpdfTextBaseColor *)color;

- (jfloat)width;

- (jfloat)widthWithNSString:(NSString *)str;

- (jfloat)height;

- (jboolean)isNewlineSplit;

- (jfloat)getWidthCorrectedWithFloat:(jfloat)charSpacing
                           withFloat:(jfloat)wordSpacing;

- (jfloat)getTextRise;

- (jfloat)trimLastSpace;

- (jfloat)trimFirstSpace;

- (id)getAttributeWithNSString:(NSString *)name;

- (jboolean)isAttributeWithNSString:(NSString *)name;

- (jboolean)isStroked;

- (jboolean)isSeparator;

- (jboolean)isHorizontalSeparator;

- (jboolean)isTab;

- (void)adjustLeftWithFloat:(jfloat)newValue;

+ (ComItextpdfTextTabStop *)getTabStopWithComItextpdfTextPdfPdfChunk:(ComItextpdfTextPdfPdfChunk *)tab
                                                           withFloat:(jfloat)tabPosition;

- (ComItextpdfTextTabStop *)getTabStop;

- (void)setTabStopWithComItextpdfTextTabStop:(ComItextpdfTextTabStop *)tabStop;

- (jboolean)isImage;

- (ComItextpdfTextImage *)getImage;

- (jfloat)getImageHeight;

- (jfloat)getImageWidth;

- (jfloat)getImageScalePercentage;

- (void)setImageScalePercentageWithFloat:(jfloat)imageScalePercentage;

- (void)setImageOffsetXWithFloat:(jfloat)offsetX;

- (jfloat)getImageOffsetX;

- (void)setImageOffsetYWithFloat:(jfloat)offsetY;

- (jfloat)getImageOffsetY;

- (void)setValueWithNSString:(NSString *)value;

- (NSString *)description;

- (jboolean)isSpecialEncoding;

- (NSString *)getEncoding;

- (jint)length;

- (jint)lengthUtf32;

- (jboolean)isExtSplitCharacterWithInt:(jint)start
                               withInt:(jint)current
                               withInt:(jint)end
                         withCharArray:(IOSCharArray *)cc
   withComItextpdfTextPdfPdfChunkArray:(IOSObjectArray *)ck;

- (NSString *)trimWithNSString:(NSString *)string;

- (jboolean)changeLeading;

- (jfloat)getLeading;

- (jfloat)getCharWidthWithInt:(jint)c;

+ (jboolean)noPrintWithInt:(jint)c;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfChunk *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfPdfChunk_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfPdfChunk)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfChunk, value_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfChunk, encoding_, NSString *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfChunk, font__, ComItextpdfTextPdfPdfFont *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfChunk, baseFont_, ComItextpdfTextPdfBaseFont *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfChunk, splitCharacter_, id<ComItextpdfTextSplitCharacter>)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfChunk, attributes_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfChunk, noStroke_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfChunk, image_, ComItextpdfTextImage *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfChunk, accessibleElement_, id<ComItextpdfTextPdfInterfacesIAccessibleElement>)

FOUNDATION_EXPORT IOSCharArray *ComItextpdfTextPdfPdfChunk_singleSpace_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfChunk, singleSpace_, IOSCharArray *)

FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextPdfPdfChunk_thisChunk_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfChunk, thisChunk_, IOSObjectArray *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfChunk, ITALIC_ANGLE, jfloat)

FOUNDATION_EXPORT JavaUtilHashSet *ComItextpdfTextPdfPdfChunk_keysAttributes_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfChunk, keysAttributes_, JavaUtilHashSet *)

FOUNDATION_EXPORT JavaUtilHashSet *ComItextpdfTextPdfPdfChunk_keysNoStroke_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfChunk, keysNoStroke_, JavaUtilHashSet *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfPdfChunk_TABSTOP_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfChunk, TABSTOP_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfChunk, UNDERLINE_THICKNESS, jfloat)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfChunk, UNDERLINE_OFFSET, jfloat)

#endif // _ComItextpdfTextPdfPdfChunk_H_
