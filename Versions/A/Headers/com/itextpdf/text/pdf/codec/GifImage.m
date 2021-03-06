//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/GifImage.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/GifImage.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/Image.h"
#include "com/itextpdf/text/ImgRaw.h"
#include "com/itextpdf/text/Utilities.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfString.h"
#include "com/itextpdf/text/pdf/codec/GifImage.h"
#include "java/io/BufferedInputStream.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/DataInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/net/URL.h"
#include "java/util/ArrayList.h"


#line 62
@implementation ComItextpdfTextPdfCodecGifImage


#line 113
- (instancetype)initComItextpdfTextPdfCodecGifImageWithJavaNetURL:(JavaNetURL *)url {
  if (self = [super init]) {
    block_ = [IOSByteArray arrayWithLength:
#line 79
    256];
    blockSize_ =
#line 80
    0;
    dispose_ =
#line 83
    0;
    transparency_ =
#line 84
    NO;
    delay_ =
#line 85
    0;
    frames_ =
#line 107
    [[JavaUtilArrayList alloc] init];
    
#line 114
    fromUrl_ = url;
    
#line 115
    JavaIoInputStream *is = nil;
    
#line 116
    @try {
      is = [((JavaNetURL *) nil_chk(url)) openStream];
      
#line 119
      JavaIoByteArrayOutputStream *baos = [[JavaIoByteArrayOutputStream alloc] init];
      jint read = 0;
      IOSByteArray *bytes = [IOSByteArray arrayWithLength:1024];
      
#line 123
      while ((read = [((JavaIoInputStream *) nil_chk(is)) readWithByteArray:bytes]) != -1) {
        [baos writeWithByteArray:bytes withInt:0 withInt:read];
      }
      
#line 127
      is = [[JavaIoByteArrayInputStream alloc] initWithByteArray:[baos toByteArray]];
      [baos flush];
      [baos close];
      
#line 131
      [self processWithJavaIoInputStream:is];
    }
    @finally {
      if (is != nil) {
        [is close];
      }
    }
  }
  return self;
}

- (instancetype)initWithJavaNetURL:(JavaNetURL *)url {
  return [self initComItextpdfTextPdfCodecGifImageWithJavaNetURL:
#line 113
url];
}


#line 144
- (instancetype)initWithNSString:(NSString *)file {
  return
#line 145
  [self initComItextpdfTextPdfCodecGifImageWithJavaNetURL:[ComItextpdfTextUtilities toURLWithNSString:file]];
}


#line 152
- (instancetype)initWithByteArray:(IOSByteArray *)data {
  if (self = [super init]) {
    block_ = [IOSByteArray arrayWithLength:
#line 79
    256];
    blockSize_ =
#line 80
    0;
    dispose_ =
#line 83
    0;
    transparency_ =
#line 84
    NO;
    delay_ =
#line 85
    0;
    frames_ =
#line 107
    [[JavaUtilArrayList alloc] init];
    
#line 153
    fromData_ = data;
    
#line 154
    JavaIoInputStream *is = nil;
    
#line 155
    @try {
      is = [[JavaIoByteArrayInputStream alloc] initWithByteArray:data];
      [self processWithJavaIoInputStream:is];
    }
    @finally {
      if (is != nil) {
        [is close];
      }
    }
  }
  return self;
}


#line 170
- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)is {
  if (self = [super init]) {
    block_ = [IOSByteArray arrayWithLength:
#line 79
    256];
    blockSize_ =
#line 80
    0;
    dispose_ =
#line 83
    0;
    transparency_ =
#line 84
    NO;
    delay_ =
#line 85
    0;
    frames_ =
#line 107
    [[JavaUtilArrayList alloc] init];
    
#line 171
    [self processWithJavaIoInputStream:is];
  }
  return self;
}


#line 177
- (jint)getFrameCount {
  
#line 178
  return [((JavaUtilArrayList *) nil_chk(frames_)) size];
}


#line 185
- (ComItextpdfTextImage *)getImageWithInt:(jint)frame {
  
#line 186
  ComItextpdfTextPdfCodecGifImage_GifFrame *gf = [((JavaUtilArrayList *) nil_chk(frames_)) getWithInt:frame - 1];
  return ((ComItextpdfTextPdfCodecGifImage_GifFrame *) nil_chk(gf))->image_;
}


