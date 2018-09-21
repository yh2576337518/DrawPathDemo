//
//  ViewController.m
//  DrawPathDemo
//
//  Created by 惠上科技 on 2018/9/21.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import "ViewController.h"
#import "MyDrawView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyDrawView *drawView = [[MyDrawView alloc] initWithFrame:CGRectMake(10, 200, [UIScreen mainScreen].bounds.size.width - 20, 300)];
    [self.view addSubview:drawView];
}
@end
