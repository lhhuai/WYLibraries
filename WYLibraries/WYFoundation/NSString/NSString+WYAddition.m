//
//  NSString+WYAddition.m
//  WYLibraries
//
//  Created by seaphy on 16/5/16.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import "NSString+WYAddition.h"

@implementation NSString (WYAddition)

- (BOOL)wy_isNumberic {
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    NSNumber *num = [formatter numberFromString:self];
    
    return num != nil;
}

@end
