//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/CrlClientOnline.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/security/CrlClientOnline.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/log/Logger.h"
#include "com/itextpdf/text/log/LoggerFactory.h"
#include "com/itextpdf/text/pdf/security/CertificateUtil.h"
#include "com/itextpdf/text/pdf/security/CrlClientOnline.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/NullPointerException.h"
#include "java/net/HttpURLConnection.h"
#include "java/net/MalformedURLException.h"
#include "java/net/URL.h"
#include "java/net/URLConnection.h"
#include "java/security/Principal.h"
#include "java/security/cert/Certificate.h"
#include "java/security/cert/CertificateParsingException.h"
#include "java/security/cert/X509Certificate.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/List.h"

BOOL ComItextpdfTextPdfSecurityCrlClientOnline_initialized = NO;


#line 69
@implementation ComItextpdfTextPdfSecurityCrlClientOnline

id<ComItextpdfTextLogLogger> ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_;


#line 81
- (instancetype)init {
  if (self = [super init]) {
    urls_ =
#line 75
    [[JavaUtilArrayList alloc] init];
  }
  return self;
}


#line 87
- (instancetype)initWithNSStringArray:(IOSObjectArray *)crls {
  if (self = [super init]) {
    urls_ =
#line 75
    [[JavaUtilArrayList alloc] init];
    {
      IOSObjectArray *a__ =
#line 88
      crls;
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *url = *b__++;
        
#line 89
        [self addUrlWithNSString:url];
      }
    }
  }
  return self;
}


#line 96
- (instancetype)initWithJavaNetURLArray:(IOSObjectArray *)crls {
  if (self = [super init]) {
    urls_ =
#line 75
    [[JavaUtilArrayList alloc] init];
    
#line 97
    for (JavaNetURL * __strong url in urls_) {
      [self addUrlWithJavaNetURL:url];
    }
  }
  return self;
}


#line 105
- (instancetype)initWithJavaSecurityCertCertificateArray:(IOSObjectArray *)chain {
  if (self = [super init]) {
    urls_ =
#line 75
    [[JavaUtilArrayList alloc] init];
    
#line 106
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(chain))->size_; i++) {
      JavaSecurityCertX509Certificate *cert = (JavaSecurityCertX509Certificate *) check_class_cast(IOSObjectArray_Get(chain, i), [JavaSecurityCertX509Certificate class]);
      [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_)) infoWithNSString:JreStrcat("$@", @"Checking certificate: ", [((JavaSecurityCertX509Certificate *) nil_chk(cert)) getSubjectDN])];
      @try {
        [self addUrlWithNSString:[ComItextpdfTextPdfSecurityCertificateUtil getCRLURLWithJavaSecurityCertX509Certificate:cert]];
      }
      @catch (
#line 111
      JavaSecurityCertCertificateParsingException *e) {
        [ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_ infoWithNSString:@"Skipped CRL url (certificate could not be parsed)"];
      }
    }
  }
  return self;
}


#line 121
- (void)addUrlWithNSString:(NSString *)url {
  
#line 122
  @try {
    [self addUrlWithJavaNetURL:[[JavaNetURL alloc] initWithNSString:url]];
  }
  @catch (
#line 124
  JavaNetMalformedURLException *e) {
    [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_)) infoWithNSString:JreStrcat("$$", @"Skipped CRL url (malformed): ", url)];
  }
}


#line 133
- (void)addUrlWithJavaNetURL:(JavaNetURL *)url {
  if ([((id<JavaUtilList>) nil_chk(urls_)) containsWithId:url]) {
    [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_)) infoWithNSString:JreStrcat("$@", @"Skipped CRL url (duplicate): ", url)];
    return;
  }
  [urls_ addWithId:url];
  [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_)) infoWithNSString:JreStrcat("$@", @"Added CRL url: ", url)];
}


