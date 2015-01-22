//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/TabStop.java
//

#ifndef _ComItextpdfTextTabStop_H_
#define _ComItextpdfTextTabStop_H_

@class ComItextpdfTextTabStop_AlignmentEnum;
@protocol ComItextpdfTextPdfDrawDrawInterface;

#import "JreEmulation.h"
#include "java/lang/Enum.h"

@interface ComItextpdfTextTabStop : NSObject {
 @public
  jfloat position_;
  ComItextpdfTextTabStop_AlignmentEnum *alignment_;
  id<ComItextpdfTextPdfDrawDrawInterface> leader_;
  jchar anchorChar_;
}

+ (ComItextpdfTextTabStop *)newInstanceWithFloat:(jfloat)currentPosition
                                       withFloat:(jfloat)tabInterval OBJC_METHOD_FAMILY_NONE;

- (instancetype)initWithFloat:(jfloat)position;

- (instancetype)initWithFloat:(jfloat)position
withComItextpdfTextPdfDrawDrawInterface:(id<ComItextpdfTextPdfDrawDrawInterface>)leader;

- (instancetype)initWithFloat:(jfloat)position
withComItextpdfTextTabStop_AlignmentEnum:(ComItextpdfTextTabStop_AlignmentEnum *)alignment;

- (instancetype)initWithFloat:(jfloat)position
withComItextpdfTextTabStop_AlignmentEnum:(ComItextpdfTextTabStop_AlignmentEnum *)alignment
                     withChar:(jchar)anchorChar;

- (instancetype)initWithFloat:(jfloat)position
withComItextpdfTextPdfDrawDrawInterface:(id<ComItextpdfTextPdfDrawDrawInterface>)leader
withComItextpdfTextTabStop_AlignmentEnum:(ComItextpdfTextTabStop_AlignmentEnum *)alignment;

- (instancetype)initWithFloat:(jfloat)position
withComItextpdfTextPdfDrawDrawInterface:(id<ComItextpdfTextPdfDrawDrawInterface>)leader
withComItextpdfTextTabStop_AlignmentEnum:(ComItextpdfTextTabStop_AlignmentEnum *)alignment
                     withChar:(jchar)anchorChar;

- (instancetype)initWithComItextpdfTextTabStop:(ComItextpdfTextTabStop *)tabStop;

- (jfloat)getPosition;

- (void)setPositionWithFloat:(jfloat)position;

- (ComItextpdfTextTabStop_AlignmentEnum *)getAlignment;

- (void)setAlignmentWithComItextpdfTextTabStop_AlignmentEnum:(ComItextpdfTextTabStop_AlignmentEnum *)alignment;

- (id<ComItextpdfTextPdfDrawDrawInterface>)getLeader;

- (void)setLeaderWithComItextpdfTextPdfDrawDrawInterface:(id<ComItextpdfTextPdfDrawDrawInterface>)leader;

- (jchar)getAnchorChar;

- (void)setAnchorCharWithChar:(jchar)anchorChar;

- (jfloat)getPositionWithFloat:(jfloat)tabPosition
                     withFloat:(jfloat)currentPosition
                     withFloat:(jfloat)anchorPosition;

- (void)copyAllFieldsTo:(ComItextpdfTextTabStop *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextTabStop_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextTabStop, alignment_, ComItextpdfTextTabStop_AlignmentEnum *)
J2OBJC_FIELD_SETTER(ComItextpdfTextTabStop, leader_, id<ComItextpdfTextPdfDrawDrawInterface>)

typedef enum {
  ComItextpdfTextTabStop_Alignment_LEFT = 0,
  ComItextpdfTextTabStop_Alignment_RIGHT = 1,
  ComItextpdfTextTabStop_Alignment_CENTER = 2,
  ComItextpdfTextTabStop_Alignment_ANCHOR = 3,
} ComItextpdfTextTabStop_Alignment;

@interface ComItextpdfTextTabStop_AlignmentEnum : JavaLangEnum < NSCopying > {
}

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ComItextpdfTextTabStop_AlignmentEnum_values();

+ (ComItextpdfTextTabStop_AlignmentEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT ComItextpdfTextTabStop_AlignmentEnum *ComItextpdfTextTabStop_AlignmentEnum_valueOfWithNSString_(NSString *name);- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextTabStop_AlignmentEnum_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextTabStop_AlignmentEnum)

FOUNDATION_EXPORT ComItextpdfTextTabStop_AlignmentEnum *ComItextpdfTextTabStop_AlignmentEnum_values_[];

#define ComItextpdfTextTabStop_AlignmentEnum_LEFT ComItextpdfTextTabStop_AlignmentEnum_values_[ComItextpdfTextTabStop_Alignment_LEFT]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextTabStop_AlignmentEnum, LEFT, ComItextpdfTextTabStop_AlignmentEnum *)

#define ComItextpdfTextTabStop_AlignmentEnum_RIGHT ComItextpdfTextTabStop_AlignmentEnum_values_[ComItextpdfTextTabStop_Alignment_RIGHT]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextTabStop_AlignmentEnum, RIGHT, ComItextpdfTextTabStop_AlignmentEnum *)

#define ComItextpdfTextTabStop_AlignmentEnum_CENTER ComItextpdfTextTabStop_AlignmentEnum_values_[ComItextpdfTextTabStop_Alignment_CENTER]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextTabStop_AlignmentEnum, CENTER, ComItextpdfTextTabStop_AlignmentEnum *)

#define ComItextpdfTextTabStop_AlignmentEnum_ANCHOR ComItextpdfTextTabStop_AlignmentEnum_values_[ComItextpdfTextTabStop_Alignment_ANCHOR]
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextTabStop_AlignmentEnum, ANCHOR, ComItextpdfTextTabStop_AlignmentEnum *)

#endif // _ComItextpdfTextTabStop_H_