//
//  Cat.m
//  test-owkesfm
//
//  Created by Nutchaphon Rewik on 5/8/2564 BE.
//

#import "Cat.h"

@implementation Cat

+ (NSString *)primaryKey {
    return @"_id";
}
+ (NSArray<NSString *> *)requiredProperties {
    return @[@"_id", @"name"];
}

@end
