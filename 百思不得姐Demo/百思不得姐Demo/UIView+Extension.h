//
//  UIView+Extension.h
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/12.
//  Copyright © 2016年 WindWang. All rights reserved.
//
/**
 *  UIView的分类方便使用控件的frame
 *
 *  @param Extension <#Extension description#>
 *
 *  @return <#return value description#>
 */
#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat heigth;

@end
