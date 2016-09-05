//
//  WYButton.m
//  WYLibraries
//
//  Created by seaphy on 16/8/3.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import "WYButton.h"

@implementation WYButton

/*
 * Apple的iOS人机交互设计指南中指出，按钮点击热区应不小于44x44pt，否则这个按钮就会让用户觉得“很难用”，因为明明点击上去了，却没有任何响应。
 */
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bounds = self.bounds;
    //若原热区小于44x44，则放大热区，否则保持原大小不变
    CGFloat widthDelta = MAX(44 - bounds.size.width, 0);
    CGFloat heightDelta = MAX(44 - bounds.size.height, 0);
    bounds = CGRectInset(bounds, -0.5 * widthDelta, -0.5 * heightDelta);
    return CGRectContainsPoint(bounds, point);
}

@end
