//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/CMapByteCid.java
//

#ifndef _ComItextpdfTextPdfFontsCmapsCMapByteCid_H_
#define _ComItextpdfTextPdfFontsCmapsCMapByteCid_H_

@class ComItextpdfTextPdfFontsCmapsCMapSequence;
@class ComItextpdfTextPdfPdfObject;
@class ComItextpdfTextPdfPdfString;
@class IOSByteArray;
@class JavaUtilArrayList;

#import "JreEmulation.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/AbstractCMap.h"

@interface ComItextpdfTextPdfFontsCmapsCMapByteCid : ComItextpdfTextPdfFontsCmapsAbstractCMap {
 @public
  JavaUtilArrayList *planes_;
}

- (instancetype)init;

- (void)addCharWithComItextpdfTextPdfPdfString:(ComItextpdfTextPdfPdfString *)mark
               withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)code;

- (void)encodeSequenceWithByteArray:(IOSByteArray *)seqs
                           withChar:(jchar)cid;

- (jint)decodeSingleWithComItextpdfTextPdfFontsCmapsCMapSequence:(ComItextpdfTextPdfFontsCmapsCMapSequence *)seq;

- (NSString *)decodeSequenceWithComItextpdfTextPdfFontsCmapsCMapSequence:(ComItextpdfTextPdfFontsCmapsCMapSequence *)seq;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfFontsCmapsCMapByteCid *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfFontsCmapsCMapByteCid_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfFontsCmapsCMapByteCid, planes_, JavaUtilArrayList *)

#endif // _ComItextpdfTextPdfFontsCmapsCMapByteCid_H_