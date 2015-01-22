//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/XMPMeta.java
//

#ifndef _ComItextpdfXmpXMPMeta_H_
#define _ComItextpdfXmpXMPMeta_H_

@class ComItextpdfXmpOptionsIteratorOptions;
@class ComItextpdfXmpOptionsParseOptions;
@class ComItextpdfXmpOptionsPropertyOptions;
@class IOSByteArray;
@class JavaLangBoolean;
@class JavaLangDouble;
@class JavaLangInteger;
@class JavaLangLong;
@class JavaUtilCalendar;
@protocol ComItextpdfXmpPropertiesXMPProperty;
@protocol ComItextpdfXmpXMPDateTime;
@protocol ComItextpdfXmpXMPIterator;

#import "JreEmulation.h"

@protocol ComItextpdfXmpXMPMeta < NSCopying, NSObject, JavaObject >
- (id<ComItextpdfXmpPropertiesXMPProperty>)getPropertyWithNSString:(NSString *)schemaNS
                                                      withNSString:(NSString *)propName;

- (id<ComItextpdfXmpPropertiesXMPProperty>)getArrayItemWithNSString:(NSString *)schemaNS
                                                       withNSString:(NSString *)arrayName
                                                            withInt:(jint)itemIndex;

- (jint)countArrayItemsWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)arrayName;

- (id<ComItextpdfXmpPropertiesXMPProperty>)getStructFieldWithNSString:(NSString *)schemaNS
                                                         withNSString:(NSString *)structName
                                                         withNSString:(NSString *)fieldNS
                                                         withNSString:(NSString *)fieldName;

- (id<ComItextpdfXmpPropertiesXMPProperty>)getQualifierWithNSString:(NSString *)schemaNS
                                                       withNSString:(NSString *)propName
                                                       withNSString:(NSString *)qualNS
                                                       withNSString:(NSString *)qualName;

- (void)setPropertyWithNSString:(NSString *)schemaNS
                   withNSString:(NSString *)propName
                         withId:(id)propValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setPropertyWithNSString:(NSString *)schemaNS
                   withNSString:(NSString *)propName
                         withId:(id)propValue;

- (void)setArrayItemWithNSString:(NSString *)schemaNS
                    withNSString:(NSString *)arrayName
                         withInt:(jint)itemIndex
                    withNSString:(NSString *)itemValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setArrayItemWithNSString:(NSString *)schemaNS
                    withNSString:(NSString *)arrayName
                         withInt:(jint)itemIndex
                    withNSString:(NSString *)itemValue;

- (void)insertArrayItemWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)arrayName
                            withInt:(jint)itemIndex
                       withNSString:(NSString *)itemValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)insertArrayItemWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)arrayName
                            withInt:(jint)itemIndex
                       withNSString:(NSString *)itemValue;

- (void)appendArrayItemWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)arrayName
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)arrayOptions
                       withNSString:(NSString *)itemValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)itemOptions;

- (void)appendArrayItemWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)arrayName
                       withNSString:(NSString *)itemValue;

- (void)setStructFieldWithNSString:(NSString *)schemaNS
                      withNSString:(NSString *)structName
                      withNSString:(NSString *)fieldNS
                      withNSString:(NSString *)fieldName
                      withNSString:(NSString *)fieldValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setStructFieldWithNSString:(NSString *)schemaNS
                      withNSString:(NSString *)structName
                      withNSString:(NSString *)fieldNS
                      withNSString:(NSString *)fieldName
                      withNSString:(NSString *)fieldValue;

- (void)setQualifierWithNSString:(NSString *)schemaNS
                    withNSString:(NSString *)propName
                    withNSString:(NSString *)qualNS
                    withNSString:(NSString *)qualName
                    withNSString:(NSString *)qualValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setQualifierWithNSString:(NSString *)schemaNS
                    withNSString:(NSString *)propName
                    withNSString:(NSString *)qualNS
                    withNSString:(NSString *)qualName
                    withNSString:(NSString *)qualValue;

- (void)deletePropertyWithNSString:(NSString *)schemaNS
                      withNSString:(NSString *)propName;

- (void)deleteArrayItemWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)arrayName
                            withInt:(jint)itemIndex;

- (void)deleteStructFieldWithNSString:(NSString *)schemaNS
                         withNSString:(NSString *)structName
                         withNSString:(NSString *)fieldNS
                         withNSString:(NSString *)fieldName;

- (void)deleteQualifierWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)propName
                       withNSString:(NSString *)qualNS
                       withNSString:(NSString *)qualName;

- (jboolean)doesPropertyExistWithNSString:(NSString *)schemaNS
                             withNSString:(NSString *)propName;

- (jboolean)doesArrayItemExistWithNSString:(NSString *)schemaNS
                              withNSString:(NSString *)arrayName
                                   withInt:(jint)itemIndex;

- (jboolean)doesStructFieldExistWithNSString:(NSString *)schemaNS
                                withNSString:(NSString *)structName
                                withNSString:(NSString *)fieldNS
                                withNSString:(NSString *)fieldName;

- (jboolean)doesQualifierExistWithNSString:(NSString *)schemaNS
                              withNSString:(NSString *)propName
                              withNSString:(NSString *)qualNS
                              withNSString:(NSString *)qualName;

