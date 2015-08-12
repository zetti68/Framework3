//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/RandomAccessFileOrArray.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/RandomAccessFileOrArray.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/Document.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/io/IndependentRandomAccessSource.h"
#include "com/itextpdf/text/io/RandomAccessSource.h"
#include "com/itextpdf/text/io/RandomAccessSourceFactory.h"
#include "com/itextpdf/text/pdf/RandomAccessFileOrArray.h"
#include "java/io/DataInputStream.h"
#include "java/io/EOFException.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Double.h"
#include "java/lang/Exception.h"
#include "java/lang/Float.h"
#include "java/lang/StringBuilder.h"
#include "java/net/URL.h"


#line 70
@implementation ComItextpdfTextPdfRandomAccessFileOrArray


#line 97
- (instancetype)initWithNSString:(NSString *)filename {
  return
#line 98
  [self initComItextpdfTextPdfRandomAccessFileOrArrayWithComItextpdfTextIoRandomAccessSource:[((ComItextpdfTextIoRandomAccessSourceFactory *) nil_chk([((ComItextpdfTextIoRandomAccessSourceFactory *) nil_chk([((ComItextpdfTextIoRandomAccessSourceFactory *) [[ComItextpdfTextIoRandomAccessSourceFactory alloc] init]) setForceReadWithBoolean:
#line 99
  NO])) setUsePlainRandomAccessWithBoolean:ComItextpdfTextDocument_get_plainRandomAccess_()])) createBestSourceWithNSString:
#line 101
  filename]];
}


#line 112
- (instancetype)initWithComItextpdfTextPdfRandomAccessFileOrArray:(ComItextpdfTextPdfRandomAccessFileOrArray *)source {
  return
#line 113
  [self initComItextpdfTextPdfRandomAccessFileOrArrayWithComItextpdfTextIoRandomAccessSource:[[ComItextpdfTextIoIndependentRandomAccessSource alloc] initWithComItextpdfTextIoRandomAccessSource:((ComItextpdfTextPdfRandomAccessFileOrArray *) nil_chk(source))->byteSource_]];
}


#line 121
- (ComItextpdfTextPdfRandomAccessFileOrArray *)createView {
  
#line 122
  return [[ComItextpdfTextPdfRandomAccessFileOrArray alloc] initWithComItextpdfTextIoRandomAccessSource:[[ComItextpdfTextIoIndependentRandomAccessSource alloc] initWithComItextpdfTextIoRandomAccessSource:byteSource_]];
}


#line 125
- (id<ComItextpdfTextIoRandomAccessSource>)createSourceView {
  
#line 126
  return [[ComItextpdfTextIoIndependentRandomAccessSource alloc] initWithComItextpdfTextIoRandomAccessSource:byteSource_];
}


#line 134
- (instancetype)initComItextpdfTextPdfRandomAccessFileOrArrayWithComItextpdfTextIoRandomAccessSource:(id<ComItextpdfTextIoRandomAccessSource>)byteSource {
  if (self = [super init]) {
    isBack_ =
#line 89
    NO;
    
#line 135
    self->byteSource_ = byteSource;
  }
  return self;
}

- (instancetype)initWithComItextpdfTextIoRandomAccessSource:(id<ComItextpdfTextIoRandomAccessSource>)byteSource {
  return [self initComItextpdfTextPdfRandomAccessFileOrArrayWithComItextpdfTextIoRandomAccessSource:
#line 134
byteSource];
}


#line 147
- (instancetype)initWithNSString:(NSString *)filename
                     withBoolean:(jboolean)forceRead
                     withBoolean:(jboolean)plainRandomAccess {
  return
#line 148
  [self initComItextpdfTextPdfRandomAccessFileOrArrayWithComItextpdfTextIoRandomAccessSource:[((ComItextpdfTextIoRandomAccessSourceFactory *) nil_chk([((ComItextpdfTextIoRandomAccessSourceFactory *) nil_chk([((ComItextpdfTextIoRandomAccessSourceFactory *) [[ComItextpdfTextIoRandomAccessSourceFactory alloc] init]) setForceReadWithBoolean:
#line 149
  forceRead])) setUsePlainRandomAccessWithBoolean:
#line 150
  plainRandomAccess])) createBestSourceWithNSString:
#line 151
  filename]];
}


