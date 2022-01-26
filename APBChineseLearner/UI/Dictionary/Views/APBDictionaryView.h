//
//  APBDictionaryView.h
//  APBChineseLearner
//
//  Created by ApprovedBug on 09/01/2022
//

#import <Foundation/Foundation.h>
#import <APBFoundation/APBFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol APBDictionaryViewDelegete <NSObject>

- (void)addTappedWithChinese:(NSString *)chinese pinyin:(NSString *)pinyin english:(NSString *)english;

@end

@interface APBDictionaryView : APBBaseView

@property (nonatomic, weak) id<APBDictionaryViewDelegete> delegate;

@end

NS_ASSUME_NONNULL_END
