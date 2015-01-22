//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Zetzsche/Development/SimarisCurves/com.itextpdf/src/com/itextpdf/text/html/simpleparser/HTMLTagProcessors.java
//

#ifndef _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_
#define _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_

@class ComItextpdfTextHtmlSimpleparserHTMLWorker;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#include "com/itextpdf/text/html/simpleparser/HTMLTagProcessor.h"
#include "java/util/HashMap.h"

#define ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_serialVersionUID -959260811961222824LL

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors : JavaUtilHashMap {
}

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_initialized;
J2OBJC_STATIC_INIT(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_EM_STRONG_STRIKE_SUP_SUP_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, EM_STRONG_STRIKE_SUP_SUP_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_A_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, A_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_BR_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, BR_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_UL_OL_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, UL_OL_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_HR_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, HR_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_SPAN_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, SPAN_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, H_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_LI_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, LI_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_PRE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, PRE_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_DIV_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, DIV_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TABLE_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, TABLE_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TR_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, TR_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_TD_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, TD_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

FOUNDATION_EXPORT id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor> ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_IMG_;
J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, IMG_, id<ComItextpdfTextHtmlSimpleparserHTMLTagProcessor>)

J2OBJC_STATIC_FIELD_GETTER(ComItextpdfTextHtmlSimpleparserHTMLTagProcessors, serialVersionUID, jlong)

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$1 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (NSString *)mapTagWithNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$1_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$2 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$2_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$3 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$3_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$4 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$4_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$5 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$5_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$6 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$6_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$7 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$7_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$8 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$8_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$9 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$9_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$10 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$10_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$11 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$11_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$12 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$12_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$13 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$13_init() {}

@interface ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$14 : NSObject < ComItextpdfTextHtmlSimpleparserHTMLTagProcessor > {
}

- (void)startElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                     withNSString:(NSString *)tag
                                                  withJavaUtilMap:(id<JavaUtilMap>)attrs;

- (void)endElementWithComItextpdfTextHtmlSimpleparserHTMLWorker:(ComItextpdfTextHtmlSimpleparserHTMLWorker *)worker
                                                   withNSString:(NSString *)tag;

- (instancetype)init;

@end

__attribute__((always_inline)) inline void ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_$14_init() {}

#endif // _ComItextpdfTextHtmlSimpleparserHTMLTagProcessors_H_