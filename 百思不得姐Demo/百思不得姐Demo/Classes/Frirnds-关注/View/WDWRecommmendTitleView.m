//
//  WDWRecommmendTitleView.m
//  百思不得姐Demo
//
//  Created by ma c on 16/5/15.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "WDWRecommmendTitleView.h"

@interface WDWRecommmendTitleView()

@property(nonatomic,weak)UIButton *leftBtn;
@property(nonatomic,weak)UIButton *rightBtn;

@end

@implementation WDWRecommmendTitleView

- (instancetype)initWithFrame:(CGRect)frame{

    if (self = [ super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

-(instancetype)init
{
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder: aDecoder]) {
        [self setup];
    }
    return self;
}

-(void)setup{
    
    UIButton *leftBtn = [[UIButton alloc]init];
    [leftBtn setTitle:@"订阅" forState:UIControlStateNormal];
    [leftBtn addTarget:self action:@selector(leftBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.leftBtn = leftBtn;
    [self addSubview:leftBtn];
    
    self.leftBtn.backgroundColor = [UIColor blueColor];
    UIButton *rightBtn = [[UIButton alloc]init];
    [rightBtn setTitle:@"关注" forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(rightBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.rightBtn = rightBtn;
    [self addSubview:rightBtn];
    self.rightBtn.backgroundColor = [UIColor redColor];
    UIView *lightView = [[UIView alloc]init];
    [self addSubview:lightView];
}

//使用了block方法
-(void)leftBtnClick{
    
    if (self.btnClickBlock) { // 这个block 有值
        self.btnClickBlock(1); // 有值，我才调用
    }
    
}

//使用了代理方法
-(void)rightBtnClick{
    
    [self.delegate recommmengTitleView:self clickTitleWithTag:2];
    
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    [self.leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);
        
        make.left.equalTo(self.mas_left);
        make.width.equalTo(self.mas_width ).multipliedBy(0.5);
    }];
    
    [self.rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);
        make.right.equalTo(self.mas_right);
        make.width.equalTo(self.leftBtn.mas_width);
    }];
}


@end
