//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/misc/HashCode.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/awt/geom/misc/HashCode.java"

#include "com/itextpdf/awt/geom/misc/HashCode.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"


#line 68
@implementation ComItextpdfAwtGeomMiscHashCode

- (NSUInteger)hash {
  
#line 81
  return hashCode__;
}


#line 90
+ (jint)combineWithInt:(jint)hashCode
           withBoolean:(jboolean)value {
  
#line 91
  jint v = value ? 1231 : 1237;
  return [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode withInt:v];
}


#line 101
+ (jint)combineWithInt:(jint)hashCode
              withLong:(jlong)value {
  
#line 102
  jint v = (jint) (value ^ (URShift64(value, 32)));
  return [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode withInt:v];
}


#line 112
+ (jint)combineWithInt:(jint)hashCode
             withFloat:(jfloat)value {
  
#line 113
  jint v = [JavaLangFloat floatToIntBitsWithFloat:value];
  return [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode withInt:v];
}


#line 123
+ (jint)combineWithInt:(jint)hashCode
            withDouble:(jdouble)value {
  
#line 124
  jlong v = [JavaLangDouble doubleToLongBitsWithDouble:value];
  return [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode withLong:v];
}


#line 134
+ (jint)combineWithInt:(jint)hashCode
                withId:(id)value {
  
#line 135
  return [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode withInt:((jint) [nil_chk(value) hash])];
}


#line 144
+ (jint)combineWithInt:(jint)hashCode
               withInt:(jint)value {
  
#line 145
  return 31 * hashCode + value;
}


#line 153
- (ComItextpdfAwtGeomMiscHashCode *)appendWithInt:(jint)value {
  
#line 154
  hashCode__ = [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode__ withInt:value];
  return self;
}


#line 163
- (ComItextpdfAwtGeomMiscHashCode *)appendWithLong:(jlong)value {
  
#line 164
  hashCode__ = [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode__ withLong:value];
  return self;
}


#line 173
- (ComItextpdfAwtGeomMiscHashCode *)appendWithFloat:(jfloat)value {
  
#line 174
  hashCode__ = [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode__ withFloat:value];
  return self;
}


#line 183
- (ComItextpdfAwtGeomMiscHashCode *)appendWithDouble:(jdouble)value {
  
#line 184
  hashCode__ = [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode__ withDouble:value];
  return self;
}


#line 193
- (ComItextpdfAwtGeomMiscHashCode *)appendWithBoolean:(jboolean)value {
  
#line 194
  hashCode__ = [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode__ withBoolean:value];
  return self;
}


#line 203
- (ComItextpdfAwtGeomMiscHashCode *)appendWithId:(id)value {
  
#line 204
  hashCode__ = [ComItextpdfAwtGeomMiscHashCode combineWithInt:hashCode__ withId:value];
  return self;
}

- (instancetype)init {
  if (self = [super init]) {
    hashCode__ =
#line 75
    ComItextpdfAwtGeomMiscHashCode_EMPTY_HASH_CODE;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfAwtGeomMiscHashCode *)other {
  [super copyAllFieldsTo:other];
  other->hashCode__ = hashCode__;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "hash", "hashCode", "I", 0x11, NULL },
    { "combineWithInt:withBoolean:", "combine", "I", 0x9, NULL },
    { "combineWithInt:withLong:", "combine", "I", 0x9, NULL },
    { "combineWithInt:withFloat:", "combine", "I", 0x9, NULL },
    { "combineWithInt:withDouble:", "combine", "I", 0x9, NULL },
    { "combineWithInt:withId:", "combine", "I", 0x9, NULL },
    { "combineWithInt:withInt:", "combine", "I", 0x9, NULL },
    { "appendWithInt:", "append", "Lcom.itextpdf.awt.geom.misc.HashCode;", 0x11, NULL },
    { "appendWithLong:", "append", "Lcom.itextpdf.awt.geom.misc.HashCode;", 0x11, NULL },
    { "appendWithFloat:", "append", "Lcom.itextpdf.awt.geom.misc.HashCode;", 0x11, NULL },
    { "appendWithDouble:", "append", "Lcom.itextpdf.awt.geom.misc.HashCode;", 0x11, NULL },
    { "appendWithBoolean:", "append", "Lcom.itextpdf.awt.geom.misc.HashCode;", 0x11, NULL },
    { "appendWithId:", "append", "Lcom.itextpdf.awt.geom.misc.HashCode;", 0x11, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_HASH_CODE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfAwtGeomMiscHashCode_EMPTY_HASH_CODE },
    { "hashCode__", "hashCode", 0x2, "I", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfAwtGeomMiscHashCode = { "HashCode", "com.itextpdf.awt.geom.misc", NULL, 0x11, 14, methods, 2, fields, 0, NULL};
  return &_ComItextpdfAwtGeomMiscHashCode;
}

@end