//
//  Word+CoreDataProperties.h
//  APBChineseLearner
//
//  Created by ApprovedBug on 17/01/2022
//
//

#import "APBWord+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface APBWord (CoreDataProperties)

+ (NSFetchRequest<APBWord *> *)fetchRequest NS_SWIFT_NAME(fetchRequest());

@property (nullable, nonatomic, copy) NSString *chinese;
@property (nullable, nonatomic, copy) NSString *pinyin;
@property (nullable, nonatomic, copy) NSString *english;

@end

NS_ASSUME_NONNULL_END
