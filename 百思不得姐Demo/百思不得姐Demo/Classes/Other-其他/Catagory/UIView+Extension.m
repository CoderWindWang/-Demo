//
//  UIView+Extension.m
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/12.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)
//重写set，get方法
-(void)setSize:(CGSize)size{
    
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;

}
-(CGSize)size{
    
    return self.frame.size;
}

-(void)setX:(CGFloat)x{
    
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
-(CGFloat)x{
    
    return self.frame.origin.x;
}

-(void)setY:(CGFloat)y{
    
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}
-(CGFloat)y{
    
    return self.frame.origin.y;
}

-(void)setWidth:(CGFloat)width{
    
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
-(CGFloat)width{
    
    return self.frame.size.width;
}

-(void)setHeigth:(CGFloat)heigth{
    
    CGRect frame = self.frame;
    frame.size.height = heigth;
    self.frame = frame;
}
-(CGFloat)heigth{
    
    return self.frame.size.height;
}


@end
