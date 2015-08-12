//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfICCBased.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/PdfICCBased.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/ExceptionConverter.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "com/itextpdf/text/pdf/ICC_Profile.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfException.h"
#include "com/itextpdf/text/pdf/PdfICCBased.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfStream.h"
#include "java/lang/Exception.h"


#line 57
@implementation ComItextpdfTextPdfPdfICCBased


#line 63
- (instancetype)initWithComItextpdfTextPdfICC_Profile:(ComItextpdfTextPdfICC_Profile *)profile {
  return
#line 64
  [self initComItextpdfTextPdfPdfICCBasedWithComItextpdfTextPdfICC_Profile:profile withInt:ComItextpdfTextPdfPdfStream_DEFAULT_COMPRESSION];
}


#line 75
- (instancetype)initComItextpdfTextPdfPdfICCBasedWithComItextpdfTextPdfICC_Profile:(ComItextpdfTextPdfICC_Profile *)profile
                                                                           withInt:(jint)compressionLevel {
  if (self =
#line 76
  [super init]) {
    
#line 77
    @try {
      jint numberOfComponents = [((ComItextpdfTextPdfICC_Profile *) nil_chk(profile)) getNumComponents];
      switch (numberOfComponents) {
        case 1:
        [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ALTERNATE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_DEVICEGRAY_()];
        break;
        case 3:
        [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ALTERNATE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_DEVICERGB_()];
        break;
        case 4:
        [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_ALTERNATE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_DEVICECMYK_()];
        break;
        default:
        @throw [[ComItextpdfTextPdfPdfException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.component.s.is.not.supported" withInt:numberOfComponents]];
      }
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_N_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:numberOfComponents]];
      bytes_ = [profile getData];
      [self putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_LENGTH_() withComItextpdfTextPdfPdfObject:[[ComItextpdfTextPdfPdfNumber alloc] initWithInt:((IOSByteArray *) nil_chk(bytes_))->size_]];
      [self flateCompressWithInt:compressionLevel];
    }
    @catch (
#line 96
    JavaLangException *e) {
      @throw [[ComItextpdfTextExceptionConverter alloc] initWithJavaLangException:e];
    }
  }
  return self;
}

- (instancetype)initWithComItextpdfTextPdfICC_Profile:(ComItextpdfTextPdfICC_Profile *)profile
                                              withInt:(jint)compressionLevel {
  return [self initComItextpdfTextPdfPdfICCBasedWithComItextpdfTextPdfICC_Profile:
#line 75
profile withInt:compressionLevel];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComItextpdfTextPdfICC_Profile:", "PdfICCBased", NULL, 0x1, NULL },
    { "initWithComItextpdfTextPdfICC_Profile:withInt:", "PdfICCBased", NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfPdfICCBased = { "PdfICCBased", "com.itextpdf.text.pdf", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfPdfICCBased;
}

@end