#line 195
- (IOSIntArray *)getFramePositionWithInt:(jint)frame {
  
#line 196
  ComItextpdfTextPdfCodecGifImage_GifFrame *gf = [((JavaUtilArrayList *) nil_chk(frames_)) getWithInt:frame - 1];
  return [IOSIntArray arrayWithInts:(jint[]){ ((ComItextpdfTextPdfCodecGifImage_GifFrame *) nil_chk(gf))->ix_, gf->iy_ } count:2];
}


#line 206
- (IOSIntArray *)getLogicalScreen {
  
#line 207
  return [IOSIntArray arrayWithInts:(jint[]){ width_, height_ } count:2];
}


#line 210
- (void)processWithJavaIoInputStream:(JavaIoInputStream *)is {
  
#line 211
  in_ = [[JavaIoDataInputStream alloc] initWithJavaIoInputStream:[[JavaIoBufferedInputStream alloc] initWithJavaIoInputStream:is]];
  [self readHeader];
  [self readContents];
  if ([((JavaUtilArrayList *) nil_chk(frames_)) isEmpty])
#line 215
  @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"the.file.does.not.contain.any.valid.image" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
}

- (void)readHeader {
  
#line 222
  JavaLangStringBuilder *id_ = [[JavaLangStringBuilder alloc] initWithNSString:@""];
  for (jint i = 0; i < 6; i++)
#line 224
  (void) [id_ appendWithChar:(jchar) [((JavaIoDataInputStream *) nil_chk(in_)) read]];
  if (![((NSString *) nil_chk([id_ description])) hasPrefix:@"GIF8"]) {
    @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"gif.signature.nor.found" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  
#line 229
  [self readLSD];
  if (gctFlag_) {
    m_global_table_ = [self readColorTableWithInt:m_gbpc_];
  }
}


#line 238
- (void)readLSD {
  
#line 241
  width_ = [self readShort];
  height_ = [self readShort];
  
#line 245
  jint packed = [((JavaIoDataInputStream *) nil_chk(in_)) read];
  gctFlag_ = ((packed & (jint) 0x80) != 0);
  m_gbpc_ = (packed & 7) + 1;
  bgIndex_ = [in_ read];
  pixelAspect_ = [in_ read];
}


#line 255
- (jint)readShort {
  
#line 257
  return [((JavaIoDataInputStream *) nil_chk(in_)) read] | (LShift32([in_ read], 8));
}


#line 265
- (jint)readBlock {
  
#line 266
  blockSize_ = [((JavaIoDataInputStream *) nil_chk(in_)) read];
  if (blockSize_ <= 0)
#line 268
  return blockSize_ = 0;
  
#line 270
  blockSize_ = [in_ readWithByteArray:block_ withInt:0 withInt:blockSize_];
  
#line 272
  return blockSize_;
}


#line 275
- (IOSByteArray *)readColorTableWithInt:(jint)bpc {
  
#line 276
  jint ncolors = LShift32(1, bpc);
  jint nbytes = 3 * ncolors;
  bpc = [ComItextpdfTextPdfCodecGifImage newBpcWithInt:bpc];
  IOSByteArray *table = [IOSByteArray arrayWithLength:(LShift32(1, bpc)) * 3];
  [((JavaIoDataInputStream *) nil_chk(in_)) readFullyWithByteArray:table withInt:0 withInt:nbytes];
  return table;
}


#line 285
+ (jint)newBpcWithInt:(jint)bpc {
  switch (bpc) {
    case 1:
    case 2:
    case 4:
    break;
    case 3:
    return 4;
    default:
    return 8;
  }
  return bpc;
}

- (void)readContents {
  
#line 301
  jboolean done = NO;
  while (!done) {
    jint code = [((JavaIoDataInputStream *) nil_chk(in_)) read];
    switch (code) {
      
#line 306
      case (jint) 0x2C:
      [self readImage];
      break;
      
#line 310
      case (jint) 0x21:
      code = [in_ read];
      switch (code) {
        
#line 314
        case (jint) 0xf9:
        [self readGraphicControlExt];
        break;
        
#line 318
        case (jint) 0xff:
        [self readBlock];
        [self skip];
        break;
        
#line 323
        default:
        [self skip];
      }
      break;
      
#line 328
      default:
      done = YES;
      break;
    }
  }
}


#line 338
- (void)readImage {
  
#line 339
  ix_ = [self readShort];
  iy_ = [self readShort];
  iw_ = [self readShort];
  ih_ = [self readShort];
  
#line 344
  jint packed = [((JavaIoDataInputStream *) nil_chk(in_)) read];
  lctFlag_ = ((packed & (jint) 0x80) != 0);
  interlace_ = ((packed & (jint) 0x40) != 0);
  
#line 349
  lctSize_ = LShift32(2, (packed & 7));
  m_bpc_ = [ComItextpdfTextPdfCodecGifImage newBpcWithInt:m_gbpc_];
  if (lctFlag_) {
    m_curr_table_ = [self readColorTableWithInt:(packed & 7) + 1];
    m_bpc_ = [ComItextpdfTextPdfCodecGifImage newBpcWithInt:(packed & 7) + 1];
  }
  else {
    m_curr_table_ = m_global_table_;
  }
  if (transparency_ && transIndex_ >= ((IOSByteArray *) nil_chk(m_curr_table_))->size_ / 3)
#line 359
  transparency_ = NO;
  if (transparency_ && m_bpc_ == 1) {
    IOSByteArray *tp = [IOSByteArray arrayWithLength:12];
    [JavaLangSystem arraycopyWithId:m_curr_table_ withInt:0 withId:tp withInt:0 withInt:6];
    m_curr_table_ = tp;
    m_bpc_ = 2;
  }
  jboolean skipZero = [self decodeImageData];
  if (!skipZero)
#line 368
  [self skip];
  
#line 370
  ComItextpdfTextImage *img = nil;
  @try {
    img = [[ComItextpdfTextImgRaw alloc] initWithInt:iw_ withInt:ih_ withInt:1 withInt:m_bpc_ withByteArray:m_out_];
    ComItextpdfTextPdfPdfArray *colorspace = [[ComItextpdfTextPdfPdfArray alloc] init];
    [colorspace addWithComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_INDEXED_()];
    [colorspace addWithComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_DEVICERGB_()];
    jint len = ((IOSByteArray *) nil_chk(m_curr_table_))->size_;
    [colorspace addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:len / 3 - 1]];
    [colorspace addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfString alloc] initWithByteArray:m_curr_table_]];
    ComItextpdfTextPdfPdfDictionary *ad = [[ComItextpdfTextPdfPdfDictionary alloc] init];
    [ad putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_COLORSPACE_() withComItextpdfTextPdfPdfObject:colorspace];
    [img setAdditionalWithComItextpdfTextPdfPdfDictionary:ad];
    if (transparency_) {
      [img setTransparencyWithIntArray:[IOSIntArray arrayWithInts:(jint[]){ transIndex_, transIndex_ } count:2]];
    }
  }
  @catch (JavaLangException *e) {
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:e];
  }
  [((ComItextpdfTextImage *) nil_chk(img)) setOriginalTypeWithInt:ComItextpdfTextImage_ORIGINAL_GIF];
  [img setOriginalDataWithByteArray:fromData_];
  [img setUrlWithJavaNetURL:fromUrl_];
  ComItextpdfTextPdfCodecGifImage_GifFrame *gf = [[ComItextpdfTextPdfCodecGifImage_GifFrame alloc] init];
  gf->image_ = img;
  gf->ix_ = ix_;
  gf->iy_ = iy_;
  [((JavaUtilArrayList *) nil_chk(frames_)) addWithId:gf];
}


