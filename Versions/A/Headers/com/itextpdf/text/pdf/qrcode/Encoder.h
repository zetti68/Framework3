//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/qrcode/Encoder.java
//

#ifndef _ComItextpdfTextPdfQrcodeEncoder_H_
#define _ComItextpdfTextPdfQrcodeEncoder_H_

@class ComItextpdfTextPdfQrcodeBitVector;
@class ComItextpdfTextPdfQrcodeByteArray;
@class ComItextpdfTextPdfQrcodeByteMatrix;
@class ComItextpdfTextPdfQrcodeCharacterSetECI;
@class ComItextpdfTextPdfQrcodeErrorCorrectionLevel;
@class ComItextpdfTextPdfQrcodeMode;
@class ComItextpdfTextPdfQrcodeQRCode;
@class IOSIntArray;
@protocol JavaUtilMap;

#import "JreEmulation.h"

@interface ComItextpdfTextPdfQrcodeEncoder : NSObject {
}

- (instancetype)init;

+ (jint)calculateMaskPenaltyWithComItextpdfTextPdfQrcodeByteMatrix:(ComItextpdfTextPdfQrcodeByteMatrix *)matrix;

+ (void)encodeWithNSString:(NSString *)content
withComItextpdfTextPdfQrcodeErrorCorrectionLevel:(ComItextpdfTextPdfQrcodeErrorCorrectionLevel *)ecLevel
withComItextpdfTextPdfQrcodeQRCode:(ComItextpdfTextPdfQrcodeQRCode *)qrCode;

+ (void)encodeWithNSString:(NSString *)content
withComItextpdfTextPdfQrcodeErrorCorrectionLevel:(ComItextpdfTextPdfQrcodeErrorCorrectionLevel *)ecLevel
           withJavaUtilMap:(id<JavaUtilMap>)hints
withComItextpdfTextPdfQrcodeQRCode:(ComItextpdfTextPdfQrcodeQRCode *)qrCode;

+ (jint)getAlphanumericCodeWithInt:(jint)code;

+ (ComItextpdfTextPdfQrcodeMode *)chooseModeWithNSString:(NSString *)content;

+ (ComItextpdfTextPdfQrcodeMode *)chooseModeWithNSString:(NSString *)content
                                            withNSString:(NSString *)encoding;

+ (jboolean)isOnlyDoubleByteKanjiWithNSString:(NSString *)content;

+ (jint)chooseMaskPatternWithComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits
              withComItextpdfTextPdfQrcodeErrorCorrectionLevel:(ComItextpdfTextPdfQrcodeErrorCorrectionLevel *)ecLevel
                                                       withInt:(jint)version_
                        withComItextpdfTextPdfQrcodeByteMatrix:(ComItextpdfTextPdfQrcodeByteMatrix *)matrix;

+ (void)initQRCodeWithInt:(jint)numInputBytes
withComItextpdfTextPdfQrcodeErrorCorrectionLevel:(ComItextpdfTextPdfQrcodeErrorCorrectionLevel *)ecLevel
withComItextpdfTextPdfQrcodeMode:(ComItextpdfTextPdfQrcodeMode *)mode
withComItextpdfTextPdfQrcodeQRCode:(ComItextpdfTextPdfQrcodeQRCode *)qrCode OBJC_METHOD_FAMILY_NONE;

+ (void)terminateBitsWithInt:(jint)numDataBytes
withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits;

+ (void)getNumDataBytesAndNumECBytesForBlockIDWithInt:(jint)numTotalBytes
                                              withInt:(jint)numDataBytes
                                              withInt:(jint)numRSBlocks
                                              withInt:(jint)blockID
                                         withIntArray:(IOSIntArray *)numDataBytesInBlock
                                         withIntArray:(IOSIntArray *)numECBytesInBlock;

+ (void)interleaveWithECBytesWithComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits
                                                           withInt:(jint)numTotalBytes
                                                           withInt:(jint)numDataBytes
                                                           withInt:(jint)numRSBlocks
                             withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)result;

+ (ComItextpdfTextPdfQrcodeByteArray *)generateECBytesWithComItextpdfTextPdfQrcodeByteArray:(ComItextpdfTextPdfQrcodeByteArray *)dataBytes
                                                                                    withInt:(jint)numEcBytesInBlock;

+ (void)appendModeInfoWithComItextpdfTextPdfQrcodeMode:(ComItextpdfTextPdfQrcodeMode *)mode
                 withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits;

+ (void)appendLengthInfoWithInt:(jint)numLetters
                        withInt:(jint)version_
withComItextpdfTextPdfQrcodeMode:(ComItextpdfTextPdfQrcodeMode *)mode
withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits;

+ (void)appendBytesWithNSString:(NSString *)content
withComItextpdfTextPdfQrcodeMode:(ComItextpdfTextPdfQrcodeMode *)mode
withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits
                   withNSString:(NSString *)encoding;

+ (void)appendNumericBytesWithNSString:(NSString *)content
 withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits;

+ (void)appendAlphanumericBytesWithNSString:(NSString *)content
      withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits;

+ (void)append8BitBytesWithNSString:(NSString *)content
withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits
                       withNSString:(NSString *)encoding;

+ (void)appendKanjiBytesWithNSString:(NSString *)content
withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits;

+ (void)appendECIWithComItextpdfTextPdfQrcodeCharacterSetECI:(ComItextpdfTextPdfQrcodeCharacterSetECI *)eci
                       withComItextpdfTextPdfQrcodeBitVector:(ComItextpdfTextPdfQrcodeBitVector *)bits;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextPdfQrcodeEncoder_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextPdfQrcodeEncoder)

FOUNDATION_EXPORT IOSIntArray *ComItextpdfTextPdfQrcodeEncoder_ALPHANUMERIC_TABLE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfQrcodeEncoder, ALPHANUMERIC_TABLE_, IOSIntArray *)

FOUNDATION_EXPORT NSString *ComItextpdfTextPdfQrcodeEncoder_DEFAULT_BYTE_MODE_ENCODING_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfQrcodeEncoder, DEFAULT_BYTE_MODE_ENCODING_, NSString *)

#endif // _ComItextpdfTextPdfQrcodeEncoder_H_