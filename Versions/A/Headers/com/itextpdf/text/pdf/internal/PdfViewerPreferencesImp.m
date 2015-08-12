//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/internal/PdfViewerPreferencesImp.java
//

#line 1 "/Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/pdf/internal/PdfViewerPreferencesImp.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/itextpdf/text/pdf/PdfArray.h"
#include "com/itextpdf/text/pdf/PdfBoolean.h"
#include "com/itextpdf/text/pdf/PdfDictionary.h"
#include "com/itextpdf/text/pdf/PdfName.h"
#include "com/itextpdf/text/pdf/PdfNumber.h"
#include "com/itextpdf/text/pdf/PdfObject.h"
#include "com/itextpdf/text/pdf/PdfReader.h"
#include "com/itextpdf/text/pdf/PdfWriter.h"
#include "com/itextpdf/text/pdf/internal/PdfViewerPreferencesImp.h"

BOOL ComItextpdfTextPdfInternalPdfViewerPreferencesImp_initialized = NO;


#line 62
@implementation ComItextpdfTextPdfInternalPdfViewerPreferencesImp

IOSObjectArray * ComItextpdfTextPdfInternalPdfViewerPreferencesImp_VIEWER_PREFERENCES_;
IOSObjectArray * ComItextpdfTextPdfInternalPdfViewerPreferencesImp_NONFULLSCREENPAGEMODE_PREFERENCES_;
IOSObjectArray * ComItextpdfTextPdfInternalPdfViewerPreferencesImp_DIRECTION_PREFERENCES_;
IOSObjectArray * ComItextpdfTextPdfInternalPdfViewerPreferencesImp_PAGE_BOUNDARIES_;
IOSObjectArray * ComItextpdfTextPdfInternalPdfViewerPreferencesImp_PRINTSCALING_PREFERENCES_;
IOSObjectArray * ComItextpdfTextPdfInternalPdfViewerPreferencesImp_DUPLEX_PREFERENCES_;


#line 117
- (jint)getPageLayoutAndMode {
  
#line 118
  return pageLayoutAndMode_;
}


#line 124
- (ComItextpdfTextPdfPdfDictionary *)getViewerPreferences {
  
#line 125
  return viewerPreferences_;
}


#line 135
- (void)setViewerPreferencesWithInt:(jint)preferences {
  
#line 136
  self->pageLayoutAndMode_ |= preferences;
  
#line 139
  if ((preferences & ComItextpdfTextPdfInternalPdfViewerPreferencesImp_viewerPreferencesMask) != 0) {
    pageLayoutAndMode_ = ~ComItextpdfTextPdfInternalPdfViewerPreferencesImp_viewerPreferencesMask & pageLayoutAndMode_;
    if ((preferences & ComItextpdfTextPdfPdfWriter_HideToolbar) != 0)
#line 142
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_HIDETOOLBAR_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_()];
    if ((preferences & ComItextpdfTextPdfPdfWriter_HideMenubar) != 0)
#line 144
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_HIDEMENUBAR_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_()];
    if ((preferences & ComItextpdfTextPdfPdfWriter_HideWindowUI) != 0)
#line 146
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_HIDEWINDOWUI_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_()];
    if ((preferences & ComItextpdfTextPdfPdfWriter_FitWindow) != 0)
#line 148
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_FITWINDOW_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_()];
    if ((preferences & ComItextpdfTextPdfPdfWriter_CenterWindow) != 0)
#line 150
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_CENTERWINDOW_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_()];
    if ((preferences & ComItextpdfTextPdfPdfWriter_DisplayDocTitle) != 0)
#line 152
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_DISPLAYDOCTITLE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfBoolean_get_PDFTRUE_()];
    
#line 154
    if ((preferences & ComItextpdfTextPdfPdfWriter_NonFullScreenPageModeUseNone) != 0)
