//
//  APBDictionaryViewController.m
//  APBChineseLearner
//
//  Created by ApprovedBug on 09/01/2022
//

#import "APBDictionaryViewController.h"

@implementation APBDictionaryViewController

@dynamic rootView;

#pragma mark - Properties

- (APBDictionaryView *)rootView {
    if (_rootView == nil) {
        _rootView = [[APBDictionaryView alloc] init];
    }
    return _rootView;
}

@end