#line 402
- (jboolean)decodeImageData {
  
#line 403
  jint NullCode = -1;
  jint npix = iw_ * ih_;
  jint available, clear, code_mask, code_size, end_of_information, in_code, old_code,
#line 406
  bits, code, count, i, datum, data_size, first, top, bi;
  jboolean skipZero = NO;
  
#line 409
  if (prefix_ == nil)
#line 410
  prefix_ = [IOSShortArray arrayWithLength:ComItextpdfTextPdfCodecGifImage_MaxStackSize];
  if (suffix_ == nil)
#line 412
  suffix_ = [IOSByteArray arrayWithLength:ComItextpdfTextPdfCodecGifImage_MaxStackSize];
  if (pixelStack_ == nil)
#line 414
  pixelStack_ = [IOSByteArray arrayWithLength:ComItextpdfTextPdfCodecGifImage_MaxStackSize + 1];
  
#line 416
  m_line_stride_ = (iw_ * m_bpc_ + 7) / 8;
  m_out_ = [IOSByteArray arrayWithLength:m_line_stride_ * ih_];
  jint pass = 1;
  jint inc = interlace_ ? 8 : 1;
  jint line = 0;
  jint xpos = 0;
  
#line 425
  data_size = [((JavaIoDataInputStream *) nil_chk(in_)) read];
  clear = LShift32(1, data_size);
  end_of_information = clear + 1;
  available = clear + 2;
  old_code = NullCode;
  code_size = data_size + 1;
  code_mask = (LShift32(1, code_size)) - 1;
  for (code = 0; code < clear; code++) {
    *IOSShortArray_GetRef(nil_chk(prefix_), code) = 0;
    *IOSByteArray_GetRef(nil_chk(suffix_), code) = (jbyte) code;
  }
  
#line 439
  datum = bits = count = first = top = bi = 0;
  
#line 441
  for (i = 0; i < npix; ) {
    if (top == 0) {
      if (bits < code_size) {
        
#line 445
        if (count == 0) {
          
#line 447
          count = [self readBlock];
          if (count <= 0) {
            skipZero = YES;
            break;
          }
          bi = 0;
        }
        datum += LShift32((IOSByteArray_Get(nil_chk(block_), bi) & (jint) 0xff), bits);
        bits += 8;
        bi++;
        count--;
        continue;
      }
      
#line 463
      code = datum & code_mask;
      RShiftAssignInt(&datum, code_size);
      bits -= code_size;
      
#line 469
      if (code > available || code == end_of_information)
#line 470
      break;
      if (code == clear) {
        
#line 473
        code_size = data_size + 1;
        code_mask = (LShift32(1, code_size)) - 1;
        available = clear + 2;
        old_code = NullCode;
        continue;
      }
      if (old_code == NullCode) {
        *IOSByteArray_GetRef(nil_chk(pixelStack_), top++) = IOSByteArray_Get(nil_chk(suffix_), code);
        old_code = code;
        first = code;
        continue;
      }
      in_code = code;
      if (code == available) {
        *IOSByteArray_GetRef(nil_chk(pixelStack_), top++) = (jbyte) first;
        code = old_code;
      }
      while (code > clear) {
        *IOSByteArray_GetRef(nil_chk(pixelStack_), top++) = IOSByteArray_Get(nil_chk(suffix_), code);
        code = IOSShortArray_Get(nil_chk(prefix_), code);
      }
      first = IOSByteArray_Get(nil_chk(suffix_), code) & (jint) 0xff;
      
#line 498
      if (available >= ComItextpdfTextPdfCodecGifImage_MaxStackSize)
#line 499
      break;
      *IOSByteArray_GetRef(nil_chk(pixelStack_), top++) = (jbyte) first;
      *IOSShortArray_GetRef(nil_chk(prefix_), available) = (jshort) old_code;
      *IOSByteArray_GetRef(suffix_, available) = (jbyte) first;
      available++;
      if ((available & code_mask) == 0 && available < ComItextpdfTextPdfCodecGifImage_MaxStackSize) {
        code_size++;
        code_mask += available;
      }
      old_code = in_code;
    }
    
#line 513
    top--;
    i++;
    
#line 516
    [self setPixelWithInt:xpos withInt:line withInt:IOSByteArray_Get(nil_chk(pixelStack_), top)];
    ++xpos;
    if (xpos >= iw_) {
      xpos = 0;
      line += inc;
      if (line >= ih_) {
        if (interlace_) {
          do {
            pass++;
            switch (pass) {
              case 2:
              line = 4;
              break;
              case 3:
              line = 2;
              inc = 4;
              break;
              case 4:
              line = 1;
              inc = 2;
              break;
              default:
              line = ih_ - 1;
              inc = 0;
            }
          }
          while (
#line 541
          line >= ih_);
        }
        else {
          line = ih_ - 1;
          inc = 0;
        }
      }
    }
  }
  return skipZero;
}