#line 155
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_NONFULLSCREENPAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_USENONE_()];
    else if ((preferences & ComItextpdfTextPdfPdfWriter_NonFullScreenPageModeUseOutlines) != 0)
#line 157
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_NONFULLSCREENPAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_USEOUTLINES_()];
    else if ((preferences & ComItextpdfTextPdfPdfWriter_NonFullScreenPageModeUseThumbs) != 0)
#line 159
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_NONFULLSCREENPAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_USETHUMBS_()];
    else if ((preferences & ComItextpdfTextPdfPdfWriter_NonFullScreenPageModeUseOC) != 0)
#line 161
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_NONFULLSCREENPAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_USEOC_()];
    
#line 163
    if ((preferences & ComItextpdfTextPdfPdfWriter_DirectionL2R) != 0)
#line 164
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_DIRECTION_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_L2R_()];
    else if ((preferences & ComItextpdfTextPdfPdfWriter_DirectionR2L) != 0)
#line 166
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_DIRECTION_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_R2L_()];
    
#line 168
    if ((preferences & ComItextpdfTextPdfPdfWriter_PrintScalingNone) != 0)
#line 169
    [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PRINTSCALING_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_NONE_()];
  }
}


#line 179
- (jint)getIndexWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key {
  
#line 180
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(ComItextpdfTextPdfInternalPdfViewerPreferencesImp_VIEWER_PREFERENCES_))->size_; i++) {
    if ([((ComItextpdfTextPdfPdfName *) nil_chk(IOSObjectArray_Get(ComItextpdfTextPdfInternalPdfViewerPreferencesImp_VIEWER_PREFERENCES_, i))) isEqual:key])
#line 182
    return i;
  }
  return -1;
}

- (jboolean)isPossibleValueWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)value
                      withComItextpdfTextPdfPdfNameArray:(IOSObjectArray *)accepted {
  
#line 191
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(accepted))->size_; i++) {
    if ([((ComItextpdfTextPdfPdfName *) nil_chk(IOSObjectArray_Get(accepted, i))) isEqual:value]) {
      return YES;
    }
  }
  return NO;
}

- (void)addViewerPreferenceWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *)key
                         withComItextpdfTextPdfPdfObject:(ComItextpdfTextPdfPdfObject *)value {
  
#line 203
  switch ([self getIndexWithComItextpdfTextPdfPdfName:key]) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 14:
    if ([value isKindOfClass:[ComItextpdfTextPdfPdfBoolean class]]) {
      [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:value];
    }
    break;
    case 6:
    if ([value isKindOfClass:[ComItextpdfTextPdfPdfName class]] &&
#line 217
    [self isPossibleValueWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *) check_class_cast(value, [ComItextpdfTextPdfPdfName class]) withComItextpdfTextPdfPdfNameArray:ComItextpdfTextPdfInternalPdfViewerPreferencesImp_NONFULLSCREENPAGEMODE_PREFERENCES_]) {
      [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:value];
    }
    break;
    case 7:
    if ([value isKindOfClass:[ComItextpdfTextPdfPdfName class]] &&
#line 223
    [self isPossibleValueWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *) check_class_cast(value, [ComItextpdfTextPdfPdfName class]) withComItextpdfTextPdfPdfNameArray:ComItextpdfTextPdfInternalPdfViewerPreferencesImp_DIRECTION_PREFERENCES_]) {
      [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:value];
    }
    break;
    case 8:
    case 9:
    case 10:
    case 11:
    if ([value isKindOfClass:[ComItextpdfTextPdfPdfName class]] &&
#line 232
    [self isPossibleValueWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *) check_class_cast(value, [ComItextpdfTextPdfPdfName class]) withComItextpdfTextPdfPdfNameArray:ComItextpdfTextPdfInternalPdfViewerPreferencesImp_PAGE_BOUNDARIES_]) {
      [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:value];
    }
    break;
    case 12:
    if ([value isKindOfClass:[ComItextpdfTextPdfPdfName class]] &&
#line 238
    [self isPossibleValueWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *) check_class_cast(value, [ComItextpdfTextPdfPdfName class]) withComItextpdfTextPdfPdfNameArray:ComItextpdfTextPdfInternalPdfViewerPreferencesImp_PRINTSCALING_PREFERENCES_]) {
      [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:value];
    }
    break;
    case 13:
    if ([value isKindOfClass:[ComItextpdfTextPdfPdfName class]] &&
#line 244
    [self isPossibleValueWithComItextpdfTextPdfPdfName:(ComItextpdfTextPdfPdfName *) check_class_cast(value, [ComItextpdfTextPdfPdfName class]) withComItextpdfTextPdfPdfNameArray:ComItextpdfTextPdfInternalPdfViewerPreferencesImp_DUPLEX_PREFERENCES_]) {
      [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:value];
    }
    break;
    case 15:
    if ([value isKindOfClass:[ComItextpdfTextPdfPdfArray class]]) {
      [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:value];
    }
    break;
    case 16:
    if ([value isKindOfClass:[ComItextpdfTextPdfPdfNumber class]]) {
      [((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) putWithComItextpdfTextPdfPdfName:key withComItextpdfTextPdfPdfObject:value];
    }
    break;
  }
}