#line 150
- (id<JavaUtilCollection>)getEncodedWithJavaSecurityCertX509Certificate:(JavaSecurityCertX509Certificate *)checkCert
                                                           withNSString:(NSString *)url {
  
#line 151
  if (checkCert == nil)
#line 152
  return nil;
  id<JavaUtilList> urllist = [[JavaUtilArrayList alloc] initWithJavaUtilCollection:urls_];
  if ([urllist size] == 0) {
    [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_)) infoWithNSString:JreStrcat("$@", @"Looking for CRL for certificate ", [((JavaSecurityCertX509Certificate *) nil_chk(checkCert)) getSubjectDN])];
    @try {
      if (url == nil)
#line 158
      url = [ComItextpdfTextPdfSecurityCertificateUtil getCRLURLWithJavaSecurityCertX509Certificate:checkCert];
      if (url == nil)
#line 160
      @throw [[JavaLangNullPointerException alloc] init];
      [urllist addWithId:[[JavaNetURL alloc] initWithNSString:url]];
      [ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_ infoWithNSString:JreStrcat("$$", @"Found CRL url: ", url)];
    }
    @catch (JavaLangException *e) {
      [ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_ infoWithNSString:JreStrcat("$$", @"Skipped CRL url: ", [((JavaLangException *) nil_chk(e)) getMessage])];
    }
  }
  JavaUtilArrayList *ar = [[JavaUtilArrayList alloc] init];
  for (JavaNetURL * __strong urlt in urllist) {
    @try {
      [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_)) infoWithNSString:JreStrcat("$@", @"Checking CRL: ", urlt)];
      JavaNetHttpURLConnection *con = (JavaNetHttpURLConnection *) check_class_cast([((JavaNetURL *) nil_chk(urlt)) openConnection], [JavaNetHttpURLConnection class]);
      if ([((JavaNetHttpURLConnection *) nil_chk(con)) getResponseCode] / 100 != 2) {
        @throw [[JavaIoIOException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"invalid.http.response.1" withInt:[con getResponseCode]]];
      }
      
#line 177
      JavaIoInputStream *inp = (JavaIoInputStream *) check_class_cast([con getContent], [JavaIoInputStream class]);
      IOSByteArray *buf = [IOSByteArray arrayWithLength:1024];
      JavaIoByteArrayOutputStream *bout = [[JavaIoByteArrayOutputStream alloc] init];
      while (YES) {
        jint n = [((JavaIoInputStream *) nil_chk(inp)) readWithByteArray:buf withInt:0 withInt:buf->size_];
        if (n <= 0)
#line 183
        break;
        [bout writeWithByteArray:buf withInt:0 withInt:n];
      }
      [((JavaIoInputStream *) nil_chk(inp)) close];
      [ar addWithId:[bout toByteArray]];
      [ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_ infoWithNSString:JreStrcat("$@", @"Added CRL found at: ", urlt)];
    }
    @catch (JavaLangException *e) {
      [((id<ComItextpdfTextLogLogger>) nil_chk(ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_)) infoWithNSString:JreStrcat("$$$@", @"Skipped CRL: ", [((JavaLangException *) nil_chk(e)) getMessage], @" for ", urlt)];
    }
  }
  return ar;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfSecurityCrlClientOnline *)other {
  [super copyAllFieldsTo:other];
  other->urls_ = urls_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfSecurityCrlClientOnline class]) {
    ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_ =
#line 72
    [ComItextpdfTextLogLoggerFactory getLoggerWithIOSClass:[IOSClass classWithClass:[ComItextpdfTextPdfSecurityCrlClientOnline class]]];
    ComItextpdfTextPdfSecurityCrlClientOnline_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CrlClientOnline", NULL, 0x1, NULL },
    { "initWithNSStringArray:", "CrlClientOnline", NULL, 0x81, NULL },
    { "initWithJavaNetURLArray:", "CrlClientOnline", NULL, 0x81, NULL },
    { "initWithJavaSecurityCertCertificateArray:", "CrlClientOnline", NULL, 0x1, NULL },
    { "addUrlWithNSString:", "addUrl", "V", 0x4, NULL },
    { "addUrlWithJavaNetURL:", "addUrl", "V", 0x4, NULL },
    { "getEncodedWithJavaSecurityCertX509Certificate:withNSString:", "getEncoded", "Ljava.util.Collection;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LOGGER_", NULL, 0x1a, "Lcom.itextpdf.text.log.Logger;", &ComItextpdfTextPdfSecurityCrlClientOnline_LOGGER_,  },
    { "urls_", NULL, 0x4, "Ljava.util.List;", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfSecurityCrlClientOnline = { "CrlClientOnline", "com.itextpdf.text.pdf.security", NULL, 0x1, 7, methods, 2, fields, 0, NULL};
  return &_ComItextpdfTextPdfSecurityCrlClientOnline;
}

@end
