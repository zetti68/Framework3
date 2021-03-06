//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/PageSize.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/PageSize.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/PageSize.h"
#include "com/itextpdf/text/Rectangle.h"
#include "com/itextpdf/text/RectangleReadOnly.h"
#include "com/itextpdf/text/error_messages/MessageLocalization.h"
#include "java/lang/Exception.h"
#include "java/lang/Float.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/reflect/Field.h"

BOOL ComItextpdfTextPageSize_initialized = NO;


#line 56
@implementation ComItextpdfTextPageSize

ComItextpdfTextRectangle * ComItextpdfTextPageSize_LETTER_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_NOTE_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_LEGAL_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_TABLOID_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_EXECUTIVE_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_POSTCARD_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A0_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A1_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A2_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A3_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A4_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A5_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A6_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A7_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A8_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A9_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A10_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B0_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B1_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B2_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B3_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B4_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B5_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B6_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B7_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B8_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B9_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_B10_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ARCH_E_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ARCH_D_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ARCH_C_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ARCH_B_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ARCH_A_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_FLSA_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_FLSE_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_HALFLETTER_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize__11X17_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ID_1_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ID_2_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ID_3_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_LEDGER_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_CROWN_QUARTO_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_LARGE_CROWN_QUARTO_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_DEMY_QUARTO_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ROYAL_QUARTO_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_CROWN_OCTAVO_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_LARGE_CROWN_OCTAVO_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_DEMY_OCTAVO_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_ROYAL_OCTAVO_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_SMALL_PAPERBACK_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_PENGUIN_SMALL_PAPERBACK_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_PENGUIN_LARGE_PAPERBACK_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_LETTER_LANDSCAPE_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_LEGAL_LANDSCAPE_;
ComItextpdfTextRectangle * ComItextpdfTextPageSize_A4_LANDSCAPE_;


#line 248
+ (ComItextpdfTextRectangle *)getRectangleWithNSString:(NSString *)name {
  
#line 249
  name = [((NSString *) nil_chk([((NSString *) nil_chk(name)) trim])) uppercaseString];
  jint pos = [((NSString *) nil_chk(name)) indexOf:' '];
  if (pos == -1) {
    @try {
      JavaLangReflectField *field = [[IOSClass classWithClass:[ComItextpdfTextPageSize class]] getDeclaredField:[name uppercaseString]];
      return (ComItextpdfTextRectangle *) check_class_cast([((JavaLangReflectField *) nil_chk(field)) getWithId:nil], [ComItextpdfTextRectangle class]);
    }
    @catch (
#line 255
    JavaLangException *e) {
      @throw [[JavaLangRuntimeException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"can.t.find.page.size.1" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ name } count:1 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
  }
  else {
    @try {
      NSString *width = [name substring:0 endIndex:pos];
      NSString *height = [name substring:pos + 1];
      return [[ComItextpdfTextRectangle alloc] initWithFloat:[JavaLangFloat parseFloatWithNSString:width] withFloat:[JavaLangFloat parseFloatWithNSString:height]];
    }
    @catch (
#line 264
    JavaLangException *e) {
      @throw [[JavaLangRuntimeException alloc] initWithNSString:[ComItextpdfTextError_messagesMessageLocalization getComposedMessageWithNSString:@"1.is.not.a.valid.page.size.format.2" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ name, [((JavaLangException *) nil_chk(e)) getMessage] } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
    }
  }
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComItextpdfTextPageSize class]) {
    ComItextpdfTextPageSize_LETTER_ =
#line 61
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:612 withFloat:792];
    ComItextpdfTextPageSize_NOTE_ =
#line 64
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:540 withFloat:720];
    ComItextpdfTextPageSize_LEGAL_ =
#line 67
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:612 withFloat:1008];
    ComItextpdfTextPageSize_TABLOID_ =
#line 70
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:792 withFloat:1224];
    ComItextpdfTextPageSize_EXECUTIVE_ =
#line 73
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:522 withFloat:756];
    ComItextpdfTextPageSize_POSTCARD_ =
#line 76
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:283 withFloat:416];
    ComItextpdfTextPageSize_A0_ =
#line 79
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:2384 withFloat:3370];
    ComItextpdfTextPageSize_A1_ =
#line 82
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:1684 withFloat:2384];
    ComItextpdfTextPageSize_A2_ =