#line 267
- (void)addToCatalogWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)catalog {
  [((ComItextpdfTextPdfPdfDictionary *) nil_chk(catalog)) removeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELAYOUT_()];
  if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageLayoutSinglePage) != 0)
#line 271
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELAYOUT_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_SINGLEPAGE_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageLayoutOneColumn) != 0)
#line 273
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELAYOUT_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_ONECOLUMN_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageLayoutTwoColumnLeft) != 0)
#line 275
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELAYOUT_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_TWOCOLUMNLEFT_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageLayoutTwoColumnRight) != 0)
#line 277
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELAYOUT_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_TWOCOLUMNRIGHT_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageLayoutTwoPageLeft) != 0)
#line 279
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELAYOUT_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_TWOPAGELEFT_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageLayoutTwoPageRight) != 0)
#line 281
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELAYOUT_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_TWOPAGERIGHT_()];
  
#line 284
  [catalog removeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGEMODE_()];
  if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageModeUseNone) != 0)
#line 286
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_USENONE_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageModeUseOutlines) != 0)
#line 288
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_USEOUTLINES_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageModeUseThumbs) != 0)
#line 290
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_USETHUMBS_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageModeFullScreen) != 0)
#line 292
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_FULLSCREEN_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageModeUseOC) != 0)
#line 294
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_USEOC_()];
  else if ((pageLayoutAndMode_ & ComItextpdfTextPdfPdfWriter_PageModeUseAttachments) != 0)
#line 296
  [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGEMODE_() withComItextpdfTextPdfPdfObject:ComItextpdfTextPdfPdfName_get_USEATTACHMENTS_()];
  
#line 299
  [catalog removeWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_VIEWERPREFERENCES_()];
  if ([((ComItextpdfTextPdfPdfDictionary *) nil_chk(viewerPreferences_)) size] > 0) {
    [catalog putWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_VIEWERPREFERENCES_() withComItextpdfTextPdfPdfObject:viewerPreferences_];
  }
}


#line 305
+ (ComItextpdfTextPdfInternalPdfViewerPreferencesImp *)getViewerPreferencesWithComItextpdfTextPdfPdfDictionary:(ComItextpdfTextPdfPdfDictionary *)catalog {
  
#line 306
  ComItextpdfTextPdfInternalPdfViewerPreferencesImp *preferences = [[ComItextpdfTextPdfInternalPdfViewerPreferencesImp alloc] init];
  jint prefs = 0;
  ComItextpdfTextPdfPdfName *name = nil;
  
#line 310
  ComItextpdfTextPdfPdfObject *obj = [ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[((ComItextpdfTextPdfPdfDictionary *) nil_chk(catalog)) getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGELAYOUT_()]];
  if (obj != nil && [obj isName]) {
    name = (ComItextpdfTextPdfPdfName *) check_class_cast(obj, [ComItextpdfTextPdfPdfName class]);
    if ([name isEqual:ComItextpdfTextPdfPdfName_get_SINGLEPAGE_()])
#line 314
    prefs |= ComItextpdfTextPdfPdfWriter_PageLayoutSinglePage;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_ONECOLUMN_()])
