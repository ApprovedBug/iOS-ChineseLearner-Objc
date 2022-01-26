//
//  APBBaseViewController.h
//  APBFoundation
//
//  Created by ApprovedBug on 17/11/2020.
//

#import <UIKit/UIKit.h>
#import "APBBaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface APBBaseViewController : UIViewController

@property (nonatomic) APBBaseView *rootView;

- (void)loadData;

@end

NS_ASSUME_NONNULL_END
