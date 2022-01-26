//
//  APBBaseCollectionViewCell.m
//  APBFoundation
//
//  Created by ApprovedBug on 10/08/2021
//

#import "APBBaseCollectionViewCell.h"

@implementation APBBaseCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
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

@end