#line 85
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:1191 withFloat:1684];
    ComItextpdfTextPageSize_A3_ =
#line 88
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:842 withFloat:1191];
    ComItextpdfTextPageSize_A4_ =
#line 91
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:595 withFloat:842];
    ComItextpdfTextPageSize_A5_ =
#line 94
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:420 withFloat:595];
    ComItextpdfTextPageSize_A6_ =
#line 97
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:297 withFloat:420];
    ComItextpdfTextPageSize_A7_ =
#line 100
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:210 withFloat:297];
    ComItextpdfTextPageSize_A8_ =
#line 103
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:148 withFloat:210];
    ComItextpdfTextPageSize_A9_ =
#line 106
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:105 withFloat:148];
    ComItextpdfTextPageSize_A10_ =
#line 109
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:73 withFloat:105];
    ComItextpdfTextPageSize_B0_ =
#line 112
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:2834 withFloat:4008];
    ComItextpdfTextPageSize_B1_ =
#line 115
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:2004 withFloat:2834];
    ComItextpdfTextPageSize_B2_ =
#line 118
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:1417 withFloat:2004];
    ComItextpdfTextPageSize_B3_ =
#line 121
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:1000 withFloat:1417];
    ComItextpdfTextPageSize_B4_ =
#line 124
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:708 withFloat:1000];
    ComItextpdfTextPageSize_B5_ =
#line 127
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:498 withFloat:708];
    ComItextpdfTextPageSize_B6_ =
#line 130
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:354 withFloat:498];
    ComItextpdfTextPageSize_B7_ =
#line 133
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:249 withFloat:354];
    ComItextpdfTextPageSize_B8_ =
#line 136
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:175 withFloat:249];
    ComItextpdfTextPageSize_B9_ =
#line 139
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:124 withFloat:175];
    ComItextpdfTextPageSize_B10_ =
#line 142
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:87 withFloat:124];
    ComItextpdfTextPageSize_ARCH_E_ =
#line 145
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:2592 withFloat:3456];
    ComItextpdfTextPageSize_ARCH_D_ =
#line 148
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:1728 withFloat:2592];
    ComItextpdfTextPageSize_ARCH_C_ =
#line 151
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:1296 withFloat:1728];
    ComItextpdfTextPageSize_ARCH_B_ =
#line 154
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:864 withFloat:1296];
    ComItextpdfTextPageSize_ARCH_A_ =
#line 157
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:648 withFloat:864];
    ComItextpdfTextPageSize_FLSA_ =
#line 160
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:612 withFloat:936];
    ComItextpdfTextPageSize_FLSE_ =
#line 163
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:648 withFloat:936];
    ComItextpdfTextPageSize_HALFLETTER_ =
#line 166
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:396 withFloat:612];
    ComItextpdfTextPageSize__11X17_ =
#line 169
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:792 withFloat:1224];
    ComItextpdfTextPageSize_ID_1_ =
#line 172
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:242.65f withFloat:153];
    ComItextpdfTextPageSize_ID_2_ =
#line 175
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:297 withFloat:210];
    ComItextpdfTextPageSize_ID_3_ =
#line 178
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:354 withFloat:249];
    ComItextpdfTextPageSize_LEDGER_ =
#line 181
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:1224 withFloat:792];
    ComItextpdfTextPageSize_CROWN_QUARTO_ =
#line 184
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:535 withFloat:697];
    ComItextpdfTextPageSize_LARGE_CROWN_QUARTO_ =
#line 187
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:569 withFloat:731];
    ComItextpdfTextPageSize_DEMY_QUARTO_ =
#line 190
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:620 withFloat:782];
    ComItextpdfTextPageSize_ROYAL_QUARTO_ =
#line 193
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:671 withFloat:884];
    ComItextpdfTextPageSize_CROWN_OCTAVO_ =
#line 196
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:348 withFloat:527];
    ComItextpdfTextPageSize_LARGE_CROWN_OCTAVO_ =
#line 199
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:365 withFloat:561];
    ComItextpdfTextPageSize_DEMY_OCTAVO_ =
#line 202
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:391 withFloat:612];
    ComItextpdfTextPageSize_ROYAL_OCTAVO_ =
#line 205
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:442 withFloat:663];
    ComItextpdfTextPageSize_SMALL_PAPERBACK_ =
