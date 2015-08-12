//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/simpleparser/EntitiesToUnicode.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/xml/simpleparser/EntitiesToUnicode.java"

#include "com/itextpdf/text/xml/simpleparser/EntitiesToUnicode.h"
#include "java/lang/Character.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuffer.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"

BOOL ComItextpdfTextXmlSimpleparserEntitiesToUnicode_initialized = NO;


#line 54
@implementation ComItextpdfTextXmlSimpleparserEntitiesToUnicode

id<JavaUtilMap> ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_;


#line 365
+ (jchar)decodeEntityWithNSString:(NSString *)name {
  
#line 366
  if ([((NSString *) nil_chk(name)) hasPrefix:@"#x"]) {
    @try {
      return (jchar) [JavaLangInteger parseIntWithNSString:[name substring:2] withInt:16];
    }
    @catch (JavaLangNumberFormatException *nfe) {
      return 0x0000;
    }
  }
  if ([name hasPrefix:@"#"]) {
    @try {
      return (jchar) [JavaLangInteger parseIntWithNSString:[name substring:1]];
    }
    @catch (JavaLangNumberFormatException *nfe) {
      return 0x0000;
    }
  }
  JavaLangCharacter *c = [((id<JavaUtilMap>) nil_chk(ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_)) getWithId:name];
  if (c == nil)
#line 384
  return 0x0000;
  else
#line 386
  return [c charValue];
}

+ (NSString *)decodeStringWithNSString:(NSString *)s {
  
#line 394
  jint pos_amp = [((NSString *) nil_chk(s)) indexOf:'&'];
  if (pos_amp == -1) return s;
  
#line 397
  jint pos_sc;
  jint pos_a;
  JavaLangStringBuffer *buf = [[JavaLangStringBuffer alloc] initWithNSString:[s substring:0 endIndex:pos_amp]];
  jchar replace;
  while (YES) {
    pos_sc = [s indexOf:';' fromIndex:pos_amp];
    if (pos_sc == -1) {
      (void) [buf appendWithNSString:[s substring:pos_amp]];
      return [buf description];
    }
    pos_a = [s indexOf:'&' fromIndex:pos_amp + 1];
    while (pos_a != -1 && pos_a < pos_sc) {
      (void) [buf appendWithNSString:[s substring:pos_amp endIndex:pos_a]];
      pos_amp = pos_a;
      pos_a = [s indexOf:'&' fromIndex:pos_amp + 1];
    }
    replace = [ComItextpdfTextXmlSimpleparserEntitiesToUnicode decodeEntityWithNSString:[s substring:pos_amp + 1 endIndex:pos_sc]];
    if (((jint) [s length]) < pos_sc + 1) {
      return [buf description];
    }
    if (replace == 0x0000) {
      (void) [buf appendWithNSString:[s substring:pos_amp endIndex:pos_sc + 1]];
    }
    else {
      (void) [buf appendWithChar:replace];
    }
    pos_amp = [s indexOf:'&' fromIndex:pos_sc];
    if (pos_amp == -1) {
      (void) [buf appendWithNSString:[s substring:pos_sc + 1]];
      return [buf description];
    }
    else {
      (void) [buf appendWithNSString:[s substring:pos_sc + 1 endIndex:pos_amp]];
    }
  }
}

