//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/XMPMeta.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/xmp/XMPMeta.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/xmp/XMPDateTime.h"
#include "com/itextpdf/xmp/XMPException.h"
#include "com/itextpdf/xmp/XMPIterator.h"
#include "com/itextpdf/xmp/XMPMeta.h"
#include "com/itextpdf/xmp/options/IteratorOptions.h"
#include "com/itextpdf/xmp/options/ParseOptions.h"
#include "com/itextpdf/xmp/options/PropertyOptions.h"
#include "com/itextpdf/xmp/properties/XMPProperty.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/Calendar.h"

@interface ComItextpdfXmpXMPMeta : NSObject
@end

@implementation ComItextpdfXmpXMPMeta

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getPropertyWithNSString:withNSString:", "getProperty", "Lcom.itextpdf.xmp.properties.XMPProperty;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getArrayItemWithNSString:withNSString:withInt:", "getArrayItem", "Lcom.itextpdf.xmp.properties.XMPProperty;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "countArrayItemsWithNSString:withNSString:", "countArrayItems", "I", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getStructFieldWithNSString:withNSString:withNSString:withNSString:", "getStructField", "Lcom.itextpdf.xmp.properties.XMPProperty;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getQualifierWithNSString:withNSString:withNSString:withNSString:", "getQualifier", "Lcom.itextpdf.xmp.properties.XMPProperty;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyWithNSString:withNSString:withId:withComItextpdfXmpOptionsPropertyOptions:", "setProperty", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyWithNSString:withNSString:withId:", "setProperty", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setArrayItemWithNSString:withNSString:withInt:withNSString:withComItextpdfXmpOptionsPropertyOptions:", "setArrayItem", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setArrayItemWithNSString:withNSString:withInt:withNSString:", "setArrayItem", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "insertArrayItemWithNSString:withNSString:withInt:withNSString:withComItextpdfXmpOptionsPropertyOptions:", "insertArrayItem", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "insertArrayItemWithNSString:withNSString:withInt:withNSString:", "insertArrayItem", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "appendArrayItemWithNSString:withNSString:withComItextpdfXmpOptionsPropertyOptions:withNSString:withComItextpdfXmpOptionsPropertyOptions:", "appendArrayItem", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "appendArrayItemWithNSString:withNSString:withNSString:", "appendArrayItem", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setStructFieldWithNSString:withNSString:withNSString:withNSString:withNSString:withComItextpdfXmpOptionsPropertyOptions:", "setStructField", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setStructFieldWithNSString:withNSString:withNSString:withNSString:withNSString:", "setStructField", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setQualifierWithNSString:withNSString:withNSString:withNSString:withNSString:withComItextpdfXmpOptionsPropertyOptions:", "setQualifier", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setQualifierWithNSString:withNSString:withNSString:withNSString:withNSString:", "setQualifier", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "deletePropertyWithNSString:withNSString:", "deleteProperty", "V", 0x401, NULL },
    { "deleteArrayItemWithNSString:withNSString:withInt:", "deleteArrayItem", "V", 0x401, NULL },
    { "deleteStructFieldWithNSString:withNSString:withNSString:withNSString:", "deleteStructField", "V", 0x401, NULL },
    { "deleteQualifierWithNSString:withNSString:withNSString:withNSString:", "deleteQualifier", "V", 0x401, NULL },
    { "doesPropertyExistWithNSString:withNSString:", "doesPropertyExist", "Z", 0x401, NULL },
    { "doesArrayItemExistWithNSString:withNSString:withInt:", "doesArrayItemExist", "Z", 0x401, NULL },
    { "doesStructFieldExistWithNSString:withNSString:withNSString:withNSString:", "doesStructFieldExist", "Z", 0x401, NULL },
    { "doesQualifierExistWithNSString:withNSString:withNSString:withNSString:", "doesQualifierExist", "Z", 0x401, NULL },
    { "getLocalizedTextWithNSString:withNSString:withNSString:withNSString:", "getLocalizedText", "Lcom.itextpdf.xmp.properties.XMPProperty;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setLocalizedTextWithNSString:withNSString:withNSString:withNSString:withNSString:withComItextpdfXmpOptionsPropertyOptions:", "setLocalizedText", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setLocalizedTextWithNSString:withNSString:withNSString:withNSString:withNSString:", "setLocalizedText", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getPropertyBooleanWithNSString:withNSString:", "getPropertyBoolean", "Ljava.lang.Boolean;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getPropertyIntegerWithNSString:withNSString:", "getPropertyInteger", "Ljava.lang.Integer;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getPropertyLongWithNSString:withNSString:", "getPropertyLong", "Ljava.lang.Long;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getPropertyDoubleWithNSString:withNSString:", "getPropertyDouble", "Ljava.lang.Double;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getPropertyDateWithNSString:withNSString:", "getPropertyDate", "Lcom.itextpdf.xmp.XMPDateTime;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getPropertyCalendarWithNSString:withNSString:", "getPropertyCalendar", "Ljava.util.Calendar;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getPropertyBase64WithNSString:withNSString:", "getPropertyBase64", "[B", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getPropertyStringWithNSString:withNSString:", "getPropertyString", "Ljava.lang.String;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyBooleanWithNSString:withNSString:withBoolean:withComItextpdfXmpOptionsPropertyOptions:", "setPropertyBoolean", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyBooleanWithNSString:withNSString:withBoolean:", "setPropertyBoolean", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyIntegerWithNSString:withNSString:withInt:withComItextpdfXmpOptionsPropertyOptions:", "setPropertyInteger", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyIntegerWithNSString:withNSString:withInt:", "setPropertyInteger", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyLongWithNSString:withNSString:withLong:withComItextpdfXmpOptionsPropertyOptions:", "setPropertyLong", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyLongWithNSString:withNSString:withLong:", "setPropertyLong", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyDoubleWithNSString:withNSString:withDouble:withComItextpdfXmpOptionsPropertyOptions:", "setPropertyDouble", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyDoubleWithNSString:withNSString:withDouble:", "setPropertyDouble", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyDateWithNSString:withNSString:withComItextpdfXmpXMPDateTime:withComItextpdfXmpOptionsPropertyOptions:", "setPropertyDate", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyDateWithNSString:withNSString:withComItextpdfXmpXMPDateTime:", "setPropertyDate", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyCalendarWithNSString:withNSString:withJavaUtilCalendar:withComItextpdfXmpOptionsPropertyOptions:", "setPropertyCalendar", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyCalendarWithNSString:withNSString:withJavaUtilCalendar:", "setPropertyCalendar", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyBase64WithNSString:withNSString:withByteArray:withComItextpdfXmpOptionsPropertyOptions:", "setPropertyBase64", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "setPropertyBase64WithNSString:withNSString:withByteArray:", "setPropertyBase64", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "iterator", NULL, "Lcom.itextpdf.xmp.XMPIterator;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "iteratorWithComItextpdfXmpOptionsIteratorOptions:", "iterator", "Lcom.itextpdf.xmp.XMPIterator;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "iteratorWithNSString:withNSString:withComItextpdfXmpOptionsIteratorOptions:", "iterator", "Lcom.itextpdf.xmp.XMPIterator;", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "getObjectName", NULL, "Ljava.lang.String;", 0x401, NULL },
    { "setObjectNameWithNSString:", "setObjectName", "V", 0x401, NULL },
    { "getPacketHeader", NULL, "Ljava.lang.String;", 0x401, NULL },
    { "clone", NULL, "Ljava.lang.Object;", 0x401, NULL },
    { "sort", NULL, "V", 0x401, NULL },
    { "normalizeWithComItextpdfXmpOptionsParseOptions:", "normalize", "V", 0x401, "Lcom.itextpdf.xmp.XMPException;" },
    { "dumpObject", NULL, "Ljava.lang.String;", 0x401, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfXmpXMPMeta = { "XMPMeta", "com.itextpdf.xmp", NULL, 0x201, 60, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfXmpXMPMeta;
}

@end

