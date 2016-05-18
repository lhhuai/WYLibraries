//
//  ViewController.m
//  WYLibraries
//
//  Created by seaphy on 16/5/11.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import "ViewController.h"
#import "UIView+WYAddition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 50, 30)];
    view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:view];
    
    UIView *lbl = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    lbl.backgroundColor = [[UIColor alloc] initWithWhite:.5 alpha:1];
    [view addSubview:lbl];
    
    [view wy_addTopLineWithColor:[UIColor redColor]];
    [view wy_addLeftLineWithColor:[UIColor yellowColor]];
    [view wy_addBottomLineWithColor:[UIColor greenColor]];
    [view wy_addRightLineWithColor:[UIColor blueColor]];
    
    [view wy_addTapListener:^{
        NSLog(@"wy..");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
