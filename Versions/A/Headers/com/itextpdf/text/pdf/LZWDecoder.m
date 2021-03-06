//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/LZWDecoder.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/LZWDecoder.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/LZWDecoder.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"


#line 57
@implementation ComItextpdfTextPdfLZWDecoder


#line 74
- (instancetype)init {
  if (self = [super init]) {
    data_ =
#line 60
    nil;
    bitsToGet_ =
#line 62
    9;
    nextData_ =
#line 64
    0;
    nextBits_ =
#line 65
    0;
    andTable_ = [IOSIntArray arrayWithInts:(jint[]){
#line 68
      511,
#line 69
      1023,
#line 70
      2047,
#line 71
      4095 } count:4];
    }
    return self;
  }


#line 83
- (void)decodeWithByteArray:(IOSByteArray *)data
     withJavaIoOutputStream:(JavaIoOutputStream *)uncompData {
  
#line 85
  if (IOSByteArray_Get(nil_chk(data), 0) == (jbyte) (jint) 0x00 && IOSByteArray_Get(data, 1) == (jbyte) (jint) 0x01) {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"lzw.flavour.not.supported" withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  
#line 89
  [self initializeStringTable];
  
#line 91
  self->data_ = data;
  self->uncompData_ = uncompData;
  
#line 95
  bytePointer_ = 0;
  bitPointer_ = 0;
  
#line 98
  nextData_ = 0;
  nextBits_ = 0;
  
#line 101
  jint code, oldCode = 0;
  IOSByteArray *string;
  
#line 104
  while ((code = [self getNextCode]) != 257) {
    
#line 106
    if (code == 256) {
      
#line 108
      [self initializeStringTable];
      code = [self getNextCode];
      
#line 111
      if (code == 257) {
        break;
      }
      
#line 115
      [self writeStringWithByteArray:IOSObjectArray_Get(nil_chk(stringTable_), code)];
      oldCode = code;
    }
    else {
      
#line 120
      if (code < tableIndex_) {
        
#line 122
        string = IOSObjectArray_Get(nil_chk(stringTable_), code);
        
#line 124
        [self writeStringWithByteArray:string];
        [self addStringToTableWithByteArray:IOSObjectArray_Get(stringTable_, oldCode) withByte:IOSByteArray_Get(nil_chk(string), 0)];
        oldCode = code;
      }
      else {
        
#line 130
        string = IOSObjectArray_Get(nil_chk(stringTable_), oldCode);
        string = [self composeStringWithByteArray:string withByte:IOSByteArray_Get(nil_chk(string), 0)];
        [self writeStringWithByteArray:string];
        [self addStringToTableWithByteArray:string];
        oldCode = code;
      }
    }
  }
}


#line 144
- (void)initializeStringTable {
  
#line 146
  stringTable_ = [IOSObjectArray arrayWithLength:8192 type:[IOSByteArray iosClass]];
  
#line 148
  for (jint i = 0; i < 256; i++) {
    IOSObjectArray_SetAndConsume(stringTable_, i, [IOSByteArray newArrayWithLength:1]);
    *IOSByteArray_GetRef(nil_chk(IOSObjectArray_Get(stringTable_, i)), 0) = (jbyte) i;
  }
  
#line 153
  tableIndex_ = 258;
  bitsToGet_ = 9;
}

- (void)writeStringWithByteArray:(IOSByteArray *)string {
  
#line 161
  @try {
    [((JavaIoOutputStream *) nil_chk(uncompData_)) writeWithByteArray:string];
  }
  @catch (JavaIoIOException *e) {
    @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:e];
  }
}


#line 172
- (void)addStringToTableWithByteArray:(IOSByteArray *)oldString
                             withByte:(jbyte)newString {
  
#line 173
  jint length = ((IOSByteArray *) nil_chk(oldString))->size_;
  IOSByteArray *string = [IOSByteArray arrayWithLength:length + 1];
  [JavaLangSystem arraycopyWithId:oldString withInt:0 withId:string withInt:0 withInt:length];
  *IOSByteArray_GetRef(string, length) = newString;
  
#line 179
  IOSObjectArray_Set(nil_chk(stringTable_), tableIndex_++, string);
  
#line 181
  if (tableIndex_ == 511) {
    bitsToGet_ = 10;
  }
  else
#line 183
  if (tableIndex_ == 1023) {
    bitsToGet_ = 11;
  }
  else
#line 185
  if (tableIndex_ == 2047) {
    bitsToGet_ = 12;
  }
}