- (instancetype)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComItextpdfTextXmlSimpleparserEntitiesToUnicode class]) {
    ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ =
#line 59
    [[JavaUtilHashMap alloc] init];
    {
      
#line 61
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"nbsp" withId:[JavaLangCharacter valueOfWithChar:0x00a0]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"iexcl" withId:[JavaLangCharacter valueOfWithChar:0x00a1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"cent" withId:[JavaLangCharacter valueOfWithChar:0x00a2]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"pound" withId:[JavaLangCharacter valueOfWithChar:0x00a3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"curren" withId:[JavaLangCharacter valueOfWithChar:0x00a4]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"yen" withId:[JavaLangCharacter valueOfWithChar:0x00a5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"brvbar" withId:[JavaLangCharacter valueOfWithChar:0x00a6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sect" withId:[JavaLangCharacter valueOfWithChar:0x00a7]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"uml" withId:[JavaLangCharacter valueOfWithChar:0x00a8]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"copy" withId:[JavaLangCharacter valueOfWithChar:0x00a9]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ordf" withId:[JavaLangCharacter valueOfWithChar:0x00aa]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"laquo" withId:[JavaLangCharacter valueOfWithChar:0x00ab]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"not" withId:[JavaLangCharacter valueOfWithChar:0x00ac]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"shy" withId:[JavaLangCharacter valueOfWithChar:0x00ad]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"reg" withId:[JavaLangCharacter valueOfWithChar:0x00ae]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"macr" withId:[JavaLangCharacter valueOfWithChar:0x00af]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"deg" withId:[JavaLangCharacter valueOfWithChar:0x00b0]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"plusmn" withId:[JavaLangCharacter valueOfWithChar:0x00b1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sup2" withId:[JavaLangCharacter valueOfWithChar:0x00b2]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sup3" withId:[JavaLangCharacter valueOfWithChar:0x00b3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"acute" withId:[JavaLangCharacter valueOfWithChar:0x00b4]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"micro" withId:[JavaLangCharacter valueOfWithChar:0x00b5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"para" withId:[JavaLangCharacter valueOfWithChar:0x00b6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"middot" withId:[JavaLangCharacter valueOfWithChar:0x00b7]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"cedil" withId:[JavaLangCharacter valueOfWithChar:0x00b8]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sup1" withId:[JavaLangCharacter valueOfWithChar:0x00b9]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ordm" withId:[JavaLangCharacter valueOfWithChar:0x00ba]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"raquo" withId:[JavaLangCharacter valueOfWithChar:0x00bb]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"frac14" withId:[JavaLangCharacter valueOfWithChar:0x00bc]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"frac12" withId:[JavaLangCharacter valueOfWithChar:0x00bd]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"frac34" withId:[JavaLangCharacter valueOfWithChar:0x00be]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"iquest" withId:[JavaLangCharacter valueOfWithChar:0x00bf]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Agrave" withId:[JavaLangCharacter valueOfWithChar:0x00c0]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Aacute" withId:[JavaLangCharacter valueOfWithChar:0x00c1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Acirc" withId:[JavaLangCharacter valueOfWithChar:0x00c2]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Atilde" withId:[JavaLangCharacter valueOfWithChar:0x00c3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Auml" withId:[JavaLangCharacter valueOfWithChar:0x00c4]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Aring" withId:[JavaLangCharacter valueOfWithChar:0x00c5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"AElig" withId:[JavaLangCharacter valueOfWithChar:0x00c6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Ccedil" withId:[JavaLangCharacter valueOfWithChar:0x00c7]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Egrave" withId:[JavaLangCharacter valueOfWithChar:0x00c8]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Eacute" withId:[JavaLangCharacter valueOfWithChar:0x00c9]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Ecirc" withId:[JavaLangCharacter valueOfWithChar:0x00ca]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Euml" withId:[JavaLangCharacter valueOfWithChar:0x00cb]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Igrave" withId:[JavaLangCharacter valueOfWithChar:0x00cc]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Iacute" withId:[JavaLangCharacter valueOfWithChar:0x00cd]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Icirc" withId:[JavaLangCharacter valueOfWithChar:0x00ce]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Iuml" withId:[JavaLangCharacter valueOfWithChar:0x00cf]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ETH" withId:[JavaLangCharacter valueOfWithChar:0x00d0]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Ntilde" withId:[JavaLangCharacter valueOfWithChar:0x00d1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Ograve" withId:[JavaLangCharacter valueOfWithChar:0x00d2]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Oacute" withId:[JavaLangCharacter valueOfWithChar:0x00d3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Ocirc" withId:[JavaLangCharacter valueOfWithChar:0x00d4]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Otilde" withId:[JavaLangCharacter valueOfWithChar:0x00d5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Ouml" withId:[JavaLangCharacter valueOfWithChar:0x00d6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"times" withId:[JavaLangCharacter valueOfWithChar:0x00d7]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Oslash" withId:[JavaLangCharacter valueOfWithChar:0x00d8]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Ugrave" withId:[JavaLangCharacter valueOfWithChar:0x00d9]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Uacute" withId:[JavaLangCharacter valueOfWithChar:0x00da]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Ucirc" withId:[JavaLangCharacter valueOfWithChar:0x00db]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Uuml" withId:[JavaLangCharacter valueOfWithChar:0x00dc]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Yacute" withId:[JavaLangCharacter valueOfWithChar:0x00dd]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"THORN" withId:[JavaLangCharacter valueOfWithChar:0x00de]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"szlig" withId:[JavaLangCharacter valueOfWithChar:0x00df]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"agrave" withId:[JavaLangCharacter valueOfWithChar:0x00e0]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"aacute" withId:[JavaLangCharacter valueOfWithChar:0x00e1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"acirc" withId:[JavaLangCharacter valueOfWithChar:0x00e2]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"atilde" withId:[JavaLangCharacter valueOfWithChar:0x00e3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"auml" withId:[JavaLangCharacter valueOfWithChar:0x00e4]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"aring" withId:[JavaLangCharacter valueOfWithChar:0x00e5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"aelig" withId:[JavaLangCharacter valueOfWithChar:0x00e6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ccedil" withId:[JavaLangCharacter valueOfWithChar:0x00e7]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"egrave" withId:[JavaLangCharacter valueOfWithChar:0x00e8]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"eacute" withId:[JavaLangCharacter valueOfWithChar:0x00e9]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ecirc" withId:[JavaLangCharacter valueOfWithChar:0x00ea]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"euml" withId:[JavaLangCharacter valueOfWithChar:0x00eb]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"igrave" withId:[JavaLangCharacter valueOfWithChar:0x00ec]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"iacute" withId:[JavaLangCharacter valueOfWithChar:0x00ed]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"icirc" withId:[JavaLangCharacter valueOfWithChar:0x00ee]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"iuml" withId:[JavaLangCharacter valueOfWithChar:0x00ef]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"eth" withId:[JavaLangCharacter valueOfWithChar:0x00f0]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ntilde" withId:[JavaLangCharacter valueOfWithChar:0x00f1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ograve" withId:[JavaLangCharacter valueOfWithChar:0x00f2]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"oacute" withId:[JavaLangCharacter valueOfWithChar:0x00f3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ocirc" withId:[JavaLangCharacter valueOfWithChar:0x00f4]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"otilde" withId:[JavaLangCharacter valueOfWithChar:0x00f5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ouml" withId:[JavaLangCharacter valueOfWithChar:0x00f6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"divide" withId:[JavaLangCharacter valueOfWithChar:0x00f7]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"oslash" withId:[JavaLangCharacter valueOfWithChar:0x00f8]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ugrave" withId:[JavaLangCharacter valueOfWithChar:0x00f9]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"uacute" withId:[JavaLangCharacter valueOfWithChar:0x00fa]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ucirc" withId:[JavaLangCharacter valueOfWithChar:0x00fb]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"uuml" withId:[JavaLangCharacter valueOfWithChar:0x00fc]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"yacute" withId:[JavaLangCharacter valueOfWithChar:0x00fd]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"thorn" withId:[JavaLangCharacter valueOfWithChar:0x00fe]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"yuml" withId:[JavaLangCharacter valueOfWithChar:0x00ff]];
      
#line 158
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"fnof" withId:[JavaLangCharacter valueOfWithChar:0x0192]];
      
#line 160
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Alpha" withId:[JavaLangCharacter valueOfWithChar:0x0391]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Beta" withId:[JavaLangCharacter valueOfWithChar:0x0392]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Gamma" withId:[JavaLangCharacter valueOfWithChar:0x0393]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Delta" withId:[JavaLangCharacter valueOfWithChar:0x0394]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Epsilon" withId:[JavaLangCharacter valueOfWithChar:0x0395]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Zeta" withId:[JavaLangCharacter valueOfWithChar:0x0396]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Eta" withId:[JavaLangCharacter valueOfWithChar:0x0397]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Theta" withId:[JavaLangCharacter valueOfWithChar:0x0398]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Iota" withId:[JavaLangCharacter valueOfWithChar:0x0399]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Kappa" withId:[JavaLangCharacter valueOfWithChar:0x039a]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Lambda" withId:[JavaLangCharacter valueOfWithChar:0x039b]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Mu" withId:[JavaLangCharacter valueOfWithChar:0x039c]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Nu" withId:[JavaLangCharacter valueOfWithChar:0x039d]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Xi" withId:[JavaLangCharacter valueOfWithChar:0x039e]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Omicron" withId:[JavaLangCharacter valueOfWithChar:0x039f]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Pi" withId:[JavaLangCharacter valueOfWithChar:0x03a0]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Rho" withId:[JavaLangCharacter valueOfWithChar:0x03a1]];
      
#line 178
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Sigma" withId:[JavaLangCharacter valueOfWithChar:0x03a3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Tau" withId:[JavaLangCharacter valueOfWithChar:0x03a4]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Upsilon" withId:[JavaLangCharacter valueOfWithChar:0x03a5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Phi" withId:[JavaLangCharacter valueOfWithChar:0x03a6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Chi" withId:[JavaLangCharacter valueOfWithChar:0x03a7]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Psi" withId:[JavaLangCharacter valueOfWithChar:0x03a8]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Omega" withId:[JavaLangCharacter valueOfWithChar:0x03a9]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"alpha" withId:[JavaLangCharacter valueOfWithChar:0x03b1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"beta" withId:[JavaLangCharacter valueOfWithChar:0x03b2]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"gamma" withId:[JavaLangCharacter valueOfWithChar:0x03b3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"delta" withId:[JavaLangCharacter valueOfWithChar:0x03b4]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"epsilon" withId:[JavaLangCharacter valueOfWithChar:0x03b5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"zeta" withId:[JavaLangCharacter valueOfWithChar:0x03b6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"eta" withId:[JavaLangCharacter valueOfWithChar:0x03b7]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"theta" withId:[JavaLangCharacter valueOfWithChar:0x03b8]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"iota" withId:[JavaLangCharacter valueOfWithChar:0x03b9]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"kappa" withId:[JavaLangCharacter valueOfWithChar:0x03ba]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lambda" withId:[JavaLangCharacter valueOfWithChar:0x03bb]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"mu" withId:[JavaLangCharacter valueOfWithChar:0x03bc]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"nu" withId:[JavaLangCharacter valueOfWithChar:0x03bd]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"xi" withId:[JavaLangCharacter valueOfWithChar:0x03be]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"omicron" withId:[JavaLangCharacter valueOfWithChar:0x03bf]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"pi" withId:[JavaLangCharacter valueOfWithChar:0x03c0]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rho" withId:[JavaLangCharacter valueOfWithChar:0x03c1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sigmaf" withId:[JavaLangCharacter valueOfWithChar:0x03c2]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sigma" withId:[JavaLangCharacter valueOfWithChar:0x03c3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"tau" withId:[JavaLangCharacter valueOfWithChar:0x03c4]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"upsilon" withId:[JavaLangCharacter valueOfWithChar:0x03c5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"phi" withId:[JavaLangCharacter valueOfWithChar:0x03c6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"chi" withId:[JavaLangCharacter valueOfWithChar:0x03c7]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"psi" withId:[JavaLangCharacter valueOfWithChar:0x03c8]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"omega" withId:[JavaLangCharacter valueOfWithChar:0x03c9]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"thetasym" withId:[JavaLangCharacter valueOfWithChar:0x03d1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"upsih" withId:[JavaLangCharacter valueOfWithChar:0x03d2]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"piv" withId:[JavaLangCharacter valueOfWithChar:0x03d6]];
      
#line 214
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"bull" withId:[JavaLangCharacter valueOfWithChar:0x2022]];
      
#line 216
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"hellip" withId:[JavaLangCharacter valueOfWithChar:0x2026]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"prime" withId:[JavaLangCharacter valueOfWithChar:0x2032]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Prime" withId:[JavaLangCharacter valueOfWithChar:0x2033]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"oline" withId:[JavaLangCharacter valueOfWithChar:0x203e]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"frasl" withId:[JavaLangCharacter valueOfWithChar:0x2044]];
      
#line 222
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"weierp" withId:[JavaLangCharacter valueOfWithChar:0x2118]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"image" withId:[JavaLangCharacter valueOfWithChar:0x2111]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"real" withId:[JavaLangCharacter valueOfWithChar:0x211c]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"trade" withId:[JavaLangCharacter valueOfWithChar:0x2122]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"alefsym" withId:[JavaLangCharacter valueOfWithChar:0x2135]];
      
#line 230
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"larr" withId:[JavaLangCharacter valueOfWithChar:0x2190]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"uarr" withId:[JavaLangCharacter valueOfWithChar:0x2191]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rarr" withId:[JavaLangCharacter valueOfWithChar:0x2192]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"darr" withId:[JavaLangCharacter valueOfWithChar:0x2193]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"harr" withId:[JavaLangCharacter valueOfWithChar:0x2194]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"crarr" withId:[JavaLangCharacter valueOfWithChar:0x21b5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lArr" withId:[JavaLangCharacter valueOfWithChar:0x21d0]];
      
#line 240
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"uArr" withId:[JavaLangCharacter valueOfWithChar:0x21d1]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rArr" withId:[JavaLangCharacter valueOfWithChar:0x21d2]];
      
#line 245
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"dArr" withId:[JavaLangCharacter valueOfWithChar:0x21d3]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"hArr" withId:[JavaLangCharacter valueOfWithChar:0x21d4]];
      
#line 248
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"forall" withId:[JavaLangCharacter valueOfWithChar:0x2200]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"part" withId:[JavaLangCharacter valueOfWithChar:0x2202]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"exist" withId:[JavaLangCharacter valueOfWithChar:0x2203]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"empty" withId:[JavaLangCharacter valueOfWithChar:0x2205]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"nabla" withId:[JavaLangCharacter valueOfWithChar:0x2207]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"isin" withId:[JavaLangCharacter valueOfWithChar:0x2208]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"notin" withId:[JavaLangCharacter valueOfWithChar:0x2209]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ni" withId:[JavaLangCharacter valueOfWithChar:0x220b]];
      
#line 257
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"prod" withId:[JavaLangCharacter valueOfWithChar:0x220f]];
      
#line 260
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sum" withId:[JavaLangCharacter valueOfWithChar:0x2211]];
      
#line 263
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"minus" withId:[JavaLangCharacter valueOfWithChar:0x2212]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lowast" withId:[JavaLangCharacter valueOfWithChar:0x2217]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"radic" withId:[JavaLangCharacter valueOfWithChar:0x221a]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"prop" withId:[JavaLangCharacter valueOfWithChar:0x221d]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"infin" withId:[JavaLangCharacter valueOfWithChar:0x221e]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ang" withId:[JavaLangCharacter valueOfWithChar:0x2220]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"and" withId:[JavaLangCharacter valueOfWithChar:0x2227]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"or" withId:[JavaLangCharacter valueOfWithChar:0x2228]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"cap" withId:[JavaLangCharacter valueOfWithChar:0x2229]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"cup" withId:[JavaLangCharacter valueOfWithChar:0x222a]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"int" withId:[JavaLangCharacter valueOfWithChar:0x222b]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"there4" withId:[JavaLangCharacter valueOfWithChar:0x2234]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sim" withId:[JavaLangCharacter valueOfWithChar:0x223c]];
      
#line 278
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"cong" withId:[JavaLangCharacter valueOfWithChar:0x2245]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"asymp" withId:[JavaLangCharacter valueOfWithChar:0x2248]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ne" withId:[JavaLangCharacter valueOfWithChar:0x2260]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"equiv" withId:[JavaLangCharacter valueOfWithChar:0x2261]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"le" withId:[JavaLangCharacter valueOfWithChar:0x2264]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ge" withId:[JavaLangCharacter valueOfWithChar:0x2265]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sub" withId:[JavaLangCharacter valueOfWithChar:0x2282]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sup" withId:[JavaLangCharacter valueOfWithChar:0x2283]];
      
#line 289
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"nsub" withId:[JavaLangCharacter valueOfWithChar:0x2284]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sube" withId:[JavaLangCharacter valueOfWithChar:0x2286]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"supe" withId:[JavaLangCharacter valueOfWithChar:0x2287]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"oplus" withId:[JavaLangCharacter valueOfWithChar:0x2295]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"otimes" withId:[JavaLangCharacter valueOfWithChar:0x2297]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"perp" withId:[JavaLangCharacter valueOfWithChar:0x22a5]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sdot" withId:[JavaLangCharacter valueOfWithChar:0x22c5]];
      
#line 298
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lceil" withId:[JavaLangCharacter valueOfWithChar:0x2308]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rceil" withId:[JavaLangCharacter valueOfWithChar:0x2309]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lfloor" withId:[JavaLangCharacter valueOfWithChar:0x230a]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rfloor" withId:[JavaLangCharacter valueOfWithChar:0x230b]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lang" withId:[JavaLangCharacter valueOfWithChar:0x2329]];
      
#line 305
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rang" withId:[JavaLangCharacter valueOfWithChar:0x232a]];
      
#line 309
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"loz" withId:[JavaLangCharacter valueOfWithChar:0x25ca]];
      
#line 311
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"spades" withId:[JavaLangCharacter valueOfWithChar:0x2660]];
      
#line 313
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"clubs" withId:[JavaLangCharacter valueOfWithChar:0x2663]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"hearts" withId:[JavaLangCharacter valueOfWithChar:0x2665]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"diams" withId:[JavaLangCharacter valueOfWithChar:0x2666]];
      
#line 317
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"quot" withId:[JavaLangCharacter valueOfWithChar:'"']];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"amp" withId:[JavaLangCharacter valueOfWithChar:'&']];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"apos" withId:[JavaLangCharacter valueOfWithChar:'\'']];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lt" withId:[JavaLangCharacter valueOfWithChar:'<']];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"gt" withId:[JavaLangCharacter valueOfWithChar:'>']];
      
#line 323
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"OElig" withId:[JavaLangCharacter valueOfWithChar:0x0152]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"oelig" withId:[JavaLangCharacter valueOfWithChar:0x0153]];
      
#line 326
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Scaron" withId:[JavaLangCharacter valueOfWithChar:0x0160]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"scaron" withId:[JavaLangCharacter valueOfWithChar:0x0161]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Yuml" withId:[JavaLangCharacter valueOfWithChar:0x0178]];
      
#line 330
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"circ" withId:[JavaLangCharacter valueOfWithChar:0x02c6]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"tilde" withId:[JavaLangCharacter valueOfWithChar:0x02dc]];
      
#line 333
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ensp" withId:[JavaLangCharacter valueOfWithChar:0x2002]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"emsp" withId:[JavaLangCharacter valueOfWithChar:0x2003]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"thinsp" withId:[JavaLangCharacter valueOfWithChar:0x2009]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"zwnj" withId:[JavaLangCharacter valueOfWithChar:0x200c]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"zwj" withId:[JavaLangCharacter valueOfWithChar:0x200d]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lrm" withId:[JavaLangCharacter valueOfWithChar:0x200e]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rlm" withId:[JavaLangCharacter valueOfWithChar:0x200f]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ndash" withId:[JavaLangCharacter valueOfWithChar:0x2013]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"mdash" withId:[JavaLangCharacter valueOfWithChar:0x2014]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lsquo" withId:[JavaLangCharacter valueOfWithChar:0x2018]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rsquo" withId:[JavaLangCharacter valueOfWithChar:0x2019]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"sbquo" withId:[JavaLangCharacter valueOfWithChar:0x201a]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"ldquo" withId:[JavaLangCharacter valueOfWithChar:0x201c]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rdquo" withId:[JavaLangCharacter valueOfWithChar:0x201d]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"bdquo" withId:[JavaLangCharacter valueOfWithChar:0x201e]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"dagger" withId:[JavaLangCharacter valueOfWithChar:0x2020]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"Dagger" withId:[JavaLangCharacter valueOfWithChar:0x2021]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"permil" withId:[JavaLangCharacter valueOfWithChar:0x2030]];
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"lsaquo" withId:[JavaLangCharacter valueOfWithChar:0x2039]];
      
#line 353
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"rsaquo" withId:[JavaLangCharacter valueOfWithChar:0x203a]];
      
#line 355
      (void) [ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_ putWithId:@"euro" withId:[JavaLangCharacter valueOfWithChar:0x20ac]];
    }
    ComItextpdfTextXmlSimpleparserEntitiesToUnicode_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "decodeEntityWithNSString:", "decodeEntity", "C", 0x9, NULL },
    { "decodeStringWithNSString:", "decodeString", "Ljava.lang.String;", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MAP_", NULL, 0x1a, "Ljava.util.Map;", &ComItextpdfTextXmlSimpleparserEntitiesToUnicode_MAP_,  },
  };
  static const J2ObjcClassInfo _ComItextpdfTextXmlSimpleparserEntitiesToUnicode = { "EntitiesToUnicode", "com.itextpdf.text.xml.simpleparser", NULL, 0x1, 3, methods, 1, fields, 0, NULL};
  return &_ComItextpdfTextXmlSimpleparserEntitiesToUnicode;
}

@end
