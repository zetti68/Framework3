//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/XmpMMSchema.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/xmp/XmpMMSchema.java"

#include "IOSClass.h"
#include "com/itextpdf/text/xml/xmp/XmpMMSchema.h"
#include "java/lang/Deprecated.h"


#line 51
@implementation ComItextpdfTextXmlXmpXmpMMSchema

NSString * ComItextpdfTextXmlXmpXmpMMSchema_DEFAULT_XPATH_ID_ = 
#line 55
@"xmpMM";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_DEFAULT_XPATH_URI_ = 
#line 57
@"http://ns.adobe.com/xap/1.0/mm/";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_DERIVEDFROM_ = 
#line 61
@"xmpMM:DerivedFrom";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_DOCUMENTID_ = 
#line 63
@"xmpMM:DocumentID";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_HISTORY_ = @"xmpMM:History";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_MANAGEDFROM_ = 
#line 67
@"xmpMM:ManagedFrom";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_MANAGER_ = @"xmpMM:Manager";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_MANAGETO_ = 
#line 71
@"xmpMM:ManageTo";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_MANAGEUI_ = @"xmpMM:ManageUI";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_MANAGERVARIANT_ = 
#line 75
@"xmpMM:ManagerVariant";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_RENDITIONCLASS_ = @"xmpMM:RenditionClass";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_RENDITIONPARAMS_ = 
#line 79
@"xmpMM:RenditionParams";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_VERSIONID_ = @"xmpMM:VersionID";
NSString * ComItextpdfTextXmlXmpXmpMMSchema_VERSIONS_ = 
#line 83
@"xmpMM:Versions";


#line 85
- (instancetype)init {
  return
#line 86
  [super initWithNSString:JreStrcat("$$$$C", @"xmlns:", ComItextpdfTextXmlXmpXmpMMSchema_DEFAULT_XPATH_ID_, @"=\"", ComItextpdfTextXmlXmpXmpMMSchema_DEFAULT_XPATH_URI_, '"')];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:[IOSClass classWithProtocol:@protocol(JavaLangAnnotationAnnotation)]];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "XmpMMSchema", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = ComItextpdfTextXmlXmpXmpMMSchema_serialVersionUID },
    { "DEFAULT_XPATH_ID_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_DEFAULT_XPATH_ID_,  },
    { "DEFAULT_XPATH_URI_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_DEFAULT_XPATH_URI_,  },
    { "DERIVEDFROM_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_DERIVEDFROM_,  },
    { "DOCUMENTID_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_DOCUMENTID_,  },
    { "HISTORY_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_HISTORY_,  },
    { "MANAGEDFROM_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_MANAGEDFROM_,  },
    { "MANAGER_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_MANAGER_,  },
    { "MANAGETO_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_MANAGETO_,  },
    { "MANAGEUI_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_MANAGEUI_,  },
    { "MANAGERVARIANT_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_MANAGERVARIANT_,  },
    { "RENDITIONCLASS_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_RENDITIONCLASS_,  },
    { "RENDITIONPARAMS_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_RENDITIONPARAMS_,  },
    { "VERSIONID_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_VERSIONID_,  },
    { "VERSIONS_", NULL, 0x19, "Ljava.lang.String;", &ComItextpdfTextXmlXmpXmpMMSchema_VERSIONS_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextXmlXmpXmpMMSchema = { "XmpMMSchema", "com.itextpdf.text.xml.xmp", NULL, 0x1, 1, methods, 15, fields, 0, NULL};
  return &_ComItextpdfTextXmlXmpXmpMMSchema;
}

@end
