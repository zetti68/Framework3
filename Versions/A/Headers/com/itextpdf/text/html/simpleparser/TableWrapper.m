//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/TableWrapper.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/TableWrapper.java"

#include "IOSPrimitiveArray.h"
#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ElementListener.h"
#include "com/itextpdf/text/html/HtmlTags.h"
#include "com/itextpdf/text/html/HtmlUtilities.h"
#include "com/itextpdf/text/html/simpleparser/TableWrapper.h"
#include "com/itextpdf/text/pdf/PdfPCell.h"
#include "com/itextpdf/text/pdf/PdfPTable.h"
#include "java/lang/Exception.h"
#include "java/lang/Float.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"


#line 67
@implementation ComItextpdfTextHtmlSimpleparserTableWrapper


#line 88
- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)attrs {
  if (self = [super init]) {
    styles_ =
#line 72
    [[JavaUtilHashMap alloc] init];
    rows_ =
#line 76
    [[JavaUtilArrayList alloc] init];
    
#line 89
    [self->styles_ putAllWithJavaUtilMap:attrs];
  }
  return self;
}


#line 96
- (void)addRowWithJavaUtilList:(id<JavaUtilList>)row {
  
#line 97
  if (row != nil) {
    [JavaUtilCollections reverseWithJavaUtilList:row];
    [((id<JavaUtilList>) nil_chk(rows_)) addWithId:row];
    row = nil;
  }
}


#line 108
- (void)setColWidthsWithFloatArray:(IOSFloatArray *)colWidths {
  
#line 109
  self->colWidths_ = colWidths;
}


#line 117
- (ComItextpdfTextPdfPdfPTable *)createTable {
  
#line 119
  if ([((id<JavaUtilList>) nil_chk(rows_)) isEmpty])
#line 120
  return [[ComItextpdfTextPdfPdfPTable alloc] initWithInt:1];
  
#line 122
  jint ncol = 0;
  for (ComItextpdfTextPdfPdfPCell * __strong pc in nil_chk([rows_ getWithInt:0])) {
    ncol += [((ComItextpdfTextPdfPdfPCell *) nil_chk(pc)) getColspan];
  }
  ComItextpdfTextPdfPdfPTable *table = [[ComItextpdfTextPdfPdfPTable alloc] initWithInt:ncol];
  
#line 128
  NSString *width = [((id<JavaUtilMap>) nil_chk(styles_)) getWithId:ComItextpdfTextHtmlHtmlTags_get_WIDTH_()];
  if (width == nil)
#line 130
  [table setWidthPercentageWithFloat:100];
  else {
    if ([width hasSuffix:@"%"])
#line 133
    [table setWidthPercentageWithFloat:[JavaLangFloat parseFloatWithNSString:[width substring:0 endIndex:((jint) [width length]) - 1]]];
    else {
      [table setTotalWidthWithFloat:[JavaLangFloat parseFloatWithNSString:width]];
      [table setLockedWidthWithBoolean:YES];
    }
  }
  
#line 140
  NSString *alignment = [styles_ getWithId:ComItextpdfTextHtmlHtmlTags_get_ALIGN_()];
  jint align = ComItextpdfTextElement_ALIGN_LEFT;
  if (alignment != nil) {
    align = [ComItextpdfTextHtmlHtmlUtilities alignmentValueWithNSString:alignment];
  }
  [table setHorizontalAlignmentWithInt:align];
  
#line 147
  @try {
    if (colWidths_ != nil)
#line 149
    [table setWidthsWithFloatArray:colWidths_];
  }
  @catch (
#line 150
  JavaLangException *e) {
  }
  
#line 154
  for (id<JavaUtilList> __strong col in rows_) {
    for (ComItextpdfTextPdfPdfPCell * __strong pc in nil_chk(col)) {
      (void) [table addCellWithComItextpdfTextPdfPdfPCell:pc];
    }
  }
  return table;
}


#line 167
- (id<JavaUtilList>)getChunks {
  
#line 168
  return nil;
}


#line 174
- (jboolean)isContent {
  
#line 175
  return NO;
}


#line 181
- (jboolean)isNestable {
  
#line 182
  return NO;
}


#line 188
- (jboolean)processWithComItextpdfTextElementListener:(id<ComItextpdfTextElementListener>)listener {
  
#line 189
  return NO;
}


#line 195
- (jint)type {
  
#line 196
  return 0;
}

- (void)copyAllFieldsTo:(ComItextpdfTextHtmlSimpleparserTableWrapper *)other {
  [super copyAllFieldsTo:other];
  other->colWidths_ = colWidths_;
  other->rows_ = rows_;
  other->styles_ = styles_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "TableWrapper", NULL, 0x1, NULL },
    { "addRowWithJavaUtilList:", "addRow", "V", 0x1, NULL },
    { "setColWidthsWithFloatArray:", "setColWidths", "V", 0x1, NULL },
    { "createTable", NULL, "Lcom.itextpdf.text.pdf.PdfPTable;", 0x1, NULL },
    { "getChunks", NULL, "Ljava.util.List;", 0x1, NULL },
    { "isContent", NULL, "Z", 0x1, NULL },
    { "isNestable", NULL, "Z", 0x1, NULL },
    { "processWithComItextpdfTextElementListener:", "process", "Z", 0x1, NULL },
    { "type", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "styles_", NULL, 0x12, "Ljava.util.Map;", NULL,  },
    { "rows_", NULL, 0x12, "Ljava.util.List;", NULL,  },
    { "colWidths_", NULL, 0x2, "[F", NULL,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextHtmlSimpleparserTableWrapper = { "TableWrapper", "com.itextpdf.text.html.simpleparser", NULL, 0x1, 9, methods, 3, fields, 0, NULL};
  return &_ComItextpdfTextHtmlSimpleparserTableWrapper;
}

@end
