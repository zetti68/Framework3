//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/FlatteningPathIterator.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/FlatteningPathIterator.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/awt/geom/CubicCurve2D.h"
#include "com/itextpdf/awt/geom/FlatteningPathIterator.h"
#include "com/itextpdf/awt/geom/PathIterator.h"
#include "com/itextpdf/awt/geom/QuadCurve2D.h"
#include "com/itextpdf/awt/geom/misc/Messages.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "java/util/NoSuchElementException.h"


#line 30
@implementation ComItextpdfAwtGeomFlatteningPathIterator


#line 112
- (instancetype)initWithComItextpdfAwtGeomPathIterator:(id<ComItextpdfAwtGeomPathIterator>)path
                                            withDouble:(jdouble)flatness {
  return
#line 113
  [self initComItextpdfAwtGeomFlatteningPathIteratorWithComItextpdfAwtGeomPathIterator:path withDouble:flatness withInt:ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_LIMIT];
}


#line 116
- (instancetype)initComItextpdfAwtGeomFlatteningPathIteratorWithComItextpdfAwtGeomPathIterator:(id<ComItextpdfAwtGeomPathIterator>)path
                                                                                    withDouble:(jdouble)flatness
                                                                                       withInt:(jint)limit {
  if (self = [super init]) {
    bufEmpty_ =
#line 80
    YES;
    coords_ = [IOSDoubleArray arrayWithLength:
#line 110
    6];
    
#line 117
    if (flatness < 0.0) {
      
#line 119
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfAwtGeomMiscMessages getStringWithNSString:@"awt.206"]];
    }
    
#line 121
    if (limit < 0) {
      
#line 123
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[ComItextpdfAwtGeomMiscMessages getStringWithNSString:@"awt.207"]];
    }
    
#line 125
    if (path == nil) {
      
#line 127
      @throw [[JavaLangNullPointerException alloc] initWithNSString:[ComItextpdfAwtGeomMiscMessages getStringWithNSString:@"awt.208"]];
    }
    
#line 129
    self->p_ = path;
    
#line 130
    self->flatness_ = flatness;
    
#line 131
    self->flatness2_ = flatness * flatness;
    
#line 132
    self->bufLimit_ = limit;
    
#line 133
    self->bufSize_ = [JavaLangMath minWithInt:bufLimit_ withInt:ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_SIZE];
    
#line 134
    self->buf_ = [IOSDoubleArray arrayWithLength:bufSize_];
    
#line 135
    self->bufIndex_ = bufSize_;
  }
  return self;
}

- (instancetype)initWithComItextpdfAwtGeomPathIterator:(id<ComItextpdfAwtGeomPathIterator>)path
                                            withDouble:(jdouble)flatness
                                               withInt:(jint)limit {
  return [self initComItextpdfAwtGeomFlatteningPathIteratorWithComItextpdfAwtGeomPathIterator:
#line 116
path withDouble:flatness withInt:limit];
}


#line 138
- (jdouble)getFlatness {
  
#line 139
  return flatness_;
}


#line 142
- (jint)getRecursionLimit {
  
#line 143
  return bufLimit_;
}


#line 146
- (jint)getWindingRule {
  
#line 147
  return [((id<ComItextpdfAwtGeomPathIterator>) nil_chk(p_)) getWindingRule];
}


#line 150
- (jboolean)isDone {
  
#line 151
  return bufEmpty_ && [((id<ComItextpdfAwtGeomPathIterator>) nil_chk(p_)) isDone];
}