#line 160
- (instancetype)initWithJavaNetURL:(JavaNetURL *)url {
  return
#line 161
  [self initComItextpdfTextPdfRandomAccessFileOrArrayWithComItextpdfTextIoRandomAccessSource:[((ComItextpdfTextIoRandomAccessSourceFactory *) [[ComItextpdfTextIoRandomAccessSourceFactory alloc] init]) createSourceWithJavaNetURL:url]];
}


#line 170
- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)is {
  return
#line 171
  [self initComItextpdfTextPdfRandomAccessFileOrArrayWithComItextpdfTextIoRandomAccessSource:[((ComItextpdfTextIoRandomAccessSourceFactory *) [[ComItextpdfTextIoRandomAccessSourceFactory alloc] init]) createSourceWithJavaIoInputStream:is]];
}


#line 181
- (instancetype)initWithByteArray:(IOSByteArray *)arrayIn {
  return
#line 182
  [self initComItextpdfTextPdfRandomAccessFileOrArrayWithComItextpdfTextIoRandomAccessSource:[((ComItextpdfTextIoRandomAccessSourceFactory *) [[ComItextpdfTextIoRandomAccessSourceFactory alloc] init]) createSourceWithByteArray:arrayIn]];
}


#line 188
- (id<ComItextpdfTextIoRandomAccessSource>)getByteSource {
  
#line 189
  return byteSource_;
}


#line 196
- (void)pushBackWithByte:(jbyte)b {
  
#line 197
  back_ = b;
  isBack_ = YES;
}


#line 206
- (jint)read {
  
#line 207
  if (isBack_) {
    isBack_ = NO;
    return back_ & (jint) 0xff;
  }
  
#line 212
  return [((id<ComItextpdfTextIoRandomAccessSource>) nil_chk(byteSource_)) getWithLong:byteSourcePosition_++];
}


#line 215
- (jint)readWithByteArray:(IOSByteArray *)b
                  withInt:(jint)off
                  withInt:(jint)len {
  
#line 216
  if (len == 0)
#line 217
  return 0;
  jint count = 0;
  if (isBack_ && len > 0) {
    isBack_ = NO;
    *IOSByteArray_GetRef(nil_chk(b), off++) = back_;
    --len;
    count++;
  }
  if (len > 0) {
    jint byteSourceCount = [((id<ComItextpdfTextIoRandomAccessSource>) nil_chk(byteSource_)) getWithLong:byteSourcePosition_ withByteArray:b withInt:off withInt:len];
    if (byteSourceCount > 0) {
      count += byteSourceCount;
      byteSourcePosition_ += byteSourceCount;
    }
  }
  if (count == 0)
#line 233
  return -1;
  return count;
}


#line 237
- (jint)readWithByteArray:(IOSByteArray *)b {
  
#line 238
  return [self readWithByteArray:b withInt:0 withInt:((IOSByteArray *) nil_chk(b))->size_];
}


#line 241
- (void)readFullyWithByteArray:(IOSByteArray *)b {
  
#line 242
  [self readFullyWithByteArray:b withInt:0 withInt:((IOSByteArray *) nil_chk(b))->size_];
}


#line 245
- (void)readFullyWithByteArray:(IOSByteArray *)b
                       withInt:(jint)off
                       withInt:(jint)len {
  
#line 246
  jint n = 0;
  do {
    jint count = [self readWithByteArray:b withInt:off + n withInt:len - n];
    if (count < 0)
#line 250
    @throw [[JavaIoEOFException alloc] init];
    n += count;
  }
  while (
#line 252
  n < len);
}


#line 255
- (jlong)skipWithLong:(jlong)n {
  
#line 256
  if (n <= 0) {
    return 0;
  }
  jint adj = 0;
  if (isBack_) {
    isBack_ = NO;
    if (n == 1) {
      return 1;
    }
    else {
      --n;
      adj = 1;
    }
  }
  jlong pos;
  jlong len;
  jlong newpos;
  
#line 274
  pos = [self getFilePointer];
  len = [self length];
  newpos = pos + n;
  if (newpos > len) {
    newpos = len;
  }
  [self seekWithLong:newpos];
  
#line 283
  return newpos - pos + adj;
}


#line 286
- (jint)skipBytesWithInt:(jint)n {
  
#line 287
  return (jint) [self skipWithLong:n];
}

- (void)reOpen {
  
#line 293
  [self seekWithLong:0];
}


#line 297
- (void)close {
  isBack_ = NO;
  
#line 300
  [((id<ComItextpdfTextIoRandomAccessSource>) nil_chk(byteSource_)) close];
}


