//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/CrlClientOffline.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/CrlClientOffline.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/pdf/security/CrlClientOffline.h"
#include "java/lang/Exception.h"
#include "java/security/cert/CRL.h"
#include "java/security/cert/X509CRL.h"
#include "java/security/cert/X509Certificate.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"


#line 59
@implementation ComItextpdfTextPdfSecurityCrlClientOffline


#line 69
- (instancetype)initWithByteArray:(IOSByteArray *)crlEncoded {
  if (self = [super init]) {
    crls_ =
#line 62
    [[JavaUtilArrayList alloc] init];
    
#line 70
    [crls_ addWithId:crlEncoded];
  }
  return self;
}


#line 78
- (instancetype)initWithJavaSecurityCertCRL:(JavaSecurityCertCRL *)crl {
  if (self = [super init]) {
    crls_ =
#line 62
    [[JavaUtilArrayList alloc] init];
    
#line 79
    @try {
      [crls_ addWithId:[((JavaSecurityCertX509CRL *) nil_chk(((JavaSecurityCertX509CRL *) check_class_cast(crl, [JavaSecurityCertX509CRL class])))) getEncoded]];
    }
    @catch (JavaLangException *ex) {
      @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:ex];
    }
  }
  return self;
}


#line 91
- (id<JavaUtilCollection>)getEncodedWithJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)checkCert
                                                           withNSString:(NSString *)url {
  
#line 92
  return crls_;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfSecurityCrlClientOffline *)other {
  [super copyAllFieldsTo:other];
  other->crls_ = crls_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithByteArray:", "CrlClientOffline", NULL, 0x1, NULL },
    { "initWithJavaSecurityCertCRL:", "CrlClientOffline", NULL, 0x1, NULL },
    { "getEncodedWithJavaSecurityCertX509Certificate:withNSString:", "getEncoded", "Ljava.util.Collection;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "crls_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfSecurityCrlClientOffline = { "CrlClientOffline", "com.itextpdf.text.pdf.security", NULL, 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfSecurityCrlClientOffline;
}

@end
