//
//  WDWTabBarController.m
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/11.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "WDWTabBarController.h"
#import "WDWEssenceController.h"
#import "WDWNewController.h"
#import "WDWFriendsController.h"
#import "WDWMeController.h"
#import "WDWTabBar.h"
#import "WDWNavigationController.h"

@interface WDWTabBarController ()

@end

@implementation WDWTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = WDWGlobalColor;
    //通过apperance统一设置tabBarItem的title属性
    self.tabBarItem = [UITabBarItem appearance];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [self.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [self.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    //创建子控制器
    [self setupChildController:[[WDWEssenceController alloc]init] withTitle:@"精华" withImageName:@"tabBar_essence_icon" withSelectedImageName:@"tabBar_essence_click_icon"];
    [self setupChildController:[[WDWNewController alloc]init] withTitle:@"最新" withImageName:@"tabBar_new_icon" withSelectedImageName:@"tabBar_new_click_icon"];
    [self setupChildController:[[WDWFriendsController alloc]init] withTitle:@"关注" withImageName:@"tabBar_friendTrends_icon" withSelectedImageName:@"tabBar_friendTrends_click_icon"];
    [self setupChildController:[[WDWMeController alloc]init] withTitle:@"我" withImageName:@"tabBar_me_icon" withSelectedImageName:@"tabBar_me_click_icon"];
    
    //使用自定义的TabBar
    /**
     tabBar,为只读 此种方法改不了
     self.tabBar = [[WDWTabBar alloc]init];
     */
    //使用KVC直接访问成员变量
    [self setValue:[[WDWTabBar alloc]init] forKeyPath:@"tabBar"];
}

/**
 *  创建tabBarController的子控制器
 *
 */
- (void)setupChildController:(UIViewController *)vc withTitle:(NSString *)title withImageName:(NSString *)imageName withSelectedImageName:(NSString *)selectedImageName{
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    WDWNavigationController *navi = [[WDWNavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:navi];

}

@end
