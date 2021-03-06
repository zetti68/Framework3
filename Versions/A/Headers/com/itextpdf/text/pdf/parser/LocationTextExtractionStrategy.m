//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/LocationTextExtractionStrategy.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/parser/LocationTextExtractionStrategy.java"

#include "IOSClass.h"
#include "com/itextpdf/text/pdf/parser/ImageRenderInfo.h"
#include "com/itextpdf/text/pdf/parser/LineSegment.h"
#include "com/itextpdf/text/pdf/parser/LocationTextExtractionStrategy.h"
#include "com/itextpdf/text/pdf/parser/Matrix.h"
#include "com/itextpdf/text/pdf/parser/TextRenderInfo.h"
#include "com/itextpdf/text/pdf/parser/Vector.h"
#include "java/io/PrintStream.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"


#line 72
@implementation ComItextpdfTextPdfParserLocationTextExtractionStrategy

jboolean ComItextpdfTextPdfParserLocationTextExtractionStrategy_DUMP_STATE_ = 
#line 75
NO;


#line 83
- (instancetype)init {
  if (self = [super init]) {
    locationalResult_ =
#line 78
    [[JavaUtilArrayList alloc] init];
  }
  return self;
}


#line 89
- (void)beginTextBlock {
}


#line 95
- (void)endTextBlock {
}


#line 102
- (jboolean)startsWithSpaceWithNSString:(NSString *)str {
  
#line 103
  if (((jint) [((NSString *) nil_chk(str)) length]) == 0) return NO;
  return [str charAtWithInt:0] == ' ';
}


#line 111
- (jboolean)endsWithSpaceWithNSString:(NSString *)str {
  
#line 112
  if (((jint) [((NSString *) nil_chk(str)) length]) == 0) return NO;
  return [str charAtWithInt:((jint) [str length]) - 1] == ' ';
}


#line 123
- (id<JavaUtilList>)filterTextChunksWithJavaUtilList:(id<JavaUtilList>)textChunks
withComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter:(id<ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter>)filter {
  
#line 124
  if (filter == nil)
#line 125
  return textChunks;
  
#line 127
  id<JavaUtilList> filtered = [[JavaUtilArrayList alloc] init];
  for (ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk * __strong textChunk in nil_chk(textChunks)) {
    if ([((id<ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter>) nil_chk(filter)) acceptWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:textChunk])
#line 130
    [filtered addWithId:textChunk];
  }
  return filtered;
}


#line 145
- (jboolean)isChunkAtWordBoundaryWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:(ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *)chunk
                                 withComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:(ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *)previousChunk {
  
#line 146
  jfloat dist = [((ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *) nil_chk(chunk)) distanceFromEndOfWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:previousChunk];
  
#line 148
  if (dist < -[chunk getCharSpaceWidth] || dist > [chunk getCharSpaceWidth] / 2.0f)
#line 149
  return YES;
  
#line 151
  return NO;
}


#line 162
- (NSString *)getResultantTextWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter:(id<ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter>)chunkFilter {
  
#line 163
  if (ComItextpdfTextPdfParserLocationTextExtractionStrategy_DUMP_STATE_) [self dumpState];
  
#line 165
  id<JavaUtilList> filteredTextChunks = [self filterTextChunksWithJavaUtilList:locationalResult_ withComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter:chunkFilter];
  [JavaUtilCollections sortWithJavaUtilList:filteredTextChunks];
  
#line 168
  JavaLangStringBuffer *sb = [[JavaLangStringBuffer alloc] init];
  ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *lastChunk = nil;
  for (ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk * __strong chunk in nil_chk(filteredTextChunks)) {
    
#line 172
    if (lastChunk == nil) {
      (void) [sb appendWithNSString:((ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *) nil_chk(chunk))->text_];
    }
    else {
      
#line 175
      if ([((ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *) nil_chk(chunk)) sameLineWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:lastChunk]) {
        
#line 177
        if ([self isChunkAtWordBoundaryWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:chunk withComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:lastChunk] && ![self startsWithSpaceWithNSString:chunk->text_] && ![self endsWithSpaceWithNSString:lastChunk->text_])
#line 178
        (void) [sb appendWithChar:' '];
        
#line 180
        (void) [sb appendWithNSString:chunk->text_];
      }
      else {
        
#line 182
        (void) [sb appendWithChar:0x000a];
        (void) [sb appendWithNSString:chunk->text_];
      }
    }
    lastChunk = chunk;
  }
  
#line 189
  return [sb description];
}


