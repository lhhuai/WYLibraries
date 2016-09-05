//
//  ViewController.m
//  WYLibraries
//
//  Created by seaphy on 16/5/11.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import "ViewController.h"
#import "UIView+WYAddition.h"
#import "WYMacros.h"
#import "WYPentagramsView.h"

@interface ViewController ()

@property (nonatomic, strong) CALayer *subLayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.view.backgroundColor = [UIColor blackColor];
    
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 50, 30)];
//    view.backgroundColor = [UIColor grayColor];
//    view.tag = 0;
//    view.userInteractionEnabled = YES;
//    [self.view addSubview:view];
//    
//    [view wy_addTopLineWithColor:[UIColor redColor]];
//    [view wy_addLeftLineWithColor:[UIColor yellowColor]];
//    [view wy_addBottomLineWithColor:[UIColor greenColor]];
//    [view wy_addRightLineWithColor:[UIColor blueColor]];

//    [view wy_addTapListener:^{
//        NSLog(@"wy..");
//    }];
    
//    DLog(@"%@%d", @"wy...", 1);
    
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 50, 50, 30)];
//    [btn setTitle:@"play/stop" forState:UIControlStateNormal];
//    btn.backgroundColor = [UIColor grayColor];
//    [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
//    btn.tag = 0;
//    [self.view addSubview:btn];
//    
//    self.subLayer = [CALayer layer];
//    self.subLayer.bounds = CGRectMake(0, 0, 100, 100);
//    self.subLayer.position = CGPointMake(100, 300);
//    self.subLayer.backgroundColor = [[UIColor redColor] CGColor];
//    self.subLayer.cornerRadius = 50;
//    [self.view.layer addSublayer:self.subLayer];
//    
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
//    tap.numberOfTapsRequired = 1;
//    tap.numberOfTouchesRequired = 1;
//    [self.view addGestureRecognizer:tap];
//    
//    UIImage *mars = [UIImage imageNamed:@"one_key_top"];
//    CGSize sz = [mars size];
//    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width * 3, sz.height), NO, 0);
//    [mars drawAtPoint:CGPointMake(0, 0)];
//    [mars drawAtPoint:CGPointMake(sz.width, 0)];
//    [mars drawAtPoint:CGPointMake(sz.width * 2, 0)];
//    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    UIImageView *iv = [[UIImageView alloc] initWithImage:im];
//    [self.view addSubview:iv];
    
//    [self.window.rootViewController.view addSubview:iv];
//    iv.center = self.window.center;
    
    WYPentagramsView *p = [[WYPentagramsView alloc] initWithFrame:CGRectMake(80, 100, 120, 150)];
    p.backgroundColor = [UIColor clearColor];
    [self.view addSubview:p];
}

- (void)tap:(UITapGestureRecognizer *)sender {
    CGPoint location = [sender locationInView:self.view];
    CABasicAnimation *basicAnimation = [[CABasicAnimation alloc] init];
    basicAnimation.duration = 5.0f;
    basicAnimation.keyPath = @"position";
    basicAnimation.toValue = [NSValue valueWithCGPoint:location];
    basicAnimation.removedOnCompletion = NO;
    basicAnimation.fillMode = kCAFillModeForwards;
    basicAnimation.delegate = self;
    [self.subLayer addAnimation:basicAnimation forKey:@"basicAnimation"];
}

- (void)buttonClicked:(UIButton *)sender {
    if (sender.tag == 0) {
        [self animationPause];
        sender.tag = 1;
    } else {
        [self animationResume];
        sender.tag = 0;
    }
}

- (void)animationPause {
//    CFTimeInterval pauseTime = CACurrentMediaTime();
    CFTimeInterval pauseTime = [self.subLayer convertTime:CACurrentMediaTime() fromLayer:nil];
    self.subLayer.speed = 0;
    self.subLayer.timeOffset = pauseTime;
}

- (void)animationResume {
    CFTimeInterval pauseTime = self.subLayer.timeOffset;
    self.subLayer.timeOffset = 0;
    self.subLayer.speed = 1.0;
    self.subLayer.beginTime = 0.0;
    CFTimeInterval beginTime = [self.subLayer convertTime:CACurrentMediaTime() fromLayer:nil] - pauseTime;
    self.subLayer.beginTime = beginTime;
}

- (void)animationDidStart:(CAAnimation *)anim {
    
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    NSValue *toValue = ((CABasicAnimation *)anim).toValue;
    CGPoint point = [toValue CGPointValue];
    self.subLayer.position = point;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
