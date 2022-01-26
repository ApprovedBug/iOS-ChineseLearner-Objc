//
//  APBBaseView.h
//  APBFoundation
//
//  Created by ApprovedBug on 17/11/2020.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface APBBaseView : UIView

- (void)setupSubviews;
- (void)setupAutolayout;
- (void)applyCompactWidthLayout;
- (void)applyRegularWidthLayout;

@end

NS_ASSUME_NONNULL_END
