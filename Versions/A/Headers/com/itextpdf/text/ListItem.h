//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/ListItem.java
//

#ifndef _ComItextpdfTextListItem_H_
#define _ComItextpdfTextListItem_H_

@class ComItextpdfTextChunk;
@class ComItextpdfTextFont;
@class ComItextpdfTextListBody;
@class ComItextpdfTextListLabel;
@class ComItextpdfTextPhrase;

#import "JreEmulation.h"
#include "com/itextpdf/text/Paragraph.h"

#define ComItextpdfTextListItem_serialVersionUID 1970670787169329006LL

@interface ComItextpdfTextListItem : ComItextpdfTextParagraph {
 @public
  ComItextpdfTextChunk *symbol_;
  ComItextpdfTextListBody *listBody_;
  ComItextpdfTextListLabel *listLabel_;
}

- (instancetype)init;

- (instancetype)initWithFloat:(jfloat)leading;

- (instancetype)initWithComItextpdfTextChunk:(ComItextpdfTextChunk *)chunk;

- (instancetype)initWithNSString:(NSString *)string;

- (instancetype)initWithNSString:(NSString *)string
         withComItextpdfTextFont:(ComItextpdfTextFont *)font;

- (instancetype)initWithFloat:(jfloat)leading
     withComItextpdfTextChunk:(ComItextpdfTextChunk *)chunk;

- (instancetype)initWithFloat:(jfloat)leading
                 withNSString:(NSString *)string;

- (instancetype)initWithFloat:(jfloat)leading
                 withNSString:(NSString *)string
      withComItextpdfTextFont:(ComItextpdfTextFont *)font;

- (instancetype)initWithComItextpdfTextPhrase:(ComItextpdfTextPhrase *)phrase;

- (jint)type;

- (void)setListSymbolWithComItextpdfTextChunk:(ComItextpdfTextChunk *)symbol;

- (void)setIndentationLeftWithFloat:(jfloat)indentation
                        withBoolean:(jboolean)autoindent;

- (void)adjustListSymbolFont;

- (ComItextpdfTextChunk *)getListSymbol;

- (ComItextpdfTextListBody *)getListBody;

- (ComItextpdfTextListLabel *)getListLabel;

- (void)copyAllFieldsTo:(ComItextpdfTextListItem *)other;


@end

__attribute__((always_inline)) inline void ComItextpdfTextListItem_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextListItem, symbol_, ComItextpdfTextChunk *)
J2OBJC_FIELD_SETTER(ComItextpdfTextListItem, listBody_, ComItextpdfTextListBody *)
J2OBJC_FIELD_SETTER(ComItextpdfTextListItem, listLabel_, ComItextpdfTextListLabel *)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextListItem, serialVersionUID, jlong)

#endif // _ComItextpdfTextListItem_H_