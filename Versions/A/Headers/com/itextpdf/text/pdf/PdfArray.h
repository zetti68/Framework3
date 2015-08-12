//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfArray.java
//

#ifndef _ComItextpdfTextPdfPdfArray_H_
#define _ComItextpdfTextPdfPdfArray_H_

#include "J2ObjC_header.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "java/lang/Iterable.h"

@class ComItextpdfTextPdfPdfBoolean;
@class ComItextpdfTextPdfPdfDictionary;
@class ComItextpdfTextPdfPdfIndirectReference;
@class ComItextpdfTextPdfPdfName;
@class ComItextpdfTextPdfPdfNumber;
@class ComItextpdfTextPdfPdfStream;
@class ComItextpdfTextPdfPdfString;
@class ComItextpdfTextPdfPdfWriter;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSLongArray;
@class JavaIoOutputStream;
@class JavaUtilArrayList;
@protocol JavaUtilIterator;
@protocol JavaUtilList;
@protocol JavaUtilListIterator;

@interface ComItextpdfTextPdfPdfArray : ComItextpdfTextPdfPdfObject < JavaLangIterable > {
 @public
  JavaUtilArrayList *arrayList_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithFloatArray:(IOSFloatArray *)values;

- (instancetype)initWithIntArray:(IOSIntArray *)values;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)l;

- (instancetype)initWithComItextpdfTextPdfPdfArray:(ComItextpdfTextPdfPdfArray *)array;

- (instancetype)initWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (jboolean)addWithFloatArray:(IOSFloatArray *)values;

- (void)addWithInt:(jint)index
withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)element;

- (jboolean)addWithIntArray:(IOSIntArray *)values;

- (jboolean)addWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (void)addFirstWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (IOSLongArray *)asLongArray;

- (jboolean)containsWithComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)object;

- (JavaUtilArrayList *)getArrayList;

- (ComItextpdfTextPdfPdfArray *)getAsArrayWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfBoolean *)getAsBooleanWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfDictionary *)getAsDictWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfIndirectReference *)getAsIndirectObjectWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfName *)getAsNameWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfNumber *)getAsNumberWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfStream *)getAsStreamWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfString *)getAsStringWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfObject *)getDirectObjectWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfObject *)getPdfObjectWithInt:(jint)idx;

- (jboolean)isEmpty;

- (id<JavaUtilIterator>)iterator;

- (id<JavaUtilListIterator>)listIterator;

- (ComItextpdfTextPdfPdfObject *)removeWithInt:(jint)idx;

- (ComItextpdfTextPdfPdfObject *)setWithInt:(jint)idx
            withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)obj;

- (jint)size;

- (void)toPdfWithComItextpdfTextPdfPdfWriter:(ComItextpdfTextPdfPdfWriter *)writer
                      withJavaIoOutputStream:(JavaIoOutputStream *)os;

- (NSString *)description;

#pragma mark Package-Private


@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfPdfArray)

J2OBJC_FIELD_SETTER(ComItextpdfTextPdfPdfArray, arrayList_, JavaUtilArrayList *)

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfArray_init(ComItextpdfTextPdfPdfArray *self);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfArray *new_ComItextpdfTextPdfPdfArray_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfArray_initWithComItextpdfTextPdfPdfObject_(ComItextpdfTextPdfPdfArray *self, ComItextpdfTextPdfPdfObject *object);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfArray *new_ComItextpdfTextPdfPdfArray_initWithComItextpdfTextPdfPdfObject_(ComItextpdfTextPdfPdfObject *object) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfArray_initWithFloatArray_(ComItextpdfTextPdfPdfArray *self, IOSFloatArray *values);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfArray *new_ComItextpdfTextPdfPdfArray_initWithFloatArray_(IOSFloatArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfArray_initWithIntArray_(ComItextpdfTextPdfPdfArray *self, IOSIntArray *values);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfArray *new_ComItextpdfTextPdfPdfArray_initWithIntArray_(IOSIntArray *values) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfArray_initWithJavaUtilList_(ComItextpdfTextPdfPdfArray *self, id<JavaUtilList> l);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfArray *new_ComItextpdfTextPdfPdfArray_initWithJavaUtilList_(id<JavaUtilList> l) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ComItextpdfTextPdfPdfArray_initWithComItextpdfTextPdfPdfArray_(ComItextpdfTextPdfPdfArray *self, ComItextpdfTextPdfPdfArray *array);

FOUNDATION_EXPORT ComItextpdfTextPdfPdfArray *new_ComItextpdfTextPdfPdfArray_initWithComItextpdfTextPdfPdfArray_(ComItextpdfTextPdfPdfArray *array) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfPdfArray)

#endif // _ComItextpdfTextPdfPdfArray_H_
