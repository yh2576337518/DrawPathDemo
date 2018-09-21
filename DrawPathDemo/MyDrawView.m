//
//  MyDrawView.m
//  DrawPathDemo
//
//  Created by 惠上科技 on 2018/9/21.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import "MyDrawView.h"
@interface MyDrawView()
@property (nonatomic, assign) CGFloat headerViewHeight;
@property (nonatomic, strong) CAShapeLayer *shapeLayer;
@end
@implementation MyDrawView
-(instancetype)initWithFrame:(CGRect)frame {
    self= [super initWithFrame:frame];
    if (self) {
        self.headerViewHeight = 220;
        
        [self configUI];
    }
    return self;
}

-(void)configUI{
    self.layer.masksToBounds = YES;
    self.clipsToBounds = YES;
    
    CAShapeLayer *shapeLayer = [CAShapeLayer new];
    shapeLayer.fillColor = [UIColor redColor].CGColor; //填充颜色
    [self.layer addSublayer:shapeLayer];
    self.shapeLayer = shapeLayer;
}

// 绘制曲线
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGFloat h1 = 200;
    CGFloat w = rect.size.width;
    CGFloat h = rect.size.height;
    CGPoint controlPoint = CGPointMake(w/2, h + (h - h1));//(h - h1) * 0.5
    UIBezierPath *bezierPath = [UIBezierPath new];
    [bezierPath moveToPoint:CGPointMake(w, h1)];
    [bezierPath addLineToPoint:CGPointMake(w, 0)];
    [bezierPath addLineToPoint:CGPointMake(0, 0)];
    [bezierPath addLineToPoint:CGPointMake(0, h1)];
    [bezierPath addQuadCurveToPoint:CGPointMake(w, h1) controlPoint:controlPoint];
    [bezierPath closePath];//将起点与结束点相连接
    self.shapeLayer.path = bezierPath.CGPath;
}

@end
