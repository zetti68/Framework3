//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/interfaces/IAccessibleElement.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/interfaces/IAccessibleElement.java"

#include "com/itextpdf/text/AccessibleElementId.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/interfaces/IAccessibleElement.h"
#include "java/util/HashMap.h"

@interface ComItextpdfTextPdfInterfacesIAccessibleElement : NSObject
@end

@implementation ComItextpdfTextPdfInterfacesIAccessibleElement

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getAccessibleAttributeWithComItextpdfTextPdfPdfName:", "getAccessibleAttribute", "Lcom.itextpdf.text.pdf.PdfObject;", 0x401, NULL },
    { "setAccessibleAttributeWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfObject:", "setAccessibleAttribute", "V", 0x401, NULL },
    { "getAccessibleAttributes", NULL, "Ljava.util.HashMap;", 0x401, NULL },
    { "getRole", NULL, "Lcom.itextpdf.text.pdf.PdfName;", 0x401, NULL },
    { "setRoleWithComItextpdfTextPdfPdfName:", "setRole", "V", 0x401, NULL },
    { "getId", NULL, "Lcom.itextpdf.text.AccessibleElementId;", 0x401, NULL },
    { "setIdWithComItextpdfTextAccessibleElementId:", "setId", "V", 0x401, NULL },
    { "isInline", NULL, "Z", 0x401, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfInterfacesIAccessibleElement = { "IAccessibleElement", "com.itextpdf.text.pdf.interfaces", NULL, 0x201, 8, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextPdfInterfacesIAccessibleElement;
}

@end

