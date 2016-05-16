//
//  WDWFriendsController.m
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/11.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "WDWFriendsController.h"
#import "WDWRecommendViewController.h"
#import "WDWRecommmendTitleView.h"

@interface WDWFriendsController ()<WDWRecommmendTitleViewDelegate>

@end

@implementation WDWFriendsController

#pragma mark -  lazy

#pragma mark - LifeCylce

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)dealloc{
    
    WDWLogFunc;
}


#pragma mark - SystemDelegate



#pragma mark - setter


#pragma mark - EventResponse

- (void)clickRecommend{
    
    WDWRecommendViewController *rVC = [[WDWRecommendViewController alloc]init];
    [self.navigationController pushViewController:rVC animated:YES];
    
}

#pragma mark - privateMethods
/**
 * 初始化UI
 */
-(void)setupUI{
    
    //设置背景颜色
    self.view.backgroundColor = WDWGlobalColor;
//    self.navigationItem.title = @"我的关注";
    
    WDWRecommmendTitleView *titleView = [[WDWRecommmendTitleView alloc]init];
    titleView.size = CGSizeMake(200, 44);
    titleView.delegate = self;
    self.navigationItem.titleView = titleView;
    
    titleView.btnClickBlock = ^(int tag){
        NSLog(@"控制器知道了点击事件");
    };
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highLightImage:@"friendsRecommentIcon-click" target:self action:@selector(clickRecommend)];
}

#pragma mark - customDelegate
- (void)recommmengTitleView:(WDWRecommmendTitleView *)vc clickTitleWithTag:(int)indexTag{
    
    NSLog(@"dianjil ");

}

@end