#line 162
- (void)evaluate {
  
#line 163
  if (bufEmpty_) {
    bufType_ = [((id<ComItextpdfAwtGeomPathIterator>) nil_chk(p_)) currentSegmentWithDoubleArray:coords_];
  }
  
#line 167
  switch (bufType_) {
    case ComItextpdfAwtGeomPathIterator_SEG_MOVETO:
    case ComItextpdfAwtGeomPathIterator_SEG_LINETO:
    px_ = IOSDoubleArray_Get(nil_chk(coords_), 0);
    py_ = IOSDoubleArray_Get(coords_, 1);
    break;
    case ComItextpdfAwtGeomPathIterator_SEG_QUADTO:
    if (bufEmpty_) {
      bufIndex_ -= 6;
      *IOSDoubleArray_GetRef(nil_chk(buf_), bufIndex_ + 0) = px_;
      *IOSDoubleArray_GetRef(buf_, bufIndex_ + 1) = py_;
      [JavaLangSystem arraycopyWithId:coords_ withInt:0 withId:buf_ withInt:bufIndex_ + 2 withInt:4];
      bufSubdiv_ = 0;
    }
    
#line 182
    while (bufSubdiv_ < bufLimit_) {
      if ([ComItextpdfAwtGeomQuadCurve2D getFlatnessSqWithDoubleArray:buf_ withInt:bufIndex_] < flatness2_) {
        break;
      }
      
#line 188
      if (bufIndex_ <= 4) {
        IOSDoubleArray *tmp = [IOSDoubleArray arrayWithLength:bufSize_ + ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_CAPACITY];
        [JavaLangSystem arraycopyWithId:
#line 191
        buf_ withInt:bufIndex_ withId:
#line 192
        tmp withInt:bufIndex_ + ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_CAPACITY withInt:
#line 193
        bufSize_ - bufIndex_];
        buf_ = tmp;
        bufSize_ += ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_CAPACITY;
        bufIndex_ += ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_CAPACITY;
      }
      
#line 199
      [ComItextpdfAwtGeomQuadCurve2D subdivideWithDoubleArray:buf_ withInt:bufIndex_ withDoubleArray:buf_ withInt:bufIndex_ - 4 withDoubleArray:buf_ withInt:bufIndex_];
      
#line 201
      bufIndex_ -= 4;
      bufSubdiv_++;
    }
    
#line 205
    bufIndex_ += 4;
    px_ = IOSDoubleArray_Get(nil_chk(buf_), bufIndex_);
    py_ = IOSDoubleArray_Get(buf_, bufIndex_ + 1);
    
#line 209
    bufEmpty_ = (bufIndex_ == bufSize_ - 2);
    if (bufEmpty_) {
      bufIndex_ = bufSize_;
      bufType_ = ComItextpdfAwtGeomPathIterator_SEG_LINETO;
    }
    break;
    case ComItextpdfAwtGeomPathIterator_SEG_CUBICTO:
    if (bufEmpty_) {
      bufIndex_ -= 8;
      *IOSDoubleArray_GetRef(nil_chk(buf_), bufIndex_ + 0) = px_;
      *IOSDoubleArray_GetRef(buf_, bufIndex_ + 1) = py_;
      [JavaLangSystem arraycopyWithId:coords_ withInt:0 withId:buf_ withInt:bufIndex_ + 2 withInt:6];
      bufSubdiv_ = 0;
    }
    
#line 224
    while (bufSubdiv_ < bufLimit_) {
      if ([ComItextpdfAwtGeomCubicCurve2D getFlatnessSqWithDoubleArray:buf_ withInt:bufIndex_] < flatness2_) {
        break;
      }
      
#line 230
      if (bufIndex_ <= 6) {
        IOSDoubleArray *tmp = [IOSDoubleArray arrayWithLength:bufSize_ + ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_CAPACITY];
        [JavaLangSystem arraycopyWithId:
#line 233
        buf_ withInt:bufIndex_ withId:
#line 234
        tmp withInt:bufIndex_ + ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_CAPACITY withInt:
#line 235
        bufSize_ - bufIndex_];
        buf_ = tmp;
        bufSize_ += ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_CAPACITY;
        bufIndex_ += ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_CAPACITY;
      }
      
#line 241
      [ComItextpdfAwtGeomCubicCurve2D subdivideWithDoubleArray:buf_ withInt:bufIndex_ withDoubleArray:buf_ withInt:bufIndex_ - 6 withDoubleArray:buf_ withInt:bufIndex_];
      
#line 243
      bufIndex_ -= 6;
      bufSubdiv_++;
    }
    
#line 247
    bufIndex_ += 6;
    px_ = IOSDoubleArray_Get(nil_chk(buf_), bufIndex_);
    py_ = IOSDoubleArray_Get(buf_, bufIndex_ + 1);
    
#line 251
    bufEmpty_ = (bufIndex_ == bufSize_ - 2);
    if (bufEmpty_) {
      bufIndex_ = bufSize_;
      bufType_ = ComItextpdfAwtGeomPathIterator_SEG_LINETO;
    }
    break;
  }
}


#line 261
- (void)next {
  
#line 262
  if (bufEmpty_) {
    [((id<ComItextpdfAwtGeomPathIterator>) nil_chk(p_)) next];
  }
}


