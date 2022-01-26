//
//  APBBaseViewController.m
//  APBFoundation
//
//  Created by ApprovedBug on 17/11/2020.
//

#import "APBBaseViewController.h"

@interface APBBaseViewController ()

@end

@implementation APBBaseViewController

#pragma mark - Views

- (APBBaseView *)rootView {
    if (_rootView == nil) {
        _rootView = [[APBBaseView alloc] init];
    }

    return _rootView;
}

#pragma mark - View life cycle methods

- (void)loadView {
    [super loadView];

    // set view
    self.view = self.rootView;

    [self loadData];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

#pragma mark - Data load

- (void)loadData {

}

@end
