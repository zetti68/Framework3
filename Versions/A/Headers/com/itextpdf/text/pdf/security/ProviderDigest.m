//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/ProviderDigest.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/ProviderDigest.java"

#include "IOSClass.h"
#include "com/itextpdf/text/pdf/security/DigestAlgorithms.h"
#include "com/itextpdf/text/pdf/security/ProviderDigest.h"
#include "java/security/GeneralSecurityException.h"
#include "java/security/MessageDigest.h"


#line 54
@implementation ComItextpdfTextPdfSecurityProviderDigest


#line 57
- (instancetype)initWithNSString:(NSString *)provider {
  if (self = [super init]) {
    
#line 58
    self->provider_ = provider;
  }
  return self;
}


#line 61
- (JavaSecurityMessageDigest *)getMessageDigestWithNSString:(NSString *)hashAlgorithm {
  
#line 62
  return [ComItextpdfTextPdfSecurityDigestAlgorithms getMessageDigestWithNSString:hashAlgorithm withNSString:provider_];
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfSecurityProviderDigest *)other {
  [super copyAllFieldsTo:other];
  other->provider_ = provider_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "ProviderDigest", NULL, 0x1, NULL },
    { "getMessageDigestWithNSString:", "getMessageDigest", "Ljava.security.MessageDigest;", 0x1, "Ljava.security.GeneralSecurityException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "provider_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfSecurityProviderDigest = { "ProviderDigest", "com.itextpdf.text.pdf.security", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextPdfSecurityProviderDigest;
}

@end
