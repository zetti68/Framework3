//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfTransition.java
//

#ifndef _ComItextpdfTextPdfPdfTransition_H_
#define _ComItextpdfTextPdfPdfTransition_H_

#include "J2ObjC_header.h"

@class ComItextpdfTextPdfPdfDictionary;

#define ComItextpdfTextPdfPdfTransition_SPLITVOUT 1
#define ComItextpdfTextPdfPdfTransition_SPLITHOUT 2
#define ComItextpdfTextPdfPdfTransition_SPLITVIN 3
#define ComItextpdfTextPdfPdfTransition_SPLITHIN 4
#define ComItextpdfTextPdfPdfTransition_BLINDV 5
#define ComItextpdfTextPdfPdfTransition_BLINDH 6
#define ComItextpdfTextPdfPdfTransition_INBOX 7
#define ComItextpdfTextPdfPdfTransition_OUTBOX 8
#define ComItextpdfTextPdfPdfTransition_LRWIPE 9
#define ComItextpdfTextPdfPdfTransition_RLWIPE 10
#define ComItextpdfTextPdfPdfTransition_BTWIPE 11
#define ComItextpdfTextPdfPdfTransition_TBWIPE 12
#define ComItextpdfTextPdfPdfTransition_DISSOLVE 13
#define ComItextpdfTextPdfPdfTransition_LRGLITTER 14
#define ComItextpdfTextPdfPdfTransition_TBGLITTER 15
#define ComItextpdfTextPdfPdfTransition_DGLITTER 16

@interface ComItextpdfTextPdfPdfTransition : NSObject {
 @public
  jint duration_;
  jint type_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)type;

- (instancetype)initWithInt:(jint)type
                    withInt:(jint)duration;

- (jint)getDuration;

- (ComItextpdfTextPdfPdfDictionary *)getTransitionDictionary;

- (jint)getType;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfTransition)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, SPLITVOUT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, SPLITHOUT, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, SPLITVIN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, SPLITHIN, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, BLINDV, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, BLINDH, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, INBOX, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, OUTBOX, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, LRWIPE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, RLWIPE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, BTWIPE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, TBWIPE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, DISSOLVE, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, LRGLITTER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, TBGLITTER, jint)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextPdfPdfTransition, DGLITTER, jint)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfTransition_init(ComItextpdfTextPdfPdfTransition *self);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfTransition *new_ComItextpdfTextPdfPdfTransition_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfTransition_initWithInt_(ComItextpdfTextPdfPdfTransition *self, jint type);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfTransition *new_ComItextpdfTextPdfPdfTransition_initWithInt_(jint type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfTransition_initWithInt_withInt_(ComItextpdfTextPdfPdfTransition *self, jint type, jint duration);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfTransition *new_ComItextpdfTextPdfPdfTransition_initWithInt_withInt_(jint type, jint duration) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfTransition)

#endif // _ComItextpdfTextPdfPdfTransition_H_
