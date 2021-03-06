//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/MappedRandomAccessFile.java
//

#ifndef _ComItextpdfTextPdfMappedRandomAccessFile_H_
#define _ComItextpdfTextPdfMappedRandomAccessFile_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class JavaNioByteBuffer;
@class JavaNioChannelsFileChannel;

@interface ComItextpdfTextPdfMappedRandomAccessFile : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)filename
                    withNSString:(NSString *)mode;

+ (jboolean)cleanWithJavaNioByteBuffer:(JavaNioByteBuffer *)buffer;

- (void)close;

- (JavaNioChannelsFileChannel *)getChannel;

- (jlong)getFilePointer;

- (jlong)length;

- (jint)read;

- (jint)readWithByteArray:(IOSByteArray *)bytes
                  withInt:(jint)off
                  withInt:(jint)len;

- (void)seekWithLong:(jlong)pos;

#pragma mark Protected

- (void)dealloc;

@end

J2OBJC_EMPTY_STATIC_INIT(ComItextpdfTextPdfMappedRandomAccessFile)

FOUNDATION_EXPORT void ComItextpdfTextPdfMappedRandomAccessFile_initWithNSString_withNSString_(ComItextpdfTextPdfMappedRandomAccessFile *self, NSString *filename, NSString *mode);

FOUNDATION_EXPORT ComItextpdfTextPdfMappedRandomAccessFile *new_ComItextpdfTextPdfMappedRandomAccessFile_initWithNSString_withNSString_(NSString *filename, NSString *mode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jboolean ComItextpdfTextPdfMappedRandomAccessFile_cleanWithJavaNioByteBuffer_(JavaNioByteBuffer *buffer);

J2OBJC_TYPE_LITERAL_HEADER(ComItextpdfTextPdfMappedRandomAccessFile)

#endif // _ComItextpdfTextPdfMappedRandomAccessFile_H_
