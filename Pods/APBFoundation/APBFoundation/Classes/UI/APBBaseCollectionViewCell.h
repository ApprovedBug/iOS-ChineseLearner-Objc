//
//  APBBaseCollectionViewCell.h
//  APBFoundation
//
//  Created by ApprovedBug on 10/08/2021
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface APBBaseCollectionViewCell : UICollectionViewCell

- (void)setupSubviews;
- (void)setupAutolayout;

@property (nonatomic) id data;

@end

NS_ASSUME_NONNULL_END
