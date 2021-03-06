//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Element.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/Element.java"

#include "com/itextpdf/text/Element.h"
#include "com/itextpdf/text/ElementListener.h"
#include "java/util/List.h"

@interface ComItextpdfTextElement : NSObject
@end

@implementation ComItextpdfTextElement

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "processWithComItextpdfTextElementListener:", "process", "Z", 0x401, NULL },
    { "type", NULL, "I", 0x401, NULL },
    { "isContent", NULL, "Z", 0x401, NULL },
    { "isNestable", NULL, "Z", 0x401, NULL },
    { "getChunks", NULL, "Ljava.util.List;", 0x401, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x401, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_HEADER },
    { "TITLE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_TITLE },
    { "SUBJECT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_SUBJECT },
    { "KEYWORDS_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_KEYWORDS },
    { "AUTHOR_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_AUTHOR },
    { "PRODUCER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_PRODUCER },
    { "CREATIONDATE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CREATIONDATE },
    { "CREATOR_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CREATOR },
    { "LANGUAGE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_LANGUAGE },
    { "CHUNK_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CHUNK },
    { "PHRASE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_PHRASE },
    { "PARAGRAPH_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_PARAGRAPH },
    { "SECTION_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_SECTION },
    { "LIST_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_LIST },
    { "LISTITEM_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_LISTITEM },
    { "CHAPTER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CHAPTER },
    { "ANCHOR_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ANCHOR },
    { "PTABLE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_PTABLE },
    { "ANNOTATION_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ANNOTATION },
    { "RECTANGLE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_RECTANGLE },
    { "JPEG_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_JPEG },
    { "JPEG2000_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_JPEG2000 },
    { "IMGRAW_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_IMGRAW },
    { "IMGTEMPLATE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_IMGTEMPLATE },
    { "JBIG2_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_JBIG2 },
    { "DIV_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_DIV },
    { "MARKED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_MARKED },
    { "YMARK_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_YMARK },
    { "WRITABLE_DIRECT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_WRITABLE_DIRECT },
    { "ALIGN_UNDEFINED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_UNDEFINED },
    { "ALIGN_LEFT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_LEFT },
    { "ALIGN_CENTER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_CENTER },
    { "ALIGN_RIGHT_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_RIGHT },
    { "ALIGN_JUSTIFIED_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_JUSTIFIED },
    { "ALIGN_TOP_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_TOP },
    { "ALIGN_MIDDLE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_MIDDLE },
    { "ALIGN_BOTTOM_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_BOTTOM },
    { "ALIGN_BASELINE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_BASELINE },
    { "ALIGN_JUSTIFIED_ALL_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_ALIGN_JUSTIFIED_ALL },
    { "CCITTG4_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CCITTG4 },
    { "CCITTG3_1D_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CCITTG3_1D },
    { "CCITTG3_2D_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CCITTG3_2D },
    { "CCITT_BLACKIS1_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CCITT_BLACKIS1 },
    { "CCITT_ENCODEDBYTEALIGN_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CCITT_ENCODEDBYTEALIGN },
    { "CCITT_ENDOFLINE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CCITT_ENDOFLINE },
    { "CCITT_ENDOFBLOCK_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComItextpdfTextElement_CCITT_ENDOFBLOCK },
  };
  static const J2ObjcClassInfo _ComItextpdfTextElement = { "Element", "com.itextpdf.text", NULL, 0x201, 6, methods, 46, fields, 0, NULL};
  return &_ComItextpdfTextElement;
}

@end

