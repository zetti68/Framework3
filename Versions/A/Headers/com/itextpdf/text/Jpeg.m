//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Jpeg.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Jpeg.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/BadElementException.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/Image.h"
#include "com/itextpdf/text/Jpeg.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/Utilities.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/ICC_Profile.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/System.h"
#include "java/net/URL.h"

BOOL ComItextpdfTextJpeg_initialized = NO;


#line 62
@implementation ComItextpdfTextJpeg

IOSIntArray * ComItextpdfTextJpeg_VALID_MARKERS_;
IOSIntArray * ComItextpdfTextJpeg_UNSUPPORTED_MARKERS_;
IOSIntArray * ComItextpdfTextJpeg_NOPARAM_MARKERS_;
IOSByteArray * ComItextpdfTextJpeg_JFIF_ID_;
IOSByteArray * ComItextpdfTextJpeg_PS_8BIM_RESO_;


#line 105
- (instancetype)initWithComItextpdfTextImage:(ComItextpdfTextImage *)image {
  return
#line 106
  [super initWithComItextpdfTextImage:image];
}


#line 116
- (instancetype)initWithJavaNetURL:(JavaNetURL *)url {
  if (self =
#line 117
  [super initWithJavaNetURL:url]) {
    
#line 118
    [self processParameters];
  }
  return self;
}


#line 129
- (instancetype)initComItextpdfTextJpegWithByteArray:(IOSByteArray *)img {
  if (self =
#line 130
  [super initWithJavaNetURL:(JavaNetURL *) check_class_cast(nil, [JavaNetURL class])]) {
    
#line 131
    rawData_ = img;
    
#line 132
    originalData_ = img;
    
#line 133
    [self processParameters];
  }
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)img {
  return [self initComItextpdfTextJpegWithByteArray:
#line 129
img];
}


#line 146
- (instancetype)initWithByteArray:(IOSByteArray *)img
                        withFloat:(jfloat)width
                        withFloat:(jfloat)height {
  if (self =
#line 147
  [self initComItextpdfTextJpegWithByteArray:img]) {
    
#line 148
    scaledWidth_ = width;
    
#line 149
    scaledHeight_ = height;
  }
  return self;
}


#line 161
+ (jint)getShortWithJavaIoInputStream:(JavaIoInputStream *)is {
  return (LShift32([((JavaIoInputStream *) nil_chk(is)) read], 8)) + [is read];
}


#line 171
+ (jint)markerWithInt:(jint)marker {
  
#line 172
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(ComItextpdfTextJpeg_VALID_MARKERS_))->size_; i++) {
    if (marker == IOSIntArray_Get(ComItextpdfTextJpeg_VALID_MARKERS_, i)) {
      return ComItextpdfTextJpeg_VALID_MARKER;
    }
  }
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(ComItextpdfTextJpeg_NOPARAM_MARKERS_))->size_; i++) {
    if (marker == IOSIntArray_Get(ComItextpdfTextJpeg_NOPARAM_MARKERS_, i)) {
      return ComItextpdfTextJpeg_NOPARAM_MARKER;
    }
  }
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(ComItextpdfTextJpeg_UNSUPPORTED_MARKERS_))->size_; i++) {
    if (marker == IOSIntArray_Get(ComItextpdfTextJpeg_UNSUPPORTED_MARKERS_, i)) {
      return ComItextpdfTextJpeg_UNSUPPORTED_MARKER;
    }
  }
  return ComItextpdfTextJpeg_NOT_A_MARKER;
}


