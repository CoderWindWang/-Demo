//
//  WDWMeController.m
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/11.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "WDWMeController.h"

@interface WDWMeController ()

@end

@implementation WDWMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的";
    UIBarButtonItem *settingBtn = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highLightImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    UIBarButtonItem *moonBtn = [UIBarButtonItem itemWithImage:@"mine-sun-icon" highLightImage:@"mine-sun-icon-click" target:self action:@selector(moonClick)];
    self.navigationItem.rightBarButtonItems = @[settingBtn,moonBtn];
}

- (void)settingClick{
    
    NSLog(@"...");
    
}

- (void)moonClick{
    
    NSLog(@"...");
    
}

@end