#line 303
- (jlong)length {
  return [((id<ComItextpdfTextIoRandomAccessSource>) nil_chk(byteSource_)) length];
}

- (void)seekWithLong:(jlong)pos {
  
#line 308
  byteSourcePosition_ = pos;
  isBack_ = NO;
}


#line 313
- (jlong)getFilePointer {
  return byteSourcePosition_ - (isBack_ ? 1 : 0);
}

- (jboolean)readBoolean {
  
#line 318
  jint ch = [self read];
  if (ch < 0)
#line 320
  @throw [[JavaIoEOFException alloc] init];
  return (ch != 0);
}


#line 324
- (jbyte)readByte {
  
#line 325
  jint ch = [self read];
  if (ch < 0)
#line 327
  @throw [[JavaIoEOFException alloc] init];
  return (jbyte) (ch);
}


#line 331
- (jint)readUnsignedByte {
  
#line 332
  jint ch = [self read];
  if (ch < 0)
#line 334
  @throw [[JavaIoEOFException alloc] init];
  return ch;
}


#line 338
- (jshort)readShort {
  
#line 339
  jint ch1 = [self read];
  jint ch2 = [self read];
  if ((ch1 | ch2) < 0)
#line 342
  @throw [[JavaIoEOFException alloc] init];
  return (jshort) ((LShift32(ch1, 8)) + ch2);
}


#line 367
- (jshort)readShortLE {
  
#line 368
  jint ch1 = [self read];
  jint ch2 = [self read];
  if ((ch1 | ch2) < 0)
#line 371
  @throw [[JavaIoEOFException alloc] init];
  return (jshort) ((LShift32(ch2, 8)) + (LShift32(ch1, 0)));
}


#line 375
- (jint)readUnsignedShort {
  
#line 376
  jint ch1 = [self read];
  jint ch2 = [self read];
  if ((ch1 | ch2) < 0)
#line 379
  @throw [[JavaIoEOFException alloc] init];
  return (LShift32(ch1, 8)) + ch2;
}


#line 404
- (jint)readUnsignedShortLE {
  
#line 405
  jint ch1 = [self read];
  jint ch2 = [self read];
  if ((ch1 | ch2) < 0)
#line 408
  @throw [[JavaIoEOFException alloc] init];
  return (LShift32(ch2, 8)) + (LShift32(ch1, 0));
}


#line 412
- (jchar)readChar {
  
#line 413
  jint ch1 = [self read];
  jint ch2 = [self read];
  if ((ch1 | ch2) < 0)
#line 416
  @throw [[JavaIoEOFException alloc] init];
  return (jchar) ((LShift32(ch1, 8)) + ch2);
}


#line 440
- (jchar)readCharLE {
  
#line 441
  jint ch1 = [self read];
  jint ch2 = [self read];
  if ((ch1 | ch2) < 0)
#line 444
  @throw [[JavaIoEOFException alloc] init];
  return (jchar) ((LShift32(ch2, 8)) + (LShift32(ch1, 0)));
}


#line 448
- (jint)readInt {
  
#line 449
  jint ch1 = [self read];
  jint ch2 = [self read];
  jint ch3 = [self read];
  jint ch4 = [self read];
  if ((ch1 | ch2 | ch3 | ch4) < 0)
#line 454
  @throw [[JavaIoEOFException alloc] init];
  return ((LShift32(ch1, 24)) + (LShift32(ch2, 16)) + (LShift32(ch3, 8)) + ch4);
}


#line 479
- (jint)readIntLE {
  
#line 480
  jint ch1 = [self read];
  jint ch2 = [self read];
  jint ch3 = [self read];
  jint ch4 = [self read];
  if ((ch1 | ch2 | ch3 | ch4) < 0)
#line 485
  @throw [[JavaIoEOFException alloc] init];
  return ((LShift32(ch4, 24)) + (LShift32(ch3, 16)) + (LShift32(ch2, 8)) + (LShift32(ch1, 0)));
}


#line 509
- (jlong)readUnsignedInt {
  
#line 510
  jlong ch1 = [self read];
  jlong ch2 = [self read];
  jlong ch3 = [self read];
  jlong ch4 = [self read];
  if ((ch1 | ch2 | ch3 | ch4) < 0)
#line 515
  @throw [[JavaIoEOFException alloc] init];
  return ((LShift64(ch1, 24)) + (LShift64(ch2, 16)) + (LShift64(ch3, 8)) + (LShift64(ch4, 0)));
}