#line 197
- (void)processParameters {
  
#line 198
  type__ = ComItextpdfTextElement_JPEG;
  originalType_ = ComItextpdfTextImage_ORIGINAL_JPEG;
  JavaIoInputStream *is = nil;
  @try {
    NSString *errorID;
    if (rawData_ == nil) {
      is = [((JavaNetURL *) nil_chk(url_)) openStream];
      errorID = [url_ description];
    }
    else {
      is = [[JavaIoByteArrayInputStream alloc] initWithByteArray:rawData_];
      errorID = @"Byte array";
    }
    if ([((JavaIoInputStream *) nil_chk(is)) read] != (jint) 0xFF || [is read] != (jint) 0xD8) {
      @throw [[ComItextpdfTextBadElementException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.is.not.a.valid.jpeg.file" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ errorID } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
    jboolean firstPass = YES;
    jint len;
    while (YES) {
      jint v = [is read];
      if (v < 0)
#line 219
      @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"premature.eof.while.reading.jpg" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
      if (v == (jint) 0xFF) {
        jint marker = [is read];
        if (firstPass && marker == ComItextpdfTextJpeg_M_APP0) {
          firstPass = NO;
          len = [ComItextpdfTextJpeg getShortWithJavaIoInputStream:is];
          if (len < 16) {
            [ComItextpdfTextUtilities skipWithJavaIoInputStream:is withInt:len - 2];
            continue;
          }
          IOSByteArray *bcomp = [IOSByteArray arrayWithLength:((IOSByteArray *) nil_chk(ComItextpdfTextJpeg_JFIF_ID_))->size_];
          jint r = [is readWithByteArray:bcomp];
          if (r != bcomp->size_)
#line 232
          @throw [[ComItextpdfTextBadElementException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.corrupted.jfif.marker" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ errorID } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
          jboolean found = YES;
          for (jint k = 0; k < bcomp->size_; ++k) {
            if (IOSByteArray_Get(bcomp, k) != IOSByteArray_Get(ComItextpdfTextJpeg_JFIF_ID_, k)) {
              found = NO;
              break;
            }
          }
          if (!found) {
            [ComItextpdfTextUtilities skipWithJavaIoInputStream:is withInt:len - 2 - bcomp->size_];
            continue;
          }
          [ComItextpdfTextUtilities skipWithJavaIoInputStream:is withInt:2];
          jint units = [is read];
          jint dx = [ComItextpdfTextJpeg getShortWithJavaIoInputStream:is];
          jint dy = [ComItextpdfTextJpeg getShortWithJavaIoInputStream:is];
          if (units == 1) {
            dpiX_ = dx;
            dpiY_ = dy;
          }
          else if (units == 2) {
            dpiX_ = J2ObjCFpToInt((dx * 2.54f + 0.5f));
            dpiY_ = J2ObjCFpToInt((dy * 2.54f + 0.5f));
          }
          [ComItextpdfTextUtilities skipWithJavaIoInputStream:is withInt:len - 2 - bcomp->size_ - 7];
          continue;
        }
        if (marker == ComItextpdfTextJpeg_M_APPE) {
          len = [ComItextpdfTextJpeg getShortWithJavaIoInputStream:is] - 2;
          IOSByteArray *byteappe = [IOSByteArray arrayWithLength:len];
          for (jint k = 0; k < len; ++k) {
            *IOSByteArray_GetRef(byteappe, k) = (jbyte) [is read];
          }
          if (byteappe->size_ >= 12) {
            NSString *appe = [NSString stringWithBytes:byteappe offset:0 length:5 charsetName:@"ISO-8859-1"];
            if ([appe isEqual:@"Adobe"]) {
              invert_ = YES;
            }
          }
          continue;
        }
        if (marker == ComItextpdfTextJpeg_M_APP2) {
          len = [ComItextpdfTextJpeg getShortWithJavaIoInputStream:is] - 2;
          IOSByteArray *byteapp2 = [IOSByteArray arrayWithLength:len];
          for (jint k = 0; k < len; ++k) {
            *IOSByteArray_GetRef(byteapp2, k) = (jbyte) [is read];
          }
          if (byteapp2->size_ >= 14) {
            NSString *app2 = [NSString stringWithBytes:byteapp2 offset:0 length:11 charsetName:@"ISO-8859-1"];
            if ([app2 isEqual:@"ICC_PROFILE"]) {
              jint order = IOSByteArray_Get(byteapp2, 12) & (jint) 0xff;
              jint count = IOSByteArray_Get(byteapp2, 13) & (jint) 0xff;
              
#line 285
              if (order < 1)
#line 286
              order = 1;
              if (count < 1)
#line 288
              count = 1;
              if (icc_ == nil)
#line 290
              icc_ = [IOSObjectArray arrayWithLength:count type:[IOSByteArray iosClass]];
              IOSObjectArray_Set(nil_chk(icc_), order - 1, byteapp2);
            }
          }
          continue;
        }
        if (marker == ComItextpdfTextJpeg_M_APPD) {
          len = [ComItextpdfTextJpeg getShortWithJavaIoInputStream:is] - 2;
          IOSByteArray *byteappd = [IOSByteArray arrayWithLength:len];
          for (jint k = 0; k < len; k++) {
            *IOSByteArray_GetRef(byteappd, k) = (jbyte) [is read];
          }
          
#line 303
          jint k = 0;
          for (k = 0; k < len - ((IOSByteArray *) nil_chk(ComItextpdfTextJpeg_PS_8BIM_RESO_))->size_; k++) {
            jboolean found = YES;
            for (jint j = 0; j < ComItextpdfTextJpeg_PS_8BIM_RESO_->size_; j++) {
              if (IOSByteArray_Get(byteappd, k + j) != IOSByteArray_Get(ComItextpdfTextJpeg_PS_8BIM_RESO_, j)) {
                found = NO;
                break;
              }
            }
            if (found)
#line 313
            break;
          }
          
#line 316
          k += ComItextpdfTextJpeg_PS_8BIM_RESO_->size_;
          if (k < len - ComItextpdfTextJpeg_PS_8BIM_RESO_->size_) {
            
#line 320
            jbyte namelength = IOSByteArray_Get(byteappd, k);
            
#line 322
            namelength++;
            
#line 324
            if (namelength % 2 == 1)
#line 325
            namelength++;
            
#line 327
            k += namelength;
            
#line 329
            jint resosize = (LShift32(IOSByteArray_Get(byteappd, k), 24)) + (LShift32(IOSByteArray_Get(byteappd, k + 1), 16)) + (LShift32(IOSByteArray_Get(byteappd, k + 2), 8)) + IOSByteArray_Get(byteappd, k + 3);
            
#line 331
            if (resosize != 16) {
              
#line 334
              continue;
            }
            k += 4;
            jint dx = (LShift32(IOSByteArray_Get(byteappd, k), 8)) + (IOSByteArray_Get(byteappd, k + 1) & (jint) 0xff);
            k += 2;
            
#line 340
            k += 2;
            jint unitsx = (LShift32(IOSByteArray_Get(byteappd, k), 8)) + (IOSByteArray_Get(byteappd, k + 1) & (jint) 0xff);
            k += 2;
            
#line 344
            k += 2;
            jint dy = (LShift32(IOSByteArray_Get(byteappd, k), 8)) + (IOSByteArray_Get(byteappd, k + 1) & (jint) 0xff);
            k += 2;
            
#line 348
            k += 2;
            jint unitsy = (LShift32(IOSByteArray_Get(byteappd, k), 8)) + (IOSByteArray_Get(byteappd, k + 1) & (jint) 0xff);
            
#line 351
            if (unitsx == 1 || unitsx == 2) {
              dx = (unitsx == 2 ? J2ObjCFpToInt((dx * 2.54f + 0.5f)) : dx);
              
#line 354
              if (dpiX_ != 0 && dpiX_ != dx) {
              }
              else
#line 358
              dpiX_ = dx;
            }
            if (unitsy == 1 || unitsy == 2) {
              dy = (unitsy == 2 ? J2ObjCFpToInt((dy * 2.54f + 0.5f)) : dy);
              
#line 363
              if (dpiY_ != 0 && dpiY_ != dy) {
              }
              else
#line 367
              dpiY_ = dy;
            }
          }
          continue;
        }
        firstPass = NO;
        jint markertype = [ComItextpdfTextJpeg markerWithInt:marker];
        if (markertype == ComItextpdfTextJpeg_VALID_MARKER) {
          [ComItextpdfTextUtilities skipWithJavaIoInputStream:is withInt:2];
          if ([is read] != (jint) 0x08) {
            @throw [[ComItextpdfTextBadElementException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.must.have.8.bits.per.component" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ errorID } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
          }
          scaledHeight_ = [ComItextpdfTextJpeg getShortWithJavaIoInputStream:is];
          [self setTopWithFloat:scaledHeight_];
          scaledWidth_ = [ComItextpdfTextJpeg getShortWithJavaIoInputStream:is];
          [self setRightWithFloat:scaledWidth_];
          colorspace_ = [is read];
          bpc_ = 8;
          break;
        }
        else if (markertype == ComItextpdfTextJpeg_UNSUPPORTED_MARKER) {
          @throw [[ComItextpdfTextBadElementException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.unsupported.jpeg.marker.2" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ errorID, [NSString valueOfInt:marker] } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
        }
        else if (markertype != ComItextpdfTextJpeg_NOPARAM_MARKER) {
          [ComItextpdfTextUtilities skipWithJavaIoInputStream:is withInt:[ComItextpdfTextJpeg getShortWithJavaIoInputStream:is] - 2];
        }
      }
    }
  }
  @finally {
    if (is != nil) {
      [is close];
    }
  }
  plainWidth_ = [self getWidth];
  plainHeight_ = [self getHeight];
  if (icc_ != nil) {
    jint total = 0;
    for (jint k = 0; k < icc_->size_; ++k) {
      if (IOSObjectArray_Get(icc_, k) == nil) {
        icc_ = nil;
        return;
      }
      total += ((IOSByteArray *) nil_chk(IOSObjectArray_Get(nil_chk(icc_), k)))->size_ - 14;
    }
    IOSByteArray *ficc = [IOSByteArray arrayWithLength:total];
    total = 0;
    for (jint k = 0; k < ((IOSObjectArray *) nil_chk(icc_))->size_; ++k) {
      [JavaLangSystem arraycopyWithId:IOSObjectArray_Get(icc_, k) withInt:14 withId:ficc withInt:total withInt:((IOSByteArray *) nil_chk(IOSObjectArray_Get(icc_, k)))->size_ - 14];
      total += ((IOSByteArray *) nil_chk(IOSObjectArray_Get(icc_, k)))->size_ - 14;
    }
    @try {
      ComItextpdfTextPdfICC_Profile *icc_prof = [ComItextpdfTextPdfICC_Profile getInstanceWithByteArray:ficc withInt:colorspace_];
      [self tagICCWithComItextpdfTextPdfICC_Profile:icc_prof];
    }
    @catch (JavaLangIllegalArgumentException *e) {
    }
    
#line 425
    icc_ = nil;
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextJpeg *)other {
  [super copyAllFieldsTo:other];
  other->icc_ = icc_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextJpeg class]) {
    ComItextpdfTextJpeg_VALID_MARKERS_ = [IOSIntArray arrayWithInts:(jint[]){
#line 73
      (jint) 0xC0, (jint) 0xC1, (jint) 0xC2 } count:3];
      ComItextpdfTextJpeg_UNSUPPORTED_MARKERS_ = [IOSIntArray arrayWithInts:(jint[]){
#line 79
        (jint) 0xC3, (jint) 0xC5, (jint) 0xC6, (jint) 0xC7, (jint) 0xC8, (jint) 0xC9, (jint) 0xCA, (jint) 0xCB, (jint) 0xCD, (jint) 0xCE, (jint) 0xCF } count:11];
        ComItextpdfTextJpeg_NOPARAM_MARKERS_ = [IOSIntArray arrayWithInts:(jint[]){
#line 85
          (jint) 0xD0, (jint) 0xD1, (jint) 0xD2, (jint) 0xD3, (jint) 0xD4, (jint) 0xD5, (jint) 0xD6, (jint) 0xD7, (jint) 0xD8, (jint) 0x01 } count:10];
          ComItextpdfTextJpeg_JFIF_ID_ = [IOSByteArray arrayWithBytes:(jbyte[]){
#line 97
            (jint) 0x4A, (jint) 0x46, (jint) 0x49, (jint) 0x46, (jint) 0x00 } count:5];
            ComItextpdfTextJpeg_PS_8BIM_RESO_ = [IOSByteArray arrayWithBytes:(jbyte[]){
#line 100
              (jint) 0x38, (jint) 0x42, (jint) 0x49, (jint) 0x4d, (jint) 0x03, (jbyte) (jint) 0xed } count:6];
              ComItextpdfTextJpeg_initialized = YES;
            }
          }

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextImage:", "Jpeg", NULL, 0x0, NULL },
    { "initWithJavaNetURL:", "Jpeg", NULL, 0x1, "Lcom.itextpdf.text.BadElementException;Ljava.io.IOException;" },
    { "initWithByteArray:", "Jpeg", NULL, 0x1, "Lcom.itextpdf.text.BadElementException;Ljava.io.IOException;" },
    { "initWithByteArray:withFloat:withFloat:", "Jpeg", NULL, 0x1, "Lcom.itextpdf.text.BadElementException;Ljava.io.IOException;" },
    { "getShortWithJavaIoInputStream:", "getShort", "I", 0x1a, "Ljava.io.IOException;" },
    { "markerWithInt:", "marker", "I", 0x1a, NULL },
    { "processParameters", NULL, "V", 0x2, "Lcom.itextpdf.text.BadElementException;Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NOT_A_MARKER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextJpeg_NOT_A_MARKER },
    { "VALID_MARKER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextJpeg_VALID_MARKER },
    { "VALID_MARKERS_", NULL, 0x19, "[I", &ComItextpdfTextJpeg_VALID_MARKERS_,  },
    { "UNSUPPORTED_MARKER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextJpeg_UNSUPPORTED_MARKER },
    { "UNSUPPORTED_MARKERS_", NULL, 0x19, "[I", &ComItextpdfTextJpeg_UNSUPPORTED_MARKERS_,  },
    { "NOPARAM_MARKER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextJpeg_NOPARAM_MARKER },
    { "NOPARAM_MARKERS_", NULL, 0x19, "[I", &ComItextpdfTextJpeg_NOPARAM_MARKERS_,  },
    { "M_APP0_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextJpeg_M_APP0 },
    { "M_APP2_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextJpeg_M_APP2 },
    { "M_APPE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextJpeg_M_APPE },
    { "M_APPD_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextJpeg_M_APPD },
    { "JFIF_ID_", NULL, 0x19, "[B", &ComItextpdfTextJpeg_JFIF_ID_,  },
    { "PS_8BIM_RESO_", NULL, 0x19, "[B", &ComItextpdfTextJpeg_PS_8BIM_RESO_,  },
    { "icc_", NULL, 0x2, "[[B", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextJpeg = { "Jpeg", "com.itextpdf.text", NULL, 0x1, 7, methods, 14, fields, 0, NULL};
  return &_ComItextpdfTextJpeg;
}

@end