//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/LongHashtable.java
//

#ifndef _ComItextpdfTextPdfLongHashtable_H_
#define _ComItextpdfTextPdfLongHashtable_H_

@class IOSLongArray;
@class IOSObjectArray;

#import "JreEmulation.h"
#include "java/util/Iterator.h"

@interface ComItextpdfTextPdfLongHashtable : NSObject < NSCopying > {
 @public
  IOSObjectArray *table_;
  jint count_;
  jint threshold_;
  jfloat loadFactor_;
}

- (instancetype)init;

- (instancetype)initWithInt:(jint)initialCapacity;

- (instancetype)initWithInt:(jint)initialCapacity
                  withFloat:(jfloat)loadFactor;

- (jint)size;

- (jboolean)isEmpty;

- (jboolean)containsWithLong:(jlong)value;

- (jboolean)containsValueWithLong:(jlong)value;

- (jboolean)containsKeyWithLong:(jlong)key;

- (jlong)getWithLong:(jlong)key;

- (void)rehash;

- (jlong)putWithLong:(jlong)key
            withLong:(jlong)value;

- (jlong)removeWithLong:(jlong)key;

- (void)clear;

- (id<JavaUtilIterator>)getEntryIterator;

- (IOSLongArray *)toOrderedKeys;

- (IOSLongArray *)getKeys;

- (jlong)getOneKey;

- (id)clone;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfLongHashtable *)other;

- (id)copyWithZone:(NSZone *)zone;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfLongHashtable_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfLongHashtable, table_, IOSObjectArray *)

@interface ComItextpdfTextPdfLongHashtable_Entry : NSObject {
 @public
  jint hash__;
  jlong key_;
  jlong value_;
  ComItextpdfTextPdfLongHashtable_Entry *next_;
}

- (instancetype)initWithInt:(jint)hash_
                   withLong:(jlong)key
                   withLong:(jlong)value
withComItextpdfTextPdfLongHashtable_Entry:(ComItextpdfTextPdfLongHashtable_Entry *)next;

- (jlong)getKey;

- (jlong)getValue;

- (id)clone;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfLongHashtable_Entry *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfLongHashtable_Entry_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfLongHashtable_Entry, next_, ComItextpdfTextPdfLongHashtable_Entry *)

@interface ComItextpdfTextPdfLongHashtable_LongHashtableIterator : NSObject < JavaUtilIterator > {
 @public
  jint index_;
  IOSObjectArray *table_;
  ComItextpdfTextPdfLongHashtable_Entry *entry__;
}

- (instancetype)initWithComItextpdfTextPdfLongHashtable_EntryArray:(IOSObjectArray *)table;

- (jboolean)hasNext;

- (ComItextpdfTextPdfLongHashtable_Entry *)next;

- (void)remove;

- (void)copyAllFieldsTo:(ComItextpdfTextPdfLongHashtable_LongHashtableIterator *)other;

@end

__attribute__((always_inline)) inline void ComItextpdfTextPdfLongHashtable_LongHashtableIterator_init() {}

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfLongHashtable_LongHashtableIterator, table_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ComItextpdfTextPdfLongHashtable_LongHashtableIterator, entry__, ComItextpdfTextPdfLongHashtable_Entry *)

#endif // _ComItextpdfTextPdfLongHashtable_H_
