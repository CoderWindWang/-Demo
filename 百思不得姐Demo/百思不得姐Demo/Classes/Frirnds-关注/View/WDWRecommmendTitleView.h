//
//  WDWRecommmendTitleView.h
//  百思不得姐Demo
//
//  Created by ma c on 16/5/15.
//  Copyright © 2016年 WindWang. All rights reserved.
//


#import <UIKit/UIKit.h>
@class WDWRecommmendTitleView;


@protocol WDWRecommmendTitleViewDelegate <NSObject>

@optional
/**
 *  使用了代理的方法监听rightBtn的点击事件
 *
 *  @param vc       委托方
 *  @param indexTag 监听的对象
 */
-(void)recommmengTitleView:(WDWRecommmendTitleView *)vc clickTitleWithTag:(int )indexTag;

@end

/**
 *  使用block方法监听了leftBtn的点击事件
 *
 *  @param tag 1 or 2
 */
typedef void(^btnBlock)(int tag);

@interface WDWRecommmendTitleView : UIView

@property (nonatomic, copy) btnBlock btnClickBlock;

@property(nonatomic,weak)id<WDWRecommmendTitleViewDelegate> delegate;

@end
