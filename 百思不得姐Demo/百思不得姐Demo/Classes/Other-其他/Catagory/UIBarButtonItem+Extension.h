//
//  UIBarButtonItem+Extension.h
//  百思不得姐Demo
//
//  Created by WindWang on 16/5/12.
//  Copyright © 2016年 WindWang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
/**
 *  快速创建一个UIBarButtonItem
 */
+(instancetype)itemWithImage:(NSString *)imageName highLightImage:(NSString *)highImageName target:(id)target action:(SEL)action;

@end
