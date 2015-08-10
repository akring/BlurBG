//
//  BlurBackground.m
//  BlurBG
//
//  Created by akring on 15/8/10.
//  Copyright (c) 2015年 akring. All rights reserved.
//

#import "BlurBackground.h"
#import "UIImage+ImageEffects.h"

@implementation BlurBackground

#pragma mark - 虚化背景

/**
 *  添加虚化背景
 */
- (void)addBluredBackground:(UIWindow *)window{
    
    if (blurBG == nil) {
        blurBG = [[UIImageView alloc] initWithFrame:window.frame];
    }
    blurBG.image = [[self convertViewToImage:window] applyMediumLightEffect];
    [window addSubview:blurBG];
}

/**
 *  移除虚化背景
 */
- (void)removeBluredBackground{
    
    [blurBG removeFromSuperview];
}

/**
 *  获取屏幕截屏
 *
 *  @return 截图
 */
-(UIImage *)convertViewToImage:(UIWindow *)window
{
    UIGraphicsBeginImageContext(window.bounds.size);
    [window drawViewHierarchyInRect:window.bounds afterScreenUpdates:YES];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
