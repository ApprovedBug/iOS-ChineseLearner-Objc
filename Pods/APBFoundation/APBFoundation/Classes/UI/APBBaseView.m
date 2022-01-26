//
//  APBBaseView.m
//  APBFoundation
//
//  Created by ApprovedBug on 17/11/2020.
//

#import "APBBaseView.h"

@implementation APBBaseView

#pragma mark - Init methods

- (id)init {
    return [self initWithFrame:CGRectZero];
}

- (id)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];

    if (self) {
        [self setupSubviews];
        [self setupAutolayout];
    }

    return self;
}

#pragma mark - View setup

- (void)setupSubviews {

}

- (void)setupAutolayout {

}

- (void)applyCompactWidthLayout {

}

- (void)applyRegularWidthLayout {

}

@end
