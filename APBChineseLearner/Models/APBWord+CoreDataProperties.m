//
//  Word+CoreDataProperties.m
//  APBChineseLearner
//
//  Created by ApprovedBug on 17/01/2022
//
//

#import "APBWord+CoreDataProperties.h"

@implementation APBWord (CoreDataProperties)

+ (NSFetchRequest<APBWord *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"Word"];
}

@dynamic chinese;
@dynamic pinyin;
@dynamic english;

@end
