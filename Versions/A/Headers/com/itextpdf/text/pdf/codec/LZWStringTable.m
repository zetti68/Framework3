//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/LZWStringTable.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/codec/LZWStringTable.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/codec/LZWStringTable.h"
#include "java/io/PrintStream.h"
#include "java/lang/Integer.h"


#line 64
@implementation ComItextpdfTextPdfCodecLZWStringTable


#line 92
- (instancetype)init {
  if (self = [super init]) {
    
#line 94
    strChr__ = [IOSByteArray arrayWithLength:ComItextpdfTextPdfCodecLZWStringTable_MAXSTR];
    
#line 95
    strNxt__ = [IOSShortArray arrayWithLength:ComItextpdfTextPdfCodecLZWStringTable_MAXSTR];
    
#line 96
    strLen__ = [IOSIntArray arrayWithLength:ComItextpdfTextPdfCodecLZWStringTable_MAXSTR];
    
#line 97
    strHsh__ = [IOSShortArray arrayWithLength:ComItextpdfTextPdfCodecLZWStringTable_HASHSIZE];
  }
  return self;
}


#line 107
- (jint)AddCharStringWithShort:(jshort)index
                      withByte:(jbyte)b {
  
#line 109
  jint hshidx;
  
#line 111
  if (numStrings__ >= ComItextpdfTextPdfCodecLZWStringTable_MAXSTR) {
    
#line 113
    return (jint) 0xFFFF;
  }
  
#line 116
  hshidx = [ComItextpdfTextPdfCodecLZWStringTable HashWithShort:index withByte:b];
  while (IOSShortArray_Get(nil_chk(strHsh__), hshidx) != ComItextpdfTextPdfCodecLZWStringTable_HASH_FREE)
#line 118
  hshidx = (hshidx + ComItextpdfTextPdfCodecLZWStringTable_HASHSTEP) % ComItextpdfTextPdfCodecLZWStringTable_HASHSIZE;
  
#line 120
  *IOSShortArray_GetRef(strHsh__, hshidx) = numStrings__;
  *IOSByteArray_GetRef(nil_chk(strChr__), numStrings__) = b;
  if (index == ComItextpdfTextPdfCodecLZWStringTable_HASH_FREE) {
    
#line 124
    *IOSShortArray_GetRef(nil_chk(strNxt__), numStrings__) = ComItextpdfTextPdfCodecLZWStringTable_NEXT_FIRST;
    *IOSIntArray_GetRef(nil_chk(strLen__), numStrings__) = 1;
  }
  else {
    
#line 129
    *IOSShortArray_GetRef(nil_chk(strNxt__), numStrings__) = index;
    *IOSIntArray_GetRef(nil_chk(strLen__), numStrings__) = IOSIntArray_Get(strLen__, index) + 1;
  }
  
#line 133
  return numStrings__++;
}


#line 142
- (jshort)FindCharStringWithShort:(jshort)index
                         withByte:(jbyte)b {
  
#line 144
  jint hshidx, nxtidx;
  
#line 146
  if (index == ComItextpdfTextPdfCodecLZWStringTable_HASH_FREE)
#line 147
  return (jshort) (b & (jint) 0xFF);
  
#line 149
  hshidx = [ComItextpdfTextPdfCodecLZWStringTable HashWithShort:index withByte:b];
  while ((nxtidx = IOSShortArray_Get(nil_chk(strHsh__), hshidx)) != ComItextpdfTextPdfCodecLZWStringTable_HASH_FREE) {
    
#line 152
    if (IOSShortArray_Get(nil_chk(strNxt__), nxtidx) == index && IOSByteArray_Get(nil_chk(strChr__), nxtidx) == b)
#line 153
    return (jshort) nxtidx;
    hshidx = (hshidx + ComItextpdfTextPdfCodecLZWStringTable_HASHSTEP) % ComItextpdfTextPdfCodecLZWStringTable_HASHSIZE;
  }
  
#line 157
  return (jshort) (jint) 0xFFFF;
}


#line 164
- (void)ClearTableWithInt:(jint)codesize {
  
#line 166
  numStrings__ = 0;
  
#line 168
  for (jint q = 0; q < ComItextpdfTextPdfCodecLZWStringTable_HASHSIZE; q++)
#line 169
  *IOSShortArray_GetRef(nil_chk(strHsh__), q) = ComItextpdfTextPdfCodecLZWStringTable_HASH_FREE;
  
#line 171
  jint w = (LShift32(1, codesize)) + ComItextpdfTextPdfCodecLZWStringTable_RES_CODES;
  for (jint q = 0; q < w; q++)
#line 173
  [self AddCharStringWithShort:(jshort) (jint) 0xFFFF withByte:(jbyte) q];
}