#line 316
    prefs |= ComItextpdfTextPdfPdfWriter_PageLayoutOneColumn;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_TWOCOLUMNLEFT_()])
#line 318
    prefs |= ComItextpdfTextPdfPdfWriter_PageLayoutTwoColumnLeft;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_TWOCOLUMNRIGHT_()])
#line 320
    prefs |= ComItextpdfTextPdfPdfWriter_PageLayoutTwoColumnRight;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_TWOPAGELEFT_()])
#line 322
    prefs |= ComItextpdfTextPdfPdfWriter_PageLayoutTwoPageLeft;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_TWOPAGERIGHT_()])
#line 324
    prefs |= ComItextpdfTextPdfPdfWriter_PageLayoutTwoPageRight;
  }
  
#line 327
  obj = [ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[catalog getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_PAGEMODE_()]];
  if (obj != nil && [obj isName]) {
    name = (ComItextpdfTextPdfPdfName *) check_class_cast(obj, [ComItextpdfTextPdfPdfName class]);
    if ([name isEqual:ComItextpdfTextPdfPdfName_get_USENONE_()])
#line 331
    prefs |= ComItextpdfTextPdfPdfWriter_PageModeUseNone;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_USEOUTLINES_()])
#line 333
    prefs |= ComItextpdfTextPdfPdfWriter_PageModeUseOutlines;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_USETHUMBS_()])
#line 335
    prefs |= ComItextpdfTextPdfPdfWriter_PageModeUseThumbs;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_FULLSCREEN_()])
#line 337
    prefs |= ComItextpdfTextPdfPdfWriter_PageModeFullScreen;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_USEOC_()])
#line 339
    prefs |= ComItextpdfTextPdfPdfWriter_PageModeUseOC;
    else if ([name isEqual:ComItextpdfTextPdfPdfName_get_USEATTACHMENTS_()])
#line 341
    prefs |= ComItextpdfTextPdfPdfWriter_PageModeUseAttachments;
  }
  
#line 344
  [preferences setViewerPreferencesWithInt:prefs];
  
#line 346
  obj = [ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[catalog getWithComItextpdfTextPdfPdfName:ComItextpdfTextPdfPdfName_get_VIEWERPREFERENCES_()]];
  
#line 348
  if (obj != nil && [obj isDictionary]) {
    ComItextpdfTextPdfPdfDictionary *vp = (ComItextpdfTextPdfPdfDictionary *) check_class_cast(obj, [ComItextpdfTextPdfPdfDictionary class]);
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(ComItextpdfTextPdfInternalPdfViewerPreferencesImp_VIEWER_PREFERENCES_))->size_; i++) {
      obj = [ComItextpdfTextPdfPdfReader getPdfObjectReleaseWithComItextpdfTextPdfPdfObject:[vp getWithComItextpdfTextPdfPdfName:IOSObjectArray_Get(ComItextpdfTextPdfInternalPdfViewerPreferencesImp_VIEWER_PREFERENCES_, i)]];
      [preferences addViewerPreferenceWithComItextpdfTextPdfPdfName:IOSObjectArray_Get(ComItextpdfTextPdfInternalPdfViewerPreferencesImp_VIEWER_PREFERENCES_, i) withComItextpdfTextPdfPdfObject:obj];
    }
  }
  return preferences;
}