- (id<ComItextpdfXmpPropertiesXMPProperty>)getLocalizedTextWithNSString:(NSString *)schemaNS
                                                           withNSString:(NSString *)altTextName
                                                           withNSString:(NSString *)genericLang
                                                           withNSString:(NSString *)specificLang;

- (void)setLocalizedTextWithNSString:(NSString *)schemaNS
                        withNSString:(NSString *)altTextName
                        withNSString:(NSString *)genericLang
                        withNSString:(NSString *)specificLang
                        withNSString:(NSString *)itemValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setLocalizedTextWithNSString:(NSString *)schemaNS
                        withNSString:(NSString *)altTextName
                        withNSString:(NSString *)genericLang
                        withNSString:(NSString *)specificLang
                        withNSString:(NSString *)itemValue;

- (JavaLangBoolean *)getPropertyBooleanWithNSString:(NSString *)schemaNS
                                       withNSString:(NSString *)propName;

- (JavaLangInteger *)getPropertyIntegerWithNSString:(NSString *)schemaNS
                                       withNSString:(NSString *)propName;

- (JavaLangLong *)getPropertyLongWithNSString:(NSString *)schemaNS
                                 withNSString:(NSString *)propName;

- (JavaLangDouble *)getPropertyDoubleWithNSString:(NSString *)schemaNS
                                     withNSString:(NSString *)propName;

- (id<ComItextpdfXmpXMPDateTime>)getPropertyDateWithNSString:(NSString *)schemaNS
                                                withNSString:(NSString *)propName;

- (JavaUtilCalendar *)getPropertyCalendarWithNSString:(NSString *)schemaNS
                                         withNSString:(NSString *)propName;

- (IOSByteArray *)getPropertyBase64WithNSString:(NSString *)schemaNS
                                   withNSString:(NSString *)propName;

- (NSString *)getPropertyStringWithNSString:(NSString *)schemaNS
                               withNSString:(NSString *)propName;

- (void)setPropertyBooleanWithNSString:(NSString *)schemaNS
                          withNSString:(NSString *)propName
                           withBoolean:(jboolean)propValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setPropertyBooleanWithNSString:(NSString *)schemaNS
                          withNSString:(NSString *)propName
                           withBoolean:(jboolean)propValue;

- (void)setPropertyIntegerWithNSString:(NSString *)schemaNS
                          withNSString:(NSString *)propName
                               withInt:(jint)propValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setPropertyIntegerWithNSString:(NSString *)schemaNS
                          withNSString:(NSString *)propName
                               withInt:(jint)propValue;

- (void)setPropertyLongWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)propName
                           withLong:(jlong)propValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setPropertyLongWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)propName
                           withLong:(jlong)propValue;

- (void)setPropertyDoubleWithNSString:(NSString *)schemaNS
                         withNSString:(NSString *)propName
                           withDouble:(jdouble)propValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setPropertyDoubleWithNSString:(NSString *)schemaNS
                         withNSString:(NSString *)propName
                           withDouble:(jdouble)propValue;

- (void)setPropertyDateWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)propName
      withComItextpdfXmpXMPDateTime:(id<ComItextpdfXmpXMPDateTime>)propValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setPropertyDateWithNSString:(NSString *)schemaNS
                       withNSString:(NSString *)propName
      withComItextpdfXmpXMPDateTime:(id<ComItextpdfXmpXMPDateTime>)propValue;

- (void)setPropertyCalendarWithNSString:(NSString *)schemaNS
                           withNSString:(NSString *)propName
                   withJavaUtilCalendar:(JavaUtilCalendar *)propValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setPropertyCalendarWithNSString:(NSString *)schemaNS
                           withNSString:(NSString *)propName
                   withJavaUtilCalendar:(JavaUtilCalendar *)propValue;

- (void)setPropertyBase64WithNSString:(NSString *)schemaNS
                         withNSString:(NSString *)propName
                        withByteArray:(IOSByteArray *)propValue
withComItextpdfXmpOptionsPropertyOptions:(ComItextpdfXmpOptionsPropertyOptions *)options;

- (void)setPropertyBase64WithNSString:(NSString *)schemaNS
                         withNSString:(NSString *)propName
                        withByteArray:(IOSByteArray *)propValue;

- (id<ComItextpdfXmpXMPIterator>)iterator;

- (id<ComItextpdfXmpXMPIterator>)iteratorWithComItextpdfXmpOptionsIteratorOptions:(ComItextpdfXmpOptionsIteratorOptions *)options;

- (id<ComItextpdfXmpXMPIterator>)iteratorWithNSString:(NSString *)schemaNS
                                         withNSString:(NSString *)propName
             withComItextpdfXmpOptionsIteratorOptions:(ComItextpdfXmpOptionsIteratorOptions *)options;

- (NSString *)getObjectName;

- (void)setObjectNameWithNSString:(NSString *)name;

- (NSString *)getPacketHeader;

- (id)clone;

- (void)sort;

- (void)normalizeWithComItextpdfXmpOptionsParseOptions:(ComItextpdfXmpOptionsParseOptions *)options;

- (NSString *)dumpObject;

- (id)copyWithZone:(NSZone *)zone;

@end

__attribute__((always_inline)) inline void ComItextpdfXmpXMPMeta_init() {}

#endif // _ComItextpdfXmpXMPMeta_H_