//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/IdentityToUnicode.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/fonts/cmaps/IdentityToUnicode.java"

#include "IOSClass.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/CMapCache.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/CMapUniCid.h"
#include "com/itextpdf/text/pdf/fonts/cmaps/IdentityToUnicode.h"
#include "java/io/IOException.h"


#line 54
@implementation ComItextpdfTextPdfFontsCmapsIdentityToUnicode

ComItextpdfTextPdfFontsCmapsCMapToUnicode * ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityCNS_;
ComItextpdfTextPdfFontsCmapsCMapToUnicode * ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityJapan_;
ComItextpdfTextPdfFontsCmapsCMapToUnicode * ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityKorea_;
ComItextpdfTextPdfFontsCmapsCMapToUnicode * ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityGB_;


#line 60
+ (ComItextpdfTextPdfFontsCmapsCMapToUnicode *)GetMapFromOrderingWithNSString:(NSString *)ordering {
  if ([((NSString *) nil_chk(ordering)) isEqual:@"CNS1"]) {
    if (ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityCNS_ == nil) {
      ComItextpdfTextPdfFontsCmapsCMapUniCid *uni = [ComItextpdfTextPdfFontsCmapsCMapCache getCachedCMapUniCidWithNSString:@"UniCNS-UTF16-H"];
      if (uni == nil)
#line 65
      return nil;
      ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityCNS_ = [((ComItextpdfTextPdfFontsCmapsCMapUniCid *) nil_chk(uni)) exportToUnicode];
    }
    return ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityCNS_;
  }
  else if ([ordering isEqual:@"Japan1"]) {
    if (ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityJapan_ == nil) {
      ComItextpdfTextPdfFontsCmapsCMapUniCid *uni = [ComItextpdfTextPdfFontsCmapsCMapCache getCachedCMapUniCidWithNSString:@"UniJIS-UTF16-H"];
      if (uni == nil)
#line 74
      return nil;
      ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityJapan_ = [((ComItextpdfTextPdfFontsCmapsCMapUniCid *) nil_chk(uni)) exportToUnicode];
    }
    return ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityJapan_;
  }
  else if ([ordering isEqual:@"Korea1"]) {
    if (ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityKorea_ == nil) {
      ComItextpdfTextPdfFontsCmapsCMapUniCid *uni = [ComItextpdfTextPdfFontsCmapsCMapCache getCachedCMapUniCidWithNSString:@"UniKS-UTF16-H"];
      if (uni == nil)
#line 83
      return nil;
      ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityKorea_ = [((ComItextpdfTextPdfFontsCmapsCMapUniCid *) nil_chk(uni)) exportToUnicode];
    }
    return ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityKorea_;
  }
  else if ([ordering isEqual:@"GB1"]) {
    if (ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityGB_ == nil) {
      ComItextpdfTextPdfFontsCmapsCMapUniCid *uni = [ComItextpdfTextPdfFontsCmapsCMapCache getCachedCMapUniCidWithNSString:@"UniGB-UTF16-H"];
      if (uni == nil)
#line 92
      return nil;
      ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityGB_ = [((ComItextpdfTextPdfFontsCmapsCMapUniCid *) nil_chk(uni)) exportToUnicode];
    }
    return ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityGB_;
  }
  return nil;
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "GetMapFromOrderingWithNSString:", "GetMapFromOrdering", "Lcom.itextpdf.text.pdf.fonts.cmaps.CMapToUnicode;", 0x9, "Ljava.io.IOException;" },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "identityCNS_", NULL, 0xa, "Lcom.itextpdf.text.pdf.fonts.cmaps.CMapToUnicode;", &ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityCNS_,  },
    { "identityJapan_", NULL, 0xa, "Lcom.itextpdf.text.pdf.fonts.cmaps.CMapToUnicode;", &ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityJapan_,  },
    { "identityKorea_", NULL, 0xa, "Lcom.itextpdf.text.pdf.fonts.cmaps.CMapToUnicode;", &ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityKorea_,  },
    { "identityGB_", NULL, 0xa, "Lcom.itextpdf.text.pdf.fonts.cmaps.CMapToUnicode;", &ComItextpdfTextPdfFontsCmapsIdentityToUnicode_identityGB_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfFontsCmapsIdentityToUnicode = { "IdentityToUnicode", "com.itextpdf.text.pdf.fonts.cmaps", NULL, 0x1, 2, methods, 4, fields, 0, NULL};
  return &_ComItextpdfTextPdfFontsCmapsIdentityToUnicode;
}

@end