#line 208
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:314 withFloat:504];
    ComItextpdfTextPageSize_PENGUIN_SMALL_PAPERBACK_ =
#line 211
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:314 withFloat:513];
    ComItextpdfTextPageSize_PENGUIN_LARGE_PAPERBACK_ =
#line 214
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:365 withFloat:561];
    ComItextpdfTextPageSize_LETTER_LANDSCAPE_ =
#line 223
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:612 withFloat:792 withInt:90];
    ComItextpdfTextPageSize_LEGAL_LANDSCAPE_ =
#line 230
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:612 withFloat:1008 withInt:90];
    ComItextpdfTextPageSize_A4_LANDSCAPE_ =
#line 237
    [[ComItextpdfTextRectangleReadOnly alloc] initWithFloat:595 withFloat:842 withInt:90];
    ComItextpdfTextPageSize_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getRectangleWithNSString:", "getRectangle", "Lcom.itextpdf.text.Rectangle;", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LETTER_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_LETTER_,  },
    { "NOTE_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_NOTE_,  },
    { "LEGAL_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_LEGAL_,  },
    { "TABLOID_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_TABLOID_,  },
    { "EXECUTIVE_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_EXECUTIVE_,  },
    { "POSTCARD_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_POSTCARD_,  },
    { "A0_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A0_,  },
    { "A1_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A1_,  },
    { "A2_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A2_,  },
    { "A3_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A3_,  },
    { "A4_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A4_,  },
    { "A5_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A5_,  },
    { "A6_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A6_,  },
    { "A7_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A7_,  },
    { "A8_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A8_,  },
    { "A9_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A9_,  },
    { "A10_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A10_,  },
    { "B0_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B0_,  },
    { "B1_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B1_,  },
    { "B2_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B2_,  },
    { "B3_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B3_,  },
    { "B4_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B4_,  },
    { "B5_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B5_,  },
    { "B6_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B6_,  },
    { "B7_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B7_,  },
    { "B8_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B8_,  },
    { "B9_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B9_,  },
    { "B10_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_B10_,  },
    { "ARCH_E_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ARCH_E_,  },
    { "ARCH_D_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ARCH_D_,  },
    { "ARCH_C_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ARCH_C_,  },
    { "ARCH_B_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ARCH_B_,  },
    { "ARCH_A_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ARCH_A_,  },
    { "FLSA_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_FLSA_,  },
    { "FLSE_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_FLSE_,  },
    { "HALFLETTER_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_HALFLETTER_,  },
    { "_11X17_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize__11X17_,  },
    { "ID_1_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ID_1_,  },
    { "ID_2_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ID_2_,  },
    { "ID_3_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ID_3_,  },
    { "LEDGER_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_LEDGER_,  },
    { "CROWN_QUARTO_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_CROWN_QUARTO_,  },
    { "LARGE_CROWN_QUARTO_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_LARGE_CROWN_QUARTO_,  },
    { "DEMY_QUARTO_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_DEMY_QUARTO_,  },
    { "ROYAL_QUARTO_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ROYAL_QUARTO_,  },
    { "CROWN_OCTAVO_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_CROWN_OCTAVO_,  },
    { "LARGE_CROWN_OCTAVO_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_LARGE_CROWN_OCTAVO_,  },
    { "DEMY_OCTAVO_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_DEMY_OCTAVO_,  },
    { "ROYAL_OCTAVO_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_ROYAL_OCTAVO_,  },
    { "SMALL_PAPERBACK_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_SMALL_PAPERBACK_,  },
    { "PENGUIN_SMALL_PAPERBACK_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_PENGUIN_SMALL_PAPERBACK_,  },
    { "PENGUIN_LARGE_PAPERBACK_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_PENGUIN_LARGE_PAPERBACK_,  },
    { "LETTER_LANDSCAPE_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_LETTER_LANDSCAPE_,  },
    { "LEGAL_LANDSCAPE_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_LEGAL_LANDSCAPE_,  },
    { "A4_LANDSCAPE_", NULL, 0x19, "Lcom.itextpdf.text.Rectangle;", &ComItextpdfTextPageSize_A4_LANDSCAPE_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPageSize = { "PageSize", "com.itextpdf.text", NULL, 0x1, 2, methods, 55, fields, 0, NULL};
  return &_ComItextpdfTextPageSize;
}

@end