- (instancetype)init {
  if (self = [super init]) {
    pageLayoutAndMode_ =
#line 106
    0;
    viewerPreferences_ =
#line 109
    [[ComItextpdfTextPdfPdfDictionary alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComItextpdfTextPdfInternalPdfViewerPreferencesImp *)other {
  [super copyAllFieldsTo:other];
  other->pageLayoutAndMode_ = pageLayoutAndMode_;
  other->viewerPreferences_ = viewerPreferences_;
}

+ (void)initialize {
  if (self == [ComItextpdfTextPdfInternalPdfViewerPreferencesImp class]) {
    ComItextpdfTextPdfInternalPdfViewerPreferencesImp_VIEWER_PREFERENCES_ = [IOSObjectArray arrayWithObjects:(id[]){ ComItextpdfTextPdfPdfName_get_HIDETOOLBAR_(), ComItextpdfTextPdfPdfName_get_HIDEMENUBAR_(), ComItextpdfTextPdfPdfName_get_HIDEWINDOWUI_(), ComItextpdfTextPdfPdfName_get_FITWINDOW_(), ComItextpdfTextPdfPdfName_get_CENTERWINDOW_(), ComItextpdfTextPdfPdfName_get_DISPLAYDOCTITLE_(), ComItextpdfTextPdfPdfName_get_NONFULLSCREENPAGEMODE_(), ComItextpdfTextPdfPdfName_get_DIRECTION_(), ComItextpdfTextPdfPdfName_get_VIEWAREA_(), ComItextpdfTextPdfPdfName_get_VIEWCLIP_(), ComItextpdfTextPdfPdfName_get_PRINTAREA_(), ComItextpdfTextPdfPdfName_get_PRINTCLIP_(), ComItextpdfTextPdfPdfName_get_PRINTSCALING_(), ComItextpdfTextPdfPdfName_get_DUPLEX_(), ComItextpdfTextPdfPdfName_get_PICKTRAYBYPDFSIZE_(), ComItextpdfTextPdfPdfName_get_PRINTPAGERANGE_(), ComItextpdfTextPdfPdfName_get_NUMCOPIES_() } count:17 type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfName class]]];
    ComItextpdfTextPdfInternalPdfViewerPreferencesImp_NONFULLSCREENPAGEMODE_PREFERENCES_ = [IOSObjectArray arrayWithObjects:(id[]){ ComItextpdfTextPdfPdfName_get_USENONE_(), ComItextpdfTextPdfPdfName_get_USEOUTLINES_(), ComItextpdfTextPdfPdfName_get_USETHUMBS_(), ComItextpdfTextPdfPdfName_get_USEOC_() } count:4 type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfName class]]];
    ComItextpdfTextPdfInternalPdfViewerPreferencesImp_DIRECTION_PREFERENCES_ = [IOSObjectArray arrayWithObjects:(id[]){ ComItextpdfTextPdfPdfName_get_L2R_(), ComItextpdfTextPdfPdfName_get_R2L_() } count:2 type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfName class]]];
    ComItextpdfTextPdfInternalPdfViewerPreferencesImp_PAGE_BOUNDARIES_ = [IOSObjectArray arrayWithObjects:(id[]){ ComItextpdfTextPdfPdfName_get_MEDIABOX_(), ComItextpdfTextPdfPdfName_get_CROPBOX_(), ComItextpdfTextPdfPdfName_get_BLEEDBOX_(), ComItextpdfTextPdfPdfName_get_TRIMBOX_(), ComItextpdfTextPdfPdfName_get_ARTBOX_() } count:5 type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfName class]]];
    ComItextpdfTextPdfInternalPdfViewerPreferencesImp_PRINTSCALING_PREFERENCES_ = [IOSObjectArray arrayWithObjects:(id[]){ ComItextpdfTextPdfPdfName_get_APPDEFAULT_(), ComItextpdfTextPdfPdfName_get_NONE_() } count:2 type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfName class]]];
    ComItextpdfTextPdfInternalPdfViewerPreferencesImp_DUPLEX_PREFERENCES_ = [IOSObjectArray arrayWithObjects:(id[]){ ComItextpdfTextPdfPdfName_get_SIMPLEX_(), ComItextpdfTextPdfPdfName_get_DUPLEXFLIPSHORTEDGE_(), ComItextpdfTextPdfPdfName_get_DUPLEXFLIPLONGEDGE_() } count:3 type:[IOSClass classWithClass:[ComItextpdfTextPdfPdfName class]]];
    ComItextpdfTextPdfInternalPdfViewerPreferencesImp_initialized = YES;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getPageLayoutAndMode", NULL, "I", 0x1, NULL },
    { "getViewerPreferences", NULL, "Lcom.itextpdf.text.pdf.PdfDictionary;", 0x1, NULL },
    { "setViewerPreferencesWithInt:", "setViewerPreferences", "V", 0x1, NULL },
    { "getIndexWithComItextpdfTextPdfPdfName:", "getIndex", "I", 0x2, NULL },
    { "isPossibleValueWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfNameArray:", "isPossibleValue", "Z", 0x2, NULL },
    { "addViewerPreferenceWithComItextpdfTextPdfPdfName:withComItextpdfTextPdfPdfObject:", "addViewerPreference", "V", 0x1, NULL },
    { "addToCatalogWithComItextpdfTextPdfPdfDictionary:", "addToCatalog", "V", 0x1, NULL },
    { "getViewerPreferencesWithComItextpdfTextPdfPdfDictionary:", "getViewerPreferences", "Lcom.itextpdf.text.pdf.internal.PdfViewerPreferencesImp;", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "VIEWER_PREFERENCES_", NULL, 0x19, "[Lcom.itextpdf.text.pdf.PdfName;", &ComItextpdfTextPdfInternalPdfViewerPreferencesImp_VIEWER_PREFERENCES_,  },
    { "NONFULLSCREENPAGEMODE_PREFERENCES_", NULL, 0x19, "[Lcom.itextpdf.text.pdf.PdfName;", &ComItextpdfTextPdfInternalPdfViewerPreferencesImp_NONFULLSCREENPAGEMODE_PREFERENCES_,  },
    { "DIRECTION_PREFERENCES_", NULL, 0x19, "[Lcom.itextpdf.text.pdf.PdfName;", &ComItextpdfTextPdfInternalPdfViewerPreferencesImp_DIRECTION_PREFERENCES_,  },
    { "PAGE_BOUNDARIES_", NULL, 0x19, "[Lcom.itextpdf.text.pdf.PdfName;", &ComItextpdfTextPdfInternalPdfViewerPreferencesImp_PAGE_BOUNDARIES_,  },
    { "PRINTSCALING_PREFERENCES_", NULL, 0x19, "[Lcom.itextpdf.text.pdf.PdfName;", &ComItextpdfTextPdfInternalPdfViewerPreferencesImp_PRINTSCALING_PREFERENCES_,  },
    { "DUPLEX_PREFERENCES_", NULL, 0x19, "[Lcom.itextpdf.text.pdf.PdfName;", &ComItextpdfTextPdfInternalPdfViewerPreferencesImp_DUPLEX_PREFERENCES_,  },
    { "pageLayoutAndMode_", NULL, 0x2, "I", NULL,  },
    { "viewerPreferences_", NULL, 0x2, "Lcom.itextpdf.text.pdf.PdfDictionary;", NULL,  },
    { "viewerPreferencesMask_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComItextpdfTextPdfInternalPdfViewerPreferencesImp_viewerPreferencesMask },
  };
  static const J2ObjcClassInfo _ComItextpdfTextPdfInternalPdfViewerPreferencesImp = { "PdfViewerPreferencesImp", "com.itextpdf.text.pdf.internal", NULL, 0x1, 9, methods, 9, fields, 0, NULL};
  return &_ComItextpdfTextPdfInternalPdfViewerPreferencesImp;
}

@end
