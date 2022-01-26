//
//  Word+CoreDataClass.m
//  APBChineseLearner
//
//  Created by ApprovedBug on 17/01/2022
//
//

#import "APBWord+CoreDataClass.h"
#import <APBFoundation/APBFoundation.h>

@implementation APBWord

+ (instancetype)createInContext:(NSManagedObjectContext *)context
                        chinese:(NSString *)chinese
                         pinyin:(NSString *)pinyin
                        english:(NSString *)english {
    APBWord *word = [APBWord createNewInContext:context];
    word.chinese = chinese;
    word.pinyin = pinyin;
    word.english = english;

    return word;
}

@end
