//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/DocListener.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/DocListener.java"

#include "com/itextpdf/text/DocListener.h"
#include "com/itextpdf/text/Rectangle.h"

@interface ComItextpdfTextDocListener : NSObject
@end

@implementation ComItextpdfTextDocListener

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "open", NULL, "V", 0x401, NULL },
    { "close", NULL, "V", 0x401, NULL },
    { "newPage", NULL, "Z", 0x401, NULL },
    { "setPageSizeWithComItextpdfTextRectangle:", "setPageSize", "Z", 0x401, NULL },
    { "setMarginsWithFloat:withFloat:withFloat:withFloat:", "setMargins", "Z", 0x401, NULL },
    { "setMarginMirroringWithBoolean:", "setMarginMirroring", "Z", 0x401, NULL },
    { "setMarginMirroringTopBottomWithBoolean:", "setMarginMirroringTopBottom", "Z", 0x401, NULL },
    { "setPageCountWithInt:", "setPageCount", "V", 0x401, NULL },
    { "resetPageCount", NULL, "V", 0x401, NULL },
  };
  static const J2ObjcClassInfo _ComItextpdfTextDocListener = { "DocListener", "com.itextpdf.text", NULL, 0x201, 9, methods, 0, NULL, 0, NULL};
  return &_ComItextpdfTextDocListener;
}

@end
