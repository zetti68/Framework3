//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/TernaryTree.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/hyphenation/TernaryTree.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/hyphenation/CharVector.h"
#include "com/itextpdf/text/pdf/hyphenation/TernaryTree.h"
#include "java/io/PrintStream.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/System.h"
#include "java/util/Enumeration.h"
#include "java/util/Stack.h"


#line 65
@implementation ComItextpdfTextPdfHyphenationTernaryTree


#line 115
- (instancetype)init {
  if (self = [super init]) {
    
#line 116
    [self init__];
  }
  return self;
}


#line 119
- (void)init__ {
  
#line 120
  root_ = 0;
  freenode_ = 1;
  length_ = 0;
  lo_ = [IOSCharArray arrayWithLength:ComItextpdfTextPdfHyphenationTernaryTree_BLOCK_SIZE];
  hi_ = [IOSCharArray arrayWithLength:ComItextpdfTextPdfHyphenationTernaryTree_BLOCK_SIZE];
  eq_ = [IOSCharArray arrayWithLength:ComItextpdfTextPdfHyphenationTernaryTree_BLOCK_SIZE];
  sc_ = [IOSCharArray arrayWithLength:ComItextpdfTextPdfHyphenationTernaryTree_BLOCK_SIZE];
  kv_ = [[ComItextpdfTextPdfHyphenationCharVector alloc] init];
}


#line 138
- (void)insertWithNSString:(NSString *)key
                  withChar:(jchar)val {
  
#line 140
  jint len = ((jint) [((NSString *) nil_chk(key)) length]) +
#line 141
  1;
  if (freenode_ + len > ((IOSCharArray *) nil_chk(eq_))->size_) {
    [self redimNodeArraysWithInt:eq_->size_ + ComItextpdfTextPdfHyphenationTernaryTree_BLOCK_SIZE];
  }
  IOSCharArray *strkey = [IOSCharArray arrayWithLength:len--];
  [key getChars:0 sourceEnd:len destination:strkey destinationBegin:0];
  *IOSCharArray_GetRef(strkey, len) = 0;
  root_ = [self insertWithChar:root_ withCharArray:strkey withInt:0 withChar:val];
}


#line 151
- (void)insertWithCharArray:(IOSCharArray *)key
                    withInt:(jint)start
                   withChar:(jchar)val {
  
#line 152
  jint len = [ComItextpdfTextPdfHyphenationTernaryTree strlenWithCharArray:key] + 1;
  if (freenode_ + len > ((IOSCharArray *) nil_chk(eq_))->size_) {
    [self redimNodeArraysWithInt:eq_->size_ + ComItextpdfTextPdfHyphenationTernaryTree_BLOCK_SIZE];
  }
  root_ = [self insertWithChar:root_ withCharArray:key withInt:start withChar:val];
}


