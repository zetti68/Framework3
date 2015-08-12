//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPublicKeyRecipient.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPublicKeyRecipient.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/PdfPublicKeyRecipient.h"
#include "java/security/cert/Certificate.h"


#line 49
@implementation ComItextpdfTextPdfPdfPublicKeyRecipient


#line 57
- (instancetype)initWithJavaSecurityCertCertificate:(JavaSecurityCertCertificate *)certificate
                                            withInt:(jint)permission {
  if (self = [super init]) {
    certificate_ =
#line 51
    nil;
    permission_ =
#line 53
    0;
    cms_ =
#line 55
    nil;
    
#line 59
    self->certificate_ = certificate;
    
#line 60
    self->permission_ = permission;
  }
  return self;
}


#line 63
- (JavaSecurityCertCertificate *)getCertificate {
  
#line 64
  return certificate_;
}


#line 67
- (jint)getPermission {
  
#line 68
  return permission_;
}


#line 71
- (void)setCmsWithByteArray:(IOSByteArray *)cms {
  
#line 72
  self->cms_ = cms;
}


#line 75
- (IOSByteArray *)getCms {
  
#line 76
  return cms_;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfPublicKeyRecipient *)other {
  [super copyAllFieldsTo:other];
  other->certificate_ = certificate_;
  other->cms_ = cms_;
  other->permission_ = permission_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaSecurityCertCertificate:withInt:", "PdfPublicKeyRecipient", NULL, 0x1, NULL },
    { "getCertificate", NULL, "Ljava.security.cert.Certificate;", 0x1, NULL },
    { "getPermission", NULL, "I", 0x1, NULL },
    { "setCmsWithByteArray:", "setCms", "V", 0x4, NULL },
    { "getCms", NULL, "[B", 0x4, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "certificate_", NULL, 0x2, "Ljava.security.cert.Certificate;", NULL,  },
    { "permission_", NULL, 0x2, "I", NULL,  },
    { "cms_", NULL, 0x4, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfPublicKeyRecipient = { "PdfPublicKeyRecipient", "com.itextpdf.text.pdf", NULL, 0x1, 5, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfPublicKeyRecipient;
}

@end