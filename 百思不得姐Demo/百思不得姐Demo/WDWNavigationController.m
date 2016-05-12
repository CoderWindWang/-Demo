//
//  WDWNavigationController.m
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/12.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "WDWNavigationController.h"

@interface WDWNavigationController ()

@end

@implementation WDWNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏的背景颜色和背景图片
    self.view.backgroundColor = WDWGlobalColor;
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //修改左边的返回按钮
    if (self.childViewControllers.count > 0) {//判断push进来的是不是第一个控制器
        
        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [backBtn setTitle:@"返回" forState:UIControlStateNormal];
        [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        backBtn.frame = CGRectMake(0, 0, 70, 30);
        //此处contentMode没用
        //把按钮的所有内容靠左
        backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //把内容再次左移
        backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
        viewController.hidesBottomBarWhenPushed = YES;
    }

    [super pushViewController:viewController animated:animated];
}

- (void)back{
    [self popViewControllerAnimated:YES];
}

@end
