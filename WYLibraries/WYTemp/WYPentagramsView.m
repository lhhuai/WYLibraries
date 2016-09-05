//
//  WYPentagramsView.m
//  WYLibraries
//
//  Created by seaphy on 16/6/20.
//  Copyright © 2016年 seaphy. All rights reserved.
//

#import "WYPentagramsView.h"

@interface WYPentagramsView()

@property (nonatomic, assign) CGFloat radius;

@end

@implementation WYPentagramsView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
//    CGFloat centerX = rect.size.width / 2;
//    CGFloat centerY = rect.size.height / 2;
//    
//    CGFloat r0 = self.radius * sin(18 * th)/cos(36 * th); /*计算小圆半径r0 */
//    CGFloat x1[5]={0},y1[5]={0},x2[5]={0},y2[5]={0};
//    
//    for (int i = 0; i < 5; i ++)
//    {
//        x1[i] = centerX + self.radius * cos((90 + i * 72) * th); /* 计算出大圆上的五个平均分布点的坐标*/
//        y1[i]=centerY - self.radius * sin((90 + i * 72) * th);
//        x2[i]=centerX + r0 * cos((54 + i * 72) * th); /* 计算出小圆上的五个平均分布点的坐标*/
//        y2[i]=centerY - r0 * sin((54 + i * 72) * th);
//    }
//    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGMutablePathRef startPath = CGPathCreateMutable();
//    CGPathMoveToPoint(startPath, NULL, x1[0], y1[0]);
//    
//    
//    for (int i = 1; i < 5; i ++) {
//        
//        
//        CGPathAddLineToPoint(startPath, NULL, x2[i], y2[i]);
//        CGPathAddLineToPoint(startPath, NULL, x1[i], y1[i]);
//    }
//    
//    CGPathAddLineToPoint(startPath, NULL, x2[0], y2[0]);
//    CGPathCloseSubpath(startPath);
//    
//    
//    CGContextAddPath(context, startPath);
//    
//    CGContextSetFillColorWithColor(context, self.startColor.CGColor);
//    
//    CGContextSetStrokeColorWithColor(context, self.boundsColor.CGColor);
//    CGContextStrokePath(context);
//    
//    CGRect range = CGRectMake(x1[1], 0, (x1[4] - x1[1]) * self.value , y1[2]);
//    
//    CGContextAddPath(context, startPath);
//    CGContextClip(context);
//    CGContextFillRect(context, range);
//    
//    
//    CFRelease(startPath);
    
//    CGContextRef con = UIGraphicsGetCurrentContext();
//    CGContextSaveGState(con);
//    // 绘制一个黑色的垂直黑色线，作为箭头的杆子
//    
//    CGContextMoveToPoint(con, 100, 100);
//    
//    CGContextAddLineToPoint(con, 100, 19);
//    
//    CGContextSetLineWidth(con, 20);
//    
//    CGContextStrokePath(con);
//    
//    // 绘制一个红色三角形箭头
//    
//    CGContextSetFillColorWithColor(con, [[UIColor redColor] CGColor]);
//    
//    CGContextMoveToPoint(con, 80, 25);
//    
//    CGContextAddLineToPoint(con, 100, 0);
//    
//    CGContextAddLineToPoint(con, 120, 25);
//    
//    CGContextFillPath(con);
//    
//    // 从箭头杆子上裁掉一个三角形，使用清除混合模式
//    
//    CGContextMoveToPoint(con, 90, 101);
//    
//    CGContextAddLineToPoint(con, 100, 90);
//    
//    CGContextAddLineToPoint(con, 110, 101);
//    
//    CGContextSetBlendMode(con, kCGBlendModeClear); 
//    
//    CGContextFillPath(con);
//    
//    CGContextRestoreGState(con);
    