#line 162
- (jchar)insertWithChar:(jchar)p
          withCharArray:(IOSCharArray *)key
                withInt:(jint)start
               withChar:(jchar)val {
  jint len = [ComItextpdfTextPdfHyphenationTernaryTree strlenWithCharArray:key withInt:start];
  if (p == 0) {
    
#line 168
    p = freenode_++;
    *IOSCharArray_GetRef(nil_chk(eq_), p) = val;
    length_++;
    *IOSCharArray_GetRef(nil_chk(hi_), p) = 0;
    if (len > 0) {
      *IOSCharArray_GetRef(nil_chk(sc_), p) = (jint) 0xFFFF;
      *IOSCharArray_GetRef(nil_chk(lo_), p) = (jchar) [((ComItextpdfTextPdfHyphenationCharVector *) nil_chk(kv_)) alloc__WithInt:len +
#line 175
      1];
      [ComItextpdfTextPdfHyphenationTernaryTree strcpyWithCharArray:[kv_ getArray] withInt:IOSCharArray_Get(lo_, p) withCharArray:key withInt:start];
    }
    else {
      
#line 178
      *IOSCharArray_GetRef(nil_chk(sc_), p) = 0;
      *IOSCharArray_GetRef(nil_chk(lo_), p) = 0;
    }
    return p;
  }
  
#line 184
  if (IOSCharArray_Get(nil_chk(sc_), p) == (jint) 0xFFFF) {
    
#line 188
    jchar pp = freenode_++;
    *IOSCharArray_GetRef(nil_chk(lo_), pp) = IOSCharArray_Get(lo_, p);
    *IOSCharArray_GetRef(nil_chk(eq_), pp) = IOSCharArray_Get(eq_, p);
    *IOSCharArray_GetRef(lo_, p) = 0;
    if (len > 0) {
      *IOSCharArray_GetRef(sc_, p) = [((ComItextpdfTextPdfHyphenationCharVector *) nil_chk(kv_)) getWithInt:IOSCharArray_Get(lo_, pp)];
      *IOSCharArray_GetRef(eq_, p) = pp;
      (*IOSCharArray_GetRef(lo_, pp))++;
      if ([kv_ getWithInt:IOSCharArray_Get(lo_, pp)] == 0) {
        
#line 198
        *IOSCharArray_GetRef(lo_, pp) = 0;
        *IOSCharArray_GetRef(sc_, pp) = 0;
        *IOSCharArray_GetRef(nil_chk(hi_), pp) = 0;
      }
      else {
        *IOSCharArray_GetRef(sc_, pp) = (jint) 0xFFFF;
      }
    }
    else {
      
#line 208
      *IOSCharArray_GetRef(sc_, pp) = (jint) 0xFFFF;
      *IOSCharArray_GetRef(nil_chk(hi_), p) = pp;
      *IOSCharArray_GetRef(sc_, p) = 0;
      *IOSCharArray_GetRef(eq_, p) = val;
      length_++;
      return p;
    }
  }
  jchar s = IOSCharArray_Get(nil_chk(key), start);
  if (s < IOSCharArray_Get(sc_, p)) {
    *IOSCharArray_GetRef(nil_chk(lo_), p) = [self insertWithChar:IOSCharArray_Get(lo_, p) withCharArray:key withInt:start withChar:val];
  }
  else
#line 219
  if (s == IOSCharArray_Get(sc_, p)) {
    if (s != 0) {
      *IOSCharArray_GetRef(nil_chk(eq_), p) = [self insertWithChar:IOSCharArray_Get(eq_, p) withCharArray:key withInt:start + 1 withChar:val];
    }
    else {
      *IOSCharArray_GetRef(nil_chk(eq_), p) = val;
    }
  }
  else {
    
#line 227
    *IOSCharArray_GetRef(nil_chk(hi_), p) = [self insertWithChar:IOSCharArray_Get(hi_, p) withCharArray:key withInt:start withChar:val];
  }
  return p;
}


#line 235
+ (jint)strcmpWithCharArray:(IOSCharArray *)a
                    withInt:(jint)startA
              withCharArray:(IOSCharArray *)b
                    withInt:(jint)startB {
  
#line 236
  for (; IOSCharArray_Get(nil_chk(a), startA) == IOSCharArray_Get(nil_chk(b), startB); startA++, startB++) {
    if (IOSCharArray_Get(a, startA) == 0) {
      return 0;
    }
  }
  return IOSCharArray_Get(a, startA) - IOSCharArray_Get(b, startB);
}


#line 247
+ (jint)strcmpWithNSString:(NSString *)str
             withCharArray:(IOSCharArray *)a
                   withInt:(jint)start {
  
#line 248
  jint i, d, len = ((jint) [((NSString *) nil_chk(str)) length]);
  for (i = 0; i < len; i++) {
    d = [str charAtWithInt:i] - IOSCharArray_Get(nil_chk(a), start + i);
    if (d != 0) {
      return d;
    }
    if (IOSCharArray_Get(a, start + i) == 0) {
      return d;
    }
  }
  if (IOSCharArray_Get(nil_chk(a), start + i) != 0) {
    return -IOSCharArray_Get(a, start + i);
  }
  return 0;
}


#line 265
+ (void)strcpyWithCharArray:(IOSCharArray *)dst
                    withInt:(jint)di
              withCharArray:(IOSCharArray *)src
                    withInt:(jint)si {
  
#line 266
  while (IOSCharArray_Get(nil_chk(src), si) != 0) {
    *IOSCharArray_GetRef(nil_chk(dst), di++) = IOSCharArray_Get(src, si++);
  }
  *IOSCharArray_GetRef(nil_chk(dst), di) = 0;
}


