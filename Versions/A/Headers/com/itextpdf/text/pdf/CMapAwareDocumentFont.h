//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/CMapAwareDocumentFont.java
//

#ifndef _ComItextpdfTextPdfCMapAwareDocumentFont_H_
#define _ComItextpdfTextPdfCMapAwareDocumentFont_H_

@class ComItextpdfTextPdfFontsCmapsCMapByteCid;
@class ComItextpdfTextPdfFontsCmapsCMapCidUni;
@class ComItextpdfTextPdfFontsCmapsCMapToUnicode;
@class ComItextpdfTextPdfPRIndirectReference;
@class ComItextpdfTextPdfPdfDictionary;
@class IOSByteArray;
@class IOSCharArray;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/DocumentFont.h"

@interface ComItextpdfTextPdfCMapAwareDocumentFont : ComItextpdfTextPdfDocumentFont {
 @public
  ComItextpdfTextPdfPdfDictionary *fontDic_;
  jint spaceWidth_;
  ComItextpdfTextPdfFontsCmapsCMapToUnicode *toUnicodeCmap_;
  ComItextpdfTextPdfFontsCmapsCMapByteCid *byteCid_;
  ComItextpdfTextPdfFontsCmapsCMapCidUni *cidUni_;
  IOSCharArray *cidbyte2uni_;
  id<JavaUtilMap> uni2cid_;
}

- (instancetype)initWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)font;

- (instancetype)initWithComItextpdfTextPdfPRIndirectReference:(ComItextpdfTextPdfPRIndirectReference *)refFont;

- (void)initFont OBJC_METHOD_FAMILY_NONE;

- (void)processToUnicode;

- (void)processUni2Byte;

- (jint)computeAverageWidth;

- (jint)getWidthWithInt:(jint)char1;

- (NSString *)decodeSingleCIDWithByteArray:(IOSByteArray *)bytes
                                   withInt:(jint)offset
                                   withInt:(jint)len;

- (NSString *)decodeWithByteArray:(IOSByteArray *)cidbytes
                          withInt:(jint)offset
                          withInt:(jint)len;

- (NSString *)encodeWithByteArray:(IOSByteArray *)bytes
                          withInt:(jint)offset
                          withInt:(jint)len;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCMapAwareDocumentFont *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfCMapAwareDocumentFont_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCMapAwareDocumentFont, fontDic_, ComItextpdfTextPdfPdfDictionary *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCMapAwareDocumentFont, toUnicodeCmap_, ComItextpdfTextPdfFontsCmapsCMapToUnicode *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCMapAwareDocumentFont, byteCid_, ComItextpdfTextPdfFontsCmapsCMapByteCid *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCMapAwareDocumentFont, cidUni_, ComItextpdfTextPdfFontsCmapsCMapCidUni *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCMapAwareDocumentFont, cidbyte2uni_, IOSCharArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCMapAwareDocumentFont, uni2cid_, id<JavaUtilMap>)

#endif // _ComItextpdfTextPdfCMapAwareDocumentFont_H_
