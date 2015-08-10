//
//  BlurBackground.h
//  BlurBG
//
//  Created by akring on 15/8/10.
//  Copyright (c) 2015年 akring. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BlurBackground : NSObject{
    
    UIImageView *blurBG;//虚化背景图层
}
/**
 *  添加虚化图层
 *
 *  @param window self.Window
 */
- (void)addBluredBackground:(UIWindow *)window;
/**
 *  移除虚化图层
 */
- (void)removeBluredBackground;

@end