#line 272
+ (jint)strlenWithCharArray:(IOSCharArray *)a
                    withInt:(jint)start {
  
#line 273
  jint len = 0;
  for (jint i = start; i < ((IOSCharArray *) nil_chk(a))->size_ && IOSCharArray_Get(a, i) != 0; i++) {
    len++;
  }
  return len;
}


#line 280
+ (jint)strlenWithCharArray:(IOSCharArray *)a {
  
#line 281
  return [ComItextpdfTextPdfHyphenationTernaryTree strlenWithCharArray:a withInt:0];
}


#line 284
- (jint)findWithNSString:(NSString *)key {
  
#line 285
  jint len = ((jint) [((NSString *) nil_chk(key)) length]);
  IOSCharArray *strkey = [IOSCharArray arrayWithLength:len + 1];
  [key getChars:0 sourceEnd:len destination:strkey destinationBegin:0];
  *IOSCharArray_GetRef(strkey, len) = 0;
  
#line 290
  return [self findWithCharArray:strkey withInt:0];
}


#line 293
- (jint)findWithCharArray:(IOSCharArray *)key
                  withInt:(jint)start {
  
#line 294
  jint d;
  jchar p = root_;
  jint i = start;
  jchar c;
  
#line 299
  while (p != 0) {
    if (IOSCharArray_Get(nil_chk(sc_), p) == (jint) 0xFFFF) {
      if ([ComItextpdfTextPdfHyphenationTernaryTree strcmpWithCharArray:key withInt:i withCharArray:[((ComItextpdfTextPdfHyphenationCharVector *) nil_chk(kv_)) getArray] withInt:IOSCharArray_Get(nil_chk(lo_), p)] == 0) {
        return IOSCharArray_Get(nil_chk(eq_), p);
      }
      else {
        
#line 304
        return -1;
      }
    }
    c = IOSCharArray_Get(nil_chk(key), i);
    d = c - IOSCharArray_Get(sc_, p);
    if (d == 0) {
      if (c == 0) {
        return IOSCharArray_Get(nil_chk(eq_), p);
      }
      i++;
      p = IOSCharArray_Get(nil_chk(eq_), p);
    }
    else
#line 315
    if (d < 0) {
      p = IOSCharArray_Get(nil_chk(lo_), p);
    }
    else {
      
#line 318
      p = IOSCharArray_Get(nil_chk(hi_), p);
    }
  }
  return -1;
}


#line 324
- (jboolean)knowsWithNSString:(NSString *)key {
  
#line 325
  return [self findWithNSString:key] >= 0;
}


#line 329
- (void)redimNodeArraysWithInt:(jint)newsize {
  jint len = newsize < ((IOSCharArray *) nil_chk(lo_))->size_ ? newsize : lo_->size_;
  IOSCharArray *na = [IOSCharArray arrayWithLength:newsize];
  [JavaLangSystem arraycopyWithId:lo_ withInt:0 withId:na withInt:0 withInt:len];
  lo_ = na;
  na = [IOSCharArray arrayWithLength:newsize];
  [JavaLangSystem arraycopyWithId:hi_ withInt:0 withId:na withInt:0 withInt:len];
  hi_ = na;
  na = [IOSCharArray arrayWithLength:newsize];
  [JavaLangSystem arraycopyWithId:eq_ withInt:0 withId:na withInt:0 withInt:len];
  eq_ = na;
  na = [IOSCharArray arrayWithLength:newsize];
  [JavaLangSystem arraycopyWithId:sc_ withInt:0 withId:na withInt:0 withInt:len];
  sc_ = na;
}

- (jint)size {
  
#line 346
  return length_;
}


#line 350
- (id)clone {
  ComItextpdfTextPdfHyphenationTernaryTree *t = [[ComItextpdfTextPdfHyphenationTernaryTree alloc] init];
  t->lo_ = [((IOSCharArray *) nil_chk(self->lo_)) clone];
  t->hi_ = [((IOSCharArray *) nil_chk(self->hi_)) clone];
  t->eq_ = [((IOSCharArray *) nil_chk(self->eq_)) clone];
  t->sc_ = [((IOSCharArray *) nil_chk(self->sc_)) clone];
  t->kv_ = (ComItextpdfTextPdfHyphenationCharVector *) check_class_cast([((ComItextpdfTextPdfHyphenationCharVector *) nil_chk(self->kv_)) clone], [ComItextpdfTextPdfHyphenationCharVector class]);
  t->root_ = self->root_;
  t->freenode_ = self->freenode_;
  t->length_ = self->length_;
  
#line 361
  return t;
}


