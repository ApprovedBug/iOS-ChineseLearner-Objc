//
//  APBDictionaryViewController.m
//  APBChineseLearner
//
//  Created by ApprovedBug on 09/01/2022
//

#import "APBDictionaryViewController.h"
#import "APBWord+CoreDataClass.h"

@implementation APBDictionaryViewController

@dynamic rootView;

#pragma mark - Properties

- (APBDictionaryView *)rootView {
    if (_rootView == nil) {
        _rootView = [[APBDictionaryView alloc] init];
        _rootView.delegate = self;
    }
    return _rootView;
}

#pragma mark - APBDictionaryViewDelegate

- (void)addTappedWithChinese:(NSString *)chinese
                      pinyin:(NSString *)pinyin
                     english:(NSString *)english {

    if ([chinese length] == 0) {
        // show error
        return;
    }

    if ([pinyin length] == 0) {
        // show error
        return;
    }

    if ([english length] == 0) {
        // show error
        return;
    }

    [APBWord createInContext:context
                     chinese:chinese
                      pinyin:pinyin
                     english:english];
}

@end
