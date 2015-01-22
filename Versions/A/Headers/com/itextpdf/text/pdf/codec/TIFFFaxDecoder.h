//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/TIFFFaxDecoder.java
//

#ifndef _ComItextpdfTextPdfCodecTIFFFaxDecoder_H_
#define _ComItextpdfTextPdfCodecTIFFFaxDecoder_H_

@class IOSByteArray;
@class IOSIntArray;
@class IOSShortArray;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfCodecTIFFFaxDecoder : NSObject {
 @public
  jint bitPointer_, bytePointer_;
  IOSByteArray *data_;
  jint w_, h_;
  jint fillOrder_;
  jint changingElemSize_;
  IOSIntArray *prevChangingElems_;
  IOSIntArray *currChangingElems_;
  jint lastChangingElement_;
  jint compression_;
  jint uncompressedMode_;
  jint fillBits_;
  jint oneD_;
  jboolean recoverFromImageError_;
}

- (instancetype)initWithInt:(jint)fillOrder
                    withInt:(jint)w
                    withInt:(jint)h;

+ (void)reverseBitsWithByteArray:(IOSByteArray *)b;

- (void)decode1DWithByteArray:(IOSByteArray *)buffer
                withByteArray:(IOSByteArray *)compData
                      withInt:(jint)startX
                      withInt:(jint)height;

- (void)decodeNextScanlineWithByteArray:(IOSByteArray *)buffer
                                withInt:(jint)lineOffset
                                withInt:(jint)bitOffset;

- (void)decode2DWithByteArray:(IOSByteArray *)buffer
                withByteArray:(IOSByteArray *)compData
                      withInt:(jint)startX
                      withInt:(jint)height
                     withLong:(jlong)tiffT4Options;

- (void)decodeT6WithByteArray:(IOSByteArray *)buffer
                withByteArray:(IOSByteArray *)compData
                      withInt:(jint)startX
                      withInt:(jint)height
                     withLong:(jlong)tiffT6Options;

- (void)setToBlackWithByteArray:(IOSByteArray *)buffer
                        withInt:(jint)lineOffset
                        withInt:(jint)bitOffset
                        withInt:(jint)numBits;

- (jint)decodeWhiteCodeWord;

- (jint)decodeBlackCodeWord;

- (jint)readEOLWithBoolean:(jboolean)isFirstEOL;

- (void)getNextChangingElementWithInt:(jint)a0
                          withBoolean:(jboolean)isWhite
                         withIntArray:(IOSIntArray *)ret;

- (jint)nextNBitsWithInt:(jint)bitsToGet;

- (jint)nextLesserThan8BitsWithInt:(jint)bitsToGet;

- (void)updatePointerWithInt:(jint)bitsToMoveBack;

- (jboolean)advancePointer;

- (void)setRecoverFromImageErrorWithBoolean:(jboolean)recoverFromImageError;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecTIFFFaxDecoder *)other;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfCodecTIFFFaxDecoder_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfCodecTIFFFaxDecoder)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, data_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, prevChangingElems_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, currChangingElems_, IOSIntArray *)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextPdfCodecTIFFFaxDecoder_table1_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, table1_, IOSIntArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, table1_, IOSIntArray *)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextPdfCodecTIFFFaxDecoder_table2_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, table2_, IOSIntArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, table2_, IOSIntArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecTIFFFaxDecoder_flipTable_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, flipTable_, IOSByteArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, flipTable_, IOSByteArray *)

FOUNDATION_EXPORT IOSShortArray *ComItextpdfTextPdfCodecTIFFFaxDecoder_white_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, white_, IOSShortArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, white_, IOSShortArray *)

FOUNDATION_EXPORT IOSShortArray *ComItextpdfTextPdfCodecTIFFFaxDecoder_additionalMakeup_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, additionalMakeup_, IOSShortArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, additionalMakeup_, IOSShortArray *)

FOUNDATION_EXPORT IOSShortArray *ComItextpdfTextPdfCodecTIFFFaxDecoder_initBlack_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, initBlack_, IOSShortArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, initBlack_, IOSShortArray *)

FOUNDATION_EXPORT IOSShortArray *ComItextpdfTextPdfCodecTIFFFaxDecoder_twoBitBlack_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, twoBitBlack_, IOSShortArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, twoBitBlack_, IOSShortArray *)

FOUNDATION_EXPORT IOSShortArray *ComItextpdfTextPdfCodecTIFFFaxDecoder_black_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, black_, IOSShortArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, black_, IOSShortArray *)

FOUNDATION_EXPORT IOSByteArray *ComItextpdfTextPdfCodecTIFFFaxDecoder_twoDCodes_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, twoDCodes_, IOSByteArray *)
J2OBJC_STATIC_FIELD_SETTER(ComItextpdfTextPdfCodecTIFFFaxDecoder, twoDCodes_, IOSByteArray *)

#endif // _ComItextpdfTextPdfCodecTIFFFaxDecoder_H_