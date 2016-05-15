//
//  WDWFriendsController.m
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/11.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "WDWFriendsController.h"
#import "WDWRecommendViewController.h"


@interface WDWFriendsController ()

@end

@implementation WDWFriendsController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置背景颜色
    self.view.backgroundColor = WDWGlobalColor;
    self.navigationItem.title = @"我的关注";
//    //添加Segmented Control
//    UISegmentedControl *segmented = [[UISegmentedControl alloc]init];
////    segmented.segmentedControlStyle = 
//    [self.navigationItem.titleView addSubview:segmented];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highLightImage:@"friendsRecommentIcon-click" target:self action:@selector(clickRecommend)];
}

- (void)clickRecommend{
    
    WDWRecommendViewController *rVC = [[WDWRecommendViewController alloc]init];
    [self.navigationController pushViewController:rVC animated:YES];
    
}

@end