#line 193
- (void)addStringToTableWithByteArray:(IOSByteArray *)string {
  
#line 196
  IOSObjectArray_Set(nil_chk(stringTable_), tableIndex_++, string);
  
#line 198
  if (tableIndex_ == 511) {
    bitsToGet_ = 10;
  }
  else
#line 200
  if (tableIndex_ == 1023) {
    bitsToGet_ = 11;
  }
  else
#line 202
  if (tableIndex_ == 2047) {
    bitsToGet_ = 12;
  }
}


#line 210
- (IOSByteArray *)composeStringWithByteArray:(IOSByteArray *)oldString
                                    withByte:(jbyte)newString {
  
#line 211
  jint length = ((IOSByteArray *) nil_chk(oldString))->size_;
  IOSByteArray *string = [IOSByteArray arrayWithLength:length + 1];
  [JavaLangSystem arraycopyWithId:oldString withInt:0 withId:string withInt:0 withInt:length];
  *IOSByteArray_GetRef(string, length) = newString;
  
#line 216
  return string;
}


#line 220
- (jint)getNextCode {
  
#line 225
  @try {
    nextData_ = (LShift32(nextData_, 8)) | (IOSByteArray_Get(nil_chk(data_), bytePointer_++) & (jint) 0xff);
    nextBits_ += 8;
    
#line 229
    if (nextBits_ < bitsToGet_) {
      nextData_ = (LShift32(nextData_, 8)) | (IOSByteArray_Get(data_, bytePointer_++) & (jint) 0xff);
      nextBits_ += 8;
    }
    
#line 234
    jint code =
#line 235
    (RShift32(nextData_, (nextBits_ - bitsToGet_))) & IOSIntArray_Get(nil_chk(andTable_), bitsToGet_ - 9);
    nextBits_ -= bitsToGet_;
    
#line 238
    return code;
  }
  @catch (
#line 239
  JavaLangArrayIndexOutOfBoundsException *e) {
    
#line 241
    return 257;
  }
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfLZWDecoder *)other {
  [super copyAllFieldsTo:other];
  other->andTable_ = andTable_;
  other->bitPointer_ = bitPointer_;
  other->bitsToGet_ = bitsToGet_;
  other->bytePointer_ = bytePointer_;
  other->data_ = data_;
  other->nextBits_ = nextBits_;
  other->nextData_ = nextData_;
  other->stringTable_ = stringTable_;
  other->tableIndex_ = tableIndex_;
  other->uncompData_ = uncompData_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LZWDecoder", NULL, 0x1, NULL },
    { "decodeWithByteArray:withJavaIoOutputStream:", "decode", "V", 0x1, NULL },
    { "initializeStringTable", NULL, "V", 0x1, NULL },
    { "writeStringWithByteArray:", "writeString", "V", 0x1, NULL },
    { "addStringToTableWithByteArray:withByte:", "addStringToTable", "V", 0x1, NULL },
    { "addStringToTableWithByteArray:", "addStringToTable", "V", 0x1, NULL },
    { "composeStringWithByteArray:withByte:", "composeString", "[B", 0x1, NULL },
    { "getNextCode", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stringTable_", NULL, 0x0, "[[B", NULL,  },
    { "data_", NULL, 0x0, "[B", NULL,  },
    { "uncompData_", NULL, 0x0, "Ljava.io.OutputStream;", NULL,  },
    { "tableIndex_", NULL, 0x0, "I", NULL,  },
    { "bitsToGet_", NULL, 0x0, "I", NULL,  },
    { "bytePointer_", NULL, 0x0, "I", NULL,  },
    { "bitPointer_", NULL, 0x0, "I", NULL,  },
    { "nextData_", NULL, 0x0, "I", NULL,  },
    { "nextBits_", NULL, 0x0, "I", NULL,  },
    { "andTable_", NULL, 0x0, "[I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfLZWDecoder = { "LZWDecoder", "com.itextpdf.text.pdf", NULL, 0x1, 8, methods, 10, fields, 0, NULL};
  return &_ComItextpdfTextPdfLZWDecoder;
}

@end