#line 370
- (void)insertBalancedWithNSStringArray:(IOSObjectArray *)k
                          withCharArray:(IOSCharArray *)v
                                withInt:(jint)offset
                                withInt:(jint)n {
  
#line 371
  jint m;
  if (n < 1) {
    return;
  }
  m = RShift32(n, 1);
  
#line 377
  [self insertWithNSString:IOSObjectArray_Get(nil_chk(k), m + offset) withChar:IOSCharArray_Get(nil_chk(v), m + offset)];
  [self insertBalancedWithNSStringArray:k withCharArray:v withInt:offset withInt:m];
  
#line 380
  [self insertBalancedWithNSStringArray:k withCharArray:v withInt:offset + m + 1 withInt:n - m - 1];
}


#line 387
- (void)balance {
  jint i = 0, n = length_;
  IOSObjectArray *k = [IOSObjectArray arrayWithLength:n type:[IOSClass classWithClass:[NSString class]]];
  IOSCharArray *v = [IOSCharArray arrayWithLength:n];
  ComItextpdfTextPdfHyphenationTernaryTree_Iterator *iter = [[ComItextpdfTextPdfHyphenationTernaryTree_Iterator alloc] initWithComItextpdfTextPdfHyphenationTernaryTree:self];
  while ([iter hasMoreElements]) {
    *IOSCharArray_GetRef(v, i) = [iter getValue];
    IOSObjectArray_Set(k, i++, [iter nextElement]);
  }
  [self init__];
  [self insertBalancedWithNSStringArray:k withCharArray:v withInt:0 withInt:n];
}


#line 418
- (void)trimToSize {
  
#line 420
  [self balance];
  
#line 423
  [self redimNodeArraysWithInt:freenode_];
  
#line 426
  ComItextpdfTextPdfHyphenationCharVector *kx = [[ComItextpdfTextPdfHyphenationCharVector alloc] init];
  [kx alloc__WithInt:1];
  ComItextpdfTextPdfHyphenationTernaryTree *map = [[ComItextpdfTextPdfHyphenationTernaryTree alloc] init];
  [self compactWithComItextpdfTextPdfHyphenationCharVector:kx withComItextpdfTextPdfHyphenationTernaryTree:map withChar:root_];
  kv_ = kx;
  [kv_ trimToSize];
}


#line 434
- (void)compactWithComItextpdfTextPdfHyphenationCharVector:(ComItextpdfTextPdfHyphenationCharVector *)kx
              withComItextpdfTextPdfHyphenationTernaryTree:(ComItextpdfTextPdfHyphenationTernaryTree *)map
                                                  withChar:(jchar)p {
  jint k;
  if (p == 0) {
    return;
  }
  if (IOSCharArray_Get(nil_chk(sc_), p) == (jint) 0xFFFF) {
    k = [((ComItextpdfTextPdfHyphenationTernaryTree *) nil_chk(map)) findWithCharArray:[((ComItextpdfTextPdfHyphenationCharVector *) nil_chk(kv_)) getArray] withInt:IOSCharArray_Get(nil_chk(lo_), p)];
    if (k < 0) {
      k = [((ComItextpdfTextPdfHyphenationCharVector *) nil_chk(kx)) alloc__WithInt:[ComItextpdfTextPdfHyphenationTernaryTree strlenWithCharArray:[kv_ getArray] withInt:IOSCharArray_Get(lo_, p)] + 1];
      [ComItextpdfTextPdfHyphenationTernaryTree strcpyWithCharArray:[kx getArray] withInt:k withCharArray:[kv_ getArray] withInt:IOSCharArray_Get(lo_, p)];
      [map insertWithCharArray:[kx getArray] withInt:k withChar:(jchar) k];
    }
    *IOSCharArray_GetRef(lo_, p) = (jchar) k;
  }
  else {
    
#line 448
    [self compactWithComItextpdfTextPdfHyphenationCharVector:kx withComItextpdfTextPdfHyphenationTernaryTree:map withChar:IOSCharArray_Get(nil_chk(lo_), p)];
    if (IOSCharArray_Get(sc_, p) != 0) {
      [self compactWithComItextpdfTextPdfHyphenationCharVector:kx withComItextpdfTextPdfHyphenationTernaryTree:map withChar:IOSCharArray_Get(nil_chk(eq_), p)];
    }
    [self compactWithComItextpdfTextPdfHyphenationCharVector:kx withComItextpdfTextPdfHyphenationTernaryTree:map withChar:IOSCharArray_Get(nil_chk(hi_), p)];
  }
}


