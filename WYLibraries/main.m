//
//  main.m
//  WYLibraries
//
//  Created by seaphy on 16/5/11.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "NSString+WYRegexKit.h"

@interface XXObject : NSObject @end
@implementation XXObject
+ (void)load {
    NSLog(@"XXObject load");
}
@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
//        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        NSString *str = @"4414818507206471";
        NSLog(@"%@", [str isValidateIDCardNumber] ? @"YES" : @"NO");
    }
}