#line 519
- (jlong)readUnsignedIntLE {
  
#line 520
  jlong ch1 = [self read];
  jlong ch2 = [self read];
  jlong ch3 = [self read];
  jlong ch4 = [self read];
  if ((ch1 | ch2 | ch3 | ch4) < 0)
#line 525
  @throw [[JavaIoEOFException alloc] init];
  return ((LShift64(ch4, 24)) + (LShift64(ch3, 16)) + (LShift64(ch2, 8)) + (LShift64(ch1, 0)));
}


#line 529
- (jlong)readLong {
  
#line 530
  return (LShift64((jlong) ([self readInt]), 32)) + ([self readInt] & (jlong) 0xFFFFFFFFLL);
}


#line 533
- (jlong)readLongLE {
  
#line 534
  jint i1 = [self readIntLE];
  jint i2 = [self readIntLE];
  return (LShift64((jlong) i2, 32)) + (i1 & (jlong) 0xFFFFFFFFLL);
}


#line 539
- (jfloat)readFloat {
  
#line 540
  return [JavaLangFloat intBitsToFloatWithInt:[self readInt]];
}


#line 543
- (jfloat)readFloatLE {
  
#line 544
  return [JavaLangFloat intBitsToFloatWithInt:[self readIntLE]];
}


#line 547
- (jdouble)readDouble {
  
#line 548
  return [JavaLangDouble longBitsToDoubleWithLong:[self readLong]];
}


#line 551
- (jdouble)readDoubleLE {
  
#line 552
  return [JavaLangDouble longBitsToDoubleWithLong:[self readLongLE]];
}


#line 555
- (NSString *)readLine {
  
#line 556
  JavaLangStringBuilder *input = [[JavaLangStringBuilder alloc] init];
  jint c = -1;
  jboolean eol = NO;
  
#line 560
  while (!eol) {
    {
      
#line 568
      jlong cur;
      
#line 561
      switch (c = [self read]) {
        case -1:
        case 0x000a:
        eol = YES;
        break;
        case 0x000d:
        eol = YES;
        cur = [self getFilePointer];
        if (([self read]) != 0x000a) {
          [self seekWithLong:cur];
        }
        break;
        default:
        (void) [input appendWithChar:(jchar) c];
        break;
      }
    }
  }
  if ((c == -1) && ([input sequenceLength] == 0)) {
    return nil;
  }
  return [input description];
}


#line 585
- (NSString *)readUTF {
  
#line 586
  return [JavaIoDataInputStream readUTFWithJavaIoDataInput:self];
}


#line 596
- (NSString *)readStringWithInt:(jint)length
                   withNSString:(NSString *)encoding {
  
#line 597
  IOSByteArray *buf = [IOSByteArray arrayWithLength:length];
  [self readFullyWithByteArray:buf];
  @try {
    return [NSString stringWithBytes:buf charsetName:encoding];
  }
  @catch (JavaLangException *e) {
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:e];
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfRandomAccessFileOrArray *)other {
  [super copyAllFieldsTo:other];
  other->back_ = back_;
  other->byteSource_ = byteSource_;
  other->byteSourcePosition_ = byteSourcePosition_;
  other->isBack_ = isBack_;
}