#line 554
- (void)setPixelWithInt:(jint)x
                withInt:(jint)y
                withInt:(jint)v {
  
#line 555
  if (m_bpc_ == 8) {
    jint pos = x + iw_ * y;
    *IOSByteArray_GetRef(nil_chk(m_out_), pos) = (jbyte) v;
  }
  else {
    jint pos = m_line_stride_ * y + x / (8 / m_bpc_);
    jint vout = LShift32(v, 8 - m_bpc_ * (x % (8 / m_bpc_)) - m_bpc_);
    *IOSByteArray_GetRef(nil_chk(m_out_), pos) |= vout;
  }
}


#line 569
- (void)resetFrame {
}


#line 578
- (void)readGraphicControlExt {
  
#line 579
  [((JavaIoDataInputStream *) nil_chk(in_)) read];
  jint packed = [in_ read];
  dispose_ = RShift32((packed & (jint) 0x1c), 2);
  if (dispose_ == 0)
#line 583
  dispose_ = 1;
  transparency_ = ((packed & 1) != 0);
  delay_ = [self readShort] * 10;
  transIndex_ = [in_ read];
  [in_ read];
}


#line 594
- (void)skip {
  
#line 595
  do {
    [self readBlock];
  }
  while (
#line 597
  blockSize_ > 0);
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecGifImage *)other {
  [super copyAllFieldsTo:other];
  other->bgColor_ = bgColor_;
  other->bgIndex_ = bgIndex_;
  other->block_ = block_;
  other->blockSize_ = blockSize_;
  other->delay_ = delay_;
  other->dispose_ = dispose_;
  other->frames_ = frames_;
  other->fromData_ = fromData_;
  other->fromUrl_ = fromUrl_;
  other->gctFlag_ = gctFlag_;
  other->height_ = height_;
  other->ih_ = ih_;
  other->in_ = in_;
  other->interlace_ = interlace_;
  other->iw_ = iw_;
  other->ix_ = ix_;
  other->iy_ = iy_;
  other->lctFlag_ = lctFlag_;
  other->lctSize_ = lctSize_;
  other->m_bpc_ = m_bpc_;
  other->m_curr_table_ = m_curr_table_;
  other->m_gbpc_ = m_gbpc_;
  other->m_global_table_ = m_global_table_;
  other->m_line_stride_ = m_line_stride_;
  other->m_local_table_ = m_local_table_;
  other->m_out_ = m_out_;
  other->pixelAspect_ = pixelAspect_;
  other->pixelStack_ = pixelStack_;
  other->pixels_ = pixels_;
  other->prefix_ = prefix_;
  other->suffix_ = suffix_;
  other->transIndex_ = transIndex_;
  other->transparency_ = transparency_;
  other->width_ = width_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaNetURL:", "GifImage", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithNSString:", "GifImage", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithByteArray:", "GifImage", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithJavaIoInputStream:", "GifImage", NULL, 0x1, "Ljava.io.IOException;" },
    { "getFrameCount", NULL, "I", 0x1, NULL },
    { "getImageWithInt:", "getImage", "Lcom.itextpdf.text.Image;", 0x1, NULL },
    { "getFramePositionWithInt:", "getFramePosition", "[I", 0x1, NULL },
    { "getLogicalScreen", NULL, "[I", 0x1, NULL },
    { "processWithJavaIoInputStream:", "process", "V", 0x0, "Ljava.io.IOException;" },
    { "readHeader", NULL, "V", 0x4, "Ljava.io.IOException;" },
    { "readLSD", NULL, "V", 0x4, "Ljava.io.IOException;" },
    { "readShort", NULL, "I", 0x4, "Ljava.io.IOException;" },
    { "readBlock", NULL, "I", 0x4, "Ljava.io.IOException;" },
    { "readColorTableWithInt:", "readColorTable", "[B", 0x4, "Ljava.io.IOException;" },
    { "newBpcWithInt:", "newBpc", "I", 0xc, NULL },
    { "readContents", NULL, "V", 0x4, "Ljava.io.IOException;" },
    { "readImage", NULL, "V", 0x4, "Ljava.io.IOException;" },
    { "decodeImageData", NULL, "Z", 0x4, "Ljava.io.IOException;" },
    { "setPixelWithInt:withInt:withInt:", "setPixel", "V", 0x4, NULL },
    { "resetFrame", NULL, "V", 0x4, NULL },
    { "readGraphicControlExt", NULL, "V", 0x4, "Ljava.io.IOException;" },
    { "skip", NULL, "V", 0x4, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x4, "Ljava.io.DataInputStream;", NULL,  },
    { "width_", NULL, 0x4, "I", NULL,  },
    { "height_", NULL, 0x4, "I", NULL,  },
    { "gctFlag_", NULL, 0x4, "Z", NULL,  },
    { "bgIndex_", NULL, 0x4, "I", NULL,  },
    { "bgColor_", NULL, 0x4, "I", NULL,  },
    { "pixelAspect_", NULL, 0x4, "I", NULL,  },
    { "lctFlag_", NULL, 0x4, "Z", NULL,  },
    { "interlace_", NULL, 0x4, "Z", NULL,  },
    { "lctSize_", NULL, 0x4, "I", NULL,  },
    { "ix_", NULL, 0x4, "I", NULL,  },
    { "iy_", NULL, 0x4, "I", NULL,  },
    { "iw_", NULL, 0x4, "I", NULL,  },
    { "ih_", NULL, 0x4, "I", NULL,  },
    { "block_", NULL, 0x4, "[B", NULL,  },
    { "blockSize_", NULL, 0x4, "I", NULL,  },
    { "dispose_", NULL, 0x4, "I", NULL,  },
    { "transparency_", NULL, 0x4, "Z", NULL,  },
    { "delay_", NULL, 0x4, "I", NULL,  },
    { "transIndex_", NULL, 0x4, "I", NULL,  },
    { "MaxStackSize_", NULL, 0x1c, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecGifImage_MaxStackSize },
    { "prefix_", NULL, 0x4, "[S", NULL,  },
    { "suffix_", NULL, 0x4, "[B", NULL,  },
    { "pixelStack_", NULL, 0x4, "[B", NULL,  },
    { "pixels_", NULL, 0x4, "[B", NULL,  },
    { "m_out_", NULL, 0x4, "[B", NULL,  },
    { "m_bpc_", NULL, 0x4, "I", NULL,  },
    { "m_gbpc_", NULL, 0x4, "I", NULL,  },
    { "m_global_table_", NULL, 0x4, "[B", NULL,  },
    { "m_local_table_", NULL, 0x4, "[B", NULL,  },
    { "m_curr_table_", NULL, 0x4, "[B", NULL,  },
    { "m_line_stride_", NULL, 0x4, "I", NULL,  },
    { "fromData_", NULL, 0x4, "[B", NULL,  },
    { "fromUrl_", NULL, 0x4, "Ljava.net.URL;", NULL,  },
    { "frames_", NULL, 0x4, "Ljava.util.ArrayList;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecGifImage = { "GifImage", "com.itextpdf.text.pdf.codec", NULL, 0x1, 22, methods, 35, fields, 0, NULL};
  return &_ComItextpdfTextPdfCodecGifImage;
}

@end


#line 600
@implementation ComItextpdfTextPdfCodecGifImage_GifFrame

- (instancetype)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecGifImage_GifFrame *)other {
  [super copyAllFieldsTo:other];
  other->image_ = image_;
  other->ix_ = ix_;
  other->iy_ = iy_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "image_", NULL, 0x0, "Lcom.itextpdf.text.Image;", NULL,  },
    { "ix_", NULL, 0x0, "I", NULL,  },
    { "iy_", NULL, 0x0, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecGifImage_GifFrame = { "GifFrame", "com.itextpdf.text.pdf.codec", "GifImage", 0x8, 1, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfCodecGifImage_GifFrame;
}

@end
