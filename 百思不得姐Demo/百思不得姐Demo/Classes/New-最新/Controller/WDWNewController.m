//
//  WDWNewController.m
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/11.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "WDWNewController.h"

@interface WDWNewController ()

@end

@implementation WDWNewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏的标题
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //设置导航栏左边的BarButtonItem
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highLightImage:@"MainTagSubIconClick" target:self action:@selector(click)];
}

-(void)click{
    
    WDWLogFunc;
    
}


@end