//    UIBezierPath* p = [UIBezierPath bezierPath];
//    
//    [p moveToPoint:CGPointMake(100,100)];
//    
//    [p addLineToPoint:CGPointMake(100, 19)];
//    
//    [p setLineWidth:20];
//    
//    [p stroke];
//    
//    [[UIColor redColor] set];
//    
//    [p removeAllPoints];
//    
//    [p moveToPoint:CGPointMake(80,25)];
//    
//    [p addLineToPoint:CGPointMake(100, 0)];
//    
//    [p addLineToPoint:CGPointMake(120, 25)];
//    
//    [p fill];
//    
//    [p removeAllPoints];
//    
//    [p moveToPoint:CGPointMake(90,101)];
//    
//    [p addLineToPoint:CGPointMake(100, 90)];
//    
//    [p addLineToPoint:CGPointMake(110, 101)];
//    
//    [p fillWithBlendMode:kCGBlendModeClear alpha:1.0];
    
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    
//    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
//    
//    CGContextSetLineWidth(ctx, 3);
//    
//    UIBezierPath *path;
//    
//    path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 100, 100, 100) byRoundingCorners:(UIRectCornerTopLeft |UIRectCornerTopRight) cornerRadii:CGSizeMake(10, 10)];
//    
//    [path stroke];
    
    
    
    
//    CGContextRef con = UIGraphicsGetCurrentContext();
//    CGContextSaveGState(con);
//    
//    // 在上下文裁剪区域中挖一个三角形状的孔
//    
//    CGContextMoveToPoint(con, 90, 100);
//    
//    CGContextAddLineToPoint(con, 100, 90);
//    
//    CGContextAddLineToPoint(con, 110, 100);
//    
//    CGContextClosePath(con);
//    
//    CGContextAddRect(con, CGContextGetClipBoundingBox(con));
//    
//    // 使用奇偶规则，裁剪区域为矩形减去三角形区域
//    
//    CGContextEOClip(con);
//    
//    // 绘制垂线
//    
//    CGContextMoveToPoint(con, 100, 100);
//    
//    CGContextAddLineToPoint(con, 100, 19);
//    
//    CGContextSetLineWidth(con, 20);
//    
////    CGContextStrokePath(con);
//    CGContextReplacePathWithStrokedPath(con);
//    CGContextClip(con);
//    CGFloat locs[3] = {0.0, 0.5, 1.0};
//    CGFloat colors[12] = {
//        0.3, 0.3, 0.3, 0.8,
//        0.0, 0.0, 0.0, 0.0,
//        0.3, 0.3, 0.3, 0.8
//    };
//    CGColorSpaceRef sp = CGColorSpaceCreateDeviceGray();
//    CGGradientRef grad = CGGradientCreateWithColorComponents(sp, colors, locs, 3);
//    CGContextDrawLinearGradient(con, grad, CGPointMake(89, 0), CGPointMake(111, 0), 0);
//    CGColorSpaceRelease(sp);
//    CGGradientRelease(grad);
//    CGContextRestoreGState(con);
//    
//    // 画红色箭头
//    
////    CGContextSetFillColorWithColor(con, [[UIColor redColor] CGColor]);
//    CGColorSpaceRef sp2 = CGColorSpaceCreatePattern(NULL);
//    CGContextSetFillColorSpace(con, sp2);
//    CGColorSpaceRelease(sp2);
//    CGPatternCallbacks callback = {0, &drawStripes, NULL};
//    CGAffineTransform tr = CGAffineTransformIdentity;
//    CGPatternRef patt = CGPatternCreate(NULL, CGRectMake(0, 0, 4, 4), tr, 4, 4, kCGPatternTilingConstantSpacingMinimalDistortion, true, &callback);
//    CGFloat alpha = 1.0;
//    CGContextSetFillPattern(con, patt, &alpha);
//    CGPatternRelease(patt);
//    
//    CGContextMoveToPoint(con, 80, 25);
//    
//    CGContextAddLineToPoint(con, 100, 0); 
//    
//    CGContextAddLineToPoint(con, 120, 25); 
//    
//    CGContextFillPath(con);
    
    
    
    
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(40,100), NO, 0.0);
    
    CGContextRef con = UIGraphicsGetCurrentContext();
    CGContextSaveGState(con);
    
    // 在上下文裁剪区域中挖一个三角形状的孔
    
    CGContextMoveToPoint(con, 90 - 80, 100);
    CGContextAddLineToPoint(con, 100 - 80, 90);
    CGContextAddLineToPoint(con, 110 - 80, 100);
    
    CGContextMoveToPoint(con, 110 - 80, 100);
    CGContextAddLineToPoint(con, 100 - 80, 90);
    CGContextAddLineToPoint(con, 90 - 80, 100);
    
    CGContextClosePath(con);
    
    CGContextAddRect(con, CGContextGetClipBoundingBox(con));
    
    // 使用奇偶规则，裁剪区域为矩形减去三角形区域
    
    CGContextEOClip(con);
    
    // 绘制垂线
    
    CGContextMoveToPoint(con, 100 - 80, 100);
    
    CGContextAddLineToPoint(con, 100 - 80, 19);
    
    CGContextSetLineWidth(con, 20);
    
    //    CGContextStrokePath(con);
    CGContextReplacePathWithStrokedPath(con);
    CGContextClip(con);
    
    CGFloat locs[3] = {0.0, 0.5, 1.0};
    CGFloat colors[12] = {
        0.3, 0.3, 0.3, 0.8,
        0.0, 0.0, 0.0, 0.0,
        0.3, 0.3, 0.3, 0.8
    };
    CGColorSpaceRef sp = CGColorSpaceCreateDeviceGray();
    CGGradientRef grad = CGGradientCreateWithColorComponents(sp, colors, locs, 3);
    CGContextDrawLinearGradient(con, grad, CGPointMake(89-80, 0), CGPointMake(111-80, 0), 0);
    CGColorSpaceRelease(sp);
    CGGradientRelease(grad);
    CGContextRestoreGState(con);
    
    // 画红色箭头
    
    //    CGContextSetFillColorWithColor(con, [[UIColor redColor] CGColor]);
    CGColorSpaceRef sp2 = CGColorSpaceCreatePattern(NULL);
    CGContextSetFillColorSpace(con, sp2);
    CGColorSpaceRelease(sp2);
    CGPatternCallbacks callback = {0, &drawStripes, NULL};
    CGAffineTransform tr = CGAffineTransformIdentity;
    CGPatternRef patt = CGPatternCreate(NULL, CGRectMake(0, 0, 4, 4), tr, 4, 4, kCGPatternTilingConstantSpacingMinimalDistortion, true, &callback);
    CGFloat alpha = 1.0;
    CGContextSetFillPattern(con, patt, &alpha);
    CGPatternRelease(patt);
    
    CGContextMoveToPoint(con, 80 - 80, 25);
    
    CGContextAddLineToPoint(con, 100 - 80, 0);
    
    CGContextAddLineToPoint(con, 120 - 80, 25);
    
    CGContextFillPath(con);
    
    
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    con = UIGraphicsGetCurrentContext();
    
    CGContextSetShadow(con, CGSizeMake(7, 7), 12);
    CGContextBeginTransparencyLayer(con, NULL);
    
    [im drawAtPoint:CGPointMake(0,0)];
    
    for (int i=0; i<3; i++) {

        CGContextTranslateCTM(con, 20, 100);

        CGContextRotateCTM(con, 30 * M_PI/180.0);

        CGContextTranslateCTM(con, -20, -100);

        [im drawAtPoint:CGPointMake(0,0)];
        
    }
    CGContextEndTransparencyLayer(con);
}

void drawStripes(void *info, CGContextRef con) {
    CGContextSaveGState(con);
    
    CGContextSetFillColorWithColor(con, [[UIColor redColor] CGColor]);
    CGContextFillRect(con, CGRectMake(0, 0, 4, 4));
    CGContextSetFillColorWithColor(con, [[UIColor blueColor] CGColor]);
    CGContextFillRect(con, CGRectMake(0, 0, 4, 2));
    
    CGContextRestoreGState(con);
}


@end
