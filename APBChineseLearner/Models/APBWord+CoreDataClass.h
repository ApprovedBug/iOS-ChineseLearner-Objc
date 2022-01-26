//
//  Word+CoreDataClass.h
//  APBChineseLearner
//
//  Created by ApprovedBug on 17/01/2022
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface APBWord : NSManagedObject

+ (instancetype)createInContext:(NSManagedObjectContext *)context
                        chinese:(NSString *)chinese
                         pinyin:(NSString *)pinyin
                        english:(NSString *)english;

@end

NS_ASSUME_NONNULL_END

#import "APBWord+CoreDataProperties.h"