+ (IOSObjectArray *)__annotations_ComItextpdfTextPdfRandomAccessFileOrArrayWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_ComItextpdfTextPdfRandomAccessFileOrArrayWithComItextpdfTextPdfRandomAccessFileOrArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_ComItextpdfTextPdfRandomAccessFileOrArrayWithNSString_withBoolean_withBoolean_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_ComItextpdfTextPdfRandomAccessFileOrArrayWithJavaNetURL_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_ComItextpdfTextPdfRandomAccessFileOrArrayWithJavaIoInputStream_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_ComItextpdfTextPdfRandomAccessFileOrArrayWithByteArray_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_getByteSource {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (IOSObjectArray *)__annotations_reOpen {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "RandomAccessFileOrArray", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithComItextpdfTextPdfRandomAccessFileOrArray:", "RandomAccessFileOrArray", NULL, 0x1, NULL },
    { "createView", NULL, "Lcom.itextpdf.text.pdf.RandomAccessFileOrArray;", 0x1, NULL },
    { "createSourceView", NULL, "Lcom.itextpdf.text.io.RandomAccessSource;", 0x1, NULL },
    { "initWithComItextpdfTextIoRandomAccessSource:", "RandomAccessFileOrArray", NULL, 0x1, NULL },
    { "initWithNSString:withBoolean:withBoolean:", "RandomAccessFileOrArray", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithJavaNetURL:", "RandomAccessFileOrArray", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithJavaIoInputStream:", "RandomAccessFileOrArray", NULL, 0x1, "Ljava.io.IOException;" },
    { "initWithByteArray:", "RandomAccessFileOrArray", NULL, 0x1, NULL },
    { "getByteSource", NULL, "Lcom.itextpdf.text.io.RandomAccessSource;", 0x4, NULL },
    { "pushBackWithByte:", "pushBack", "V", 0x1, NULL },
    { "read", NULL, "I", 0x1, "Ljava.io.IOException;" },
    { "readWithByteArray:withInt:withInt:", "read", "I", 0x1, "Ljava.io.IOException;" },
    { "readWithByteArray:", "read", "I", 0x1, "Ljava.io.IOException;" },
    { "readFullyWithByteArray:", "readFully", "V", 0x1, "Ljava.io.IOException;" },
    { "readFullyWithByteArray:withInt:withInt:", "readFully", "V", 0x1, "Ljava.io.IOException;" },
    { "skipWithLong:", "skip", "J", 0x1, "Ljava.io.IOException;" },
    { "skipBytesWithInt:", "skipBytes", "I", 0x1, "Ljava.io.IOException;" },
    { "reOpen", NULL, "V", 0x1, "Ljava.io.IOException;" },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;" },
    { "length", NULL, "J", 0x1, "Ljava.io.IOException;" },
    { "seekWithLong:", "seek", "V", 0x1, "Ljava.io.IOException;" },
    { "getFilePointer", NULL, "J", 0x1, "Ljava.io.IOException;" },
    { "readBoolean", NULL, "Z", 0x1, "Ljava.io.IOException;" },
    { "readByte", NULL, "B", 0x1, "Ljava.io.IOException;" },
    { "readUnsignedByte", NULL, "I", 0x1, "Ljava.io.IOException;" },
    { "readShort", NULL, "S", 0x1, "Ljava.io.IOException;" },
    { "readShortLE", NULL, "S", 0x11, "Ljava.io.IOException;" },
    { "readUnsignedShort", NULL, "I", 0x1, "Ljava.io.IOException;" },
    { "readUnsignedShortLE", NULL, "I", 0x11, "Ljava.io.IOException;" },
    { "readChar", NULL, "C", 0x1, "Ljava.io.IOException;" },
    { "readCharLE", NULL, "C", 0x11, "Ljava.io.IOException;" },
    { "readInt", NULL, "I", 0x1, "Ljava.io.IOException;" },
    { "readIntLE", NULL, "I", 0x11, "Ljava.io.IOException;" },
    { "readUnsignedInt", NULL, "J", 0x11, "Ljava.io.IOException;" },
    { "readUnsignedIntLE", NULL, "J", 0x11, "Ljava.io.IOException;" },
    { "readLong", NULL, "J", 0x1, "Ljava.io.IOException;" },
    { "readLongLE", NULL, "J", 0x11, "Ljava.io.IOException;" },
    { "readFloat", NULL, "F", 0x1, "Ljava.io.IOException;" },
    { "readFloatLE", NULL, "F", 0x11, "Ljava.io.IOException;" },
    { "readDouble", NULL, "D", 0x1, "Ljava.io.IOException;" },
    { "readDoubleLE", NULL, "D", 0x11, "Ljava.io.IOException;" },
    { "readLine", NULL, "Ljava.lang.String;", 0x1, "Ljava.io.IOException;" },
    { "readUTF", NULL, "Ljava.lang.String;", 0x1, "Ljava.io.IOException;" },
    { "readStringWithInt:withNSString:", "readString", "Ljava.lang.String;", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "byteSource_", NULL, 0x12, "Lcom.itextpdf.text.io.RandomAccessSource;", NULL,  },
    { "byteSourcePosition_", NULL, 0x2, "J", NULL,  },
    { "back_", NULL, 0x2, "B", NULL,  },
    { "isBack_", NULL, 0x2, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfRandomAccessFileOrArray = { "RandomAccessFileOrArray", "com.itextpdf.text.pdf", NULL, 0x1, 45, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfRandomAccessFileOrArray;
}

@end