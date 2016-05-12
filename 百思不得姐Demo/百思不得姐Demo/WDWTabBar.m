//
//  WDWTabBar.m
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/11.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "WDWTabBar.h"

@interface WDWTabBar()

@property(nonatomic,weak)UIButton *publishBtn;

@end

@implementation WDWTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        //设置tabBar的背景颜色
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
        //创建一个publishBtn
        UIButton *publishBtn = [[UIButton alloc]init];
        [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [self addSubview:publishBtn];
        self.publishBtn = publishBtn;
    }
    return self;

}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    //设置publishBtn的位置
    self.publishBtn.bounds = CGRectMake(0, 0, self.publishBtn.currentBackgroundImage.size.width, self.publishBtn.currentBackgroundImage.size.height);
    self.publishBtn.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    //设置其他tabBarButton位置
    CGFloat buttonY = 0;
    CGFloat buttonW = self.frame.size.width / 5;
    CGFloat buttonH = self.frame.size.height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
        //判断button的类型用来计算tabBarButton的X值
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        CGFloat buttonX = buttonW * (index > 1 ? (index + 1) : index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index++;
    }
    
}

@end