#line 267
- (jint)currentSegmentWithFloatArray:(IOSFloatArray *)coords {
  
#line 268
  if ([self isDone]) {
    
#line 270
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:[ComItextpdfAwtGeomMiscMessages getStringWithNSString:@"awt.4Bx"]];
  }
  [self evaluate];
  jint type = bufType_;
  if (type != ComItextpdfAwtGeomPathIterator_SEG_CLOSE) {
    *IOSFloatArray_GetRef(nil_chk(coords), 0) = (jfloat) px_;
    *IOSFloatArray_GetRef(coords, 1) = (jfloat) py_;
    if (type != ComItextpdfAwtGeomPathIterator_SEG_MOVETO) {
      type = ComItextpdfAwtGeomPathIterator_SEG_LINETO;
    }
  }
  return type;
}


#line 284
- (jint)currentSegmentWithDoubleArray:(IOSDoubleArray *)coords {
  
#line 285
  if ([self isDone]) {
    
#line 287
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:[ComItextpdfAwtGeomMiscMessages getStringWithNSString:@"awt.4B"]];
  }
  [self evaluate];
  jint type = bufType_;
  if (type != ComItextpdfAwtGeomPathIterator_SEG_CLOSE) {
    *IOSDoubleArray_GetRef(nil_chk(coords), 0) = px_;
    *IOSDoubleArray_GetRef(coords, 1) = py_;
    if (type != ComItextpdfAwtGeomPathIterator_SEG_MOVETO) {
      type = ComItextpdfAwtGeomPathIterator_SEG_LINETO;
    }
  }
  return type;
}

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomFlatteningPathIterator *)other {
  [super copyAllFieldsTo:other];
  other->buf_ = buf_;
  other->bufEmpty_ = bufEmpty_;
  other->bufIndex_ = bufIndex_;
  other->bufLimit_ = bufLimit_;
  other->bufSize_ = bufSize_;
  other->bufSubdiv_ = bufSubdiv_;
  other->bufType_ = bufType_;
  other->coords_ = coords_;
  other->flatness_ = flatness_;
  other->flatness2_ = flatness2_;
  other->p_ = p_;
  other->px_ = px_;
  other->py_ = py_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfAwtGeomPathIterator:withDouble:", "FlatteningPathIterator", NULL, 0x1, NULL },
    { "initWithComItextpdfAwtGeomPathIterator:withDouble:withInt:", "FlatteningPathIterator", NULL, 0x1, NULL },
    { "getFlatness", NULL, "D", 0x1, NULL },
    { "getRecursionLimit", NULL, "I", 0x1, NULL },
    { "getWindingRule", NULL, "I", 0x1, NULL },
    { "isDone", NULL, "Z", 0x1, NULL },
    { "evaluate", NULL, "V", 0x0, NULL },
    { "next", NULL, "V", 0x1, NULL },
    { "currentSegmentWithFloatArray:", "currentSegment", "I", 0x1, NULL },
    { "currentSegmentWithDoubleArray:", "currentSegment", "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BUFFER_SIZE_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_SIZE },
    { "BUFFER_LIMIT_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_LIMIT },
    { "BUFFER_CAPACITY_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfAwtGeomFlatteningPathIterator_BUFFER_CAPACITY },
    { "bufType_", NULL, 0x0, "I", NULL,  },
    { "bufLimit_", NULL, 0x0, "I", NULL,  },
    { "bufSize_", NULL, 0x0, "I", NULL,  },
    { "bufIndex_", NULL, 0x0, "I", NULL,  },
    { "bufSubdiv_", NULL, 0x0, "I", NULL,  },
    { "buf_", NULL, 0x0, "[D", NULL,  },
    { "bufEmpty_", NULL, 0x0, "Z", NULL,  },
    { "p_", NULL, 0x0, "Lcom.itextpdf.awt.geom.PathIterator;", NULL,  },
    { "flatness_", NULL, 0x0, "D", NULL,  },
    { "flatness2_", NULL, 0x0, "D", NULL,  },
    { "px_", NULL, 0x0, "D", NULL,  },
    { "py_", NULL, 0x0, "D", NULL,  },
    { "coords_", NULL, 0x0, "[D", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomFlatteningPathIterator = { "FlatteningPathIterator", "com.itextpdf.awt.geom", NULL, 0x1, 10, methods, 16, fields, 0, NULL};
  return &_ComItextpdfAwtGeomFlatteningPathIterator;
}

@end