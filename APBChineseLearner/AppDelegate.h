//
//  AppDelegate.h
//  APBChineseLearner
//
//  Created by ApprovedBug on 08/01/2022
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (strong, nonatomic) UIWindow *window;

- (void)saveContext;

@end
