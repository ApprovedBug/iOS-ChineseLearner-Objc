//
//  NSManagedObject+Category.h
//  APBFoundation
//
//  Created by ApprovedBug on 20/08/2021
//

#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSManagedObject (Category)

+ (instancetype)createNewInContext:(NSManagedObjectContext *)context;
+ (instancetype)findFirstInContext:(NSManagedObjectContext *)context;
+ (NSArray *)findAllInContext:(NSManagedObjectContext *)context;
+ (instancetype)findFirstWithPredicate:(NSPredicate *)predicate inContext:(NSManagedObjectContext *)context;
+ (NSArray *)findAllWithPredicate:(NSPredicate *)predicate inContext:(NSManagedObjectContext *)context;
+ (void)deleteAllInContext:(NSManagedObjectContext *)context;

@end

NS_ASSUME_NONNULL_END
