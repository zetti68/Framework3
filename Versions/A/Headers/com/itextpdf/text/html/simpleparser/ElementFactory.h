//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/ElementFactory.java
//

#ifndef _ComItextpdfTextHtmlSimpleparserElementFactory_H_
#define _ComItextpdfTextHtmlSimpleparserElementFactory_H_

@class ComItextpdfTextChunk;
@class ComItextpdfTextFont;
@class ComItextpdfTextHtmlSimpleparserChainedProperties;
@class ComItextpdfTextImage;
@class ComItextpdfTextList;
@class ComItextpdfTextListItem;
@class ComItextpdfTextParagraph;
@class ComItextpdfTextPdfDrawLineSeparator;
@class JavaUtilHashMap;
@protocol ComItextpdfTextDocListener;
@protocol ComItextpdfTextFontProvider;
@protocol ComItextpdfTextHtmlSimpleparserImageProvider;
@protocol ComItextpdfTextPdfHyphenationEvent;
@protocol JavaUtilMap;

#import "JreEmulation.h"

@interface ComItextpdfTextHtmlSimpleparserElementFactory : NSObject {
 @public
  id<ComItextpdfTextFontProvider> provider_;
}

- (instancetype)init;

- (void)setFontProviderWithComItextpdfTextFontProvider:(id<ComItextpdfTextFontProvider>)provider;

- (id<ComItextpdfTextFontProvider>)getFontProvider;

- (ComItextpdfTextFont *)getFontWithComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

- (ComItextpdfTextChunk *)createChunkWithNSString:(NSString *)content
withComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

- (ComItextpdfTextParagraph *)createParagraphWithComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

- (ComItextpdfTextListItem *)createListItemWithComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

- (void)updateElementWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)paragraph
withComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

+ (void)setParagraphLeadingWithComItextpdfTextParagraph:(ComItextpdfTextParagraph *)paragraph
                                           withNSString:(NSString *)leading;

- (id<ComItextpdfTextPdfHyphenationEvent>)getHyphenationWithComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

- (ComItextpdfTextPdfDrawLineSeparator *)createLineSeparatorWithJavaUtilMap:(id<JavaUtilMap>)attrs
                                                                  withFloat:(jfloat)offset;

- (ComItextpdfTextImage *)createImageWithNSString:(NSString *)src
                                  withJavaUtilMap:(id<JavaUtilMap>)attrs
withComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain
                   withComItextpdfTextDocListener:(id<ComItextpdfTextDocListener>)document
 withComItextpdfTextHtmlSimpleparserImageProvider:(id<ComItextpdfTextHtmlSimpleparserImageProvider>)img_provider
                              withJavaUtilHashMap:(JavaUtilHashMap *)img_store
                                     withNSString:(NSString *)img_baseurl;

- (ComItextpdfTextList *)createListWithNSString:(NSString *)tag
withComItextpdfTextHtmlSimpleparserChainedProperties:(ComItextpdfTextHtmlSimpleparserChainedProperties *)chain;

- (void)copyAllFieldsTo:(ComItextpdfTextHtmlSimpleparserElementFactory *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserElementFactory_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextHtmlSimpleparserElementFactory, provider_, id<ComItextpdfTextFontProvider>)

#endif // _ComItextpdfTextHtmlSimpleparserElementFactory_H_
