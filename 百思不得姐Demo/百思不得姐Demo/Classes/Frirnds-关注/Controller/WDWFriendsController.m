//
//  WDWFriendsController.m
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/11.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "WDWFriendsController.h"

@interface WDWFriendsController ()

@end

@implementation WDWFriendsController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的关注";
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highLightImage:@"friendsRecommentIcon-click" target:self action:@selector(click)];
}

- (void)click{

    WDWLogFunc;
    
}

@end
