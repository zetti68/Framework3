//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfCollectionSchema.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/collection/PdfCollectionSchema.java"

#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/collection/PdfCollectionField.h"
#include "com/itextpdf/text/pdf/collection/PdfCollectionSchema.h"


#line 50
@implementation ComItextpdfTextPdfCollectionPdfCollectionSchema


#line 54
- (instancetype)init {
  return
#line 55
  [super initWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_COLLECTIONSCHEMA_()];
}


#line 63
- (void)addFieldWithNSString:(NSString *)name
withComItextpdfTextPdfCollectionPdfCollectionField:(ComItextpdfTextPdfCollectionPdfCollectionField *)field {
  
#line 64
  [self putWithComItextpdfTextPdfPdfName:[[ComItextpdfTextPdfPdfName alloc] initWithNSString:name] withComItextpdfTextPdfPdfObject:field];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PdfCollectionSchema", NULL, 0x1, NULL },
    { "addFieldWithNSString:withComItextpdfTextPdfCollectionPdfCollectionField:", "addField", "V", 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfCollectionPdfCollectionSchema = { "PdfCollectionSchema", "com.itextpdf.text.pdf.collection", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfCollectionPdfCollectionSchema;
}

@end
