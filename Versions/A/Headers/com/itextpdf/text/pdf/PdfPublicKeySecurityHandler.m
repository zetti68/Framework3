//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPublicKeySecurityHandler.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfPublicKeySecurityHandler.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfContentByte.h"
#include "com/itextpdf/text/pdf/PdfLiteral.h"
#include "com/itextpdf/text/pdf/PdfPublicKeyRecipient.h"
#include "com/itextpdf/text/pdf/PdfPublicKeySecurityHandler.h"
#include "java/io/IOException.h"
#include "java/security/GeneralSecurityException.h"
#include "java/security/SecureRandom.h"
#include "java/util/ArrayList.h"


#line 96
@implementation ComItextpdfTextPdfPdfPublicKeySecurityHandler


#line 104
- (instancetype)init {
  if (self = [super init]) {
    recipients_ =
#line 100
    nil;
    seed_ = [IOSByteArray arrayWithLength:
#line 102
    ComItextpdfTextPdfPdfPublicKeySecurityHandler_SEED_LENGTH];
    
#line 105
    seed_ = [JavaSecuritySecureRandom getSeedWithInt:ComItextpdfTextPdfPdfPublicKeySecurityHandler_SEED_LENGTH];
    
#line 107
    recipients_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}


#line 110
- (void)addRecipientWithComItextpdfTextPdfPdfPublicKeyRecipient:(ComItextpdfTextPdfPdfPublicKeyRecipient *)recipient {
  
#line 111
  [((JavaUtilArrayList *) nil_chk(recipients_)) addWithId:recipient];
}


#line 114
- (IOSByteArray *)getSeed {
  
#line 115
  return [((IOSByteArray *) nil_chk(seed_)) clone];
}


#line 123
- (jint)getRecipientsSize {
  
#line 124
  return [((JavaUtilArrayList *) nil_chk(recipients_)) size];
}


#line 127
- (IOSByteArray *)getEncodedRecipientWithInt:(jint)index {
  ComItextpdfTextPdfPdfPublicKeyRecipient *recipient = [((JavaUtilArrayList *) nil_chk(recipients_)) getWithInt:index];
  IOSByteArray *cms = [((ComItextpdfTextPdfPdfPublicKeyRecipient *) nil_chk(recipient)) getCms];
  
#line 132
  return cms;
}

- (ComItextpdfTextPdfPdfArray *)getEncodedRecipients {
  
#line 136
  ComItextpdfTextPdfPdfArray *EncodedRecipients = [[ComItextpdfTextPdfPdfArray alloc] init];
  IOSByteArray *cms = nil;
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(recipients_)) size]; i++)
#line 139
  @try {
    cms = [self getEncodedRecipientWithInt:i];
    [EncodedRecipients addWithComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfLiteral alloc] initWithByteArray:[ComItextpdfTextPdfPdfContentByte escapeStringWithByteArray:cms]]];
  }
  @catch (
#line 142
  JavaSecurityGeneralSecurityException *e) {
    EncodedRecipients = nil;
  }
  @catch (
#line 144
  JavaIoIOException *e) {
    EncodedRecipients = nil;
  }
  
#line 148
  return EncodedRecipients;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfPdfPublicKeySecurityHandler *)other {
  [super copyAllFieldsTo:other];
  other->recipients_ = recipients_;
  other->seed_ = seed_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PdfPublicKeySecurityHandler", NULL, 0x1, NULL },
    { "addRecipientWithComItextpdfTextPdfPdfPublicKeyRecipient:", "addRecipient", "V", 0x1, NULL },
    { "getSeed", NULL, "[B", 0x4, NULL },
    { "getRecipientsSize", NULL, "I", 0x1, NULL },
    { "getEncodedRecipientWithInt:", "getEncodedRecipient", "[B", 0x1, "Ljava.io.IOException;Ljava.security.GeneralSecurityException;" },
    { "getEncodedRecipients", NULL, "Lcom.itextpdf.text.pdf.PdfArray;", 0x1, "Ljava.io.IOException;Ljava.security.GeneralSecurityException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SEED_LENGTH_", NULL, 0x18, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfPdfPublicKeySecurityHandler_SEED_LENGTH },
    { "recipients_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "seed_", NULL, 0x2, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfPublicKeySecurityHandler = { "PdfPublicKeySecurityHandler", "com.itextpdf.text.pdf", NULL, 0x1, 6, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextPdfPdfPublicKeySecurityHandler;
}

@end