#line 196
- (NSString *)getResultantText {
  
#line 198
  return [self getResultantTextWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter:nil];
}


#line 203
- (void)dumpState {
  
#line 204
  for (id<JavaUtilIterator> iterator = [((id<JavaUtilList>) nil_chk(locationalResult_)) iterator]; [((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]; ) {
    ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *location = (ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *) check_class_cast([iterator next], [ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk class]);
    
#line 207
    [((ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *) nil_chk(location)) printDiagnostics];
    
#line 209
    [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) println];
  }
}


#line 218
- (void)renderTextWithComItextpdfTextPdfParserTextRenderInfo:(ComItextpdfTextPdfParserTextRenderInfo *)renderInfo {
  
#line 219
  ComItextpdfTextPdfParserLineSegment *segment = [((ComItextpdfTextPdfParserTextRenderInfo *) nil_chk(renderInfo)) getBaseline];
  if ([renderInfo getRise] != 0) {
    ComItextpdfTextPdfParserMatrix *riseOffsetTransform = [[ComItextpdfTextPdfParserMatrix alloc] initWithFloat:0 withFloat:-[renderInfo getRise]];
    segment = [((ComItextpdfTextPdfParserLineSegment *) nil_chk(segment)) transformByWithComItextpdfTextPdfParserMatrix:riseOffsetTransform];
  }
  ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *location = [[ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk alloc] initWithNSString:[renderInfo getText] withComItextpdfTextPdfParserVector:[((ComItextpdfTextPdfParserLineSegment *) nil_chk(segment)) getStartPoint] withComItextpdfTextPdfParserVector:[segment getEndPoint] withFloat:[renderInfo getSingleSpaceWidth]];
  [((id<JavaUtilList>) nil_chk(locationalResult_)) addWithId:location];
}


#line 369
- (void)renderImageWithComItextpdfTextPdfParserImageRenderInfo:(ComItextpdfTextPdfParserImageRenderInfo *)renderInfo {
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserLocationTextExtractionStrategy *)other {
  [super copyAllFieldsTo:other];
  other->locationalResult_ = locationalResult_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LocationTextExtractionStrategy", NULL, 0x1, NULL },
    { "beginTextBlock", NULL, "V", 0x1, NULL },
    { "endTextBlock", NULL, "V", 0x1, NULL },
    { "startsWithSpaceWithNSString:", "startsWithSpace", "Z", 0x2, NULL },
    { "endsWithSpaceWithNSString:", "endsWithSpace", "Z", 0x2, NULL },
    { "filterTextChunksWithJavaUtilList:withComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter:", "filterTextChunks", "Ljava.util.List;", 0x2, NULL },
    { "isChunkAtWordBoundaryWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:withComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:", "isChunkAtWordBoundary", "Z", 0x4, NULL },
    { "getResultantTextWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter:", "getResultantText", "Ljava.lang.String;", 0x1, NULL },
    { "getResultantText", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "dumpState", NULL, "V", 0x2, NULL },
    { "renderTextWithComItextpdfTextPdfParserTextRenderInfo:", "renderText", "V", 0x1, NULL },
    { "renderImageWithComItextpdfTextPdfParserImageRenderInfo:", "renderImage", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DUMP_STATE_", NULL, 0x8, "Z", &ComItextpdfTextPdfParserLocationTextExtractionStrategy_DUMP_STATE_,  },
    { "locationalResult_", NULL, 0x12, "Ljava.util.List;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserLocationTextExtractionStrategy = { "LocationTextExtractionStrategy", "com.itextpdf.text.pdf.parser", NULL, 0x1, 12, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfParserLocationTextExtractionStrategy;
}

@end


#line 233
@implementation ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk


#line 254
- (instancetype)initWithNSString:(NSString *)string
withComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)startLocation
withComItextpdfTextPdfParserVector:(ComItextpdfTextPdfParserVector *)endLocation
                       withFloat:(jfloat)charSpaceWidth {
  if (self = [super init]) {
    
#line 255
    self->text_ = string;
    
#line 256
    self->startLocation_ = startLocation;
    
#line 257
    self->endLocation_ = endLocation;
    
#line 258
    self->charSpaceWidth_ = charSpaceWidth;
    
#line 260
    ComItextpdfTextPdfParserVector *oVector = [((ComItextpdfTextPdfParserVector *) nil_chk(endLocation)) subtractWithComItextpdfTextPdfParserVector:startLocation];
    
#line 261
    if ([((ComItextpdfTextPdfParserVector *) nil_chk(oVector)) length] == 0) {
      oVector = [[ComItextpdfTextPdfParserVector alloc] initWithFloat:1 withFloat:0 withFloat:0];
    }
    
#line 264
    orientationVector_ = [oVector normalize];
    
#line 265
    orientationMagnitude_ = J2ObjCFpToInt(([JavaLangMath atan2WithDouble:[((ComItextpdfTextPdfParserVector *) nil_chk(orientationVector_)) getWithInt:ComItextpdfTextPdfParserVector_I2] withDouble:[orientationVector_ getWithInt:ComItextpdfTextPdfParserVector_I1]] * 1000));
    
#line 270
    ComItextpdfTextPdfParserVector *origin = [[ComItextpdfTextPdfParserVector alloc] initWithFloat:0 withFloat:0 withFloat:1];
    
#line 271
    distPerpendicular_ = J2ObjCFpToInt([((ComItextpdfTextPdfParserVector *) nil_chk([((ComItextpdfTextPdfParserVector *) nil_chk(([((ComItextpdfTextPdfParserVector *) nil_chk(startLocation)) subtractWithComItextpdfTextPdfParserVector:origin]))) crossWithComItextpdfTextPdfParserVector:orientationVector_])) getWithInt:ComItextpdfTextPdfParserVector_I3]);
    
#line 273
    distParallelStart_ = [orientationVector_ dotWithComItextpdfTextPdfParserVector:startLocation];
    
#line 274
    distParallelEnd_ = [orientationVector_ dotWithComItextpdfTextPdfParserVector:endLocation];
  }
  return self;
}


#line 280
- (ComItextpdfTextPdfParserVector *)getStartLocation {
  
#line 281
  return startLocation_;
}

- (ComItextpdfTextPdfParserVector *)getEndLocation {
  
#line 287
  return endLocation_;
}


#line 293
- (NSString *)getText {
  
#line 294
  return text_;
}


#line 300
- (jfloat)getCharSpaceWidth {
  
#line 301
  return charSpaceWidth_;
}


#line 304
- (void)printDiagnostics {
  
#line 305
  [((JavaIoPrintStream *) nil_chk(JavaLangSystem_get_out_())) printlnWithNSString:JreStrcat("$@$@$$", @"Text (@", startLocation_, @" -> ", endLocation_, @"): ", text_)];
  [JavaLangSystem_get_out_() printlnWithNSString:JreStrcat("$I", @"orientationMagnitude: ", orientationMagnitude_)];
  [JavaLangSystem_get_out_() printlnWithNSString:JreStrcat("$I", @"distPerpendicular: ", distPerpendicular_)];
  [JavaLangSystem_get_out_() printlnWithNSString:JreStrcat("$F", @"distParallel: ", distParallelStart_)];
}


#line 315
- (jboolean)sameLineWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:(ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *)as {
  
#line 316
  if (orientationMagnitude_ != ((ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *) nil_chk(as))->orientationMagnitude_) return NO;
  if (distPerpendicular_ != as->distPerpendicular_) return NO;
  return YES;
}


#line 329
- (jfloat)distanceFromEndOfWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:(ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *)other {
  
#line 330
  jfloat distance = distParallelStart_ - ((ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *) nil_chk(other))->distParallelEnd_;
  return distance;
}


#line 338
- (jint)compareToWithId:(ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *)rhs {
  if (rhs != nil && ![rhs isKindOfClass:[ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk class]]) {
    @throw [[JavaLangClassCastException alloc] init];
  }
  if (self == rhs) return 0;
  
#line 341
  jint rslt;
  rslt = [ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk compareIntsWithInt:orientationMagnitude_ withInt:((ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *) nil_chk(rhs))->orientationMagnitude_];
  if (rslt != 0) return rslt;
  
#line 345
  rslt = [ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk compareIntsWithInt:distPerpendicular_ withInt:rhs->distPerpendicular_];
  if (rslt != 0) return rslt;
  
#line 348
  return [JavaLangFloat compareWithFloat:distParallelStart_ withFloat:rhs->distParallelStart_];
}

+ (jint)compareIntsWithInt:(jint)int1
                   withInt:(jint)int2 {
  
#line 358
  return int1 == int2 ? 0 : int1 < int2 ? -1 : 1;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk *)other {
  [super copyAllFieldsTo:other];
  other->charSpaceWidth_ = charSpaceWidth_;
  other->distParallelEnd_ = distParallelEnd_;
  other->distParallelStart_ = distParallelStart_;
  other->distPerpendicular_ = distPerpendicular_;
  other->endLocation_ = endLocation_;
  other->orientationMagnitude_ = orientationMagnitude_;
  other->orientationVector_ = orientationVector_;
  other->startLocation_ = startLocation_;
  other->text_ = text_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withComItextpdfTextPdfParserVector:withComItextpdfTextPdfParserVector:withFloat:", "TextChunk", NULL, 0x1, NULL },
    { "getStartLocation", NULL, "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "getEndLocation", NULL, "Lcom.itextpdf.text.pdf.parser.Vector;", 0x1, NULL },
    { "getText", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getCharSpaceWidth", NULL, "F", 0x1, NULL },
    { "printDiagnostics", NULL, "V", 0x2, NULL },
    { "sameLineWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:", "sameLine", "Z", 0x1, NULL },
    { "distanceFromEndOfWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:", "distanceFromEndOf", "F", 0x1, NULL },
    { "compareToWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:", "compareTo", "I", 0x1, NULL },
    { "compareIntsWithInt:withInt:", "compareInts", "I", 0xa, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "text_", NULL, 0x12, "Ljava.lang.String;", NULL,  },
    { "startLocation_", NULL, 0x12, "Lcom.itextpdf.text.pdf.parser.Vector;", NULL,  },
    { "endLocation_", NULL, 0x12, "Lcom.itextpdf.text.pdf.parser.Vector;", NULL,  },
    { "orientationVector_", NULL, 0x12, "Lcom.itextpdf.text.pdf.parser.Vector;", NULL,  },
    { "orientationMagnitude_", NULL, 0x12, "I", NULL,  },
    { "distPerpendicular_", NULL, 0x12, "I", NULL,  },
    { "distParallelStart_", NULL, 0x12, "F", NULL,  },
    { "distParallelEnd_", NULL, 0x12, "F", NULL,  },
    { "charSpaceWidth_", NULL, 0x12, "F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk = { "TextChunk", "com.itextpdf.text.pdf.parser", "LocationTextExtractionStrategy", 0x9, 10, methods, 9, fields, 0, NULL};
  return &_ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk;
}

@end

@interface ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter : NSObject
@end

@implementation ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "acceptWithComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunk:", "accept", "Z", 0x401, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter = { "TextChunkFilter", "com.itextpdf.text.pdf.parser", "LocationTextExtractionStrategy", 0x209, 1, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfParserLocationTextExtractionStrategy_TextChunkFilter;
}

@end