#line 457
- (id<JavaUtilEnumeration>)keys {
  
#line 458
  return [[ComItextpdfTextPdfHyphenationTernaryTree_Iterator alloc] initWithComItextpdfTextPdfHyphenationTernaryTree:self];
}


#line 637
- (void)printStats {
  
#line 638
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$$", @"Number of keys = ", [JavaLangInteger toStringWithInt:length_])];
  [JavaLangSystem_get_out_() printlnWithNSString:JreStrcat("$$", @"Node count = ", [JavaLangInteger toStringWithInt:freenode_])];
  
#line 641
  [JavaLangSystem_get_out_() printlnWithNSString:JreStrcat("$$", @"Key Array length = ",
#line 642
  [JavaLangInteger toStringWithInt:[((ComItextpdfTextPdfHyphenationCharVector *) nil_chk(kv_)) length]])];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfHyphenationTernaryTree *)other {
  [super copyAllFieldsTo:other];
  other->eq_ = eq_;
  other->freenode_ = freenode_;
  other->hi_ = hi_;
  other->kv_ = kv_;
  other->length_ = length_;
  other->lo_ = lo_;
  other->root_ = root_;
  other->sc_ = sc_;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TernaryTree", NULL, 0x0, NULL },
    { "init__", "init", "V", 0x4, NULL },
    { "insertWithNSString:withChar:", "insert", "V", 0x1, NULL },
    { "insertWithCharArray:withInt:withChar:", "insert", "V", 0x1, NULL },
    { "insertWithChar:withCharArray:withInt:withChar:", "insert", "C", 0x2, NULL },
    { "strcmpWithCharArray:withInt:withCharArray:withInt:", "strcmp", "I", 0x9, NULL },
    { "strcmpWithNSString:withCharArray:withInt:", "strcmp", "I", 0x9, NULL },
    { "strcpyWithCharArray:withInt:withCharArray:withInt:", "strcpy", "V", 0x9, NULL },
    { "strlenWithCharArray:withInt:", "strlen", "I", 0x9, NULL },
    { "strlenWithCharArray:", "strlen", "I", 0x9, NULL },
    { "findWithNSString:", "find", "I", 0x1, NULL },
    { "findWithCharArray:withInt:", "find", "I", 0x1, NULL },
    { "knowsWithNSString:", "knows", "Z", 0x1, NULL },
    { "redimNodeArraysWithInt:", "redimNodeArrays", "V", 0x2, NULL },
    { "size", NULL, "I", 0x1, NULL },
    { "clone", NULL, "Ljava.lang.Object;", 0x1, NULL },
    { "insertBalancedWithNSStringArray:withCharArray:withInt:withInt:", "insertBalanced", "V", 0x4, NULL },
    { "balance", NULL, "V", 0x1, NULL },
    { "trimToSize", NULL, "V", 0x1, NULL },
    { "compactWithComItextpdfTextPdfHyphenationCharVector:withComItextpdfTextPdfHyphenationTernaryTree:withChar:", "compact", "V", 0x2, NULL },
    { "keys", NULL, "Ljava.util.Enumeration;", 0x1, NULL },
    { "printStats", NULL, "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextPdfHyphenationTernaryTree_serialVersionUID },
    { "lo_", NULL, 0x4, "[C", NULL,  },
    { "hi_", NULL, 0x4, "[C", NULL,  },
    { "eq_", NULL, 0x4, "[C", NULL,  },
    { "sc_", NULL, 0x4, "[C", NULL,  },
    { "kv_", NULL, 0x4, "Lcom.itextpdf.text.pdf.hyphenation.CharVector;", NULL,  },
    { "root_", NULL, 0x4, "C", NULL,  },
    { "freenode_", NULL, 0x4, "C", NULL,  },
    { "length_", NULL, 0x4, "I", NULL,  },
    { "BLOCK_SIZE_", NULL, 0x1c, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfHyphenationTernaryTree_BLOCK_SIZE },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfHyphenationTernaryTree = { "TernaryTree", "com.itextpdf.text.pdf.hyphenation", NULL, 0x1, 22, methods, 10, fields, 0, NULL};
  return &_ComItextpdfTextPdfHyphenationTernaryTree;
}

@end


#line 461
@implementation ComItextpdfTextPdfHyphenationTernaryTree_Iterator


#line 504
- (instancetype)initWithComItextpdfTextPdfHyphenationTernaryTree:(ComItextpdfTextPdfHyphenationTernaryTree *)outer$ {
  this$0_ = outer$;
  if (self = [super init]) {
    
#line 505
    cur_ = -1;
    
#line 506
    ns_ = [[JavaUtilStack alloc] init];
    
#line 507
    ks_ = [[JavaLangStringBuffer alloc] init];
    
#line 508
    [self rewind];
  }
  return self;
}


#line 511
- (void)rewind {
  
#line 512
  [((JavaUtilStack *) nil_chk(ns_)) removeAllElements];
  [((JavaLangStringBuffer *) nil_chk(ks_)) setLengthWithInt:0];
  cur_ = this$0_->root_;
  [self run];
}


#line 518
- (NSString *)nextElement {
  
#line 519
  NSString *res = curkey_;
  cur_ = [self up];
  [self run];
  return res;
}


#line 525
- (jchar)getValue {
  
#line 526
  if (cur_ >= 0) {
    return IOSCharArray_Get(nil_chk(this$0_->eq_), cur_);
  }
  return 0;
}


#line 532
- (jboolean)hasMoreElements {
  
#line 533
  return cur_ != -1;
}


#line 539
- (jint)up {
  
#line 540
  ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item *i = [[ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item alloc] initWithComItextpdfTextPdfHyphenationTernaryTree_Iterator:self];
  jint res = 0;
  
#line 543
  if ([((JavaUtilStack *) nil_chk(ns_)) empty]) {
    return -1;
  }
  
#line 547
  if (cur_ != 0 && IOSCharArray_Get(nil_chk(this$0_->sc_), cur_) == 0) {
    return IOSCharArray_Get(nil_chk(this$0_->lo_), cur_);
  }
  
#line 551
  jboolean climb = YES;
  
#line 553
  while (climb) {
    i = [ns_ pop];
    ((ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item *) nil_chk(i))->child_++;
    switch (i->child_) {
      case 1:
      if (IOSCharArray_Get(nil_chk(this$0_->sc_), i->parent_) != 0) {
        res = IOSCharArray_Get(nil_chk(this$0_->eq_), i->parent_);
        (void) [ns_ pushWithId:[i clone]];
        (void) [((JavaLangStringBuffer *) nil_chk(ks_)) appendWithChar:IOSCharArray_Get(this$0_->sc_, i->parent_)];
      }
      else {
        
#line 563
        i->child_++;
        (void) [ns_ pushWithId:[i clone]];
        res = IOSCharArray_Get(nil_chk(this$0_->hi_), i->parent_);
      }
      climb = NO;
      break;
      
#line 570
      case 2:
      res = IOSCharArray_Get(nil_chk(this$0_->hi_), i->parent_);
      (void) [ns_ pushWithId:[i clone]];
      if ([((JavaLangStringBuffer *) nil_chk(ks_)) sequenceLength] > 0) {
        [ks_ setLengthWithInt:[ks_ sequenceLength] - 1];
      }
      climb = NO;
      break;
      
#line 579
      default:
      if ([ns_ empty]) {
        return -1;
      }
      climb = YES;
      break;
    }
  }
  return res;
}


#line 593
- (jint)run {
  
#line 594
  if (cur_ == -1) {
    return -1;
  }
  
#line 598
  jboolean leaf = NO;
  while (YES) {
    
#line 601
    while (cur_ != 0) {
      if (IOSCharArray_Get(nil_chk(this$0_->sc_), cur_) == (jint) 0xFFFF) {
        leaf = YES;
        break;
      }
      (void) [((JavaUtilStack *) nil_chk(ns_)) pushWithId:[[ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item alloc] initWithComItextpdfTextPdfHyphenationTernaryTree_Iterator:self withChar:(jchar) cur_ withChar:0x0000]];
      if (IOSCharArray_Get(this$0_->sc_, cur_) == 0) {
        leaf = YES;
        break;
      }
      cur_ = IOSCharArray_Get(nil_chk(this$0_->lo_), cur_);
    }
    if (leaf) {
      break;
    }
    
#line 617
    cur_ = [self up];
    if (cur_ == -1) {
      return -1;
    }
  }
  
#line 624
  JavaLangStringBuffer *buf = [[JavaLangStringBuffer alloc] initWithNSString:[((JavaLangStringBuffer *) nil_chk(ks_)) description]];
  if (IOSCharArray_Get(nil_chk(this$0_->sc_), cur_) == (jint) 0xFFFF) {
    jint p = IOSCharArray_Get(nil_chk(this$0_->lo_), cur_);
    while ([((ComItextpdfTextPdfHyphenationCharVector *) nil_chk(this$0_->kv_)) getWithInt:p] != 0) {
      (void) [buf appendWithChar:[this$0_->kv_ getWithInt:p++]];
    }
  }
  curkey_ = [buf description];
  return 0;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfHyphenationTernaryTree_Iterator *)other {
  [super copyAllFieldsTo:other];
  other->cur_ = cur_;
  other->curkey_ = curkey_;
  other->ks_ = ks_;
  other->ns_ = ns_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfHyphenationTernaryTree:", "Iterator", NULL, 0x1, NULL },
    { "rewind", NULL, "V", 0x1, NULL },
    { "nextElement", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getValue", NULL, "C", 0x1, NULL },
    { "hasMoreElements", NULL, "Z", 0x1, NULL },
    { "up", NULL, "I", 0x2, NULL },
    { "run", NULL, "I", 0x2, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.itextpdf.text.pdf.hyphenation.TernaryTree;", NULL,  },
    { "cur_", NULL, 0x0, "I", NULL,  },
    { "curkey_", NULL, 0x0, "Ljava.lang.String;", NULL,  },
    { "ns_", NULL, 0x0, "Ljava.util.Stack;", NULL,  },
    { "ks_", NULL, 0x0, "Ljava.lang.StringBuffer;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfHyphenationTernaryTree_Iterator = { "Iterator", "com.itextpdf.text.pdf.hyphenation", "TernaryTree", 0x1, 7, methods, 5, fields, 0, NULL};
  return &_ComItextpdfTextPdfHyphenationTernaryTree_Iterator;
}

@end


#line 473
@implementation ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item


#line 477
- (instancetype)initWithComItextpdfTextPdfHyphenationTernaryTree_Iterator:(ComItextpdfTextPdfHyphenationTernaryTree_Iterator *)outer$ {
  this$0_ = outer$;
  if (self = [super init]) {
    
#line 478
    parent_ = 0;
    
#line 479
    child_ = 0;
  }
  return self;
}


#line 482
- (instancetype)initWithComItextpdfTextPdfHyphenationTernaryTree_Iterator:(ComItextpdfTextPdfHyphenationTernaryTree_Iterator *)outer$
                                                                 withChar:(jchar)p
                                                                 withChar:(jchar)c {
  this$0_ = outer$;
  if (self = [super init]) {
    
#line 483
    parent_ = p;
    
#line 484
    child_ = c;
  }
  return self;
}


#line 488
- (ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item *)clone {
  
#line 489
  return [[ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item alloc] initWithComItextpdfTextPdfHyphenationTernaryTree_Iterator:this$0_ withChar:parent_ withChar:child_];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item *)other {
  [super copyAllFieldsTo:other];
  other->child_ = child_;
  other->parent_ = parent_;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfHyphenationTernaryTree_Iterator:", "Item", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfHyphenationTernaryTree_Iterator:withChar:withChar:", "Item", NULL, 0x1, NULL },
    { "clone", NULL, "Lcom.itextpdf.text.pdf.hyphenation.TernaryTree$Iterator$Item;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.itextpdf.text.pdf.hyphenation.TernaryTree$Iterator;", NULL,  },
    { "parent_", NULL, 0x0, "C", NULL,  },
    { "child_", NULL, 0x0, "C", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item = { "Item", "com.itextpdf.text.pdf.hyphenation", "TernaryTree$Iterator", 0x2, 3, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfHyphenationTernaryTree_Iterator_Item;
}

@end