#line 176
+ (jint)HashWithShort:(jshort)index
             withByte:(jbyte)lastbyte {
  
#line 178
  return ((jint) ((jshort) (LShift32(lastbyte, 8)) ^ index) & (jint) 0xFFFF) % ComItextpdfTextPdfCodecLZWStringTable_HASHSIZE;
}


#line 201
- (jint)expandCodeWithByteArray:(IOSByteArray *)buf
                        withInt:(jint)offset
                      withShort:(jshort)code
                        withInt:(jint)skipHead {
  
#line 203
  if (offset == -2) {
    
#line 205
    if (skipHead == 1) skipHead = 0;
  }
  if (code == (jshort) (jint) 0xFFFF ||
#line 208
  skipHead == IOSIntArray_Get(nil_chk(strLen__), code))
#line 209
  return 0;
  
#line 211
  jint expandLen;
  jint codeLen = IOSIntArray_Get(nil_chk(strLen__), code) - skipHead;
  jint bufSpace = ((IOSByteArray *) nil_chk(buf))->size_ - offset;
  if (bufSpace > codeLen)
#line 215
  expandLen = codeLen;
  else
#line 217
  expandLen = bufSpace;
  
#line 219
  jint skipTail = codeLen - expandLen;
  
#line 221
  jint idx = offset + expandLen;
  
#line 225
  while ((idx > offset) && (code != (jshort) (jint) 0xFFFF)) {
    
#line 227
    if (--skipTail < 0) {
      
#line 229
      *IOSByteArray_GetRef(buf, --idx) = IOSByteArray_Get(nil_chk(strChr__), code);
    }
    code = IOSShortArray_Get(nil_chk(strNxt__), code);
  }
  
#line 234
  if (codeLen > expandLen)
#line 235
  return -expandLen;
  else
#line 237
  return expandLen;
}


#line 240
- (void)dumpWithJavaIoPrintStream:(JavaIoPrintStream *)outArg {
  
#line 242
  jint i;
  for (i = 258; i < numStrings__; ++i)
#line 244
  [((JavaIoPrintStream *) nil_chk(outArg)) printlnWithNSString:JreStrcat("$I$S$$$$", @" strNxt_[", i, @"] = ", IOSShortArray_Get(nil_chk(strNxt__), i), @" strChr_ ",
#line 245
  [JavaLangInteger toHexStringWithInt:IOSByteArray_Get(nil_chk(strChr__), i) & (jint) 0xFF], @" strLen_ ",
#line 246
  [JavaLangInteger toHexStringWithInt:IOSIntArray_Get(nil_chk(strLen__), i)])];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfCodecLZWStringTable *)other {
  [super copyAllFieldsTo:other];
  other->numStrings__ = numStrings__;
  other->strChr__ = strChr__;
  other->strHsh__ = strHsh__;
  other->strLen__ = strLen__;
  other->strNxt__ = strNxt__;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LZWStringTable", NULL, 0x1, NULL },
    { "AddCharStringWithShort:withByte:", "AddCharString", "I", 0x1, NULL },
    { "FindCharStringWithShort:withByte:", "FindCharString", "S", 0x1, NULL },
    { "ClearTableWithInt:", "ClearTable", "V", 0x1, NULL },
    { "HashWithShort:withByte:", "Hash", "I", 0x9, NULL },
    { "expandCodeWithByteArray:withInt:withShort:withInt:", "expandCode", "I", 0x1, NULL },
    { "dumpWithJavaIoPrintStream:", "dump", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "RES_CODES_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecLZWStringTable_RES_CODES },
    { "HASH_FREE_", NULL, 0x1a, "S", NULL, .constantValue.asShort = ComItextpdfTextPdfCodecLZWStringTable_HASH_FREE },
    { "NEXT_FIRST_", NULL, 0x1a, "S", NULL, .constantValue.asShort = ComItextpdfTextPdfCodecLZWStringTable_NEXT_FIRST },
    { "MAXBITS_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecLZWStringTable_MAXBITS },
    { "MAXSTR_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfCodecLZWStringTable_MAXSTR },
    { "HASHSIZE_", NULL, 0x1a, "S", NULL, .constantValue.asShort = ComItextpdfTextPdfCodecLZWStringTable_HASHSIZE },
    { "HASHSTEP_", NULL, 0x1a, "S", NULL, .constantValue.asShort = ComItextpdfTextPdfCodecLZWStringTable_HASHSTEP },
    { "strChr__", NULL, 0x0, "[B", NULL,  },
    { "strNxt__", NULL, 0x0, "[S", NULL,  },
    { "strHsh__", NULL, 0x0, "[S", NULL,  },
    { "numStrings__", NULL, 0x0, "S", NULL,  },
    { "strLen__", NULL, 0x0, "[I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCodecLZWStringTable = { "LZWStringTable", "com.itextpdf.text.pdf.codec", NULL, 0x1, 7, methods, 12, fields, 0, NULL};
  return &_ComItextpdfTextPdfCodecLZWStringTable;
}

@end
